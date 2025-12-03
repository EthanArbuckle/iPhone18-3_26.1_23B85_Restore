@interface WSWeatherSettingsController
- (BOOL)locationPermissionsSupportHomeAndWork;
- (BOOL)locationPermissionsSupportSignificantLocations;
- (WSWeatherSettingsController)init;
- (id)homeAndWorkSpecifierWithTarget:(id)target;
- (id)makeSpecifierWithIdentifier:(id)identifier name:(id)name target:(id)target type:(int64_t)type keyName:(id)keyName defaultValue:(id)value;
- (id)privacyButtonTitle;
- (id)privacySpecifierWithTarget:(id)target;
- (id)readPreferenceValue:(id)value;
- (id)specifierIdentifierForSelectedTemperature;
- (id)specifiers;
- (id)temperatureSpecifierWithTarget:(id)target;
- (id)useSignificantLocationsSpecifierWithTarget:(id)target;
- (void)applicationWillEnterForeground;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)openContacts;
- (void)preferencesDidUpdate:(id)update;
- (void)registerUndoActionWithKey:(id)key urlString:(id)string undoAction:(id)action;
- (void)reloadWidget;
- (void)selectUnit:(id)unit;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)showPrivacyPane;
- (void)updateHomeAndWorkSwitch;
- (void)updateSelectedUnit;
- (void)updateUseSignificantLocationsSwitch;
@end

@implementation WSWeatherSettingsController

- (WSWeatherSettingsController)init
{
  v10.receiver = self;
  v10.super_class = WSWeatherSettingsController;
  v2 = [(WSWeatherSettingsController *)&v10 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"localeDidChange" name:NSCurrentLocaleDidChangeNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"preferencesDidUpdate:" name:@"WSWeatherSettingsStateDidUpdateNotification" object:0 suspensionBehavior:2];

    v6 = [[CLLocationManager alloc] initWithEffectiveBundleIdentifier:@"com.apple.weather" delegate:v2 onQueue:&_dispatch_main_q];
    [(WSWeatherSettingsController *)v2 setLocationManager:v6];

    locationManager = [(WSWeatherSettingsController *)v2 locationManager];
    [locationManager setDelegate:v2];

    [(WSWeatherSettingsController *)v2 setCelsiusValue:NSLocaleTemperatureUnitCelsius];
    [(WSWeatherSettingsController *)v2 setFahrenheitValue:NSLocaleTemperatureUnitFahrenheit];
    [(WSWeatherSettingsController *)v2 setMirrorSystemValue:@"mirrorSystem"];
    v8 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    [v8 refreshPredictedLocationsAuthorization];
  }

  return v2;
}

- (id)homeAndWorkSpecifierWithTarget:(id)target
{
  targetCopy = target;
  v5 = WSBundle();
  v6 = [v5 localizedStringForKey:@"home-and-work" value:&stru_CB20 table:@"Localizable"];

  v7 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"HOME_WORK_SHOW_LABELS" name:v6 target:targetCopy type:6 keyName:0 defaultValue:&__kCFBooleanTrue];

  return v7;
}

- (id)useSignificantLocationsSpecifierWithTarget:(id)target
{
  targetCopy = target;
  v5 = WSBundle();
  v6 = [v5 localizedStringForKey:@"suggested-locations" value:&stru_CB20 table:@"Localizable"];

  v7 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"USE_SIGNIFICANT_LOCATIONS" name:v6 target:targetCopy type:6 keyName:0 defaultValue:&__kCFBooleanFalse];

  v8 = [NSNumber numberWithBool:[(WSWeatherSettingsController *)self locationPermissionsSupportSignificantLocations]];
  [v7 setObject:v8 forKeyedSubscript:PSEnabledKey];

  return v7;
}

- (id)privacySpecifierWithTarget:(id)target
{
  targetCopy = target;
  v5 = WSBundle();
  v6 = [v5 localizedStringForKey:@"reset-identifier-title" value:&stru_CB20 table:@"Localizable"];

  v7 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"PRIVACY_RESET" name:v6 target:targetCopy type:6 keyName:0 defaultValue:0];

  return v7;
}

