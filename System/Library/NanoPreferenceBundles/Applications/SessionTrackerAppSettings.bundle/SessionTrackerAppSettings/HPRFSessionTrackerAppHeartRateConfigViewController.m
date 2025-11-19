@interface HPRFSessionTrackerAppHeartRateConfigViewController
- (BOOL)_hasData;
- (BOOL)_shouldManuallyConfigure;
- (NSArray)tableStructure;
- (WOHeartRateConfiguration)configuration;
- (WOHeartRateConfigurationRequest)request;
- (id)_footerForSection:(int64_t)a3;
- (id)_maximumHeartRateDisplayValue;
- (id)_restingHeartRateDisplayValue;
- (id)_zoneRangeDisplayValueForSpecifier:(id)a3;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)_insertConfigurationTypeSpecifiers:(id)a3;
- (void)_insertMaximumHeartRateSpecifiers:(id)a3;
- (void)_insertRestingHeartRateSpecifiers:(id)a3;
- (void)_insertSpecifiers:(id)a3 forSection:(int64_t)a4;
- (void)_insertZonesSpecifiers:(id)a3;
- (void)_mainThread_handleLoadingActiveConfiguration:(id)a3 inactiveConfiguration:(id)a4;
- (void)_pressedAutomaticPreference;
- (void)_pressedManualPreference;
- (void)_pressedZoneForSpecifier:(id)a3;
- (void)_restingHeartRateButtonTap;
- (void)setConfiguration:(id)a3;
- (void)updateZone:(id)a3 withNewZone:(id)a4;
- (void)viewDidLoad;
@end

@implementation HPRFSessionTrackerAppHeartRateConfigViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = HPRFSessionTrackerAppHeartRateConfigViewController;
  [(HPRFSessionTrackerAppHeartRateConfigViewController *)&v11 viewDidLoad];
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedDevicesMatching:v4];
  v6 = [v5 firstObject];

  v7 = FIUIHealthStoreForDevice();
  v8 = [[FIUIUnitManager alloc] initWithHealthStore:v7];
  v9 = [[FIUIFormattingManager alloc] initWithUnitManager:v8];
  formattingManager = self->_formattingManager;
  self->_formattingManager = v9;
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HEART_ZONES_BUTTON_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  return v3;
}

- (id)applicationBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)_mainThread_handleLoadingActiveConfiguration:(id)a3 inactiveConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = [v6 configurationType];
  if (v8 == &dword_0 + 1)
  {
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setManualConfiguration:v6];
  }

  else if (!v8)
  {
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setAutomaticConfiguration:v6];
  }

  v9 = [v7 configurationType];
  if (v9 == &dword_0 + 1)
  {
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setManualConfiguration:v7];
  }

  else if (!v9)
  {
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setAutomaticConfiguration:v7];
  }

  [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setConfiguration:v6];
  _HKInitializeLogging();
  v10 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self automaticConfiguration];
    v13 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Loaded heart rate configurations automatic %@, manual %@", &v14, 0x16u);
  }

  [(HPRFSessionTrackerAppHeartRateConfigViewController *)self reloadSpecifiers];
}

- (WOHeartRateConfigurationRequest)request
{
  request = self->_request;
  if (!request)
  {
    v4 = objc_opt_new();
    v5 = self->_request;
    self->_request = v4;

    request = self->_request;
  }

  return request;
}

- (NSArray)tableStructure
{
  if (!self->_tableStructure)
  {
    if ([(HPRFSessionTrackerAppHeartRateConfigViewController *)self _hasData])
    {
      if ([(HPRFSessionTrackerAppHeartRateConfigViewController *)self _shouldManuallyConfigure])
      {
        v3 = &off_38718;
      }

      else
      {
        v4 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];

        v3 = &off_38748;
        if (!v4)
        {
          v3 = &off_38730;
        }
      }
    }

    else
    {
      v3 = &__NSArray0__struct;
    }

    tableStructure = self->_tableStructure;
    self->_tableStructure = v3;
  }

  v6 = self->_tableStructure;

  return v6;
}

