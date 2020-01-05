//
//  ViewController.swift
//  BMI Calculator
//
//  Created by 田中奈穂子 on 2020/01/04.
//  Copyright © 2020 tanaka naoko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextgField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func calculateBMI(height: Double, weight: Double) -> Double {
        return weight/(height*height)
    }

    @IBAction func botton_tapped(_ sender: Any) {
        let heightText = heightTextgField.text
        let weightText = weightTextField.text
        
        guard let height = heightText, let weight = weightText else {
            return
        }
        
        if let heightDouble = Double(height), let weightDouble = Double(weight) {
            let bmi = calculateBMI(height: heightDouble, weight: weightDouble)
            print(bmi)
        }
    }
    
}