- (id)temperatureSpecifierWithTarget:(id)target
{
  targetCopy = target;
  v5 = WSBundle();
  v6 = [v5 localizedStringForKey:@"preferred-metric-celsius" value:&stru_CB20 table:@"Localizable"];

  v7 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"WSTemperatureUnitC" name:v6 target:targetCopy type:3 keyName:0 defaultValue:0];

  return v7;
}

- (id)specifierIdentifierForSelectedTemperature
{
  v2 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  units = [v2 units];
  preferredTemperatureUnit = [units preferredTemperatureUnit];

  v5 = +[NSUnitTemperature celsius];

  if (preferredTemperatureUnit == v5)
  {
    v7 = @"WSTemperatureUnitC";
  }

  else
  {
    v6 = +[NSUnitTemperature fahrenheit];

    if (preferredTemperatureUnit == v6)
    {
      v7 = @"WSTemperatureUnitF";
    }

    else
    {
      v7 = @"WSTemperatureUnitMirrorSystem";
    }
  }

  return v7;
}

- (id)makeSpecifierWithIdentifier:(id)identifier name:(id)name target:(id)target type:(int64_t)type keyName:(id)keyName defaultValue:(id)value
{
  valueCopy = value;
  keyNameCopy = keyName;
  identifierCopy = identifier;
  v16 = [PSSpecifier preferenceSpecifierNamed:name target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:type edit:0];
  [v16 setObject:identifierCopy forKeyedSubscript:PSIDKey];

  [v16 setObject:keyNameCopy forKeyedSubscript:PSKeyNameKey];
  [v16 setObject:valueCopy forKeyedSubscript:PSDefaultValueKey];
  [v16 setObject:valueCopy forKeyedSubscript:PSValueKey];

  [v16 setObject:@"com.apple.weather" forKeyedSubscript:PSDefaultsKey];
  [v16 setObject:@"com.apple.weather" forKeyedSubscript:PSContainerBundleIDKey];

  return v16;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v72 = OBJC_IVAR___PSListController__specifiers;
    v4 = WSBundle();
    v5 = [v4 localizedStringForKey:@"weather-settings-title" value:&stru_CB20 table:@"Localizable"];
    [(WSWeatherSettingsController *)self setTitle:v5];

    v6 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.weather"];
    [(WSWeatherSettingsController *)self setAppPolicy:v6];

    appPolicy = [(WSWeatherSettingsController *)self appPolicy];
    specifiers = [appPolicy specifiers];
    v9 = [specifiers mutableCopy];

    v10 = WSBundle();
    v11 = [v10 localizedStringForKey:@"preferred-metric-group-title" value:&stru_CB20 table:@"Localizable"];

    v71 = v11;
    v12 = [PSSpecifier groupSpecifierWithID:@"TEMPERATURE_UNIT" name:v11];
    [(WSWeatherSettingsController *)self setTemperatureUnitGroup:v12];

    temperatureUnitGroup = [(WSWeatherSettingsController *)self temperatureUnitGroup];
    [temperatureUnitGroup setObject:&__kCFBooleanTrue forKeyedSubscript:PSIsRadioGroupKey];

    v14 = [(WSWeatherSettingsController *)self temperatureSpecifierWithTarget:self];
    [(WSWeatherSettingsController *)self setCelsius:v14];

    celsius = [(WSWeatherSettingsController *)self celsius];
    [celsius setButtonAction:"selectUnit:"];

    v16 = WSBundle();
    v17 = [v16 localizedStringForKey:@"preferred-metric-fahrenheit" value:&stru_CB20 table:@"Localizable"];

    v70 = v17;
    v18 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"WSTemperatureUnitF" name:v17 target:self type:3 keyName:0 defaultValue:0];
    [(WSWeatherSettingsController *)self setFahrenheit:v18];

    fahrenheit = [(WSWeatherSettingsController *)self fahrenheit];
    [fahrenheit setButtonAction:"selectUnit:"];

    v20 = WSBundle();
    v21 = [v20 localizedStringForKey:@"preferred-metric-use-system" value:&stru_CB20 table:@"Localizable"];

    v69 = v21;
    v22 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"WSTemperatureUnitMirrorSystem" name:v21 target:self type:3 keyName:0 defaultValue:0];
    [(WSWeatherSettingsController *)self setMirrorSystem:v22];

    mirrorSystem = [(WSWeatherSettingsController *)self mirrorSystem];
    [mirrorSystem setButtonAction:"selectUnit:"];

    v24 = WSBundle();
    v25 = [v24 localizedStringForKey:@"preferred-metric-footer-title" value:&stru_CB20 table:@"Localizable"];

    temperatureUnitGroup2 = [(WSWeatherSettingsController *)self temperatureUnitGroup];
    v68 = v25;
    v73 = PSFooterTextGroupKey;
    [temperatureUnitGroup2 setProperty:v25 forKey:?];

    temperatureUnitGroup3 = [(WSWeatherSettingsController *)self temperatureUnitGroup];
    [v9 addObject:temperatureUnitGroup3];

    celsius2 = [(WSWeatherSettingsController *)self celsius];
    [v9 addObject:celsius2];

    fahrenheit2 = [(WSWeatherSettingsController *)self fahrenheit];
    [v9 addObject:fahrenheit2];

    mirrorSystem2 = [(WSWeatherSettingsController *)self mirrorSystem];
    [v9 addObject:mirrorSystem2];

    v31 = WSBundle();
    v32 = [v31 localizedStringForKey:@"locations-group-title" value:&stru_CB20 table:@"Localizable"];

    v67 = v32;
    v33 = [PSSpecifier groupSpecifierWithID:@"WSHomeWorkGroup" name:v32];
    v34 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    areSignificantLocationsFeaturesAvailableInWeather = [v34 areSignificantLocationsFeaturesAvailableInWeather];

    v36 = WSBundle();
    v37 = v36;
    if (areSignificantLocationsFeaturesAvailableInWeather)
    {
      v38 = @"locations-footer-title-with-link-loc-intel";
    }

    else
    {
      v38 = @"locations-footer-title-with-link";
    }

    v39 = [v36 localizedStringForKey:v38 value:&stru_CB20 table:@"Localizable"];

    v40 = [v39 rangeOfString:@"["];
    v41 = [v39 rangeOfString:@"]"];
    if (v40 == 0x7FFFFFFFFFFFFFFFLL || (v42 = v41, v41 == 0x7FFFFFFFFFFFFFFFLL))
    {
      [v33 setProperty:v39 forKey:v73];
    }

    else
    {
      v43 = [v39 stringByReplacingOccurrencesOfString:@"[" withString:&stru_CB20];
      v44 = [v43 stringByReplacingOccurrencesOfString:@"]" withString:&stru_CB20];

      v45 = v40 + ~v42;
      if (v42 > v40)
      {
        v46 = v42 + ~v40;
      }

      else
      {
        v40 = v42;
        v46 = v45;
      }

      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      [v33 setProperty:v48 forKey:PSFooterCellClassGroupKey];

      v75.location = v40;
      v75.length = v46;
      v49 = NSStringFromRange(v75);
      [v33 setProperty:v49 forKey:PSFooterHyperlinkViewLinkRangeKey];

      v50 = [NSValue valueWithNonretainedObject:self];
      [v33 setProperty:v50 forKey:PSFooterHyperlinkViewTargetKey];

      v51 = NSStringFromSelector("openContacts");
      [v33 setProperty:v51 forKey:PSFooterHyperlinkViewActionKey];

      [v33 setProperty:v44 forKey:PSFooterHyperlinkViewTitleKey];
    }

    [v9 addObject:v33];
    v52 = [(WSWeatherSettingsController *)self homeAndWorkSpecifierWithTarget:self];
    [(WSWeatherSettingsController *)self setShowHomeAndWorkLabels:v52];

    showHomeAndWorkLabels = [(WSWeatherSettingsController *)self showHomeAndWorkLabels];
    [v9 addObject:showHomeAndWorkLabels];

    if (areSignificantLocationsFeaturesAvailableInWeather)
    {
      v54 = [(WSWeatherSettingsController *)self useSignificantLocationsSpecifierWithTarget:self];
      [(WSWeatherSettingsController *)self setUseSignificantLocationsSpecifier:v54];

      useSignificantLocationsSpecifier = [(WSWeatherSettingsController *)self useSignificantLocationsSpecifier];
      [v9 addObject:useSignificantLocationsSpecifier];
    }

    v56 = WSBundle();
    v57 = [v56 localizedStringForKey:@"privacy-settings-group-title" value:&stru_CB20 table:@"Localizable"];

    v58 = [PSSpecifier groupSpecifierWithID:@"WSPrivacyGroup" name:v57];
    privacyButtonTitle = [(WSWeatherSettingsController *)self privacyButtonTitle];
    v60 = [PSSpecifier preferenceSpecifierNamed:privacyButtonTitle target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v60 setButtonAction:"showPrivacyPane"];
    [v60 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v61 = [(WSWeatherSettingsController *)self privacySpecifierWithTarget:self];
    [(WSWeatherSettingsController *)self setResetIdentifier:v61];

    v62 = WSBundle();
    v63 = [v62 localizedStringForKey:@"privacy-settings-footer-title" value:&stru_CB20 table:@"Localizable"];

    [v58 setProperty:v63 forKey:v73];
    [v9 addObject:v58];
    [v9 addObject:v60];
    resetIdentifier = [(WSWeatherSettingsController *)self resetIdentifier];
    [v9 addObject:resetIdentifier];

    v65 = *&self->PSListController_opaque[v72];
    *&self->PSListController_opaque[v72] = v9;

    [(WSWeatherSettingsController *)self updateSelectedUnit];
    [(WSWeatherSettingsController *)self updateHomeAndWorkSwitch];
    [(WSWeatherSettingsController *)self updateUseSignificantLocationsSwitch];

    v3 = *&self->PSListController_opaque[v72];
  }

  return v3;
}

