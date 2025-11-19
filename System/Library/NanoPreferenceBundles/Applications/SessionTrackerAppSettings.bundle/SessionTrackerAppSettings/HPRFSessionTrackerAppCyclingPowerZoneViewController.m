@interface HPRFSessionTrackerAppCyclingPowerZoneViewController
+ (id)numberFormatter;
- (HPRFSessionTrackerAppCyclingPowerZoneViewController)initWithConfiguration:(id)a3 zoneIndex:(unint64_t)a4 updateDelegate:(id)a5;
- (WOCyclingPowerZone)zone;
- (WOCyclingPowerZonesConfigurationUpdateDelegate)updateDelegate;
- (id)_lowerBoundForSpecifier:(id)a3;
- (id)_upperBoundForSpecifier:(id)a3;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_didBeginEditing:(id)a3;
- (void)_insertLowerDisplayBoundSpecifiers:(id)a3;
- (void)_insertUpperDisplayBoundSpecifiers:(id)a3;
- (void)_pressedTableView;
- (void)_setLowerBound:(id)a3 specifier:(id)a4;
- (void)_setUpperBound:(id)a3 specifier:(id)a4;
- (void)setConfiguration:(id)a3;
@end

@implementation HPRFSessionTrackerAppCyclingPowerZoneViewController

- (HPRFSessionTrackerAppCyclingPowerZoneViewController)initWithConfiguration:(id)a3 zoneIndex:(unint64_t)a4 updateDelegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HPRFSessionTrackerAppCyclingPowerZoneViewController;
  v11 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a3);
    v12->_zoneIndex = a4;
    objc_storeWeak(&v12->_updateDelegate, v10);
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
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self localizedPaneTitle];
  [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self setTitle:v4];

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

- (void)_insertLowerDisplayBoundSpecifiers:(id)a3
{
  v22 = a3;
  v4 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
  v5 = [v4 lowerBound];

  if (v5)
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_ZONE_LOWER_BOUND_GROUP_ID"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_LOWER_BOUND_HEADER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v6 setName:v8];

    v9 = [objc_opt_class() numberFormatter];
    v10 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
    [v10 percentageLowerBound];
    v11 = [NSNumber numberWithDouble:?];
    v12 = [v9 stringFromNumber:v11];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_LOWER_BOUND_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v15 = [NSString stringWithFormat:v14, v12];

    [v6 setProperty:v15 forKey:PSFooterTextGroupKey];
    [v6 setProperty:&off_386A8 forKey:PSFooterAlignmentGroupKey];
    [v22 addObject:v6];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_EDIT_FTP_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:"_setLowerBound:specifier:" get:"_lowerBoundForSpecifier:" detail:0 cell:8 edit:0];
    [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self setLowerBoundSpecifier:v18];

    v19 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self lowerBoundSpecifier];
    [v19 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

    v20 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self lowerBoundSpecifier];
    [v20 setProperty:&__kCFBooleanTrue forKey:PSNumberKeyboardKey];

    v21 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self lowerBoundSpecifier];
    [v22 addObject:v21];
  }
}

- (id)_lowerBoundForSpecifier:(id)a3
{
  v4 = [objc_opt_class() numberFormatter];
  v5 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
  v6 = [v5 lowerBound];
  v7 = +[HKUnit wattUnit];
  [v6 doubleValueForUnit:v7];
  v8 = [NSNumber numberWithDouble:?];
  v9 = [v4 stringFromNumber:v8];

  return v9;
}

- (void)_setLowerBound:(id)a3 specifier:(id)a4
{
  v13 = a3;
  if ([v13 length])
  {
    v5 = [objc_opt_class() numberFormatter];
    v6 = [v5 numberFromString:v13];

    if (v6)
    {
      v7 = [v6 integerValue];
      v8 = v7 - 1;
      if (v7 <= 1)
      {
        v8 = 1;
      }

      v9 = v8;
      v10 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zoneIndex];
      v11 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self configuration];
      v12 = [WOCyclingPowerZonesConfigurationEditor changeLowerBoundTo:v10 zoneIndex:v11 using:v9];
      [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self setConfiguration:v12];
    }
  }

  [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self reloadSpecifiers];
}

