@interface HPRFSessionTrackerAppCyclingPowerFTPViewController
+ (id)numberFormatter;
- (HPRFSessionTrackerAppCyclingPowerFTPViewController)initWithConfiguration:(id)a3 updateDelegate:(id)a4;
- (WOCyclingPowerZonesConfigurationUpdateDelegate)updateDelegate;
- (id)_functionalThresholdPower;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_didBeginEditing:(id)a3;
- (void)_insertFunctionalThresholdPowerSpecifiers:(id)a3;
- (void)_pressedTableView;
- (void)_setFunctionalThresholdPower:(id)a3;
- (void)setConfiguration:(id)a3;
@end

@implementation HPRFSessionTrackerAppCyclingPowerFTPViewController

- (HPRFSessionTrackerAppCyclingPowerFTPViewController)initWithConfiguration:(id)a3 updateDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HPRFSessionTrackerAppCyclingPowerFTPViewController;
  v9 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_updateDelegate, v8);
    objc_storeStrong(&v10->_configuration, a3);
    v11 = [[UITapGestureRecognizer alloc] initWithTarget:v10 action:"_pressedTableView"];
    tapGesture = v10->_tapGesture;
    v10->_tapGesture = v11;
  }

  return v10;
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_SHORT_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v4 = [NSString stringWithFormat:v3];

  return v4;
}

- (id)applicationBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self localizedPaneTitle];
  [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self setTitle:v4];

  [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self _insertFunctionalThresholdPowerSpecifiers:v3];
  v5 = OBJC_IVAR___PSListController__specifiers;
  v6 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v7 = v3;

  v8 = *&self->BPSNotificationAppController_opaque[v5];
  v9 = v8;

  return v8;
}

- (void)_insertFunctionalThresholdPowerSpecifiers:(id)a3
{
  v4 = a3;
  v18 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_EDIT_FTP_GROUP_ID"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_EDIT_FTP_HEADER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  [v18 setName:v6];

  v7 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self configuration];
  v8 = [HPRFSessionTrackerAppCyclingPowerConfigViewController automaticFTPString:v7];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_MANUAL_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v11 = [NSString stringWithFormat:v10, v8];

  [v18 setProperty:v11 forKey:PSFooterTextGroupKey];
  [v4 addObject:v18];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_EDIT_FTP_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"_setFunctionalThresholdPower:" get:"_functionalThresholdPower" detail:0 cell:8 edit:0];
  [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self setFunctionalThresholdPowerSpecifier:v14];

  v15 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self functionalThresholdPowerSpecifier];
  [v15 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  v16 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self functionalThresholdPowerSpecifier];
  [v16 setProperty:&__kCFBooleanTrue forKey:PSNumberKeyboardKey];

  v17 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self functionalThresholdPowerSpecifier];
  [v4 addObject:v17];
}

+ (id)numberFormatter
{
  if (qword_412C8 != -1)
  {
    sub_22024();
  }

  v3 = qword_412C0;

  return v3;
}

- (id)_functionalThresholdPower
{
  v3 = [objc_opt_class() numberFormatter];
  v4 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self configuration];
  v5 = [v4 functionalThresholdPower];
  v6 = [v5 quantity];
  [v6 _value];
  v7 = [NSNumber numberWithDouble:?];
  v8 = [v3 stringFromNumber:v7];

  return v8;
}

- (void)_setFunctionalThresholdPower:(id)a3
{
  v9 = a3;
  if ([v9 length])
  {
    v4 = [objc_opt_class() numberFormatter];
    v5 = [v4 numberFromString:v9];

    if (v5)
    {
      v6 = [v5 integerValue];
      v7 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self configuration];
      v8 = [WOCyclingPowerZonesConfigurationEditor changeFunctionalThresholdPowerTo:v7 using:v6];
      [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self setConfiguration:v8];
    }
  }

  [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self reloadSpecifiers];
}

- (void)setConfiguration:(id)a3
{
  objc_storeStrong(&self->_configuration, a3);
  v5 = a3;
  v6 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self updateDelegate];
  [v6 updateWithConfiguration:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = HPRFSessionTrackerAppCyclingPowerFTPViewController;
  v5 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)&v8 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v5 tag] == &dword_8)
  {
    v6 = [v5 editableTextField];
    [v6 setReturnKeyGoesToNextResponder:0];
    [v6 setReturnKeyType:9];
    [v6 setKeyboardType:4];
    [v6 setTextAlignment:{2 * (objc_msgSend(v6, "effectiveUserInterfaceLayoutDirection") == 0)}];
    [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self setEditableTextField:v6];
  }

  return v5;
}

- (void)_didBeginEditing:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7734;
  block[3] = &unk_35180;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_pressedTableView
{
  v2 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self table];
  [v2 endEditing:1];
}

- (WOCyclingPowerZonesConfigurationUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

@end