- (void)selectUnit:(id)unit
{
  unitCopy = unit;
  v5 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  units = [v5 units];
  preferredTemperatureUnit = [units preferredTemperatureUnit];

  v8 = +[_TtC15WeatherSettings24WeatherSettingsConstants TemperatureNavigationUrl];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_2EE4;
  v20 = &unk_C648;
  v9 = preferredTemperatureUnit;
  v21 = v9;
  selfCopy = self;
  [(WSWeatherSettingsController *)self registerUndoActionWithKey:@"undo-temperature-unit" urlString:v8 undoAction:&v17];

  v10 = [(WSWeatherSettingsController *)self celsius:v17];

  if (v10 == unitCopy)
  {
    v12 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    units2 = [v12 units];
    v15 = +[NSUnitTemperature celsius];
LABEL_6:
    v16 = v15;
    [units2 setPreferredTemperatureUnit:v15];

    goto LABEL_7;
  }

  fahrenheit = [(WSWeatherSettingsController *)self fahrenheit];

  v12 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  units3 = [v12 units];
  units2 = units3;
  if (fahrenheit == unitCopy)
  {
    v15 = +[NSUnitTemperature fahrenheit];
    goto LABEL_6;
  }

  [units3 setPreferredTemperatureUnit:0];
LABEL_7:

  [(WSWeatherSettingsController *)self reloadWidget];
  [(WSWeatherSettingsController *)self updateSelectedUnit];
}

