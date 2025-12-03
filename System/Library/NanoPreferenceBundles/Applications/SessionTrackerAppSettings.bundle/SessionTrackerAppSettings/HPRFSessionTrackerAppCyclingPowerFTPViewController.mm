@interface HPRFSessionTrackerAppCyclingPowerFTPViewController
+ (id)numberFormatter;
- (HPRFSessionTrackerAppCyclingPowerFTPViewController)initWithConfiguration:(id)configuration updateDelegate:(id)delegate;
- (WOCyclingPowerZonesConfigurationUpdateDelegate)updateDelegate;
- (id)_functionalThresholdPower;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_didBeginEditing:(id)editing;
- (void)_insertFunctionalThresholdPowerSpecifiers:(id)specifiers;
- (void)_pressedTableView;
- (void)_setFunctionalThresholdPower:(id)power;
- (void)setConfiguration:(id)configuration;
@end

@implementation HPRFSessionTrackerAppCyclingPowerFTPViewController

- (HPRFSessionTrackerAppCyclingPowerFTPViewController)initWithConfiguration:(id)configuration updateDelegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = HPRFSessionTrackerAppCyclingPowerFTPViewController;
  v9 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_updateDelegate, delegateCopy);
    objc_storeStrong(&v10->_configuration, configuration);
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
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (id)specifiers
{
  v3 = objc_opt_new();
  localizedPaneTitle = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self localizedPaneTitle];
  [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self setTitle:localizedPaneTitle];

  [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self _insertFunctionalThresholdPowerSpecifiers:v3];
  v5 = OBJC_IVAR___PSListController__specifiers;
  v6 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v7 = v3;

  v8 = *&self->BPSNotificationAppController_opaque[v5];
  v9 = v8;

  return v8;
}

- (void)_insertFunctionalThresholdPowerSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v18 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_EDIT_FTP_GROUP_ID"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_EDIT_FTP_HEADER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  [v18 setName:v6];

  configuration = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self configuration];
  v8 = [HPRFSessionTrackerAppCyclingPowerConfigViewController automaticFTPString:configuration];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_MANUAL_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v11 = [NSString stringWithFormat:v10, v8];

  [v18 setProperty:v11 forKey:PSFooterTextGroupKey];
  [specifiersCopy addObject:v18];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_EDIT_FTP_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"_setFunctionalThresholdPower:" get:"_functionalThresholdPower" detail:0 cell:8 edit:0];
  [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self setFunctionalThresholdPowerSpecifier:v14];

  functionalThresholdPowerSpecifier = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self functionalThresholdPowerSpecifier];
  [functionalThresholdPowerSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  functionalThresholdPowerSpecifier2 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self functionalThresholdPowerSpecifier];
  [functionalThresholdPowerSpecifier2 setProperty:&__kCFBooleanTrue forKey:PSNumberKeyboardKey];

  functionalThresholdPowerSpecifier3 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self functionalThresholdPowerSpecifier];
  [specifiersCopy addObject:functionalThresholdPowerSpecifier3];
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
  numberFormatter = [objc_opt_class() numberFormatter];
  configuration = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self configuration];
  functionalThresholdPower = [configuration functionalThresholdPower];
  quantity = [functionalThresholdPower quantity];
  [quantity _value];
  v7 = [NSNumber numberWithDouble:?];
  v8 = [numberFormatter stringFromNumber:v7];

  return v8;
}

- (void)_setFunctionalThresholdPower:(id)power
{
  powerCopy = power;
  if ([powerCopy length])
  {
    numberFormatter = [objc_opt_class() numberFormatter];
    v5 = [numberFormatter numberFromString:powerCopy];

    if (v5)
    {
      integerValue = [v5 integerValue];
      configuration = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self configuration];
      v8 = [WOCyclingPowerZonesConfigurationEditor changeFunctionalThresholdPowerTo:configuration using:integerValue];
      [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self setConfiguration:v8];
    }
  }

  [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self reloadSpecifiers];
}

- (void)setConfiguration:(id)configuration
{
  objc_storeStrong(&self->_configuration, configuration);
  configurationCopy = configuration;
  updateDelegate = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self updateDelegate];
  [updateDelegate updateWithConfiguration:configurationCopy];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = HPRFSessionTrackerAppCyclingPowerFTPViewController;
  v5 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)&v8 tableView:view cellForRowAtIndexPath:path];
  if ([v5 tag] == &dword_8)
  {
    editableTextField = [v5 editableTextField];
    [editableTextField setReturnKeyGoesToNextResponder:0];
    [editableTextField setReturnKeyType:9];
    [editableTextField setKeyboardType:4];
    [editableTextField setTextAlignment:{2 * (objc_msgSend(editableTextField, "effectiveUserInterfaceLayoutDirection") == 0)}];
    [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self setEditableTextField:editableTextField];
  }

  return v5;
}

- (void)_didBeginEditing:(id)editing
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7734;
  block[3] = &unk_35180;
  editingCopy = editing;
  v3 = editingCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_pressedTableView
{
  table = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)self table];
  [table endEditing:1];
}

- (WOCyclingPowerZonesConfigurationUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

@end