//
//  ViewController.swift
//  PickerView
//
//  Created by D7703_26 on 2018. 4. 19..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var myPickerView: UIPickerView!
    @IBOutlet var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ViewController와 delegate 연결
        myPickerView.delegate = self
        myPickerView.dataSource = self
    }
    
    // UIPickerViewDataSource method
    func numberOfComponents(in pickerView: UIPickerView) -> Int { return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return 10
        } else {
            return 50
        }
    }
    
    // UIPickerViewDelegate method
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "1st component \(row)"
        } else {
            return "2nd component \(row)"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myLabel.text = "comp = \(component) row = \(row)"
    }
}
