@interface HPRFSessionTrackerAppHeartRateConfigViewController
- (BOOL)_hasData;
- (BOOL)_shouldManuallyConfigure;
- (NSArray)tableStructure;
- (WOHeartRateConfiguration)configuration;
- (WOHeartRateConfigurationRequest)request;
- (id)_footerForSection:(int64_t)section;
- (id)_maximumHeartRateDisplayValue;
- (id)_restingHeartRateDisplayValue;
- (id)_zoneRangeDisplayValueForSpecifier:(id)specifier;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)_insertConfigurationTypeSpecifiers:(id)specifiers;
- (void)_insertMaximumHeartRateSpecifiers:(id)specifiers;
- (void)_insertRestingHeartRateSpecifiers:(id)specifiers;
- (void)_insertSpecifiers:(id)specifiers forSection:(int64_t)section;
- (void)_insertZonesSpecifiers:(id)specifiers;
- (void)_mainThread_handleLoadingActiveConfiguration:(id)configuration inactiveConfiguration:(id)inactiveConfiguration;
- (void)_pressedAutomaticPreference;
- (void)_pressedManualPreference;
- (void)_pressedZoneForSpecifier:(id)specifier;
- (void)_restingHeartRateButtonTap;
- (void)setConfiguration:(id)configuration;
- (void)updateZone:(id)zone withNewZone:(id)newZone;
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
  firstObject = [v5 firstObject];

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
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (void)_mainThread_handleLoadingActiveConfiguration:(id)configuration inactiveConfiguration:(id)inactiveConfiguration
{
  configurationCopy = configuration;
  inactiveConfigurationCopy = inactiveConfiguration;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  configurationType = [configurationCopy configurationType];
  if (configurationType == &dword_0 + 1)
  {
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setManualConfiguration:configurationCopy];
  }

  else if (!configurationType)
  {
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setAutomaticConfiguration:configurationCopy];
  }

  configurationType2 = [inactiveConfigurationCopy configurationType];
  if (configurationType2 == &dword_0 + 1)
  {
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setManualConfiguration:inactiveConfigurationCopy];
  }

  else if (!configurationType2)
  {
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setAutomaticConfiguration:inactiveConfigurationCopy];
  }

  [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setConfiguration:configurationCopy];
  _HKInitializeLogging();
  v10 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    automaticConfiguration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self automaticConfiguration];
    manualConfiguration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];
    v14 = 138412546;
    v15 = automaticConfiguration;
    v16 = 2112;
    v17 = manualConfiguration;
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
        configuration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];

        v3 = &off_38748;
        if (!configuration)
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

- (void)setConfiguration:(id)configuration
{
  objc_storeWeak(&self->_configuration, configuration);
  tableStructure = self->_tableStructure;
  self->_tableStructure = 0;
}

- (BOOL)_hasData
{
  manualConfiguration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];
  v3 = manualConfiguration != 0;

  return v3;
}

- (BOOL)_shouldManuallyConfigure
{
  configuration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  isEditable = [configuration isEditable];

  return isEditable;
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
  tableStructure = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self tableStructure];
  v7 = [tableStructure countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(tableStructure);
        }

        -[HPRFSessionTrackerAppHeartRateConfigViewController _insertSpecifiers:forSection:](self, "_insertSpecifiers:forSection:", v3, [*(*(&v17 + 1) + 8 * v10) integerValue]);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [tableStructure countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)_insertSpecifiers:(id)specifiers forSection:(int64_t)section
{
  specifiersCopy = specifiers;
  v7 = specifiersCopy;
  if (section > 1)
  {
    if (section == 2)
    {
      v8 = specifiersCopy;
      specifiersCopy = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _insertMaximumHeartRateSpecifiers:specifiersCopy];
    }

    else
    {
      if (section != 3)
      {
        goto LABEL_11;
      }

      v8 = specifiersCopy;
      specifiersCopy = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _insertZonesSpecifiers:specifiersCopy];
    }
  }

  else if (section)
  {
    if (section != 1)
    {
      goto LABEL_11;
    }

    v8 = specifiersCopy;
    specifiersCopy = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _insertRestingHeartRateSpecifiers:specifiersCopy];
  }

  else
  {
    v8 = specifiersCopy;
    specifiersCopy = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _insertConfigurationTypeSpecifiers:specifiersCopy];
  }

  v7 = v8;
LABEL_11:

  _objc_release_x1(specifiersCopy, v7);
}