- (void)reloadWidget
{
  v3 = [[CHSTimelineController alloc] initWithExtensionBundleIdentifier:@"com.apple.weather.widget" kind:@"com.apple.weather"];
  reloadTimeline = [v3 reloadTimeline];
}

- (void)updateSelectedUnit
{
  v3 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  units = [v3 units];
  preferredTemperatureUnit = [units preferredTemperatureUnit];

  v5 = +[NSUnitTemperature celsius];

  if (preferredTemperatureUnit == v5)
  {
    celsius = [(WSWeatherSettingsController *)self celsius];
  }

  else
  {
    v6 = +[NSUnitTemperature fahrenheit];

    if (preferredTemperatureUnit == v6)
    {
      [(WSWeatherSettingsController *)self fahrenheit];
    }

    else
    {
      [(WSWeatherSettingsController *)self mirrorSystem];
    }
    celsius = ;
  }

  v8 = celsius;
  temperatureUnitGroup = [(WSWeatherSettingsController *)self temperatureUnitGroup];
  [temperatureUnitGroup setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];

  celsius2 = [(WSWeatherSettingsController *)self celsius];
  v11 = PSTableCellKey;
  v12 = [celsius2 propertyForKey:PSTableCellKey];
  celsius3 = [(WSWeatherSettingsController *)self celsius];
  [v12 setChecked:celsius3 == v8];

  fahrenheit = [(WSWeatherSettingsController *)self fahrenheit];
  v15 = [fahrenheit propertyForKey:v11];
  fahrenheit2 = [(WSWeatherSettingsController *)self fahrenheit];
  [v15 setChecked:fahrenheit2 == v8];

  mirrorSystem = [(WSWeatherSettingsController *)self mirrorSystem];
  v18 = [mirrorSystem propertyForKey:v11];
  mirrorSystem2 = [(WSWeatherSettingsController *)self mirrorSystem];
  [v18 setChecked:mirrorSystem2 == v8];
}

