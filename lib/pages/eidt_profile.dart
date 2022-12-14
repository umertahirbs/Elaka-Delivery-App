// import 'package:elaka_delivery_app/pages/current_no_order.dart';
import 'package:elaka_delivery_app/pages/available_shift.dart';
import 'package:elaka_delivery_app/pages/current_no_order.dart';
import 'package:elaka_delivery_app/pages/current_order.dart';
import 'package:elaka_delivery_app/pages/setting.dart';
import 'package:elaka_delivery_app/pages/start_shift.dart';
import 'package:elaka_delivery_app/pages/wallet.dart';
import 'package:elaka_delivery_app/resources/global_variable.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/services/Auth.dart';

import '../models/LoginModel.dart';

class EditProfile extends StatefulWidget {
  final LoginUser? user;

  const EditProfile(this.user);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  int currentIndex = 0;
  bool isLoading = false;

  final TextEditingController _firstNme = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _driLicinece = TextEditingController();
  final TextEditingController _vehNumber = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 247, 255),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * .26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.white,
                          width: 5.0,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 35,
                              spreadRadius: 30,
                              offset: const Offset(3, 3))
                        ]),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Image(image: AssetImage("images/logo.png")),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              // height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 20,
                    blurRadius: 15,
                    offset: const Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("First Name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                          controller: _firstNme,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 78, 206, 113))),
                              border: const OutlineInputBorder(),
                              prefixIcon: Container(
                                width: 39,
                                height: 39,
                                margin: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                  right: 8,
                                  left: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 78, 206, 113),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Last Name",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                          controller: _lastName,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 78, 206, 113))),
                              border: const OutlineInputBorder(),
                              prefixIcon: Container(
                                width: 39,
                                height: 39,
                                margin: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                  right: 8,
                                  left: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 78, 206, 113),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Email",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 78, 206, 113))),
                              border: const OutlineInputBorder(),
                              prefixIcon: Container(
                                width: 39,
                                height: 39,
                                margin: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                  right: 8,
                                  left: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 78, 206, 113),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Driving License *",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                          controller: _driLicinece,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 78, 206, 113))),
                              border: const OutlineInputBorder(),
                              prefixIcon: Container(
                                width: 39,
                                height: 39,
                                margin: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                  right: 8,
                                  left: 8,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 78, 206, 113),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.insert_drive_file,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Vehical Number *",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                          controller: _vehNumber,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 78, 206, 113))),
                              border: const OutlineInputBorder(),
                              prefixIcon: Container(
                                width: 39,
                                height: 39,
                                margin: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                  right: 8,
                                  left: 8,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 78, 206, 113),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.calendar_view_week_rounded,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ))),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    (isLoading)
                        ? const SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: Colors.green,
                              strokeWidth: 2,
                            ))
                        : SizedBox(
                            width: MediaQuery.of(context).size.width * 0.93,
                            height: 50,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 78, 206, 113),
                                  onPrimary: Colors.white,
                                ),
                                onPressed: () {
                                  callEditProfileAPi();
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             const OptVerification()));
                                },
                                child: const Text(
                                  "Submit",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 23, 69, 103),
        unselectedItemColor: const Color.fromARGB(255, 23, 69, 103),
        iconSize: 30,

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Setting()));
                },
                child: const Icon(Icons.settings)),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => orderPage == true
                            ? CurrentOrder()
                            : CurrentNoOrder("")));
              },
              child: const FaIcon(
                FontAwesomeIcons.gift,
                size: 26,
              ),
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Wallet()));
                },
                child: const Icon(Icons.account_balance_wallet)),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  AvailableShift()));
                },
                child: const Icon(Icons.shuffle)),
            label: 'Shift',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }

  void setData() {
    if (widget.user != null) {
      LoginUser u = widget.user!;

      _firstNme.text = u.data?.firstName ?? "";
      _lastName.text = u.data?.lastName ?? "";
      _emailController.text = u.data?.email ?? "";
      _driLicinece.text = u.data?.drivingLicense ?? "";
      _vehNumber.text = u.data?.vehicalNumber ?? "";
    }

    setState(() {});
  }

  void callEditProfileAPi() {
    setState(() {
      isLoading = true;
    });

    String id = widget.user!.data!.id!.toString();
    updateProfile(id, _firstNme.text, _lastName.text, _emailController.text,
            _driLicinece.text, _vehNumber.text)
        .then((value) => {handleResp()});
  }

  void handleResp() {
    setState(() {
      isLoading = false;
    });
    Fluttertoast.showToast(msg: "Profile Updated");
  }
}