- (void)_insertConfigurationTypeSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [PSSpecifier groupSpecifierWithID:@"HEART_RATE_CONFIGURATION_TYPE_GROUP_ID"];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v5 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _footerForSection:0];
  [v4 setProperty:v5 forKey:PSFooterTextGroupKey];

  [specifiersCopy addObject:v4];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HEART_RATE_CONFIGURATION_AUTOMATIC" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v8 setIdentifier:@"HEART_RATE_CONFIGURATION_TYPE_AUTOMATIC_ID"];
  [v8 setButtonAction:"_pressedAutomaticPreference"];
  configuration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  automaticConfiguration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self automaticConfiguration];

  if (configuration == automaticConfiguration)
  {
    [v4 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  [specifiersCopy addObject:v8];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"HEART_RATE_CONFIGURATION_MANUAL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v13 setIdentifier:@"HEART_RATE_CONFIGURATION_TYPE_MANUAL_ID"];
  [v13 setButtonAction:"_pressedManualPreference"];
  configuration2 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  manualConfiguration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];

  if (configuration2 == manualConfiguration)
  {
    [v4 setProperty:v13 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  [specifiersCopy addObject:v13];
  configuration3 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];

  if (!configuration3)
  {
    v17 = [PSSpecifier groupSpecifierWithID:@"FitnessAppButtonGroup"];

    [specifiersCopy addObject:v17];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"FITNESS_APP_BUTTON_NAME" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v20 setButtonAction:"_restingHeartRateButtonTap"];
    [specifiersCopy addObject:v20];
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

- (void)_insertRestingHeartRateSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v9 = [PSSpecifier groupSpecifierWithID:@"RESTING_HEART_RATE_GROUP_ID"];
  v5 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self _footerForSection:1];
  [v9 setProperty:v5 forKey:PSFooterTextGroupKey];

  [specifiersCopy addObject:v9];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HEART_RATE_CONFIGURATION_RESTING_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"_restingHeartRateDisplayValue" detail:0 cell:4 edit:0];

  [specifiersCopy addObject:v8];
}

- (void)_insertMaximumHeartRateSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v8 = [PSSpecifier groupSpecifierWithID:@"RESTING_HEART_RATE_GROUP_ID"];
  [specifiersCopy addObject:v8];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HEART_RATE_CONFIGURATION_MAXIMUM_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"_maximumHeartRateDisplayValue" detail:0 cell:4 edit:0];

  [specifiersCopy addObject:v7];
}

- (void)_insertZonesSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
  v5 = [PSSpecifier groupSpecifierWithID:@"RESTING_HEART_RATE_GROUP_ID"];
  v6 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
  v7 = &selRef_setAdjustsFontForContentSizeCategory_;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"HEART_RATE_CONFIGURATION_ZONES_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  [v5 setName:v9];

  v30 = v5;
  [specifiersCopy addObject:v5];
  configuration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  zones = [configuration zones];
  v12 = [zones count];

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
      configuration2 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
      if ([configuration2 isEditable])
      {
        v22 = 2;
      }

      else
      {
        v22 = 4;
      }

      v23 = [v14 preferenceSpecifierNamed:v20 target:self set:0 get:"_zoneRangeDisplayValueForSpecifier:" detail:0 cell:v22 edit:0];

      [v23 setProperty:&__kCFBooleanTrue forKey:v31];
      configuration3 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
      zones2 = [configuration3 zones];
      v26 = [zones2 objectAtIndexedSubscript:v13];
      [v23 setUserInfo:v26];

      v6 = v17;
      v7 = v16;

      [v23 setButtonAction:"_pressedZoneForSpecifier:"];
      [specifiersCopy addObject:v23];

      configuration4 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
      zones3 = [configuration4 zones];
      v29 = [zones3 count];

      v4 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
      ++v13;
    }

    while (v19 < v29);
  }
}

- (id)_footerForSection:(int64_t)section
{
  if (section == 1)
  {
    _HKInitializeLogging();
    v12 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      configuration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
      v19[0] = 67109120;
      v19[1] = [configuration hasDefaultRestingHeartRate];
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Resting heart rate section: %d", v19, 8u);
    }

    configuration2 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
    hasDefaultRestingHeartRate = [configuration2 hasDefaultRestingHeartRate];

    if (hasDefaultRestingHeartRate)
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

  if (section)
  {
    goto LABEL_11;
  }

  configuration3 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];

  if (!configuration3)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = v9;
    v11 = @"HEART_RATE_CONFIGURATION_AUTOMATIC_NO_DOB_FOOTER";
    goto LABEL_14;
  }

  configuration4 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  automaticConfiguration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self automaticConfiguration];

  if (configuration4 == automaticConfiguration)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = v9;
    v11 = @"HEART_RATE_CONFIGURATION_AUTOMATIC_FOOTER";
    goto LABEL_14;
  }

  configuration5 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  manualConfiguration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];

  if (configuration5 != manualConfiguration)
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
  configuration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  automaticConfiguration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self automaticConfiguration];

  if (configuration != automaticConfiguration)
  {
    [WOHeartRateConfiguration setConfigurationType:0];
    automaticConfiguration2 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self automaticConfiguration];
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setConfiguration:automaticConfiguration2];

    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self reloadSpecifiers];
  }
}

