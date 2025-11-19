@interface COSUnlockPlaceholderViewController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)isMandatory;
- (COSUnlockPlaceholderViewController)init;
- (id)detailString;
- (id)detailTitleString;
- (id)imageResource;
- (id)okayButtonTitle;
- (id)titleString;
- (void)okayButtonPressed:(id)a3;
- (void)unlockPairingComplete:(id)a3;
@end

@implementation COSUnlockPlaceholderViewController

+ (BOOL)isMandatory
{
  v2 = [UIApp bridgeController];
  v3 = [v2 isTinkerPairing];

  if (v3)
  {
    return 0;
  }

  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 BOOLRestrictionForFeature:MCFeatureAlphanumericPasscodeRequired];
  v4 = v6 == 1;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithBool:v6 == 1];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "COSUnlockPlaceholderViewController isMandatory %@", &v10, 0xCu);
  }

  return v4;
}

+ (BOOL)controllerNeedsToRun
{
  if (([objc_opt_class() isMandatory] & 1) != 0 || +[COSPasscodeAdvancedViewController isMandatory](COSPasscodeAdvancedViewController, "isMandatory"))
  {
    v2 = 1;
  }

  else
  {
    v3 = [UIApp activeWatch];
    v4 = [[NSUUID alloc] initWithUUIDString:@"CFD76F6A-B79A-475D-BCD7-7EB10AC33956"];
    v5 = [v3 supportsCapability:v4];

    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [NSNumber numberWithBool:v5];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "COSUnlockPlaceholderViewController hasAutolockCapability %@", &v11, 0xCu);
    }

    v2 = v5 ^ 1;
  }

  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithBool:v2];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "COSUnlockPlaceholderViewController controllerNeedsToRun %@", &v11, 0xCu);
  }

  return v2;
}

- (COSUnlockPlaceholderViewController)init
{
  v8.receiver = self;
  v8.super_class = COSUnlockPlaceholderViewController;
  v2 = [(COSOptinViewController *)&v8 init];
  if (v2)
  {
    if ([objc_opt_class() isMandatory])
    {
      v3 = 96;
    }

    else
    {
      v3 = 64;
    }

    [(COSUnlockPlaceholderViewController *)v2 setStyle:v3];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"unlockPairingComplete:" name:PBBridgeDidCompleteUnlockPairingNotification object:0];

    v5 = +[UIApplication sharedApplication];
    v6 = [v5 bridgeController];
    [v6 sendGizmoPasscodeRestrictions];
  }

  return v2;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"UNLOCK_OPTION_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = [objc_opt_class() isMandatory];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"UNLOCK_OPTION_MANDATORY_TEXT";
  }

  else
  {
    v5 = @"UNLOCK_OPTION_TEXT";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable"];

  return v6;
}

- (id)imageResource
{
  v2 = sub_10002D528(@"Screen-Passcode");
  v3 = [UIApp activeWatch];
  v4 = BPSIsDeviceCompatibleWithVersions();

  if (v4)
  {
    v5 = [v2 stringByAppendingString:@"-v2"];

    v2 = v5;
  }

  return v2;
}

- (void)unlockPairingComplete:(id)a3
{
  v4 = [(COSUnlockPlaceholderViewController *)self delegate];
  [v4 buddyControllerDone:self];
}

- (id)okayButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"UNLOCK_MANDATORY_BUTTON_TEXT" value:&stru_10026E598 table:@"Localizable"];

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
  v4 = [(COSUnlockPlaceholderViewController *)self delegate];
  [v4 buddyControllerDone:self nextControllerClass:objc_opt_class()];
}

@end