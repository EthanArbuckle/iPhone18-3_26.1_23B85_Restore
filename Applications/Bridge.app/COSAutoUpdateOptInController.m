@interface COSAutoUpdateOptInController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)skipControllerForExpressMode:(id)a3;
+ (id)expressModeSettingsItem:(id)a3;
+ (id)expressModeSettingsString:(id)a3;
- (COSAutoUpdateOptInController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)detailTitleString;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
@end

@implementation COSAutoUpdateOptInController

+ (BOOL)controllerNeedsToRun
{
  v2 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v3 = [v2 valueForProperty:NRDevicePropertyGreenTeaDevice];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    sub_10002DDC4(1);
  }

  v5 = [UIApp activeWatch];
  v6 = [[NSUUID alloc] initWithUUIDString:@"D5737C61-3EE6-43DA-B714-00F3746C50E1"];
  v7 = [v5 supportsCapability:v6];

  return v7 & v4;
}

+ (BOOL)skipControllerForExpressMode:(id)a3
{
  v3 = a3;
  v4 = [NPSDomainAccessor alloc];
  v5 = [v4 initWithDomain:kBridgeDomain pairedDevice:v3];

  v6 = [v5 synchronize];
  v7 = [v5 objectForKey:@"AutoUpdate"];
  LOBYTE(v3) = v7 != 0;

  return v3;
}

+ (id)expressModeSettingsString:(id)a3
{
  v3 = a3;
  v4 = [NPSDomainAccessor alloc];
  v5 = [v4 initWithDomain:kBridgeDomain pairedDevice:v3];

  v6 = [v5 synchronize];
  v7 = [v5 BOOLForKey:@"AutoUpdate"];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@"Auto Update Enabled: %@", v8];

  return v9;
}

+ (id)expressModeSettingsItem:(id)a3
{
  v3 = a3;
  v4 = [NPSDomainAccessor alloc];
  v5 = [v4 initWithDomain:kBridgeDomain pairedDevice:v3];

  v6 = [v5 synchronize];
  v7 = [v5 BOOLForKey:@"AutoUpdate"];
  v8 = objc_opt_new();
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"AUTOUPDATE_TITLE_EXPRESS" value:&stru_10026E598 table:@"Localizable"];
  [v8 setTitle:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"AUTOUPDATE_DETAIL" value:&stru_10026E598 table:@"Localizable"];
  [v8 setDetail:v12];

  v13 = +[NSBundle mainBundle];
  v14 = v13;
  if (v7)
  {
    v15 = @"EXPRESS_SETTING_ENABLED";
  }

  else
  {
    v15 = @"EXPRESS_SETTING_DISABLED";
  }

  v16 = [v13 localizedStringForKey:v15 value:&stru_10026E598 table:@"Localizable"];
  [v8 setStatus:v16];

  v17 = [UIImage _systemImageNamed:@"gearshape.arrow.triangle.2.circlepath"];
  [v8 setImage:v17];

  return v8;
}

- (COSAutoUpdateOptInController)init
{
  v5.receiver = self;
  v5.super_class = COSAutoUpdateOptInController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSAutoUpdateOptInController *)v2 setStyle:10];
  }

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"AUTOUPDATE_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"AUTOUPDATE_DETAIL" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)a3
{
  sub_10002DDC4(1);
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = sub_10002DEE4();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Is Auto Update enabled: %d", v6, 8u);
  }

  v5 = [(COSAutoUpdateOptInController *)self delegate];
  [v5 buddyControllerDone:self];
}

- (void)alternateButtonPressed:(id)a3
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = sub_10002DEE4();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Alt button pushed with enbled set to: %d", v6, 8u);
  }

  sub_10002DDC4(0);
  v5 = [(COSAutoUpdateOptInController *)self delegate];
  [v5 buddyControllerDone:self];
}

- (id)suggestedButtonTitle
{
  v2 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v3 = [v2 valueForProperty:NRDevicePropertyGreenTeaDevice];
  v4 = [v3 BOOLValue];

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = @"AUTOUPDATE_ACCEPT";
  }

  else
  {
    v7 = @"CONTINUE_SETUP";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_10026E598 table:@"Localizable"];

  return v8;
}

- (id)okayButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"AUTOUPDATE_REJECT" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailTitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"AUTOUPDATE_DETAILTITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

@end