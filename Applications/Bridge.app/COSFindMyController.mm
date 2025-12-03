@interface COSFindMyController
+ (BOOL)canProceedToUnpairForError:(id)error;
+ (BOOL)enabledDeviceLocatorForCompanion;
+ (BOOL)isDeviceLocatorEnabled;
+ (BOOL)isTinkerDevice:(id)device;
+ (id)usernameForContext:(id)context;
+ (void)allowsMarkAsMissingForUDID:(id)d completion:(id)completion;
+ (void)recordShowingActivationLockDetailsForPairingDevice;
- (void)authenticateAccountActionForContext:(id)context withMessage:(id)message buttonTitle:(id)title presentingViewController:(id)controller completion:(id)completion;
- (void)disableActivationLockForContext:(id)context messageString:(id)string buttonTitle:(id)title presentingViewController:(id)controller completion:(id)completion;
- (void)markAsMissingForContext:(id)context messageString:(id)string buttonTitle:(id)title presentingViewController:(id)controller completion:(id)completion;
@end

@implementation COSFindMyController

+ (void)recordShowingActivationLockDetailsForPairingDevice
{
  v2 = +[UIApplication sharedApplication];
  activeWatch = [v2 activeWatch];

  v4 = [activeWatch valueForProperty:NRDevicePropertyUDID];
  if (v4)
  {
    sharedInstance = [sub_1000391B0() sharedInstance];
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [sharedInstance userNotifiedOfActivationLockForPairedDevices:v6];
  }
}

+ (BOOL)isDeviceLocatorEnabled
{
  sharedInstance = [sub_1000391B0() sharedInstance];
  _quickFetchFMIPEnabledstate = [sharedInstance _quickFetchFMIPEnabledstate];

  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = _quickFetchFMIPEnabledstate;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "isDeviceLocatorEnabled %{BOOL}d", v6, 8u);
  }

  return _quickFetchFMIPEnabledstate;
}

+ (BOOL)enabledDeviceLocatorForCompanion
{
  sharedInstance = [sub_1000391B0() sharedInstance];
  v3 = [sharedInstance enableFMIPInContext:6];

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

+ (void)allowsMarkAsMissingForUDID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  sharedInstance = [sub_1000391B0() sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000394EC;
  v9[3] = &unk_100268E98;
  v10 = completionCopy;
  v8 = completionCopy;
  [sharedInstance markAsMissingSupportedForPairedDeviceWithUDID:dCopy withCompletion:v9];
}

+ (BOOL)isTinkerDevice:(id)device
{
  v3 = [device valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)usernameForContext:(id)context
{
  contextCopy = context;
  v4 = objc_opt_class();
  device = [contextCopy device];
  LODWORD(v4) = [v4 isTinkerDevice:device];

  if (v4)
  {
    member = [contextCopy member];
    [member appleID];
  }

  else
  {
    v7 = objc_alloc_init(ACAccountStore);
    member = [v7 aa_primaryAppleAccount];

    [member username];
  }
  v8 = ;

  return v8;
}

- (void)authenticateAccountActionForContext:(id)context withMessage:(id)message buttonTitle:(id)title presentingViewController:(id)controller completion:(id)completion
{
  contextCopy = context;
  messageCopy = message;
  titleCopy = title;
  controllerCopy = controller;
  completionCopy = completion;
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
  v16 = completionCopy;
  v38 = v16;
  v39 = &v41;
  v40 = &v47;
  v17 = objc_retainBlock(v37);
  v18 = objc_opt_class();
  device = [contextCopy device];
  v20 = [v18 isTinkerDevice:device];

  v21 = objc_opt_new();
  [v21 setButtonTitle:titleCopy];
  [v21 setMessage:messageCopy];
  [v21 setPresentingViewController:controllerCopy];
  [v21 setSkipTnLScreen:1];
  if (v20)
  {
    v22 = [ACAccount alloc];
    v23 = [v48[5] accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierAppleAccount];
    v24 = [v22 initWithAccountType:v23];
    v25 = v42[5];
    v42[5] = v24;

    v26 = v42[5];
    member = [contextCopy member];
    appleID = [member appleID];
    [v26 setUsername:appleID];

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
    aa_primaryAppleAccount = [v48[5] aa_primaryAppleAccount];
    v31 = v42[5];
    v42[5] = aa_primaryAppleAccount;

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

- (void)disableActivationLockForContext:(id)context messageString:(id)string buttonTitle:(id)title presentingViewController:(id)controller completion:(id)completion
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100039E10;
  v14[3] = &unk_100268F38;
  contextCopy = context;
  selfCopy = self;
  completionCopy = completion;
  v12 = completionCopy;
  v13 = contextCopy;
  [(COSFindMyController *)self authenticateAccountActionForContext:v13 withMessage:string buttonTitle:title presentingViewController:controller completion:v14];
}

- (void)markAsMissingForContext:(id)context messageString:(id)string buttonTitle:(id)title presentingViewController:(id)controller completion:(id)completion
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003A490;
  v14[3] = &unk_100268F60;
  contextCopy = context;
  completionCopy = completion;
  v12 = completionCopy;
  v13 = contextCopy;
  [(COSFindMyController *)self authenticateAccountActionForContext:v13 withMessage:string buttonTitle:title presentingViewController:controller completion:v14];
}

+ (BOOL)canProceedToUnpairForError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"COSFindMyErrorDomain"])
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