- (void)setConfiguration:(id)a3
{
  objc_storeWeak(&self->_configuration, a3);
  tableStructure = self->_tableStructure;
  self->_tableStructure = 0;
}

- (BOOL)_hasData
{
  v2 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_shouldManuallyConfigure
{
  v2 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v3 = [v2 isEditable];

  return v3;
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"HEART_RATE_CONFIGURATION_PANE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setTitle:v5];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self tableStructure];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        -[HPRFSessionTrackerAppHeartRateConfigViewController _insertSpecifiers:forSection:](self, "_insertSpecifiers:forSection:", v3, [*(*(&v17 + 1) + 8 * v10) integerValue]);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v11 = OBJC_IVAR___PSListController__specifiers;
  v12 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v13 = v3;

  v14 = *&self->BPSNotificationAppController_opaque[v11];
  v15 = v14;

  return v14;
}

- (void)_insertSpecifiers:(id)a3 forSection:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v8 = v6;
      v6 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _insertMaximumHeartRateSpecifiers:v6];
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_11;
      }

      v8 = v6;
      v6 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _insertZonesSpecifiers:v6];
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    v8 = v6;
    v6 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _insertRestingHeartRateSpecifiers:v6];
  }

  else
  {
    v8 = v6;
    v6 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _insertConfigurationTypeSpecifiers:v6];
  }

  v7 = v8;
LABEL_11:

  _objc_release_x1(v6, v7);
}

- (void)_insertConfigurationTypeSpecifiers:(id)a3
{
  v21 = a3;
  v4 = [PSSpecifier groupSpecifierWithID:@"HEART_RATE_CONFIGURATION_TYPE_GROUP_ID"];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v5 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _footerForSection:0];
  [v4 setProperty:v5 forKey:PSFooterTextGroupKey];

  [v21 addObject:v4];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HEART_RATE_CONFIGURATION_AUTOMATIC" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v8 setIdentifier:@"HEART_RATE_CONFIGURATION_TYPE_AUTOMATIC_ID"];
  [v8 setButtonAction:"_pressedAutomaticPreference"];
  v9 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v10 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self automaticConfiguration];

  if (v9 == v10)
  {
    [v4 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  [v21 addObject:v8];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"HEART_RATE_CONFIGURATION_MANUAL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v13 setIdentifier:@"HEART_RATE_CONFIGURATION_TYPE_MANUAL_ID"];
  [v13 setButtonAction:"_pressedManualPreference"];
  v14 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v15 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];

  if (v14 == v15)
  {
    [v4 setProperty:v13 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  [v21 addObject:v13];
  v16 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];

  if (!v16)
  {
    v17 = [PSSpecifier groupSpecifierWithID:@"FitnessAppButtonGroup"];

    [v21 addObject:v17];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"FITNESS_APP_BUTTON_NAME" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v20 setButtonAction:"_restingHeartRateButtonTap"];
    [v21 addObject:v20];
    v4 = v17;
    v13 = v20;
  }
}

- (void)_restingHeartRateButtonTap
{
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Jumping out to Fitness app", v5, 2u);
  }

  v3 = +[UIApplication sharedApplication];
  v4 = [NSURL URLWithString:@"fitnessapp-settings://health_details"];
  [v3 openURL:v4 options:&__NSDictionary0__struct completionHandler:&stru_35220];
}

- (void)_insertRestingHeartRateSpecifiers:(id)a3
{
  v4 = a3;
  v9 = [PSSpecifier groupSpecifierWithID:@"RESTING_HEART_RATE_GROUP_ID"];
  v5 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _footerForSection:1];
  [v9 setProperty:v5 forKey:PSFooterTextGroupKey];

  [v4 addObject:v9];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HEART_RATE_CONFIGURATION_RESTING_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"_restingHeartRateDisplayValue" detail:0 cell:4 edit:0];

  [v4 addObject:v8];
}

