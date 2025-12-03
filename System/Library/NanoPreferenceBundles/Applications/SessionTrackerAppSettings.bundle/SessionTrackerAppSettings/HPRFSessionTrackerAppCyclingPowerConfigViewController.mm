@interface HPRFSessionTrackerAppCyclingPowerConfigViewController
+ (id)automaticFTPString:(id)string;
+ (id)numberFormatter;
- (id)_functionalThresholdPowerString;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)_insertConfigurationTypeSpecifiers:(id)specifiers;
- (void)_insertFunctionalThresholdPowerSpecifiers:(id)specifiers;
- (void)_insertPowerZonesSizeSpecifiers:(id)specifiers;
- (void)_insertRecalculateZonesSpecifiers:(id)specifiers;
- (void)_insertZonesSpecifiers:(id)specifiers;
- (void)_mainThread_handleCyclingPowerZonesConfiguration:(id)configuration;
- (void)_pressedAutomaticPreference;
- (void)_pressedCyclingPowerZonesSize;
- (void)_pressedFunctionalThresholdPower;
- (void)_pressedManualPreference;
- (void)_pressedRecalculateZones;
- (void)_pressedZoneForSpecifier:(id)specifier;
- (void)_zoneRangeDisplayValueForSpecifier:(id)specifier;
- (void)setConfiguration:(id)configuration;
- (void)updateWithConfiguration:(id)configuration;
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
  firstObject = [v5 firstObject];

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
  configurationStore = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configurationStore];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_140C8;
  v16[3] = &unk_35448;
  objc_copyWeak(&v17, &location);
  [configurationStore fetchCyclingPowerZonesConfigurationWithCompletion:v16];

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
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (void)_mainThread_handleCyclingPowerZonesConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setConfiguration:configurationCopy];

  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_PANE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setTitle:v5];

  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];

  if (configuration)
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

