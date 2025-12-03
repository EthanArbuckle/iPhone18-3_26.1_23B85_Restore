@interface HPRFSessionTrackerAppCyclingPowerZoneViewController
+ (id)numberFormatter;
- (HPRFSessionTrackerAppCyclingPowerZoneViewController)initWithConfiguration:(id)configuration zoneIndex:(unint64_t)index updateDelegate:(id)delegate;
- (WOCyclingPowerZone)zone;
- (WOCyclingPowerZonesConfigurationUpdateDelegate)updateDelegate;
- (id)_lowerBoundForSpecifier:(id)specifier;
- (id)_upperBoundForSpecifier:(id)specifier;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_didBeginEditing:(id)editing;
- (void)_insertLowerDisplayBoundSpecifiers:(id)specifiers;
- (void)_insertUpperDisplayBoundSpecifiers:(id)specifiers;
- (void)_pressedTableView;
- (void)_setLowerBound:(id)bound specifier:(id)specifier;
- (void)_setUpperBound:(id)bound specifier:(id)specifier;
- (void)setConfiguration:(id)configuration;
@end

@implementation HPRFSessionTrackerAppCyclingPowerZoneViewController

- (HPRFSessionTrackerAppCyclingPowerZoneViewController)initWithConfiguration:(id)configuration zoneIndex:(unint64_t)index updateDelegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = HPRFSessionTrackerAppCyclingPowerZoneViewController;
  v11 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, configuration);
    v12->_zoneIndex = index;
    objc_storeWeak(&v12->_updateDelegate, delegateCopy);
    v13 = [[UITapGestureRecognizer alloc] initWithTarget:v12 action:"_pressedTableView"];
    tapGesture = v12->_tapGesture;
    v12->_tapGesture = v13;
  }

  return v12;
}

- (id)localizedPaneTitle
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v5 = [NSString localizedStringWithFormat:v4, [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zoneIndex]+ 1];

  return v5;
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
  localizedPaneTitle = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self localizedPaneTitle];
  [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self setTitle:localizedPaneTitle];

  [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self _insertLowerDisplayBoundSpecifiers:v3];
  [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self _insertUpperDisplayBoundSpecifiers:v3];
  v5 = OBJC_IVAR___PSListController__specifiers;
  v6 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v7 = v3;

  v8 = *&self->BPSNotificationAppController_opaque[v5];
  v9 = v8;

  return v8;
}

- (void)_insertLowerDisplayBoundSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
  lowerBound = [v4 lowerBound];

  if (lowerBound)
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_ZONE_LOWER_BOUND_GROUP_ID"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_LOWER_BOUND_HEADER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v6 setName:v8];

    numberFormatter = [objc_opt_class() numberFormatter];
    v10 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
    [v10 percentageLowerBound];
    v11 = [NSNumber numberWithDouble:?];
    v12 = [numberFormatter stringFromNumber:v11];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_LOWER_BOUND_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v15 = [NSString stringWithFormat:v14, v12];

    [v6 setProperty:v15 forKey:PSFooterTextGroupKey];
    [v6 setProperty:&off_386A8 forKey:PSFooterAlignmentGroupKey];
    [specifiersCopy addObject:v6];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_EDIT_FTP_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:"_setLowerBound:specifier:" get:"_lowerBoundForSpecifier:" detail:0 cell:8 edit:0];
    [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self setLowerBoundSpecifier:v18];

    lowerBoundSpecifier = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self lowerBoundSpecifier];
    [lowerBoundSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

    lowerBoundSpecifier2 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self lowerBoundSpecifier];
    [lowerBoundSpecifier2 setProperty:&__kCFBooleanTrue forKey:PSNumberKeyboardKey];

    lowerBoundSpecifier3 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self lowerBoundSpecifier];
    [specifiersCopy addObject:lowerBoundSpecifier3];
  }
}

- (id)_lowerBoundForSpecifier:(id)specifier
{
  numberFormatter = [objc_opt_class() numberFormatter];
  v5 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
  lowerBound = [v5 lowerBound];
  v7 = +[HKUnit wattUnit];
  [lowerBound doubleValueForUnit:v7];
  v8 = [NSNumber numberWithDouble:?];
  v9 = [numberFormatter stringFromNumber:v8];

  return v9;
}