- (void)_insertMaximumHeartRateSpecifiers:(id)a3
{
  v4 = a3;
  v8 = [PSSpecifier groupSpecifierWithID:@"RESTING_HEART_RATE_GROUP_ID"];
  [v4 addObject:v8];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HEART_RATE_CONFIGURATION_MAXIMUM_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"_maximumHeartRateDisplayValue" detail:0 cell:4 edit:0];

  [v4 addObject:v7];
}

- (void)_insertZonesSpecifiers:(id)a3
{
  v32 = a3;
  v4 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
  v5 = [PSSpecifier groupSpecifierWithID:@"RESTING_HEART_RATE_GROUP_ID"];
  v6 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
  v7 = &selRef_setAdjustsFontForContentSizeCategory_;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"HEART_RATE_CONFIGURATION_ZONES_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  [v5 setName:v9];

  v30 = v5;
  [v32 addObject:v5];
  v10 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v11 = [v10 zones];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    v31 = PSEnabledKey;
    do
    {
      v14 = v4[362];
      v15 = [v6[389] bundleForClass:objc_opt_class()];
      [v15 localizedStringForKey:@"HEART_RATE_CONFIGURATION_ZONE_DETAIL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
      v16 = v7;
      v18 = v17 = v6;
      v19 = v13 + 1;
      v20 = [NSString localizedStringWithFormat:v18, v13 + 1];
      v21 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
      if ([v21 isEditable])
      {
        v22 = 2;
      }

      else
      {
        v22 = 4;
      }

      v23 = [v14 preferenceSpecifierNamed:v20 target:self set:0 get:"_zoneRangeDisplayValueForSpecifier:" detail:0 cell:v22 edit:0];

      [v23 setProperty:&__kCFBooleanTrue forKey:v31];
      v24 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
      v25 = [v24 zones];
      v26 = [v25 objectAtIndexedSubscript:v13];
      [v23 setUserInfo:v26];

      v6 = v17;
      v7 = v16;

      [v23 setButtonAction:"_pressedZoneForSpecifier:"];
      [v32 addObject:v23];

      v27 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
      v28 = [v27 zones];
      v29 = [v28 count];

      v4 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
      ++v13;
    }

    while (v19 < v29);
  }
}

- (id)_footerForSection:(int64_t)a3
{
  if (a3 == 1)
  {
    _HKInitializeLogging();
    v12 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
      v19[0] = 67109120;
      v19[1] = [v14 hasDefaultRestingHeartRate];
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Resting heart rate section: %d", v19, 8u);
    }

    v15 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
    v16 = [v15 hasDefaultRestingHeartRate];

    if (v16)
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = v9;
      v11 = @"HEART_RATE_CONFIGURATION_AUTOMATIC_DEFAULT_RESTING_FOOTER";
      goto LABEL_14;
    }

LABEL_11:
    v17 = 0;
    goto LABEL_15;
  }

  if (a3)
  {
    goto LABEL_11;
  }

  v4 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];

  if (!v4)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = v9;
    v11 = @"HEART_RATE_CONFIGURATION_AUTOMATIC_NO_DOB_FOOTER";
    goto LABEL_14;
  }

  v5 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v6 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self automaticConfiguration];

  if (v5 == v6)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = v9;
    v11 = @"HEART_RATE_CONFIGURATION_AUTOMATIC_FOOTER";
    goto LABEL_14;
  }

  v7 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v8 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];

  if (v7 != v8)
  {
    goto LABEL_11;
  }

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = v9;
  v11 = @"HEART_RATE_CONFIGURATION_MANUAL_FOOTER";
LABEL_14:
  v17 = [v9 localizedStringForKey:v11 value:&stru_35B68 table:@"SessionTrackerAppSettings"];

LABEL_15:

  return v17;
}

