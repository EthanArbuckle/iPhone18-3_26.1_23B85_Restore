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
- (void)alternateButtonPressed:(id)a3;
- (void)applyConfirmedOptin:(BOOL)a3;
- (void)okayButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
@end

@implementation COSPasscodeChoiceViewController

- (COSPasscodeChoiceViewController)init
{
  v10.receiver = self;
  v10.super_class = COSPasscodeChoiceViewController;
  v2 = [(COSOptinViewController *)&v10 init];
  if (v2)
  {
    v3 = [UIApp bridgeController];
    v4 = [v3 isTinkerPairing];

    if (v4)
    {
      v5 = 74;
    }

    else
    {
      v6 = +[UIApplication sharedApplication];
      v7 = [v6 bridgeController];
      [v7 sendGizmoPasscodeRestrictions];

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
  v2 = [UIApp bridgeController];
  v3 = [v2 isTinkerPairing];

  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[COSPasscodeChoiceViewController detailString]";
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: queried isSatellitePairing (%{BOOL}d)", &v11, 0x12u);
  }

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v3)
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
  v3 = [UIApp activeWatch];
  v4 = BPSIsDeviceCompatibleWithVersions();

  if (v4)
  {
    v5 = [v2 stringByAppendingString:@"-v4"];

    v2 = v5;
  }

  return v2;
}

- (void)suggestedButtonPressed:(id)a3
{
  [PBBridgeCAReporter recordPasscodeCreatedWithType:1 wasChallenged:self->_passcodeSkipChallenged];
  v4 = [(COSPasscodeChoiceViewController *)self delegate];
  [v4 buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

- (void)alternateButtonPressed:(id)a3
{
  [PBBridgeCAReporter recordPasscodeCreatedWithType:2 wasChallenged:self->_passcodeSkipChallenged];
  v4 = [(COSPasscodeChoiceViewController *)self delegate];
  [v4 buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

- (void)applyConfirmedOptin:(BOOL)a3
{
  if (a3)
  {
    [PBBridgeCAReporter recordPasscodeChallenge:2];
    v4 = objc_opt_class();
    v5 = [(COSPasscodeChoiceViewController *)self delegate];
    [v5 buddyControllerDone:self nextControllerClass:v4];
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

- (void)okayButtonPressed:(id)a3
{
  self->_passcodeSkipChallenged = 1;
  [PBBridgeCAReporter recordPasscodeChallenge:1];

  [(COSPasscodeChoiceViewController *)self showOptinConfirmationAlert:@"PASSCODE" optinChoice:1];
}

+ (BOOL)controllerNeedsToRun
{
  v2 = [UIApp bridgeController];
  v3 = [v2 isTinkerPairing];

  if (v3)
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