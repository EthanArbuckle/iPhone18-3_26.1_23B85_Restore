@interface HPRFSessionTrackerAppCyclingPowerConfigViewController
+ (id)automaticFTPString:(id)a3;
+ (id)numberFormatter;
- (id)_functionalThresholdPowerString;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)_insertConfigurationTypeSpecifiers:(id)a3;
- (void)_insertFunctionalThresholdPowerSpecifiers:(id)a3;
- (void)_insertPowerZonesSizeSpecifiers:(id)a3;
- (void)_insertRecalculateZonesSpecifiers:(id)a3;
- (void)_insertZonesSpecifiers:(id)a3;
- (void)_mainThread_handleCyclingPowerZonesConfiguration:(id)a3;
- (void)_pressedAutomaticPreference;
- (void)_pressedCyclingPowerZonesSize;
- (void)_pressedFunctionalThresholdPower;
- (void)_pressedManualPreference;
- (void)_pressedRecalculateZones;
- (void)_pressedZoneForSpecifier:(id)a3;
- (void)_zoneRangeDisplayValueForSpecifier:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)updateWithConfiguration:(id)a3;
- (void)viewDidLoad;
@end

@implementation HPRFSessionTrackerAppCyclingPowerConfigViewController

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = HPRFSessionTrackerAppCyclingPowerConfigViewController;
  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)&v19 viewDidLoad];
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedDevicesMatching:v4];
  v6 = [v5 firstObject];

  v7 = FIUIHealthStoreForDevice();
  v8 = [[FIUIUnitManager alloc] initWithHealthStore:v7];
  v9 = [[FIUIFormattingManager alloc] initWithUnitManager:v8];
  formattingManager = self->_formattingManager;
  self->_formattingManager = v9;

  v11 = [[WOCyclingPowerZonesConfigurationStore alloc] initWithHealthStore:v7];
  configurationStore = self->_configurationStore;
  self->_configurationStore = v11;

  v13 = objc_alloc_init(WOCyclingSensorsStore);
  cyclingSensorsStore = self->_cyclingSensorsStore;
  self->_cyclingSensorsStore = v13;

  objc_initWeak(&location, self);
  v15 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configurationStore];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_140C8;
  v16[3] = &unk_35448;
  objc_copyWeak(&v17, &location);
  [v15 fetchCyclingPowerZonesConfigurationWithCompletion:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CYCLING_POWER_ZONES_BUTTON_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

  return v3;
}

- (id)applicationBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)_mainThread_handleCyclingPowerZonesConfiguration:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setConfiguration:v4];

  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_PANE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setTitle:v5];

  v6 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];

  if (v6)
  {
    [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self _insertConfigurationTypeSpecifiers:v3];
    [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self _insertFunctionalThresholdPowerSpecifiers:v3];
    [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self _insertPowerZonesSizeSpecifiers:v3];
    [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self _insertZonesSpecifiers:v3];
    [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self _insertRecalculateZonesSpecifiers:v3];
  }

  v7 = OBJC_IVAR___PSListController__specifiers;
  v8 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v9 = v3;

  v10 = *&self->BPSNotificationAppController_opaque[v7];
  v11 = v10;

  return v10;
}

