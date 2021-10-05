import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTP extends StatefulWidget {
  OTP({Key? key}) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(left: 250,),
                // ignore: prefer_const_constructors
                child: Image(image: AssetImage('images/Capture.png'),
                ),
              ),
              // ignore: prefer_const_constructors
              Text("Check Your",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 20,
                  // ignore: prefer_const_constructors
                  color: Color(0xffadaeaa),
                ),
              ),
              // ignore: prefer_const_constructors
              Text("Mail",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 20,
                  // ignore: prefer_const_constructors
                  color: Color(0xffadaeaa),
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 20,),
              // ignore: prefer_const_constructors
              Text("We have sent a OTP to your mail.",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 12,
                  // ignore: prefer_const_constructors
                  color: Color(0xffa3a6a1),
                ),
              ),
              // ignore: prefer_const_constructors
              Text("Please Verify",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 12,
                  // ignore: prefer_const_constructors
                  color: Color(0xffa3a6a1),
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 40),
              // ignore: prefer_const_constructors
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OtpTextField(
                    numberOfFields: 4,
                    // ignore: prefer_const_constructors
                    borderColor: Color(0xff48abb3),
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    // onSubmit: (String verificationCode){
                    //   // showDialog(
                    //   //     context: context,
                    //   //     // builder: (context){
                    //   //     //   // return AlertDialog(
                    //   //     //   //   // ignore: prefer_const_constructors
                    //   //     //   //   //title: Text("Verification Code"),
                    //   //     //   //   //content: Text('Code entered is $verificationCode'),
                    //   //     //   // );
                    //   //     // }
                    //   // );
                    // }, // end onSubmit
                  ),
                ],
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 30,),
              ButtonTheme(
                minWidth: 200.0,
                height: 50.0,
                  child: RaisedButton(
                    // ignore: prefer_const_constructors
                    color: Color(0xff9fd597),
                    onPressed: () {},
                    // ignore: prefer_const_constructors
                    child: Text("Verify & Proceed",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 20,),
              // ignore: prefer_const_constructors
              Text("Did not receive the email? Check your spam filter",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  // ignore: prefer_const_constructors
                  color: Color(0xffadaeaa),
                  fontSize: 12,
                ),
              ),
                // ignore: prefer_const_constructors
                 Text("Or Try another email address",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    // ignore: prefer_const_constructors
                    color: Color(0xffadaeaa),
                    fontSize: 12,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