- (void)_insertConfigurationTypeSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_CONFIGURATION_TYPE_GROUP_ID"];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  configurationType = [configuration configurationType];

  if (configurationType == &dword_0 + 1)
  {
    v9 = @"CYCLING_POWER_CONFIGURATION_MANUAL_FOOTER";
    goto LABEL_6;
  }

  if (!configurationType)
  {
    configuration2 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    isAutomaticFromAppleFTP = [configuration2 isAutomaticFromAppleFTP];

    if (isAutomaticFromAppleFTP)
    {
      v9 = @"CYCLING_POWER_CONFIGURATION_AUTOMATIC_FOOTER";
LABEL_6:
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:v9 value:&stru_35B68 table:@"SessionTrackerAppSettings"];
      [v4 setProperty:v11 forKey:PSFooterTextGroupKey];
    }
  }

  [specifiersCopy addObject:v4];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_AUTOMATIC" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v14 setIdentifier:@"CYCLING_POWER_CONFIGURATION_TYPE_AUTOMATIC_ID"];
  [v14 setButtonAction:"_pressedAutomaticPreference"];
  configuration3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  configurationType2 = [configuration3 configurationType];

  if (!configurationType2)
  {
    [v4 setProperty:v14 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  [specifiersCopy addObject:v14];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_MANUAL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v19 setIdentifier:@"CYCLING_POWER_CONFIGURATION_TYPE_MANUAL_ID"];
  [v19 setButtonAction:"_pressedManualPreference"];
  configuration4 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  configurationType3 = [configuration4 configurationType];

  if (configurationType3 == &dword_0 + 1)
  {
    [v4 setProperty:v19 forKey:PSRadioGroupCheckedSpecifierKey];
  }

  [specifiersCopy addObject:v19];
  configuration5 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  if ([configuration5 configurationType])
  {
  }

  else
  {
    configuration6 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    isAutomaticFromAppleFTP2 = [configuration6 isAutomaticFromAppleFTP];

    if ((isAutomaticFromAppleFTP2 & 1) == 0)
    {
      v25 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_NO_FTP_GROUP_ID"];

      [specifiersCopy addObject:v25];
      v26 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:4 edit:0];

      [v26 setProperty:objc_opt_class() forKey:PSCellClassKey];
      v27 = [NSBundle bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_AUTOMATIC_FTP_NOT_AVAILABLE_NAME" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
      [v26 setProperty:v28 forKey:@"HPRFSessionTrackerAppCyclingPowerDetailPlatterCellTitleKey"];

      v29 = [NSBundle bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_AUTOMATIC_FTP_NOT_AVAILABLE_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
      [v26 setProperty:v30 forKey:@"HPRFSessionTrackerAppCyclingPowerDetailPlatterCellDetailKey"];

      [specifiersCopy addObject:v26];
      v4 = v25;
      v19 = v26;
    }
  }
}

- (void)_insertFunctionalThresholdPowerSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
  v5 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_FTP_GROUP_ID"];
  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  configurationType = [configuration configurationType];

  v8 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
  if (configurationType == &dword_0 + 1)
  {
    configuration2 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v17 = [HPRFSessionTrackerAppCyclingPowerConfigViewController automaticFTPString:configuration2];

    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_MANUAL_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v21 = [NSString stringWithFormat:v20, v17];

    [v5 setProperty:v21 forKey:PSFooterTextGroupKey];
  }

  else
  {
    if (configurationType)
    {
      goto LABEL_7;
    }

    configuration3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    isAutomaticFromAppleFTP = [configuration3 isAutomaticFromAppleFTP];

    if (!isAutomaticFromAppleFTP)
    {
      goto LABEL_7;
    }

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_AUTOMATIC_FTP_AVAILABLE_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    configuration4 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    functionalThresholdPower = [configuration4 functionalThresholdPower];
    creationDate = [functionalThresholdPower creationDate];
    v16 = [FIUIDateFormattingUtilities stringWithShortStyleDate:creationDate];
    v17 = [NSString stringWithFormat:v12, v16];

    v8 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;
    v4 = &_s11SeymourCore12DependenciesC7resolve14failureHandlerxxycSg_tlF_ptr;

    [v5 setProperty:v17 forKey:PSFooterTextGroupKey];
  }

LABEL_7:
  [specifiersCopy addObject:v5];
  v22 = v4[362];
  v23 = [v8[389] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  configuration5 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  if ([configuration5 isEditable])
  {
    v26 = 2;
  }

  else
  {
    v26 = 4;
  }

  v27 = [v22 preferenceSpecifierNamed:v24 target:self set:0 get:"_functionalThresholdPowerString" detail:0 cell:v26 edit:0];

  configuration6 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  isEditable = [configuration6 isEditable];

  if (isEditable)
  {
    [v27 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v27 setButtonAction:"_pressedFunctionalThresholdPower"];
  }

  [v27 setProperty:&__kCFBooleanTrue forKey:PSPrioritizeValueTextDisplayKey];
  [v27 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v27 setProperty:&__kCFBooleanTrue forKey:PSAdjustFontSizeToFitWidthKey];
  [specifiersCopy addObject:v27];
}

- (void)_insertPowerZonesSizeSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  configurationType = [configuration configurationType];

  if (configurationType == &dword_0 + 1)
  {
    configuration2 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    if ([configuration2 isEditable])
    {
      configuration3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
      functionalThresholdPower = [configuration3 functionalThresholdPower];
      isAvailable = [functionalThresholdPower isAvailable];
    }

    else
    {
      isAvailable = 0;
    }

    v10 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_NUMBER_OF_ZONES_GROUP_ID"];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_POWER_ZONES_SIZE_HEADER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [v10 setName:v12];

    [specifiersCopy addObject:v10];
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_POWER_ZONES_SIZE_ITEM_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    configuration4 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    zones = [configuration4 zones];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [zones count]);
    v18 = [NSString localizedStringWithFormat:v14, v17];

    if (isAvailable)
    {
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:2 edit:0];
      [v19 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
      [v19 setButtonAction:"_pressedCyclingPowerZonesSize"];
    }

    else
    {
      v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:4 edit:0];
    }

    [specifiersCopy addObject:v19];
  }
}

- (void)_pressedCyclingPowerZonesSize
{
  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  configurationType = [configuration configurationType];

  if (configurationType == &dword_0 + 1)
  {
    _HKInitializeLogging();
    v5 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      _functionalThresholdPowerString = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self _functionalThresholdPowerString];
      v12 = 138412290;
      v13 = _functionalThresholdPowerString;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Push editing for Functional Threshold Power: %@", &v12, 0xCu);
    }

    v8 = [HPRFSessionTrackerAppCyclingPowerZonesSizeViewController alloc];
    configuration2 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v10 = [(HPRFSessionTrackerAppCyclingPowerZonesSizeViewController *)v8 initWithConfiguration:configuration2 updateDelegate:self];

    navigationController = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self navigationController];
    [navigationController pushViewController:v10 animated:1];
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
  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  functionalThresholdPower = [configuration functionalThresholdPower];
  quantity = [functionalThresholdPower quantity];
  [quantity _value];
  v7 = v6;

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v7 <= 0.0)
  {
    v10 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_NOT_AVAILABLE_FORMAT" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    numberFormatter = [NSBundle bundleForClass:objc_opt_class()];
    configuration2 = [numberFormatter localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_EMPTY_VALUE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    functionalThresholdPower2 = +[FIUIFormattingManager localizedShortPowerUnitString];
    v18 = [NSString stringWithFormat:v10, configuration2, functionalThresholdPower2];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_AVAILABLE_FORMAT" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    numberFormatter = [objc_opt_class() numberFormatter];
    configuration2 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    functionalThresholdPower2 = [configuration2 functionalThresholdPower];
    quantity2 = [functionalThresholdPower2 quantity];
    [quantity2 _value];
    v15 = [NSNumber numberWithDouble:?];
    v16 = [numberFormatter stringFromNumber:v15];
    v17 = +[FIUIFormattingManager localizedShortPowerUnitString];
    v18 = [NSString stringWithFormat:v10, v16, v17];
  }

  return v18;
}