- (void)_insertConfigurationTypeSpecifiers:(id)a3
{
  v31 = a3;
  v4 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_CONFIGURATION_TYPE_GROUP_ID"];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v5 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v6 = [v5 configurationType];

  if (v6 == &dword_0 + 1)
  {
    v9 = @"CYCLING_POWER_CONFIGURATION_MANUAL_FOOTER";
    goto LABEL_6;
  }

  if (!v6)
  {
    v7 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v8 = [v7 isAutomaticFromAppleFTP];

    if (v8)
    {
      v9 = @"CYCLING_POWER_CONFIGURATION_AUTOMATIC_FOOTER";
LABEL_6:
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:v9 value:&stru_35B68 table:@"SessionTrackerAppSettings"];
      [v4 setProperty:v11 forKey:PSFooterTextGroupKey];
    }
  }

  [v31 addObject:v4];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_AUTOMATIC" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v14 setIdentifier:@"CYCLING_POWER_CONFIGURATION_TYPE_AUTOMATIC_ID"];
  [v14 setButtonAction:"_pressedAutomaticPreference"];
  v15 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v16 = [v15 configurationType];

  if (!v16)
  {
    [v4 setProperty:v14 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  [v31 addObject:v14];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_MANUAL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v19 setIdentifier:@"CYCLING_POWER_CONFIGURATION_TYPE_MANUAL_ID"];
  [v19 setButtonAction:"_pressedManualPreference"];
  v20 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v21 = [v20 configurationType];

  if (v21 == &dword_0 + 1)
  {
    [v4 setProperty:v19 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  [v31 addObject:v19];
  v22 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  if ([v22 configurationType])
  {
  }

  else
  {
    v23 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v24 = [v23 isAutomaticFromAppleFTP];

    if ((v24 & 1) == 0)
    {
      v25 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_NO_FTP_GROUP_ID"];

      [v31 addObject:v25];
      v26 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:4 edit:0];

      [v26 setProperty:objc_opt_class() forKey:PSCellClassKey];
      v27 = [NSBundle bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_AUTOMATIC_FTP_NOT_AVAILABLE_NAME" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
      [v26 setProperty:v28 forKey:@"HPRFSessionTrackerAppCyclingPowerDetailPlatterCellTitleKey"];

      v29 = [NSBundle bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_AUTOMATIC_FTP_NOT_AVAILABLE_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
      [v26 setProperty:v30 forKey:@"HPRFSessionTrackerAppCyclingPowerDetailPlatterCellDetailKey"];

      [v31 addObject:v26];
      v4 = v25;
      v19 = v26;
    }
  }
}

- (void)_insertFunctionalThresholdPowerSpecifiers:(id)a3
{
  v30 = a3;
  v4 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
  v5 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_FTP_GROUP_ID"];
  v6 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v7 = [v6 configurationType];

  v8 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
  if (v7 == &dword_0 + 1)
  {
    v18 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v17 = [HPRFSessionTrackerAppCyclingPowerConfigViewController automaticFTPString:v18];

    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_MANUAL_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v21 = [NSString stringWithFormat:v20, v17];

    [v5 setProperty:v21 forKey:PSFooterTextGroupKey];
  }

  else
  {
    if (v7)
    {
      goto LABEL_7;
    }

    v9 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v10 = [v9 isAutomaticFromAppleFTP];

    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_AUTOMATIC_FTP_AVAILABLE_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v13 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v14 = [v13 functionalThresholdPower];
    v15 = [v14 creationDate];
    v16 = [FIUIDateFormattingUtilities stringWithShortStyleDate:v15];
    v17 = [NSString stringWithFormat:v12, v16];

    v8 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
    v4 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;

    [v5 setProperty:v17 forKey:PSFooterTextGroupKey];
  }

LABEL_7:
  [v30 addObject:v5];
  v22 = v4[362];
  v23 = [v8[389] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v25 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  if ([v25 isEditable])
  {
    v26 = 2;
  }

  else
  {
    v26 = 4;
  }

  v27 = [v22 preferenceSpecifierNamed:v24 target:self set:0 get:"_functionalThresholdPowerString" detail:0 cell:v26 edit:0];

  v28 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v29 = [v28 isEditable];

  if (v29)
  {
    [v27 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v27 setButtonAction:"_pressedFunctionalThresholdPower"];
  }

  [v27 setProperty:&__kCFBooleanTrue forKey:PSPrioritizeValueTextDisplayKey];
  [v27 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v27 setProperty:&__kCFBooleanTrue forKey:PSAdjustFontSizeToFitWidthKey];
  [v30 addObject:v27];
}

- (void)_insertPowerZonesSizeSpecifiers:(id)a3
{
  v20 = a3;
  v4 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v5 = [v4 configurationType];

  if (v5 == &dword_0 + 1)
  {
    v6 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    if ([v6 isEditable])
    {
      v7 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
      v8 = [v7 functionalThresholdPower];
      v9 = [v8 isAvailable];
    }

    else
    {
      v9 = 0;
    }

    v10 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_NUMBER_OF_ZONES_GROUP_ID"];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_POWER_ZONES_SIZE_HEADER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v10 setName:v12];

    [v20 addObject:v10];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_POWER_ZONES_SIZE_ITEM_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v15 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v16 = [v15 zones];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 count]);
    v18 = [NSString localizedStringWithFormat:v14, v17];

    if (v9)
    {
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:2 edit:0];
      [v19 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
      [v19 setButtonAction:"_pressedCyclingPowerZonesSize"];
    }

    else
    {
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:4 edit:0];
    }

    [v20 addObject:v19];
  }
}

- (void)_pressedCyclingPowerZonesSize
{
  v3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v4 = [v3 configurationType];

  if (v4 == &dword_0 + 1)
  {
    _HKInitializeLogging();
    v5 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self _functionalThresholdPowerString];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Push editing for Functional Threshold Power: %@", &v12, 0xCu);
    }

    v8 = [HPRFSessionTrackerAppCyclingPowerZonesSizeViewController alloc];
    v9 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v10 = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)v8 initWithConfiguration:v9 updateDelegate:self];

    v11 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self navigationController];
    [v11 pushViewController:v10 animated:1];
  }
}