- (void)_pressedManualPreference
{
  configuration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  manualConfiguration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];

  if (configuration != manualConfiguration)
  {
    [WOHeartRateConfiguration setConfigurationType:1];
    manualConfiguration2 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self manualConfiguration];
    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self setConfiguration:manualConfiguration2];

    [(HPRFSessionTrackerAppHeartRateConfigViewController *)self reloadSpecifiers];
  }
}

- (id)_restingHeartRateDisplayValue
{
  formattingManager = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self formattingManager];
  configuration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  restingHeartRate = [configuration restingHeartRate];
  v6 = [formattingManager localizedStringWithHeartRate:restingHeartRate unitStyle:3];

  return v6;
}

- (id)_maximumHeartRateDisplayValue
{
  formattingManager = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self formattingManager];
  configuration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  maximumHeartRate = [configuration maximumHeartRate];
  v6 = [formattingManager localizedStringWithHeartRate:maximumHeartRate unitStyle:3];

  return v6;
}

- (id)_zoneRangeDisplayValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo2 = [specifierCopy userInfo];

    if (!userInfo2)
    {
      v16 = 0;
      goto LABEL_19;
    }

    lowerDisplayBound = [userInfo2 lowerDisplayBound];

    if (lowerDisplayBound)
    {
      formattingManager = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self formattingManager];
      lowerDisplayBound2 = [userInfo2 lowerDisplayBound];
      lowerDisplayBound = [formattingManager localizedStringWithHeartRate:lowerDisplayBound2 unitStyle:0];
    }

    upperDisplayBound = [userInfo2 upperDisplayBound];

    if (upperDisplayBound)
    {
      formattingManager2 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self formattingManager];
      upperDisplayBound2 = [userInfo2 upperDisplayBound];
      v13 = [formattingManager2 localizedStringWithHeartRate:upperDisplayBound2 unitStyle:0];

      if (lowerDisplayBound && v13)
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"HEART_RATE_CONFIGURATION_ZONE_MANUAL_VALUE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        [NSString stringWithFormat:v15, lowerDisplayBound, v13];
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

    if (!lowerDisplayBound)
    {
      v16 = 0;
      goto LABEL_17;
    }

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"HEART_RATE_CONFIGURATION_LAST_ZONE_MANUAL_VALUE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v16 = [NSString stringWithFormat:v14, lowerDisplayBound];
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  v16 = 0;
  userInfo2 = userInfo;
LABEL_18:

LABEL_19:

  return v16;
}

- (void)_pressedZoneForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  configuration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  isEditable = [configuration isEditable];

  if (!isEditable)
  {
    goto LABEL_10;
  }

  userInfo = [specifierCopy userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo2 = [specifierCopy userInfo];

    if (userInfo2)
    {
      _HKInitializeLogging();
      v9 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = userInfo2;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Push editing for Heart Rate Zone (%@)", &v13, 0xCu);
      }

      v10 = [[HPRFSessionTrackerAppHeartRateZoneViewController alloc] initWithDelegate:self zone:userInfo2];
      navigationController = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self navigationController];
      [navigationController pushViewController:v10 animated:1];

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
    sub_22038(specifierCopy, v12, self);
  }

LABEL_10:
}

- (void)updateZone:(id)zone withNewZone:(id)newZone
{
  zoneCopy = zone;
  newZoneCopy = newZone;
  _HKInitializeLogging();
  v8 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = zoneCopy;
    v15 = 2112;
    v16 = newZoneCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Updating Heart Rate Zone (%@) to (%@)", &v13, 0x16u);
  }

  configuration = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  zones = [configuration zones];
  v11 = +[WOHeartRateZone zones:replacingZoneAtIndex:withZone:](WOHeartRateZone, "zones:replacingZoneAtIndex:withZone:", zones, [zoneCopy zoneIndex], newZoneCopy);

  configuration2 = [(HPRFSessionTrackerAppHeartRateConfigViewController *)self configuration];
  [configuration2 setZones:v11];

  [(HPRFSessionTrackerAppHeartRateConfigViewController *)self reloadSpecifiers];
  [WOHeartRateConfiguration setConfiguredZones:v11];
}

- (WOHeartRateConfiguration)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_configuration);

  return WeakRetained;
}

@end