- (void)updateHomeAndWorkSwitch
{
  locationPermissionsSupportHomeAndWork = [(WSWeatherSettingsController *)self locationPermissionsSupportHomeAndWork];

  [(WSWeatherSettingsController *)self setHomeAndWorkEnabled:locationPermissionsSupportHomeAndWork];
}

- (BOOL)locationPermissionsSupportHomeAndWork
{
  locationManager = [(WSWeatherSettingsController *)self locationManager];
  authorizationStatus = [locationManager authorizationStatus];

  return authorizationStatus - 3 < 2;
}

- (void)updateUseSignificantLocationsSwitch
{
  locationPermissionsSupportSignificantLocations = [(WSWeatherSettingsController *)self locationPermissionsSupportSignificantLocations];

  [(WSWeatherSettingsController *)self setUseSignificantLocationsEnabled:locationPermissionsSupportSignificantLocations];
}

- (BOOL)locationPermissionsSupportSignificantLocations
{
  locationManager = [(WSWeatherSettingsController *)self locationManager];
  authorizationStatus = [locationManager authorizationStatus];

  if (authorizationStatus < 5 && ((0x17u >> authorizationStatus) & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    predictedLocationsAuthorization = [v5 predictedLocationsAuthorization];

    if (predictedLocationsAuthorization >= 4)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = 4u >> (predictedLocationsAuthorization & 0xF);
    }
  }

  return v4 & 1;
}

