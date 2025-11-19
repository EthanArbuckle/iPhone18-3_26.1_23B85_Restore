@interface WSWeatherSettingsController
- (BOOL)locationPermissionsSupportHomeAndWork;
- (BOOL)locationPermissionsSupportSignificantLocations;
- (WSWeatherSettingsController)init;
- (id)homeAndWorkSpecifierWithTarget:(id)a3;
- (id)makeSpecifierWithIdentifier:(id)a3 name:(id)a4 target:(id)a5 type:(int64_t)a6 keyName:(id)a7 defaultValue:(id)a8;
- (id)privacyButtonTitle;
- (id)privacySpecifierWithTarget:(id)a3;
- (id)readPreferenceValue:(id)a3;
- (id)specifierIdentifierForSelectedTemperature;
- (id)specifiers;
- (id)temperatureSpecifierWithTarget:(id)a3;
- (id)useSignificantLocationsSpecifierWithTarget:(id)a3;
- (void)applicationWillEnterForeground;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)openContacts;
- (void)preferencesDidUpdate:(id)a3;
- (void)registerUndoActionWithKey:(id)a3 urlString:(id)a4 undoAction:(id)a5;
- (void)reloadWidget;
- (void)selectUnit:(id)a3;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
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

    v7 = [(WSWeatherSettingsController *)v2 locationManager];
    [v7 setDelegate:v2];

    [(WSWeatherSettingsController *)v2 setCelsiusValue:NSLocaleTemperatureUnitCelsius];
    [(WSWeatherSettingsController *)v2 setFahrenheitValue:NSLocaleTemperatureUnitFahrenheit];
    [(WSWeatherSettingsController *)v2 setMirrorSystemValue:@"mirrorSystem"];
    v8 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    [v8 refreshPredictedLocationsAuthorization];
  }

  return v2;
}

- (id)homeAndWorkSpecifierWithTarget:(id)a3
{
  v4 = a3;
  v5 = WSBundle();
  v6 = [v5 localizedStringForKey:@"home-and-work" value:&stru_CB20 table:@"Localizable"];

  v7 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"HOME_WORK_SHOW_LABELS" name:v6 target:v4 type:6 keyName:0 defaultValue:&__kCFBooleanTrue];

  return v7;
}

- (id)useSignificantLocationsSpecifierWithTarget:(id)a3
{
  v4 = a3;
  v5 = WSBundle();
  v6 = [v5 localizedStringForKey:@"suggested-locations" value:&stru_CB20 table:@"Localizable"];

  v7 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"USE_SIGNIFICANT_LOCATIONS" name:v6 target:v4 type:6 keyName:0 defaultValue:&__kCFBooleanFalse];

  v8 = [NSNumber numberWithBool:[(WSWeatherSettingsController *)self locationPermissionsSupportSignificantLocations]];
  [v7 setObject:v8 forKeyedSubscript:PSEnabledKey];

  return v7;
}

- (id)privacySpecifierWithTarget:(id)a3
{
  v4 = a3;
  v5 = WSBundle();
  v6 = [v5 localizedStringForKey:@"reset-identifier-title" value:&stru_CB20 table:@"Localizable"];

  v7 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"PRIVACY_RESET" name:v6 target:v4 type:6 keyName:0 defaultValue:0];

  return v7;
}

- (id)temperatureSpecifierWithTarget:(id)a3
{
  v4 = a3;
  v5 = WSBundle();
  v6 = [v5 localizedStringForKey:@"preferred-metric-celsius" value:&stru_CB20 table:@"Localizable"];

  v7 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"WSTemperatureUnitC" name:v6 target:v4 type:3 keyName:0 defaultValue:0];

  return v7;
}