+ (id)automaticFTPString:(id)string
{
  stringCopy = string;
  automaticFTP = [stringCopy automaticFTP];
  quantity = [automaticFTP quantity];
  [quantity _value];
  v7 = v6;

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v7 <= 0.0)
  {
    v10 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_NOT_AVAILABLE_FORMAT" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v20 = [NSBundle bundleForClass:objc_opt_class()];
    automaticFTP2 = [v20 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_EMPTY_VALUE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    quantity2 = +[FIUIFormattingManager localizedShortPowerUnitString];
    v19 = [NSString stringWithFormat:v10, automaticFTP2, quantity2];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FTP_AVAILABLE_WITH_DATE_FORMAT" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    numberFormatter = [objc_opt_class() numberFormatter];
    v24 = v9;
    automaticFTP2 = [stringCopy automaticFTP];
    quantity2 = [automaticFTP2 quantity];
    [quantity2 _value];
    v23 = [NSNumber numberWithDouble:?];
    [numberFormatter stringFromNumber:v23];
    v14 = v13 = stringCopy;
    v15 = +[FIUIFormattingManager localizedShortPowerUnitString];
    automaticFTP3 = [v13 automaticFTP];
    creationDate = [automaticFTP3 creationDate];
    v18 = [FIUIDateFormattingUtilities stringWithShortStyleDate:creationDate];
    v19 = [NSString stringWithFormat:v10, v14, v15, v18];

    v20 = numberFormatter;
    stringCopy = v13;
    v9 = v24;
  }

  return v19;
}

- (void)_insertZonesSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  zones = [configuration zones];
  v6 = [zones count];

  if (v6)
  {
    v7 = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_ZONES_GROUP_ID"];
    [specifiersCopy addObject:v7];
    configuration2 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v30 = v7;
    if ([configuration2 isEditable])
    {
      configuration3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
      functionalThresholdPower = [configuration3 functionalThresholdPower];
      isAvailable = [functionalThresholdPower isAvailable];
    }

    else
    {
      isAvailable = 0;
    }

    configuration4 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    zones2 = [configuration4 zones];
    v14 = [zones2 count];

    if (v14)
    {
      v15 = 0;
      v16 = 4;
      if (isAvailable)
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

        configuration5 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
        zones3 = [configuration5 zones];
        v25 = [zones3 objectAtIndexedSubscript:v15];
        [v22 setUserInfo:v25];

        [v22 setProperty:objc_opt_class() forKey:v17];
        v26 = [NSNumber numberWithBool:isAvailable];
        [v22 setProperty:v26 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellEditableKey"];

        [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self _zoneRangeDisplayValueForSpecifier:v22];
        if (isAvailable)
        {
          [v22 setProperty:&__kCFBooleanTrue forKey:v31];
          [v22 setButtonAction:"_pressedZoneForSpecifier:"];
        }

        [specifiersCopy addObject:v22];

        configuration6 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
        zones4 = [configuration6 zones];
        v29 = [zones4 count];

        v15 = v20;
      }

      while (v20 < v29);
    }
  }
}

