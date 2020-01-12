//
//  ViewController.swift
//  Tipsy
//
//  Created by Tony Guan on 1/11/20.
//  Copyright © 2020 Tony Guan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var darkModeSwitch: UISwitch!
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabelLabel: UILabel!
    @IBOutlet weak var amountPerPersonLabel: UILabel!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var perPersonPayLabel: UILabel!
    @IBOutlet weak var peopleField: UITextField!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
 
        let people = Double(peopleField.text!) ?? 1
        if people < 1.0 {
            let amountPerPerson = total
            perPersonPayLabel.text = String(format: "$%.2f", amountPerPerson)
        }else{
            let amountPerPerson = total / people
            perPersonPayLabel.text = String(format: "$%.2f", amountPerPerson)
        }
        
    }
    
    
    @IBAction func darkMode(_ sender: Any) {
        if darkModeSwitch.isOn {
            
            backgroundView.backgroundColor = UIColor.darkGray
            billLabel.textColor = UIColor.white
            tipLabel.textColor = UIColor.white
            totalLabel.textColor = UIColor.white
            totalLabelLabel.textColor = UIColor.white
            tipAmountLabel.textColor = UIColor.white
            amountPerPersonLabel.textColor = UIColor.white
            peopleLabel.textColor = UIColor.white
            perPersonPayLabel.textColor = UIColor.white
            
        }else{
            
            backgroundView.backgroundColor = UIColor.white
            billLabel.textColor = UIColor.black
            tipLabel.textColor = UIColor.black
            totalLabel.textColor = UIColor.black
            totalLabelLabel.textColor = UIColor.black
            tipAmountLabel.textColor = UIColor.black
            amountPerPersonLabel.textColor = UIColor.black
            peopleLabel.textColor = UIColor.black
            perPersonPayLabel.textColor = UIColor.black
            
        }
    }
    
}