- (id)specifierIdentifierForSelectedTemperature
{
  v2 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  v3 = [v2 units];
  v4 = [v3 preferredTemperatureUnit];

  v5 = +[NSUnitTemperature celsius];

  if (v4 == v5)
  {
    v7 = @"WSTemperatureUnitC";
  }

  else
  {
    v6 = +[NSUnitTemperature fahrenheit];

    if (v4 == v6)
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

- (id)makeSpecifierWithIdentifier:(id)a3 name:(id)a4 target:(id)a5 type:(int64_t)a6 keyName:(id)a7 defaultValue:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a3;
  v16 = [PSSpecifier preferenceSpecifierNamed:a4 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:a6 edit:0];
  [v16 setObject:v15 forKeyedSubscript:PSIDKey];

  [v16 setObject:v14 forKeyedSubscript:PSKeyNameKey];
  [v16 setObject:v13 forKeyedSubscript:PSDefaultValueKey];
  [v16 setObject:v13 forKeyedSubscript:PSValueKey];

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

    v7 = [(WSWeatherSettingsController *)self appPolicy];
    v8 = [v7 specifiers];
    v9 = [v8 mutableCopy];

    v10 = WSBundle();
    v11 = [v10 localizedStringForKey:@"preferred-metric-group-title" value:&stru_CB20 table:@"Localizable"];

    v71 = v11;
    v12 = [PSSpecifier groupSpecifierWithID:@"TEMPERATURE_UNIT" name:v11];
    [(WSWeatherSettingsController *)self setTemperatureUnitGroup:v12];

    v13 = [(WSWeatherSettingsController *)self temperatureUnitGroup];
    [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:PSIsRadioGroupKey];

    v14 = [(WSWeatherSettingsController *)self temperatureSpecifierWithTarget:self];
    [(WSWeatherSettingsController *)self setCelsius:v14];

    v15 = [(WSWeatherSettingsController *)self celsius];
    [v15 setButtonAction:"selectUnit:"];

    v16 = WSBundle();
    v17 = [v16 localizedStringForKey:@"preferred-metric-fahrenheit" value:&stru_CB20 table:@"Localizable"];

    v70 = v17;
    v18 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"WSTemperatureUnitF" name:v17 target:self type:3 keyName:0 defaultValue:0];
    [(WSWeatherSettingsController *)self setFahrenheit:v18];

    v19 = [(WSWeatherSettingsController *)self fahrenheit];
    [v19 setButtonAction:"selectUnit:"];

    v20 = WSBundle();
    v21 = [v20 localizedStringForKey:@"preferred-metric-use-system" value:&stru_CB20 table:@"Localizable"];

    v69 = v21;
    v22 = [(WSWeatherSettingsController *)self makeSpecifierWithIdentifier:@"WSTemperatureUnitMirrorSystem" name:v21 target:self type:3 keyName:0 defaultValue:0];
    [(WSWeatherSettingsController *)self setMirrorSystem:v22];

    v23 = [(WSWeatherSettingsController *)self mirrorSystem];
    [v23 setButtonAction:"selectUnit:"];

    v24 = WSBundle();
    v25 = [v24 localizedStringForKey:@"preferred-metric-footer-title" value:&stru_CB20 table:@"Localizable"];

    v26 = [(WSWeatherSettingsController *)self temperatureUnitGroup];
    v68 = v25;
    v73 = PSFooterTextGroupKey;
    [v26 setProperty:v25 forKey:?];

    v27 = [(WSWeatherSettingsController *)self temperatureUnitGroup];
    [v9 addObject:v27];

    v28 = [(WSWeatherSettingsController *)self celsius];
    [v9 addObject:v28];

    v29 = [(WSWeatherSettingsController *)self fahrenheit];
    [v9 addObject:v29];

    v30 = [(WSWeatherSettingsController *)self mirrorSystem];
    [v9 addObject:v30];

    v31 = WSBundle();
    v32 = [v31 localizedStringForKey:@"locations-group-title" value:&stru_CB20 table:@"Localizable"];

    v67 = v32;
    v33 = [PSSpecifier groupSpecifierWithID:@"WSHomeWorkGroup" name:v32];
    v34 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    v35 = [v34 areSignificantLocationsFeaturesAvailableInWeather];

    v36 = WSBundle();
    v37 = v36;
    if (v35)
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

    v53 = [(WSWeatherSettingsController *)self showHomeAndWorkLabels];
    [v9 addObject:v53];

    if (v35)
    {
      v54 = [(WSWeatherSettingsController *)self useSignificantLocationsSpecifierWithTarget:self];
      [(WSWeatherSettingsController *)self setUseSignificantLocationsSpecifier:v54];

      v55 = [(WSWeatherSettingsController *)self useSignificantLocationsSpecifier];
      [v9 addObject:v55];
    }

    v56 = WSBundle();
    v57 = [v56 localizedStringForKey:@"privacy-settings-group-title" value:&stru_CB20 table:@"Localizable"];

    v58 = [PSSpecifier groupSpecifierWithID:@"WSPrivacyGroup" name:v57];
    v59 = [(WSWeatherSettingsController *)self privacyButtonTitle];
    v60 = [PSSpecifier preferenceSpecifierNamed:v59 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v60 setButtonAction:"showPrivacyPane"];
    [v60 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v61 = [(WSWeatherSettingsController *)self privacySpecifierWithTarget:self];
    [(WSWeatherSettingsController *)self setResetIdentifier:v61];

    v62 = WSBundle();
    v63 = [v62 localizedStringForKey:@"privacy-settings-footer-title" value:&stru_CB20 table:@"Localizable"];

    [v58 setProperty:v63 forKey:v73];
    [v9 addObject:v58];
    [v9 addObject:v60];
    v64 = [(WSWeatherSettingsController *)self resetIdentifier];
    [v9 addObject:v64];

    v65 = *&self->PSListController_opaque[v72];
    *&self->PSListController_opaque[v72] = v9;

    [(WSWeatherSettingsController *)self updateSelectedUnit];
    [(WSWeatherSettingsController *)self updateHomeAndWorkSwitch];
    [(WSWeatherSettingsController *)self updateUseSignificantLocationsSwitch];

    v3 = *&self->PSListController_opaque[v72];
  }

  return v3;
}

