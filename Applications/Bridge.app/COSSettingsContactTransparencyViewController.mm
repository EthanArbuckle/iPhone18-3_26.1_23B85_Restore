@interface COSSettingsContactTransparencyViewController
+ (BOOL)controllerNeedsToRun;
- (COSSettingsContactTransparencyViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
@end

@implementation COSSettingsContactTransparencyViewController

+ (BOOL)controllerNeedsToRun
{
  v2 = UIApp;
  v3 = [v2 activeWatch];
  v4 = +[UIDevice currentDevice];
  v5 = [v4 sf_isChinaRegionCellularDevice];

  v6 = [v3 valueForProperty:NRDevicePropertyGreenTeaDevice];
  v7 = [v6 BOOLValue];

  if ((v5 & 1) != 0 || v7)
  {
    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412802;
      v21 = v12;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      LODWORD(v25) = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ ~ Found GT Device (Phone: %{BOOL}d) (Watch: %{BOOL}d)", buf, 0x18u);
    }

    v13 = [v2 isRestoringToKnownDevice];
    v14 = [v2 bridgeController];
    v15 = [v14 isTinkerPairing];

    if (v15)
    {
      v8 = v13 ^ 1;
      v9 = [NSString stringWithFormat:@"(Tinker Flow) Known Device Backup: %{BOOL}d", v13];
    }

    else
    {
      if (v13)
      {
        v9 = @"Known Device Backup Restore";
      }

      else
      {
        v9 = @"New Device Flow";
      }

      v8 = v13 ^ 1;
    }
  }

  else
  {
    v8 = 0;
    v9 = @"Non-GT Device";
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {

    v8 = 1;
    v9 = @"PrivacyDisclosure testing enabled";
  }

  v16 = pbb_setupflow_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138412802;
    v21 = v18;
    v22 = 1024;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ ~ COSSettingsContactTransparencyViewController wants to run? %{BOOL}d (Reasons: %@)", buf, 0x1Cu);
  }

  return v8;
}

- (COSSettingsContactTransparencyViewController)init
{
  v5.receiver = self;
  v5.super_class = COSSettingsContactTransparencyViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  if (v2)
  {
    if (+[PDCPreflightManager isPreflightFeatureEnabled])
    {
      v3 = 10;
    }

    else
    {
      v3 = 2;
    }

    [(COSSettingsContactTransparencyViewController *)v2 setStyle:v3];
  }

  return v2;
}

- (id)titleString
{
  v2 = +[PDCPreflightManager isPreflightFeatureEnabled];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"SETTINGS_TRANSPARENCY_TITLE";
  }

  else
  {
    v5 = @"SETTINGS_CONTACTS_TRANSPARENCY_TITLE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable"];

  return v6;
}

- (id)detailString
{
  v2 = +[PDCPreflightManager isPreflightFeatureEnabled];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"SETTINGS_TRANSPARENCY_DETAIL";
  }

  else
  {
    v5 = @"SETTINGS_CONTACTS_TRANSPARENCY_DETAIL";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable"];

  return v6;
}

- (void)suggestedButtonPressed:(id)a3
{
  v4 = [(COSSettingsContactTransparencyViewController *)self delegate];
  [v4 buddyControllerDone:self];
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SETTINGS_TRANSPARENCY_LEARN_MORE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)alternateButtonPressed:(id)a3
{
  v4 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/BridgeCommons.framework/NanoSettingsPrivacyProxy.bundle"];
  if (v4)
  {
    v5 = PDUDisclosureReviewViewControllerForBundle();
    if (v5)
    {
      [(COSSettingsContactTransparencyViewController *)self presentViewController:v5 animated:1 completion:0];
    }

    else
    {
      v6 = pbb_setupflow_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100186950();
      }
    }
  }

  else
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001869DC();
    }
  }
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SETTINGS_TRANSPARENCY_ACCEPT" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

@end