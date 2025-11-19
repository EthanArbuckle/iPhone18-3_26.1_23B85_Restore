@interface COSFindMyController
+ (BOOL)canProceedToUnpairForError:(id)a3;
+ (BOOL)enabledDeviceLocatorForCompanion;
+ (BOOL)isDeviceLocatorEnabled;
+ (BOOL)isTinkerDevice:(id)a3;
+ (id)usernameForContext:(id)a3;
+ (void)allowsMarkAsMissingForUDID:(id)a3 completion:(id)a4;
+ (void)recordShowingActivationLockDetailsForPairingDevice;
- (void)authenticateAccountActionForContext:(id)a3 withMessage:(id)a4 buttonTitle:(id)a5 presentingViewController:(id)a6 completion:(id)a7;
- (void)disableActivationLockForContext:(id)a3 messageString:(id)a4 buttonTitle:(id)a5 presentingViewController:(id)a6 completion:(id)a7;
- (void)markAsMissingForContext:(id)a3 messageString:(id)a4 buttonTitle:(id)a5 presentingViewController:(id)a6 completion:(id)a7;
@end

@implementation COSFindMyController

+ (void)recordShowingActivationLockDetailsForPairingDevice
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 activeWatch];

  v4 = [v3 valueForProperty:NRDevicePropertyUDID];
  if (v4)
  {
    v5 = [sub_1000391B0() sharedInstance];
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v5 userNotifiedOfActivationLockForPairedDevices:v6];
  }
}

+ (BOOL)isDeviceLocatorEnabled
{
  v2 = [sub_1000391B0() sharedInstance];
  v3 = [v2 _quickFetchFMIPEnabledstate];

  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "isDeviceLocatorEnabled %{BOOL}d", v6, 8u);
  }

  return v3;
}

+ (BOOL)enabledDeviceLocatorForCompanion
{
  v2 = [sub_1000391B0() sharedInstance];
  v3 = [v2 enableFMIPInContext:6];

  if (v3)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "enableFMIPInContext:FMIPEnableContextBridgePairing Failed With Error: %@", &v6, 0xCu);
    }
  }

  return v3 == 0;
}

+ (void)allowsMarkAsMissingForUDID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [sub_1000391B0() sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000394EC;
  v9[3] = &unk_100268E98;
  v10 = v5;
  v8 = v5;
  [v7 markAsMissingSupportedForPairedDeviceWithUDID:v6 withCompletion:v9];
}

+ (BOOL)isTinkerDevice:(id)a3
{
  v3 = [a3 valueForProperty:NRDevicePropertyIsAltAccount];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (id)usernameForContext:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 device];
  LODWORD(v4) = [v4 isTinkerDevice:v5];

  if (v4)
  {
    v6 = [v3 member];
    [v6 appleID];
  }

  else
  {
    v7 = objc_alloc_init(ACAccountStore);
    v6 = [v7 aa_primaryAppleAccount];

    [v6 username];
  }
  v8 = ;

  return v8;
}

- (void)authenticateAccountActionForContext:(id)a3 withMessage:(id)a4 buttonTitle:(id)a5 presentingViewController:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100008BFC;
  v51 = sub_100009CF0;
  v52 = objc_alloc_init(ACAccountStore);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100008BFC;
  v45 = sub_100009CF0;
  v46 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100039B98;
  v37[3] = &unk_100268EC0;
  v16 = v15;
  v38 = v16;
  v39 = &v41;
  v40 = &v47;
  v17 = objc_retainBlock(v37);
  v18 = objc_opt_class();
  v19 = [v11 device];
  v20 = [v18 isTinkerDevice:v19];

  v21 = objc_opt_new();
  [v21 setButtonTitle:v13];
  [v21 setMessage:v12];
  [v21 setPresentingViewController:v14];
  [v21 setSkipTnLScreen:1];
  if (v20)
  {
    v22 = [ACAccount alloc];
    v23 = [v48[5] accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierAppleAccount];
    v24 = [v22 initWithAccountType:v23];
    v25 = v42[5];
    v42[5] = v24;

    v26 = v42[5];
    v27 = [v11 member];
    v28 = [v27 appleID];
    [v26 setUsername:v28];

    [v21 setAccount:v42[5]];
    [v21 setCustomRequestHeaders:&off_100281F60];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100039D0C;
    v33[3] = &unk_100268EE8;
    v34 = v17;
    [AAUIDeviceLocatorConfirmationUtilities showDisableAlertForContext:v21 withCompletion:v33];
    v29 = v34;
  }

  else
  {
    v30 = [v48[5] aa_primaryAppleAccount];
    v31 = v42[5];
    v42[5] = v30;

    v32 = [v42[5] isProvisionedForDataclass:kAccountDataclassDeviceLocator];
    if (v42[5])
    {
      if (v32)
      {
        [v21 setAccount:?];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100039CEC;
        v35[3] = &unk_100268EE8;
        v36 = v17;
        [AAUIDeviceLocatorConfirmationUtilities showDisableAlertForContext:v21 withCompletion:v35];
        v29 = v36;
      }

      else
      {
        v29 = [NSError errorWithDomain:@"COSFindMyErrorDomain" code:3 userInfo:0];
        (v17[2])(v17, 0, 0, v29);
      }
    }

    else
    {
      v29 = [NSError errorWithDomain:@"COSFindMyErrorDomain" code:1 userInfo:0];
      (v17[2])(v17, 0, 0, v29);
    }
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);
}

- (void)disableActivationLockForContext:(id)a3 messageString:(id)a4 buttonTitle:(id)a5 presentingViewController:(id)a6 completion:(id)a7
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100039E10;
  v14[3] = &unk_100268F38;
  v15 = a3;
  v16 = self;
  v17 = a7;
  v12 = v17;
  v13 = v15;
  [(COSFindMyController *)self authenticateAccountActionForContext:v13 withMessage:a4 buttonTitle:a5 presentingViewController:a6 completion:v14];
}

- (void)markAsMissingForContext:(id)a3 messageString:(id)a4 buttonTitle:(id)a5 presentingViewController:(id)a6 completion:(id)a7
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003A490;
  v14[3] = &unk_100268F60;
  v15 = a3;
  v16 = a7;
  v12 = v16;
  v13 = v15;
  [(COSFindMyController *)self authenticateAccountActionForContext:v13 withMessage:a4 buttonTitle:a5 presentingViewController:a6 completion:v14];
}

+ (BOOL)canProceedToUnpairForError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:@"COSFindMyErrorDomain"])
    {
      v6 = [v4 code] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end