- (void)selectUnit:(id)a3
{
  v4 = a3;
  v5 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  v6 = [v5 units];
  v7 = [v6 preferredTemperatureUnit];

  v8 = +[_TtC15WeatherSettings24WeatherSettingsConstants TemperatureNavigationUrl];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_2EE4;
  v20 = &unk_C648;
  v9 = v7;
  v21 = v9;
  v22 = self;
  [(WSWeatherSettingsController *)self registerUndoActionWithKey:@"undo-temperature-unit" urlString:v8 undoAction:&v17];

  v10 = [(WSWeatherSettingsController *)self celsius:v17];

  if (v10 == v4)
  {
    v12 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    v14 = [v12 units];
    v15 = +[NSUnitTemperature celsius];
LABEL_6:
    v16 = v15;
    [v14 setPreferredTemperatureUnit:v15];

    goto LABEL_7;
  }

  v11 = [(WSWeatherSettingsController *)self fahrenheit];

  v12 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  v13 = [v12 units];
  v14 = v13;
  if (v11 == v4)
  {
    v15 = +[NSUnitTemperature fahrenheit];
    goto LABEL_6;
  }

  [v13 setPreferredTemperatureUnit:0];
LABEL_7:

  [(WSWeatherSettingsController *)self reloadWidget];
  [(WSWeatherSettingsController *)self updateSelectedUnit];
}

- (void)reloadWidget
{
  v3 = [[CHSTimelineController alloc] initWithExtensionBundleIdentifier:@"com.apple.weather.widget" kind:@"com.apple.weather"];
  v2 = [v3 reloadTimeline];
}

- (void)updateSelectedUnit
{
  v3 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  v4 = [v3 units];
  v20 = [v4 preferredTemperatureUnit];

  v5 = +[NSUnitTemperature celsius];

  if (v20 == v5)
  {
    v7 = [(WSWeatherSettingsController *)self celsius];
  }

  else
  {
    v6 = +[NSUnitTemperature fahrenheit];

    if (v20 == v6)
    {
      [(WSWeatherSettingsController *)self fahrenheit];
    }

    else
    {
      [(WSWeatherSettingsController *)self mirrorSystem];
    }
    v7 = ;
  }

  v8 = v7;
  v9 = [(WSWeatherSettingsController *)self temperatureUnitGroup];
  [v9 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];

  v10 = [(WSWeatherSettingsController *)self celsius];
  v11 = PSTableCellKey;
  v12 = [v10 propertyForKey:PSTableCellKey];
  v13 = [(WSWeatherSettingsController *)self celsius];
  [v12 setChecked:v13 == v8];

  v14 = [(WSWeatherSettingsController *)self fahrenheit];
  v15 = [v14 propertyForKey:v11];
  v16 = [(WSWeatherSettingsController *)self fahrenheit];
  [v15 setChecked:v16 == v8];

  v17 = [(WSWeatherSettingsController *)self mirrorSystem];
  v18 = [v17 propertyForKey:v11];
  v19 = [(WSWeatherSettingsController *)self mirrorSystem];
  [v18 setChecked:v19 == v8];
}

- (void)updateHomeAndWorkSwitch
{
  v3 = [(WSWeatherSettingsController *)self locationPermissionsSupportHomeAndWork];

  [(WSWeatherSettingsController *)self setHomeAndWorkEnabled:v3];
}

- (BOOL)locationPermissionsSupportHomeAndWork
{
  v2 = [(WSWeatherSettingsController *)self locationManager];
  v3 = [v2 authorizationStatus];

  return v3 - 3 < 2;
}

- (void)updateUseSignificantLocationsSwitch
{
  v3 = [(WSWeatherSettingsController *)self locationPermissionsSupportSignificantLocations];

  [(WSWeatherSettingsController *)self setUseSignificantLocationsEnabled:v3];
}