- (void)openContacts
{
  v3 = [NSURL URLWithString:@"contact://show?ref=me"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (void)applicationWillEnterForeground
{
  v3 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  units = [v3 units];
  [units refreshUnits];

  [(WSWeatherSettingsController *)self updateSelectedUnit];
}

- (void)preferencesDidUpdate:(id)update
{
  v4 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  units = [v4 units];
  [units refreshUnits];

  [(WSWeatherSettingsController *)self updateSelectedUnit];

  [(WSWeatherSettingsController *)self reload];
}

- (void)showPrivacyPane
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.weather"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (id)privacyButtonTitle
{
  v2 = [OBBundle bundleWithIdentifier:@"com.apple.onboarding.weather"];
  privacyFlow = [v2 privacyFlow];
  localizedButtonTitle = [privacyFlow localizedButtonTitle];

  if (localizedButtonTitle)
  {
    v5 = localizedButtonTitle;
  }

  else
  {
    v6 = WSBundle();
    v5 = [v6 localizedStringForKey:@"privacy-about-privacy-title" value:&stru_CB20 table:@"Localizable"];
  }

  return v5;
}

- (id)readPreferenceValue:(id)value
{
  valueCopy = value;
  identifier = [valueCopy identifier];
  v6 = [identifier isEqualToString:@"PRIVACY_RESET"];

  if (v6)
  {
    v7 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    resetIdentifier = [v7 resetIdentifier];

    goto LABEL_3;
  }

  identifier2 = [valueCopy identifier];
  v14 = [identifier2 isEqualToString:@"HOME_WORK_SHOW_LABELS"];

  if (v14)
  {
    v15 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    resetIdentifier = [v15 showHomeWorkLabels];

    if (![(WSWeatherSettingsController *)self locationPermissionsSupportHomeAndWork])
    {
      v9 = 0;
LABEL_4:
      v10 = [NSNumber numberWithBool:v9];
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_3:
    v9 = resetIdentifier;
    goto LABEL_4;
  }

  identifier3 = [valueCopy identifier];
  v17 = [identifier3 isEqualToString:@"USE_SIGNIFICANT_LOCATIONS"];

  if (v17)
  {
    v18 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    resetIdentifier = [v18 useSignificantLocations];

    if (![(WSWeatherSettingsController *)self locationPermissionsSupportSignificantLocations])
    {
      v10 = &__kCFBooleanFalse;
LABEL_5:
      [valueCopy setProperty:v10 forKey:PSValueKey];

      goto LABEL_6;
    }

    goto LABEL_3;
  }

LABEL_6:
  v11 = [valueCopy propertyForKey:PSValueKey];

  return v11;
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  v9 = [identifier isEqualToString:@"PRIVACY_RESET"];

  if (v9)
  {
    v10 = +[_TtC15WeatherSettings24WeatherSettingsConstants PrivacyResetNavigationUrl];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_3D30;
    v36[3] = &unk_C648;
    v11 = valueCopy;
    v37 = v11;
    selfCopy = self;
    [(WSWeatherSettingsController *)self registerUndoActionWithKey:@"undo-reset-identifier" urlString:v10 undoAction:v36];

    bOOLValue = [v11 BOOLValue];
    v13 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    [v13 setResetIdentifier:bOOLValue];

    v14 = v37;
LABEL_3:

    goto LABEL_12;
  }

  identifier2 = [specifierCopy identifier];
  if ([identifier2 isEqualToString:@"HOME_WORK_SHOW_LABELS"])
  {
    locationPermissionsSupportHomeAndWork = [(WSWeatherSettingsController *)self locationPermissionsSupportHomeAndWork];

    if (locationPermissionsSupportHomeAndWork)
    {
      v17 = +[_TtC15WeatherSettings24WeatherSettingsConstants PrivacyHomeWorkShowLabelsNavigationUrl];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_3D98;
      v33[3] = &unk_C648;
      v18 = valueCopy;
      v34 = v18;
      selfCopy2 = self;
      [(WSWeatherSettingsController *)self registerUndoActionWithKey:@"undo-show-home-work-labels" urlString:v17 undoAction:v33];

      bOOLValue2 = [v18 BOOLValue];
      v20 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
      [v20 setShowHomeWorkLabels:bOOLValue2];

      v14 = v34;
      goto LABEL_3;
    }
  }

  else
  {
  }

  identifier3 = [specifierCopy identifier];
  if (![identifier3 isEqualToString:@"USE_SIGNIFICANT_LOCATIONS"])
  {

    goto LABEL_12;
  }

  locationPermissionsSupportSignificantLocations = [(WSWeatherSettingsController *)self locationPermissionsSupportSignificantLocations];

  if (locationPermissionsSupportSignificantLocations)
  {
    v23 = +[_TtC15WeatherSettings24WeatherSettingsConstants PrivacyUseSignificantLocationsNavigationUrl];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_3E00;
    v30 = &unk_C648;
    v24 = valueCopy;
    v31 = v24;
    selfCopy3 = self;
    [(WSWeatherSettingsController *)self registerUndoActionWithKey:@"undo-use-significant-locations" urlString:v23 undoAction:&v27];

    bOOLValue3 = [v24 BOOLValue];
    v26 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    [v26 setUseSignificantLocations:bOOLValue3];

    v14 = v31;
    goto LABEL_3;
  }

LABEL_12:
}

- (void)registerUndoActionWithKey:(id)key urlString:(id)string undoAction:(id)action
{
  actionCopy = action;
  stringCopy = string;
  keyCopy = key;
  v11 = [_NSLocalizedStringResource alloc];
  v12 = +[NSLocale currentLocale];
  v13 = WSBundle();
  bundleURL = [v13 bundleURL];
  v16 = [v11 initWithKey:keyCopy table:@"Localizable" locale:v12 bundleURL:bundleURL];

  v15 = [NSURL URLWithString:stringCopy];

  [(WSWeatherSettingsController *)self pe_registerUndoActionName:v16 associatedDeepLink:v15 undoAction:actionCopy];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  [(WSWeatherSettingsController *)self updateHomeAndWorkSwitch];

  [(WSWeatherSettingsController *)self updateUseSignificantLocationsSwitch];
}

@end