+ (id)numberFormatter
{
  if (qword_41318[0] != -1)
  {
    sub_221A0();
  }

  v3 = qword_41310;

  return v3;
}

- (id)_functionalThresholdPowerString
{
  v3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v4 = [v3 functionalThresholdPower];
  v5 = [v4 quantity];
  [v5 _value];
  v7 = v6;

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v7 <= 0.0)
  {
    v10 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_NOT_AVAILABLE_FORMAT" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_EMPTY_VALUE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v13 = +[FIUIFormattingManager localizedShortPowerUnitString];
    v18 = [NSString stringWithFormat:v10, v12, v13];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_AVAILABLE_FORMAT" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v11 = [objc_opt_class() numberFormatter];
    v12 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v13 = [v12 functionalThresholdPower];
    v14 = [v13 quantity];
    [v14 _value];
    v15 = [NSNumber numberWithDouble:?];
    v16 = [v11 stringFromNumber:v15];
    v17 = +[FIUIFormattingManager localizedShortPowerUnitString];
    v18 = [NSString stringWithFormat:v10, v16, v17];
  }

  return v18;
}

+ (id)automaticFTPString:(id)a3
{
  v3 = a3;
  v4 = [v3 automaticFTP];
  v5 = [v4 quantity];
  [v5 _value];
  v7 = v6;

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v7 <= 0.0)
  {
    v10 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_NOT_AVAILABLE_FORMAT" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v20 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_EMPTY_VALUE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v12 = +[FIUIFormattingManager localizedShortPowerUnitString];
    v19 = [NSString stringWithFormat:v10, v11, v12];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_AVAILABLE_WITH_DATE_FORMAT" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v22 = [objc_opt_class() numberFormatter];
    v24 = v9;
    v11 = [v3 automaticFTP];
    v12 = [v11 quantity];
    [v12 _value];
    v23 = [NSNumber numberWithDouble:?];
    [v22 stringFromNumber:v23];
    v14 = v13 = v3;
    v15 = +[FIUIFormattingManager localizedShortPowerUnitString];
    v16 = [v13 automaticFTP];
    v17 = [v16 creationDate];
    v18 = [FIUIDateFormattingUtilities stringWithShortStyleDate:v17];
    v19 = [NSString stringWithFormat:v10, v14, v15, v18];

    v20 = v22;
    v3 = v13;
    v9 = v24;
  }

  return v19;
}

- (void)_insertZonesSpecifiers:(id)a3
{
  v33 = a3;
  v4 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v5 = [v4 zones];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_ZONES_GROUP_ID"];
    [v33 addObject:v7];
    v8 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v30 = v7;
    if ([v8 isEditable])
    {
      v9 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
      v10 = [v9 functionalThresholdPower];
      v11 = [v10 isAvailable];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v13 = [v12 zones];
    v14 = [v13 count];

    if (v14)
    {
      v15 = 0;
      v16 = 4;
      if (v11)
      {
        v16 = 2;
      }

      v32 = v16;
      v17 = PSCellClassKey;
      v31 = PSEnabledKey;
      do
      {
        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        v20 = v15 + 1;
        v21 = [NSString localizedStringWithFormat:v19, v15 + 1, v30];
        v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:v32 edit:0];

        v23 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
        v24 = [v23 zones];
        v25 = [v24 objectAtIndexedSubscript:v15];
        [v22 setUserInfo:v25];

        [v22 setProperty:objc_opt_class() forKey:v17];
        v26 = [NSNumber numberWithBool:v11];
        [v22 setProperty:v26 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellEditableKey"];

        [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self _zoneRangeDisplayValueForSpecifier:v22];
        if (v11)
        {
          [v22 setProperty:&__kCFBooleanTrue forKey:v31];
          [v22 setButtonAction:"_pressedZoneForSpecifier:"];
        }

        [v33 addObject:v22];

        v27 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
        v28 = [v27 zones];
        v29 = [v28 count];

        v15 = v20;
      }

      while (v20 < v29);
    }
  }
}

