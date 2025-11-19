@interface HPRFSessionTrackerAppHeartRateZoneViewController
+ (id)zoneValueFormatter;
- (HPRFSessionTrackerAppHeartRateZoneViewController)initWithDelegate:(id)a3 zone:(id)a4;
- (HPRFSessionTrackerAppHeartRateZoneViewControllerDelegate)delegate;
- (id)_lowerBoundForSpecifier:(id)a3;
- (id)_upperBoundForSpecifier:(id)a3;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_didBeginEditing:(id)a3;
- (void)_pressedTableView;
- (void)_setLowerBound:(id)a3 specifier:(id)a4;
- (void)_setUpperBound:(id)a3 specifier:(id)a4;
@end

@implementation HPRFSessionTrackerAppHeartRateZoneViewController

- (HPRFSessionTrackerAppHeartRateZoneViewController)initWithDelegate:(id)a3 zone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HPRFSessionTrackerAppHeartRateZoneViewController;
  v8 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_zone, a4);
    v10 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"_pressedTableView"];
    tapGesture = v9->_tapGesture;
    v9->_tapGesture = v10;
  }

  return v9;
}

- (id)localizedPaneTitle
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HEART_RATE_CONFIGURATION_ZONE_DETAIL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v5 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [v5 zoneIndex] + 1);

  return v6;
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
  v4 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self localizedPaneTitle];
  [(HPRFSessionTrackerAppHeartRateZoneViewController *)self setTitle:v4];

  v5 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
  v6 = [v5 lowerDisplayBound];

  if (v6)
  {
    v7 = [PSSpecifier groupSpecifierWithID:@"ZONE_LOWER_BOUND_GROUP_ID"];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"HEART_RATE_CONFIGURATION_START_OF_ZONE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v7 setName:v9];

    [v3 addObject:v7];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"HEART_RATE_CONFIGURATION_BEATS_PER_MINUTE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"_setLowerBound:specifier:" get:"_lowerBoundForSpecifier:" detail:0 cell:8 edit:0];
    [(HPRFSessionTrackerAppHeartRateZoneViewController *)self setLowerBoundSpecifier:v12];

    v13 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self lowerBoundSpecifier];
    [v13 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

    v14 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self lowerBoundSpecifier];
    [v14 setProperty:&__kCFBooleanTrue forKey:PSNumberKeyboardKey];

    v15 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self lowerBoundSpecifier];
    [v3 addObject:v15];
  }

  v16 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
  v17 = [v16 upperDisplayBound];

  if (v17)
  {
    v18 = [PSSpecifier groupSpecifierWithID:@"ZONE_UPPER_BOUND_GROUP_ID"];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"HEART_RATE_CONFIGURATION_END_OF_ZONE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v18 setName:v20];

    [v3 addObject:v18];
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"HEART_RATE_CONFIGURATION_BEATS_PER_MINUTE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"_setUpperBound:specifier:" get:"_upperBoundForSpecifier:" detail:0 cell:8 edit:0];
    [(HPRFSessionTrackerAppHeartRateZoneViewController *)self setUpperBoundSpecifier:v23];

    v24 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self upperBoundSpecifier];
    [v24 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

    v25 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self upperBoundSpecifier];
    [v25 setProperty:&__kCFBooleanTrue forKey:PSNumberKeyboardKey];

    v26 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self upperBoundSpecifier];
    [v3 addObject:v26];
  }

  v27 = OBJC_IVAR___PSListController__specifiers;
  v28 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v29 = v3;

  v30 = *&self->BPSNotificationAppController_opaque[v27];
  v31 = v30;

  return v30;
}

+ (id)zoneValueFormatter
{
  if (qword_41308 != -1)
  {
    sub_2218C();
  }

  v3 = qword_41300;

  return v3;
}

- (id)_lowerBoundForSpecifier:(id)a3
{
  v4 = [objc_opt_class() zoneValueFormatter];
  v5 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
  v6 = [v5 lowerDisplayBound];
  v7 = +[HKUnit _countPerMinuteUnit];
  [v6 doubleValueForUnit:v7];
  v8 = [NSNumber numberWithDouble:?];
  v9 = [v4 stringFromNumber:v8];

  return v9;
}

- (void)_setLowerBound:(id)a3 specifier:(id)a4
{
  v18 = a3;
  if ([v18 length])
  {
    v5 = [objc_opt_class() zoneValueFormatter];
    v6 = [v5 numberFromString:v18];

    if (v6)
    {
      v7 = [v6 integerValue];
      v8 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
      [v8 lowerBoundMinimum];
      v10 = v9;

      if (v10 > v7)
      {
        v7 = v10;
      }

      v11 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
      [v11 lowerBoundMaximum];
      v13 = v12;

      if (v7 < v13)
      {
        v13 = v7;
      }

      v14 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
      v15 = [v14 zoneByMutatingLowerBound:v13];

      v16 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self delegate];
      v17 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
      [v16 updateZone:v17 withNewZone:v15];

      [(HPRFSessionTrackerAppHeartRateZoneViewController *)self setZone:v15];
    }
  }

  [(HPRFSessionTrackerAppHeartRateZoneViewController *)self reloadSpecifiers];
}

- (id)_upperBoundForSpecifier:(id)a3
{
  v4 = [objc_opt_class() zoneValueFormatter];
  v5 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
  v6 = [v5 upperDisplayBound];
  v7 = +[HKUnit _countPerMinuteUnit];
  [v6 doubleValueForUnit:v7];
  v8 = [NSNumber numberWithDouble:?];
  v9 = [v4 stringFromNumber:v8];

  return v9;
}

- (void)_setUpperBound:(id)a3 specifier:(id)a4
{
  v18 = a3;
  if ([v18 length])
  {
    v5 = [objc_opt_class() zoneValueFormatter];
    v6 = [v5 numberFromString:v18];

    if (v6)
    {
      v7 = [v6 integerValue] + 1.0;
      v8 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
      [v8 upperBoundMinimum];
      v10 = v9;

      if (v7 < v10)
      {
        v7 = v10;
      }

      v11 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
      [v11 upperBoundMaximum];
      v13 = v12;

      if (v7 < v13)
      {
        v13 = v7;
      }

      v14 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
      v15 = [v14 zoneByMutatingUpperBound:v13];

      v16 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self delegate];
      v17 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self zone];
      [v16 updateZone:v17 withNewZone:v15];

      [(HPRFSessionTrackerAppHeartRateZoneViewController *)self setZone:v15];
    }
  }

  [(HPRFSessionTrackerAppHeartRateZoneViewController *)self reloadSpecifiers];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = HPRFSessionTrackerAppHeartRateZoneViewController;
  v4 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
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
  block[2] = sub_11978;
  block[3] = &unk_35180;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_pressedTableView
{
  v2 = [(HPRFSessionTrackerAppHeartRateZoneViewController *)self table];
  [v2 endEditing:1];
}

- (HPRFSessionTrackerAppHeartRateZoneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end