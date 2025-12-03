@interface COSAutoUpdateOptInController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)skipControllerForExpressMode:(id)mode;
+ (id)expressModeSettingsItem:(id)item;
+ (id)expressModeSettingsString:(id)string;
- (COSAutoUpdateOptInController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)detailTitleString;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation COSAutoUpdateOptInController

+ (BOOL)controllerNeedsToRun
{
  v2 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v3 = [v2 valueForProperty:NRDevicePropertyGreenTeaDevice];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    sub_10002DDC4(1);
  }

  activeWatch = [UIApp activeWatch];
  v6 = [[NSUUID alloc] initWithUUIDString:@"D5737C61-3EE6-43DA-B714-00F3746C50E1"];
  v7 = [activeWatch supportsCapability:v6];

  return v7 & bOOLValue;
}

+ (BOOL)skipControllerForExpressMode:(id)mode
{
  modeCopy = mode;
  v4 = [NPSDomainAccessor alloc];
  v5 = [v4 initWithDomain:kBridgeDomain pairedDevice:modeCopy];

  synchronize = [v5 synchronize];
  v7 = [v5 objectForKey:@"AutoUpdate"];
  LOBYTE(modeCopy) = v7 != 0;

  return modeCopy;
}

+ (id)expressModeSettingsString:(id)string
{
  stringCopy = string;
  v4 = [NPSDomainAccessor alloc];
  v5 = [v4 initWithDomain:kBridgeDomain pairedDevice:stringCopy];

  synchronize = [v5 synchronize];
  v7 = [v5 BOOLForKey:@"AutoUpdate"];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@"Auto Update Enabled: %@", v8];

  return v9;
}

+ (id)expressModeSettingsItem:(id)item
{
  itemCopy = item;
  v4 = [NPSDomainAccessor alloc];
  v5 = [v4 initWithDomain:kBridgeDomain pairedDevice:itemCopy];

  synchronize = [v5 synchronize];
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

- (void)suggestedButtonPressed:(id)pressed
{
  sub_10002DDC4(1);
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = sub_10002DEE4();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Is Auto Update enabled: %d", v6, 8u);
  }

  delegate = [(COSAutoUpdateOptInController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)alternateButtonPressed:(id)pressed
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = sub_10002DEE4();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Alt button pushed with enbled set to: %d", v6, 8u);
  }

  sub_10002DDC4(0);
  delegate = [(COSAutoUpdateOptInController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (id)suggestedButtonTitle
{
  v2 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v3 = [v2 valueForProperty:NRDevicePropertyGreenTeaDevice];
  bOOLValue = [v3 BOOLValue];

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (bOOLValue)
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