- (void)_pressedAutomaticPreference
{
  v3 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v4 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self automaticConfiguration];

  if (v3 != v4)
  {
    [WOHeartRateConfiguration setConfigurationType:0];
    v5 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self automaticConfiguration];
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setConfiguration:v5];

    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self reloadSpecifiers];
  }
}

- (void)_pressedManualPreference
{
  v3 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v4 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];

  if (v3 != v4)
  {
    [WOHeartRateConfiguration setConfigurationType:1];
    v5 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setConfiguration:v5];

    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self reloadSpecifiers];
  }
}

- (id)_restingHeartRateDisplayValue
{
  v3 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self formattingManager];
  v4 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v5 = [v4 restingHeartRate];
  v6 = [v3 localizedStringWithHeartRate:v5 unitStyle:3];

  return v6;
}

- (id)_maximumHeartRateDisplayValue
{
  v3 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self formattingManager];
  v4 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v5 = [v4 maximumHeartRate];
  v6 = [v3 localizedStringWithHeartRate:v5 unitStyle:3];

  return v6;
}

- (id)_zoneRangeDisplayValueForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 userInfo];

    if (!v6)
    {
      v16 = 0;
      goto LABEL_19;
    }

    v7 = [v6 lowerDisplayBound];

    if (v7)
    {
      v8 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self formattingManager];
      v9 = [v6 lowerDisplayBound];
      v7 = [v8 localizedStringWithHeartRate:v9 unitStyle:0];
    }

    v10 = [v6 upperDisplayBound];

    if (v10)
    {
      v11 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self formattingManager];
      v12 = [v6 upperDisplayBound];
      v13 = [v11 localizedStringWithHeartRate:v12 unitStyle:0];

      if (v7 && v13)
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"HEART_RATE_CONFIGURATION_ZONE_MANUAL_VALUE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        [NSString stringWithFormat:v15, v7, v13];
        v16 = LABEL_13:;

        goto LABEL_16;
      }

      if (v13)
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"HEART_RATE_CONFIGURATION_FIRST_ZONE_MANUAL_VALUE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        [NSString stringWithFormat:v15, v13, v18];
        goto LABEL_13;
      }
    }

    if (!v7)
    {
      v16 = 0;
      goto LABEL_17;
    }

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"HEART_RATE_CONFIGURATION_LAST_ZONE_MANUAL_VALUE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v16 = [NSString stringWithFormat:v14, v7];
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  v16 = 0;
  v6 = v5;
LABEL_18:

LABEL_19:

  return v16;
}

- (void)_pressedZoneForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v6 = [v5 isEditable];

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [v4 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 userInfo];

    if (v8)
    {
      _HKInitializeLogging();
      v9 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Push editing for Heart Rate Zone (%@)", &v13, 0xCu);
      }

      v10 = [[HPRFSessionTrackerAppHeartRateZoneViewController alloc] initWithDelegate:self zone:v8];
      v11 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self navigationController];
      [v11 pushViewController:v10 animated:1];

      goto LABEL_10;
    }
  }

  else
  {
  }

  _HKInitializeLogging();
  v12 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    sub_22038(v4, v12, self);
  }

LABEL_10:
}

- (void)updateZone:(id)a3 withNewZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Updating Heart Rate Zone (%@) to (%@)", &v13, 0x16u);
  }

  v9 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  v10 = [v9 zones];
  v11 = +[WOHeartRateZone zones:replacingZoneAtIndex:withZone:](WOHeartRateZone, "zones:replacingZoneAtIndex:withZone:", v10, [v6 zoneIndex], v7);

  v12 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  [v12 setZones:v11];

  [(HPRFSessionTrackerAppHeartRateConfigViewController *)self reloadSpecifiers];
  [WOHeartRateConfiguration setConfiguredZones:v11];
}

- (WOHeartRateConfiguration)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_configuration);

  return WeakRetained;
}

@end