- (void)_zoneRangeDisplayValueForSpecifier:(id)a3
{
  v62 = a3;
  v3 = [v62 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v62 userInfo];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v4 index] + 1);

  [v62 setProperty:v7 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellTitleKey"];
  if (v4)
  {
    if ([v4 isEmpty])
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_EMPTY_ZONE_WATTS_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
      v10 = +[FIUIFormattingManager localizedShortPowerUnitString];
      v11 = [v10 lowercaseString];
      v12 = [NSString stringWithFormat:v9, v11];

      [v62 setProperty:v12 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellDisplayRangeKey"];
      [v62 setProperty:&stru_35B68 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellPercentageRangeKey"];
LABEL_19:

      goto LABEL_20;
    }

    v12 = [v4 lowerBound];

    if (v12)
    {
      v13 = [objc_opt_class() numberFormatter];
      v14 = [v4 lowerBound];
      [v14 _value];
      v15 = [NSNumber numberWithDouble:?];
      v12 = [v13 stringFromNumber:v15];
    }

    v16 = [v4 upperBound];

    if (v16)
    {
      v17 = [objc_opt_class() numberFormatter];
      v18 = [v4 upperBound];
      [v18 _value];
      v19 = [NSNumber numberWithDouble:?];
      v20 = [v17 stringFromNumber:v19];

      if (v12 && v20)
      {
        v21 = [objc_opt_class() numberFormatter];
        [v4 percentageLowerBound];
        v22 = [NSNumber numberWithDouble:?];
        v59 = [v21 stringFromNumber:v22];

        v23 = [objc_opt_class() numberFormatter];
        [v4 percentageUpperBound];
        v24 = [NSNumber numberWithDouble:?];
        v58 = [v23 stringFromNumber:v24];

        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_WATTS_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        v27 = +[FIUIFormattingManager localizedShortPowerUnitString];
        v28 = [v27 lowercaseString];
        v61 = v20;
        v29 = v58;
        v30 = [NSString stringWithFormat:v26, v12, v20, v28];

        v31 = v59;
        [v62 setProperty:v30 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellDisplayRangeKey"];
        v32 = [NSBundle bundleForClass:objc_opt_class()];
        v33 = [v32 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_PERCENTAGE_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        v34 = [NSString stringWithFormat:v33, v59, v58];

        [v62 setProperty:v34 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellPercentageRangeKey"];
LABEL_15:

        goto LABEL_18;
      }

      if (v20)
      {
        v35 = [objc_opt_class() numberFormatter];
        [v4 percentageLowerBound];
        v36 = [NSNumber numberWithDouble:?];
        v60 = [v35 stringFromNumber:v36];

        v37 = [objc_opt_class() numberFormatter];
        [v4 percentageUpperBound];
        v38 = [NSNumber numberWithDouble:?];
        v29 = [v37 stringFromNumber:v38];

        v39 = [NSBundle bundleForClass:objc_opt_class()];
        v40 = [v39 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FIRST_ZONE_WATTS_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        v41 = +[FIUIFormattingManager localizedShortPowerUnitString];
        v42 = [v41 lowercaseString];
        v43 = v20;
        v44 = v42;
        v61 = v43;
        v30 = [NSString stringWithFormat:v40, v43, v42];

        v31 = v60;
        [v62 setProperty:v30 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellDisplayRangeKey"];
        v45 = [NSBundle bundleForClass:objc_opt_class()];
        v46 = [v45 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_PERCENTAGE_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        v47 = [NSString stringWithFormat:v46, v60, v29];

        [v62 setProperty:v47 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellPercentageRangeKey"];
        goto LABEL_15;
      }
    }

    if (!v12)
    {
      goto LABEL_19;
    }

    v48 = [objc_opt_class() numberFormatter];
    [v4 percentageLowerBound];
    v49 = [NSNumber numberWithDouble:?];
    v50 = [v48 stringFromNumber:v49];

    v51 = [NSBundle bundleForClass:objc_opt_class()];
    v52 = [v51 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_LAST_ZONE_WATTS_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v53 = +[FIUIFormattingManager localizedShortPowerUnitString];
    v54 = [v53 lowercaseString];
    v55 = [NSString stringWithFormat:v52, v12, v54];

    v31 = v55;
    [v62 setProperty:v55 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellDisplayRangeKey"];
    v56 = [NSBundle bundleForClass:objc_opt_class()];
    v57 = [v56 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_LAST_ZONE_PERCENTAGE_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v61 = v50;
    v29 = [NSString stringWithFormat:v57, v50];

    [v62 setProperty:v29 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellPercentageRangeKey"];
LABEL_18:

    goto LABEL_19;
  }

LABEL_20:
}

- (void)_insertRecalculateZonesSpecifiers:(id)a3
{
  v16 = a3;
  v4 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  if ([v4 isEditable])
  {
    v5 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v6 = [v5 functionalThresholdPower];
    v7 = [v6 isAvailable];

    if (!v7)
    {
      goto LABEL_11;
    }

    v4 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_RECALCULATE_ZONES_GROUP_ID"];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_RECALCULATE_ZONES_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v4 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v16 addObject:v4];
    v10 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    if ([v10 isEditable])
    {
      v11 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
      v12 = ![WOCyclingPowerZonesConfigurationEditor isManualZonesEqualToAutomaticUsing:v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_RECALCULATE_ZONES_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:13 edit:0];

    if (v12)
    {
      [v15 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
      [v15 setButtonAction:"_pressedRecalculateZones"];
    }

    else
    {
      [v15 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }

    [v16 addObject:v15];
  }

LABEL_11:
}

- (void)_pressedRecalculateZones
{
  v3 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_RECALCULATE_ZONES_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_166F8;
  v10[3] = &unk_35490;
  v10[4] = self;
  v6 = [UIAlertAction actionWithTitle:v5 style:2 handler:v10];
  [v3 addAction:v6];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_CANCEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:&stru_354D0];
  [v3 addAction:v9];

  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self presentViewController:v3 animated:1 completion:&stru_354F0];
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_configuration, a3);
  if (self->_configurationStore && self->_configuration)
  {
    _HKInitializeLogging();
    v6 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      configuration = self->_configuration;
      v8 = 138412290;
      v9 = configuration;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Save CyclingPowerZonesConfiguration: %@", &v8, 0xCu);
    }

    [(WOCyclingPowerZonesConfigurationStore *)self->_configurationStore saveCyclingPowerZonesConfiguration:self->_configuration];
  }
}

- (void)_pressedAutomaticPreference
{
  v3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v4 = [v3 configurationType];

  if (v4)
  {
    v5 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v6 = [WOCyclingPowerZonesConfigurationEditor changeConfigurationTypeTo:0 using:v5];
    [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setConfiguration:v6];

    [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self reloadSpecifiers];
  }
}

- (void)_pressedManualPreference
{
  v3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v4 = [v3 configurationType];

  if (v4 == &dword_0 + 1)
  {
    return;
  }

  v5 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v6 = [WOCyclingPowerZonesConfigurationEditor changeConfigurationTypeTo:1 using:v5];
  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setConfiguration:v6];

  v7 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v8 = [v7 functionalThresholdPower];
  if ([v8 isAvailable])
  {
    goto LABEL_7;
  }

  v9 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  if (![v9 isEmpty])
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  v10 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v11 = [v10 automaticFTP];
  v12 = [v11 isAvailable];

  if (v12)
  {
    v7 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v8 = [v7 automaticFTP];
    [v8 value];
    v14 = v13;
    v9 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v15 = [WOCyclingPowerZonesConfigurationEditor changeFunctionalThresholdPowerTo:v9 using:v14];
    [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setConfiguration:v15];

    goto LABEL_6;
  }

LABEL_8:

  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self reloadSpecifiers];
}

- (void)_pressedFunctionalThresholdPower
{
  v3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v4 = [v3 configurationType];

  if (v4 == &dword_0 + 1)
  {
    _HKInitializeLogging();
    v5 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self _functionalThresholdPowerString];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Push editing for Functional Threshold Power: %@", &v12, 0xCu);
    }

    v8 = [HPRFSessionTrackerAppCyclingPowerFTPViewController alloc];
    v9 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v10 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)v8 initWithConfiguration:v9 updateDelegate:self];

    v11 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self navigationController];
    [v11 pushViewController:v10 animated:1];
  }
}

- (void)_pressedZoneForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
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
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Push editing for Cycling Power Zone (%@)", &v15, 0xCu);
      }

      v10 = [HPRFSessionTrackerAppCyclingPowerZoneViewController alloc];
      v11 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
      v12 = -[HPRFSessionTrackerAppCyclingPowerZoneViewController initWithConfiguration:zoneIndex:updateDelegate:](v10, "initWithConfiguration:zoneIndex:updateDelegate:", v11, [v8 index], self);

      v13 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self navigationController];
      [v13 pushViewController:v12 animated:1];

      goto LABEL_10;
    }
  }

  else
  {
  }

  _HKInitializeLogging();
  v14 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    sub_22038(v4, v14, self);
  }

LABEL_10:
}

- (void)updateWithConfiguration:(id)a3
{
  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setConfiguration:a3];

  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self reloadSpecifiers];
}

@end