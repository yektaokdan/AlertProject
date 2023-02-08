//
//  ViewController.swift
//  AlertProject
//
//  Created by pc on 8.02.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordText2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        if (usernameText.text==""){
            
            
            let alertUsername = UIAlertController(title: "Error", message: "Username not found!", preferredStyle:UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alertUsername.addAction(okButton)
            self.present(alertUsername, animated: true, completion: nil)
        }
        
        else if(passwordText.text==""){
            let alertPassword1 = UIAlertController(title: "Error", message: "Password cannot be a null!", preferredStyle: UIAlertController.Style.alert)
            let okButton2 = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alertPassword1.addAction(okButton2)
            self.present(alertPassword1, animated: true)
        }
        
        
        else if(passwordText2.text==""){
            let alertPassword2 = UIAlertController(title: "Error", message: "Password cannot be a null!", preferredStyle: UIAlertController.Style.alert)
            let okButton3 = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alertPassword2.addAction(okButton3)
            self.present(alertPassword2, animated: true)
        }
        
      
        else if(passwordText2.text != passwordText.text){
            let alertPassword3 = UIAlertController(title: "Error", message: "Passwords not the same!", preferredStyle: UIAlertController.Style.alert)
            let okButton4 = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alertPassword3.addAction(okButton4)
            self.present(alertPassword3, animated: true)
        }
        
        else{
            let successAlert = UIAlertController(title: "Success", message: "Registration Successful", preferredStyle: UIAlertController.Style.alert)
            let okButton5 = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            successAlert.addAction(okButton5)
            self.present(successAlert, animated: true)
            usernameText.text = ""
            passwordText.text = ""
            passwordText2.text = ""
            
        }
        
        
    }
    
}