- (BOOL)locationPermissionsSupportSignificantLocations
{
  v2 = [(WSWeatherSettingsController *)self locationManager];
  v3 = [v2 authorizationStatus];

  if (v3 < 5 && ((0x17u >> v3) & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    v6 = [v5 predictedLocationsAuthorization];

    if (v6 >= 4)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = 4u >> (v6 & 0xF);
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
  v4 = [v3 units];
  [v4 refreshUnits];

  [(WSWeatherSettingsController *)self updateSelectedUnit];
}

- (void)preferencesDidUpdate:(id)a3
{
  v4 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
  v5 = [v4 units];
  [v5 refreshUnits];

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
  v3 = [v2 privacyFlow];
  v4 = [v3 localizedButtonTitle];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = WSBundle();
    v5 = [v6 localizedStringForKey:@"privacy-about-privacy-title" value:&stru_CB20 table:@"Localizable"];
  }

  return v5;
}

- (id)readPreferenceValue:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"PRIVACY_RESET"];

  if (v6)
  {
    v7 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    v8 = [v7 resetIdentifier];

    goto LABEL_3;
  }

  v13 = [v4 identifier];
  v14 = [v13 isEqualToString:@"HOME_WORK_SHOW_LABELS"];

  if (v14)
  {
    v15 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    v8 = [v15 showHomeWorkLabels];

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
    v9 = v8;
    goto LABEL_4;
  }

  v16 = [v4 identifier];
  v17 = [v16 isEqualToString:@"USE_SIGNIFICANT_LOCATIONS"];

  if (v17)
  {
    v18 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    v8 = [v18 useSignificantLocations];

    if (![(WSWeatherSettingsController *)self locationPermissionsSupportSignificantLocations])
    {
      v10 = &__kCFBooleanFalse;
LABEL_5:
      [v4 setProperty:v10 forKey:PSValueKey];

      goto LABEL_6;
    }

    goto LABEL_3;
  }

LABEL_6:
  v11 = [v4 propertyForKey:PSValueKey];

  return v11;
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:@"PRIVACY_RESET"];

  if (v9)
  {
    v10 = +[_TtC15WeatherSettings24WeatherSettingsConstants PrivacyResetNavigationUrl];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_3D30;
    v36[3] = &unk_C648;
    v11 = v6;
    v37 = v11;
    v38 = self;
    [(WSWeatherSettingsController *)self registerUndoActionWithKey:@"undo-reset-identifier" urlString:v10 undoAction:v36];

    v12 = [v11 BOOLValue];
    v13 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    [v13 setResetIdentifier:v12];

    v14 = v37;
LABEL_3:

    goto LABEL_12;
  }

  v15 = [v7 identifier];
  if ([v15 isEqualToString:@"HOME_WORK_SHOW_LABELS"])
  {
    v16 = [(WSWeatherSettingsController *)self locationPermissionsSupportHomeAndWork];

    if (v16)
    {
      v17 = +[_TtC15WeatherSettings24WeatherSettingsConstants PrivacyHomeWorkShowLabelsNavigationUrl];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_3D98;
      v33[3] = &unk_C648;
      v18 = v6;
      v34 = v18;
      v35 = self;
      [(WSWeatherSettingsController *)self registerUndoActionWithKey:@"undo-show-home-work-labels" urlString:v17 undoAction:v33];

      v19 = [v18 BOOLValue];
      v20 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
      [v20 setShowHomeWorkLabels:v19];

      v14 = v34;
      goto LABEL_3;
    }
  }

  else
  {
  }

  v21 = [v7 identifier];
  if (![v21 isEqualToString:@"USE_SIGNIFICANT_LOCATIONS"])
  {

    goto LABEL_12;
  }

  v22 = [(WSWeatherSettingsController *)self locationPermissionsSupportSignificantLocations];

  if (v22)
  {
    v23 = +[_TtC15WeatherSettings24WeatherSettingsConstants PrivacyUseSignificantLocationsNavigationUrl];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_3E00;
    v30 = &unk_C648;
    v24 = v6;
    v31 = v24;
    v32 = self;
    [(WSWeatherSettingsController *)self registerUndoActionWithKey:@"undo-use-significant-locations" urlString:v23 undoAction:&v27];

    v25 = [v24 BOOLValue];
    v26 = +[_TtC15WeatherSettings20WeatherSettingsState defaultState];
    [v26 setUseSignificantLocations:v25];

    v14 = v31;
    goto LABEL_3;
  }

LABEL_12:
}

- (void)registerUndoActionWithKey:(id)a3 urlString:(id)a4 undoAction:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [_NSLocalizedStringResource alloc];
  v12 = +[NSLocale currentLocale];
  v13 = WSBundle();
  v14 = [v13 bundleURL];
  v16 = [v11 initWithKey:v10 table:@"Localizable" locale:v12 bundleURL:v14];

  v15 = [NSURL URLWithString:v9];

  [(WSWeatherSettingsController *)self pe_registerUndoActionName:v16 associatedDeepLink:v15 undoAction:v8];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  [(WSWeatherSettingsController *)self updateHomeAndWorkSwitch];

  [(WSWeatherSettingsController *)self updateUseSignificantLocationsSwitch];
}

@end