- (void)_zoneRangeDisplayValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo2 = [specifierCopy userInfo];
  }

  else
  {
    userInfo2 = 0;
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_TITLE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [userInfo2 index] + 1);

  [specifierCopy setProperty:v7 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellTitleKey"];
  if (userInfo2)
  {
    if ([userInfo2 isEmpty])
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_EMPTY_ZONE_WATTS_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
      v10 = +[FIUIFormattingManager localizedShortPowerUnitString];
      lowercaseString = [v10 lowercaseString];
      lowerBound = [NSString stringWithFormat:v9, lowercaseString];

      [specifierCopy setProperty:lowerBound forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellDisplayRangeKey"];
      [specifierCopy setProperty:&stru_35B68 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellPercentageRangeKey"];
LABEL_19:

      goto LABEL_20;
    }

    lowerBound = [userInfo2 lowerBound];

    if (lowerBound)
    {
      numberFormatter = [objc_opt_class() numberFormatter];
      lowerBound2 = [userInfo2 lowerBound];
      [lowerBound2 _value];
      v15 = [NSNumber numberWithDouble:?];
      lowerBound = [numberFormatter stringFromNumber:v15];
    }

    upperBound = [userInfo2 upperBound];

    if (upperBound)
    {
      numberFormatter2 = [objc_opt_class() numberFormatter];
      upperBound2 = [userInfo2 upperBound];
      [upperBound2 _value];
      v19 = [NSNumber numberWithDouble:?];
      v20 = [numberFormatter2 stringFromNumber:v19];

      if (lowerBound && v20)
      {
        numberFormatter3 = [objc_opt_class() numberFormatter];
        [userInfo2 percentageLowerBound];
        v22 = [NSNumber numberWithDouble:?];
        v59 = [numberFormatter3 stringFromNumber:v22];

        numberFormatter4 = [objc_opt_class() numberFormatter];
        [userInfo2 percentageUpperBound];
        v24 = [NSNumber numberWithDouble:?];
        v58 = [numberFormatter4 stringFromNumber:v24];

        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_WATTS_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        v27 = +[FIUIFormattingManager localizedShortPowerUnitString];
        lowercaseString2 = [v27 lowercaseString];
        v61 = v20;
        v29 = v58;
        v30 = [NSString stringWithFormat:v26, lowerBound, v20, lowercaseString2];

        v31 = v59;
        [specifierCopy setProperty:v30 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellDisplayRangeKey"];
        v32 = [NSBundle bundleForClass:objc_opt_class()];
        v33 = [v32 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_PERCENTAGE_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        v34 = [NSString stringWithFormat:v33, v59, v58];

        [specifierCopy setProperty:v34 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellPercentageRangeKey"];
LABEL_15:

        goto LABEL_18;
      }

      if (v20)
      {
        numberFormatter5 = [objc_opt_class() numberFormatter];
        [userInfo2 percentageLowerBound];
        v36 = [NSNumber numberWithDouble:?];
        v60 = [numberFormatter5 stringFromNumber:v36];

        numberFormatter6 = [objc_opt_class() numberFormatter];
        [userInfo2 percentageUpperBound];
        v38 = [NSNumber numberWithDouble:?];
        v29 = [numberFormatter6 stringFromNumber:v38];

        v39 = [NSBundle bundleForClass:objc_opt_class()];
        v40 = [v39 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_FIRST_ZONE_WATTS_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        v41 = +[FIUIFormattingManager localizedShortPowerUnitString];
        lowercaseString3 = [v41 lowercaseString];
        v43 = v20;
        v44 = lowercaseString3;
        v61 = v43;
        v30 = [NSString stringWithFormat:v40, v43, lowercaseString3];

        v31 = v60;
        [specifierCopy setProperty:v30 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellDisplayRangeKey"];
        v45 = [NSBundle bundleForClass:objc_opt_class()];
        v46 = [v45 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_ZONE_PERCENTAGE_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
        v47 = [NSString stringWithFormat:v46, v60, v29];

        [specifierCopy setProperty:v47 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellPercentageRangeKey"];
        goto LABEL_15;
      }
    }

    if (!lowerBound)
    {
      goto LABEL_19;
    }

    numberFormatter7 = [objc_opt_class() numberFormatter];
    [userInfo2 percentageLowerBound];
    v49 = [NSNumber numberWithDouble:?];
    v50 = [numberFormatter7 stringFromNumber:v49];

    v51 = [NSBundle bundleForClass:objc_opt_class()];
    v52 = [v51 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_LAST_ZONE_WATTS_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v53 = +[FIUIFormattingManager localizedShortPowerUnitString];
    lowercaseString4 = [v53 lowercaseString];
    v55 = [NSString stringWithFormat:v52, lowerBound, lowercaseString4];

    v31 = v55;
    [specifierCopy setProperty:v55 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellDisplayRangeKey"];
    v56 = [NSBundle bundleForClass:objc_opt_class()];
    v57 = [v56 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_LAST_ZONE_PERCENTAGE_RANGE" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    v61 = v50;
    v29 = [NSString stringWithFormat:v57, v50];

    [specifierCopy setProperty:v29 forKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellPercentageRangeKey"];
LABEL_18:

    goto LABEL_19;
  }

LABEL_20:
}

- (void)_insertRecalculateZonesSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  if ([configuration isEditable])
  {
    configuration2 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    functionalThresholdPower = [configuration2 functionalThresholdPower];
    isAvailable = [functionalThresholdPower isAvailable];

    if (!isAvailable)
    {
      goto LABEL_11;
    }

    configuration = [PSSpecifier groupSpecifierWithID:@"CYCLING_POWER_RECALCULATE_ZONES_GROUP_ID"];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CYCLING_POWER_CONFIGURATION_RECALCULATE_ZONES_FOOTER" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
    [configuration setProperty:v9 forKey:PSFooterTextGroupKey];

    [specifiersCopy addObject:configuration];
    configuration3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    if ([configuration3 isEditable])
    {
      configuration4 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
      v12 = ![WOCyclingPowerZonesConfigurationEditor isManualZonesEqualToAutomaticUsing:configuration4];
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

    [specifiersCopy addObject:v15];
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

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_storeStrong(&self->_configuration, configuration);
  if (self->_configurationStore && self->_configuration)
  {
    _HKInitializeLogging();
    v6 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      configuration = self->_configuration;
      v8 = 138412290;
      configurationCopy2 = configuration;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Save CyclingPowerZonesConfiguration: %@", &v8, 0xCu);
    }

    [(WOCyclingPowerZonesConfigurationStore *)self->_configurationStore saveCyclingPowerZonesConfiguration:self->_configuration];
  }
}

- (void)_pressedAutomaticPreference
{
  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  configurationType = [configuration configurationType];

  if (configurationType)
  {
    configuration2 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v6 = [WOCyclingPowerZonesConfigurationEditor changeConfigurationTypeTo:0 using:configuration2];
    [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setConfiguration:v6];

    [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self reloadSpecifiers];
  }
}

- (void)_pressedManualPreference
{
  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  configurationType = [configuration configurationType];

  if (configurationType == &dword_0 + 1)
  {
    return;
  }

  configuration2 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  v6 = [WOCyclingPowerZonesConfigurationEditor changeConfigurationTypeTo:1 using:configuration2];
  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setConfiguration:v6];

  configuration3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  functionalThresholdPower = [configuration3 functionalThresholdPower];
  if ([functionalThresholdPower isAvailable])
  {
    goto LABEL_7;
  }

  configuration4 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  if (![configuration4 isEmpty])
  {
LABEL_6:

LABEL_7:
    goto LABEL_8;
  }

  configuration5 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  automaticFTP = [configuration5 automaticFTP];
  isAvailable = [automaticFTP isAvailable];

  if (isAvailable)
  {
    configuration3 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    functionalThresholdPower = [configuration3 automaticFTP];
    [functionalThresholdPower value];
    v14 = v13;
    configuration4 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v15 = [WOCyclingPowerZonesConfigurationEditor changeFunctionalThresholdPowerTo:configuration4 using:v14];
    [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setConfiguration:v15];

    goto LABEL_6;
  }

LABEL_8:

  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self reloadSpecifiers];
}

- (void)_pressedFunctionalThresholdPower
{
  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
  configurationType = [configuration configurationType];

  if (configurationType == &dword_0 + 1)
  {
    _HKInitializeLogging();
    v5 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      _functionalThresholdPowerString = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self _functionalThresholdPowerString];
      v12 = 138412290;
      v13 = _functionalThresholdPowerString;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Push editing for Functional Threshold Power: %@", &v12, 0xCu);
    }

    v8 = [HPRFSessionTrackerAppCyclingPowerFTPViewController alloc];
    configuration2 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
    v10 = [(HPRFSessionTrackerAppCyclingPowerFTPViewController *)v8 initWithConfiguration:configuration2 updateDelegate:self];

    navigationController = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self navigationController];
    [navigationController pushViewController:v10 animated:1];
  }
}

- (void)_pressedZoneForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  configuration = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
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
        v15 = 138412290;
        v16 = userInfo2;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Push editing for Cycling Power Zone (%@)", &v15, 0xCu);
      }

      v10 = [HPRFSessionTrackerAppCyclingPowerZoneViewController alloc];
      configuration2 = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self configuration];
      v12 = -[HPRFSessionTrackerAppCyclingPowerZoneViewController initWithConfiguration:zoneIndex:updateDelegate:](v10, "initWithConfiguration:zoneIndex:updateDelegate:", configuration2, [userInfo2 index], self);

      navigationController = [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self navigationController];
      [navigationController pushViewController:v12 animated:1];

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
    sub_22038(specifierCopy, v14, self);
  }

LABEL_10:
}

- (void)updateWithConfiguration:(id)configuration
{
  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self setConfiguration:configuration];

  [(HPRFSessionTrackerAppCyclingPowerConfigViewController *)self reloadSpecifiers];
}

@end