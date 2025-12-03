@interface COSPasscodeChoiceViewController
+ (BOOL)controllerNeedsToRun;
- (COSPasscodeChoiceViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)detailTitleString;
- (id)imageResource;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)pressed;
- (void)applyConfirmedOptin:(BOOL)optin;
- (void)okayButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation COSPasscodeChoiceViewController

- (COSPasscodeChoiceViewController)init
{
  v10.receiver = self;
  v10.super_class = COSPasscodeChoiceViewController;
  v2 = [(COSOptinViewController *)&v10 init];
  if (v2)
  {
    bridgeController = [UIApp bridgeController];
    isTinkerPairing = [bridgeController isTinkerPairing];

    if (isTinkerPairing)
    {
      v5 = 74;
    }

    else
    {
      v6 = +[UIApplication sharedApplication];
      bridgeController2 = [v6 bridgeController];
      [bridgeController2 sendGizmoPasscodeRestrictions];

      v8 = +[MCProfileConnection sharedConnection];
      if ([v8 BOOLRestrictionForFeature:MCFeaturePasscodeRequired] == 1)
      {
        v5 = 74;
      }

      else
      {
        v5 = 106;
      }
    }

    [(COSPasscodeChoiceViewController *)v2 setStyle:v5];
  }

  return v2;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PASSCODE_OPTIONS_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[COSPasscodeChoiceViewController detailString]";
    v13 = 1024;
    v14 = isTinkerPairing;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: queried isSatellitePairing (%{BOOL}d)", &v11, 0x12u);
  }

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (isTinkerPairing)
  {
    v7 = @"PASSCODE_DESCRIPTION_TINKER";
    v8 = @"Localizable-tinker";
  }

  else
  {
    v7 = @"PASSCODE_DESCRIPTION";
    v8 = @"Localizable";
  }

  v9 = [v5 localizedStringForKey:v7 value:&stru_10026E598 table:v8];

  return v9;
}

- (id)imageResource
{
  v2 = sub_10002D528(@"Screen-Passcode");
  activeWatch = [UIApp activeWatch];
  v4 = BPSIsDeviceCompatibleWithVersions();

  if (v4)
  {
    v5 = [v2 stringByAppendingString:@"-v4"];

    v2 = v5;
  }

  return v2;
}

- (void)suggestedButtonPressed:(id)pressed
{
  [PBBridgeCAReporter recordPasscodeCreatedWithType:1 wasChallenged:self->_passcodeSkipChallenged];
  delegate = [(COSPasscodeChoiceViewController *)self delegate];
  [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

- (void)alternateButtonPressed:(id)pressed
{
  [PBBridgeCAReporter recordPasscodeCreatedWithType:2 wasChallenged:self->_passcodeSkipChallenged];
  delegate = [(COSPasscodeChoiceViewController *)self delegate];
  [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

- (void)applyConfirmedOptin:(BOOL)optin
{
  if (optin)
  {
    [PBBridgeCAReporter recordPasscodeChallenge:2];
    v4 = objc_opt_class();
    delegate = [(COSPasscodeChoiceViewController *)self delegate];
    [delegate buddyControllerDone:self nextControllerClass:v4];
  }
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ADD_PASSCODE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PASSCODE_MORE_OPTIONS" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DO_NOT_ADD_PASSCODE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailTitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WHAT_IS_THIS" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)okayButtonPressed:(id)pressed
{
  self->_passcodeSkipChallenged = 1;
  [PBBridgeCAReporter recordPasscodeChallenge:1];

  [(COSPasscodeChoiceViewController *)self showOptinConfirmationAlert:@"PASSCODE" optinChoice:1];
}

+ (BOOL)controllerNeedsToRun
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  if (isTinkerPairing)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Tinker Setup Requires Passcode Creation.", v6, 2u);
    }

    return 1;
  }

  if (!+[COSUnlockPlaceholderViewController isMandatory](COSUnlockPlaceholderViewController, "isMandatory") && !+[COSPasscodeAdvancedViewController isMandatory])
  {
    return 1;
  }

  [PBBridgeCAReporter recordPasscodeCreatedWithType:3 wasChallenged:0];
  return 0;
}

@end