- (void)_insertUpperDisplayBoundSpecifiers:(id)a3
{
  v22 = a3;
  v4 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
  v5 = [v4 upperBound];

  if (v5)
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_ZONE_UPPER_BOUND_GROUP_ID"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_UPPER_BOUND_HEADER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v6 setName:v8];

    v9 = [objc_opt_class() numberFormatter];
    v10 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
    [v10 percentageUpperBound];
    v11 = [NSNumber numberWithDouble:?];
    v12 = [v9 stringFromNumber:v11];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_UPPER_BOUND_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v15 = [NSString stringWithFormat:v14, v12];

    [v6 setProperty:v15 forKey:PSFooterTextGroupKey];
    [v6 setProperty:&off_386A8 forKey:PSFooterAlignmentGroupKey];
    [v22 addObject:v6];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_EDIT_FTP_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:"_setUpperBound:specifier:" get:"_upperBoundForSpecifier:" detail:0 cell:8 edit:0];
    [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self setUpperBoundSpecifier:v18];

    v19 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self upperBoundSpecifier];
    [v19 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

    v20 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self upperBoundSpecifier];
    [v20 setProperty:&__kCFBooleanTrue forKey:PSNumberKeyboardKey];

    v21 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self upperBoundSpecifier];
    [v22 addObject:v21];
  }
}

- (id)_upperBoundForSpecifier:(id)a3
{
  v4 = [objc_opt_class() numberFormatter];
  v5 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zone];
  v6 = [v5 upperBound];
  v7 = +[HKUnit wattUnit];
  [v6 doubleValueForUnit:v7];
  v8 = [NSNumber numberWithDouble:?];
  v9 = [v4 stringFromNumber:v8];

  return v9;
}

- (void)_setUpperBound:(id)a3 specifier:(id)a4
{
  v13 = a3;
  if ([v13 length])
  {
    v5 = [objc_opt_class() numberFormatter];
    v6 = [v5 numberFromString:v13];

    if (v6)
    {
      v7 = [v6 integerValue];
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      v9 = v8;
      v10 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self zoneIndex];
      v11 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self configuration];
      v12 = [WOCyclingPowerZonesConfigurationEditor changeUpperBoundTo:v10 zoneIndex:v11 using:v9];
      [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self setConfiguration:v12];
    }
  }

  [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self reloadSpecifiers];
}

- (WOCyclingPowerZone)zone
{
  v3 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self configuration];
  v4 = [v3 zones];
  v5 = [v4 objectAtIndexedSubscript:{-[HPRFSessionTrackerAppCyclingPowerZoneViewController zoneIndex](self, "zoneIndex")}];

  return v5;
}

- (void)setConfiguration:(id)a3
{
  objc_storeStrong(&self->_configuration, a3);
  v5 = a3;
  v6 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self updateDelegate];
  [v6 updateWithConfiguration:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = HPRFSessionTrackerAppCyclingPowerZoneViewController;
  v4 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v4 tag] == &dword_8)
  {
    v5 = [v4 editableTextField];
    [v5 setReturnKeyGoesToNextResponder:0];
    [v5 setReturnKeyType:9];
    [v5 setKeyboardType:4];
    [v5 setTextAlignment:{2 * (objc_msgSend(v5, "effectiveUserInterfaceLayoutDirection") == 0)}];
  }

  return v4;
}

- (void)_didBeginEditing:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B5F0;
  block[3] = &unk_35180;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_pressedTableView
{
  v2 = [(HPRFSessionTrackerAppCyclingPowerZoneViewController *)self table];
  [v2 endEditing:1];
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