- (void)_setLowerBound:(id)bound specifier:(id)specifier
{
  boundCopy = bound;
  if ([boundCopy length])
  {
    numberFormatter = [objc_opt_class() numberFormatter];
    v6 = [numberFormatter numberFromString:boundCopy];

    if (v6)
    {
      integerValue = [v6 integerValue];
      v8 = integerValue - 1;
      if (integerValue <= 1)
      {
        v8 = 1;
      }

      v9 = v8;
      zoneIndex = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zoneIndex];
      configuration = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self configuration];
      v12 = [WOCyclingPowerZonesConfigurationEditor changeLowerBoundTo:zoneIndex zoneIndex:configuration using:v9];
      [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self setConfiguration:v12];
    }
  }

  [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self reloadSpecifiers];
}

- (void)_insertUpperDisplayBoundSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
  upperBound = [v4 upperBound];

  if (upperBound)
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_ZONE_UPPER_BOUND_GROUP_ID"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_UPPER_BOUND_HEADER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v6 setName:v8];

    numberFormatter = [objc_opt_class() numberFormatter];
    v10 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
    [v10 percentageUpperBound];
    v11 = [NSNumber numberWithDouble:?];
    v12 = [numberFormatter stringFromNumber:v11];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_UPPER_BOUND_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v15 = [NSString stringWithFormat:v14, v12];

    [v6 setProperty:v15 forKey:PSFooterTextGroupKey];
    [v6 setProperty:&off_386A8 forKey:PSFooterAlignmentGroupKey];
    [specifiersCopy addObject:v6];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_EDIT_FTP_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:"_setUpperBound:specifier:" get:"_upperBoundForSpecifier:" detail:0 cell:8 edit:0];
    [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self setUpperBoundSpecifier:v18];

    upperBoundSpecifier = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self upperBoundSpecifier];
    [upperBoundSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

    upperBoundSpecifier2 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self upperBoundSpecifier];
    [upperBoundSpecifier2 setProperty:&__kCFBooleanTrue forKey:PSNumberKeyboardKey];

    upperBoundSpecifier3 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self upperBoundSpecifier];
    [specifiersCopy addObject:upperBoundSpecifier3];
  }
}

- (id)_upperBoundForSpecifier:(id)specifier
{
  numberFormatter = [objc_opt_class() numberFormatter];
  v5 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
  upperBound = [v5 upperBound];
  v7 = +[HKUnit wattUnit];
  [upperBound doubleValueForUnit:v7];
  v8 = [NSNumber numberWithDouble:?];
  v9 = [numberFormatter stringFromNumber:v8];

  return v9;
}

- (void)_setUpperBound:(id)bound specifier:(id)specifier
{
  boundCopy = bound;
  if ([boundCopy length])
  {
    numberFormatter = [objc_opt_class() numberFormatter];
    v6 = [numberFormatter numberFromString:boundCopy];

    if (v6)
    {
      integerValue = [v6 integerValue];
      if (integerValue <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = integerValue;
      }

      v9 = v8;
      zoneIndex = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zoneIndex];
      configuration = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self configuration];
      v12 = [WOCyclingPowerZonesConfigurationEditor changeUpperBoundTo:zoneIndex zoneIndex:configuration using:v9];
      [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self setConfiguration:v12];
    }
  }

  [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self reloadSpecifiers];
}

- (WOCyclingPowerZone)zone
{
  configuration = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self configuration];
  zones = [configuration zones];
  v5 = [zones objectAtIndexedSubscript:{-[HPRFSessionTrackerAppCyclingPowerZoneViewController zoneIndex](self, "zoneIndex")}];

  return v5;
}

- (void)setConfiguration:(id)configuration
{
  objc_storeStrong(&self->_configuration, configuration);
  configurationCopy = configuration;
  updateDelegate = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self updateDelegate];
  [updateDelegate updateWithConfiguration:configurationCopy];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = HPRFSessionTrackerAppCyclingPowerZoneViewController;
  v4 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)&v7 tableView:view cellForRowAtIndexPath:path];
  if ([v4 tag] == &dword_8)
  {
    editableTextField = [v4 editableTextField];
    [editableTextField setReturnKeyGoesToNextResponder:0];
    [editableTextField setReturnKeyType:9];
    [editableTextField setKeyboardType:4];
    [editableTextField setTextAlignment:{2 * (objc_msgSend(editableTextField, "effectiveUserInterfaceLayoutDirection") == 0)}];
  }

  return v4;
}

- (void)_didBeginEditing:(id)editing
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B5F0;
  block[3] = &unk_35180;
  editingCopy = editing;
  v3 = editingCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_pressedTableView
{
  table = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self table];
  [table endEditing:1];
}

+ (id)numberFormatter
{
  if (qword_412D8 != -1)
  {
    sub_220F8();
  }

  v3 = qword_412D0;

  return v3;
}

- (WOCyclingPowerZonesConfigurationUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

@end