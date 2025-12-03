@interface MapsSettings
+ (BOOL)_selectedViewModeIsExpired;
+ (BOOL)alwaysShowScale;
+ (BOOL)showsAirQualityIndex;
+ (BOOL)showsCompass;
+ (BOOL)showsWeather;
+ (BOOL)showsZoomControls;
+ (BOOL)userDesiresLabels;
+ (BOOL)userDesiresTraffic;
+ (BOOL)usesMetric;
+ (NSString)preferredDistanceUnit;
+ (id)valueForDefaultsKey:(id)key defaultValue:(id)value;
+ (int64_t)selectedViewMode;
+ (void)_sendDiscoverabilitySignalsForKey:(id)key;
+ (void)_synchronizeNanoDefaultsForDomain:(id)domain key:(id)key container:(id)container;
+ (void)clearSelectedViewModeIfExpired;
+ (void)postNotification;
+ (void)setAllowEmailCorrespondence:(BOOL)correspondence;
+ (void)setAlwaysShowScale:(BOOL)scale;
+ (void)setSelectedViewMode:(int64_t)mode;
+ (void)setShowsAirQualityIndex:(BOOL)index;
+ (void)setShowsCompass:(BOOL)compass;
+ (void)setShowsWeather:(BOOL)weather;
+ (void)setShowsZoomControls:(BOOL)controls;
+ (void)setSystemMeasurementUnits;
+ (void)setUserDesiresLabels:(BOOL)labels;
+ (void)setUserDesiresTraffic:(BOOL)traffic;
+ (void)setValue:(id)value forConfigKey:(id)key;
+ (void)setValue:(id)value forDefaultsKey:(id)key bundleID:(id)d syncToNano:(BOOL)nano;
@end

@implementation MapsSettings

+ (void)setSystemMeasurementUnits
{
  v2 = +[NSLocale currentLocale];
  v4 = [v2 objectForKey:NSLocaleMeasurementSystem];

  if ([v4 isEqualToString:@"Metric"])
  {
    v3 = @"Metric";
  }

  else
  {
    v3 = @"Imperial";
  }

  [MapsSettings setValue:v3 forDefaultsKey:@"DistanceUnits" bundleID:0 syncToNano:1];
}

+ (void)clearSelectedViewModeIfExpired
{
  if ([self _selectedViewModeIsExpired])
  {
    v2 = sub_100798408();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Clearing saved view mode from user defaults", v4, 2u);
    }

    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 removeObjectForKey:@"ViewMode"];
  }
}

+ (BOOL)_selectedViewModeIsExpired
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 doubleForKey:@"LastSuspendTime"];
  v4 = v3;

  if (v4 == 0.0)
  {
    return 0;
  }

  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:v4];
  [v6 timeIntervalSinceNow];
  v8 = v7;

  GEOConfigGetDouble();
  v10 = -v9;
  v5 = v8 < -v9;
  v11 = sub_100798408();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = @"NO";
    if (v8 < v10)
    {
      v12 = @"YES";
    }

    v13 = v12;
    v15 = 134218498;
    v16 = v8;
    v17 = 2048;
    v18 = v10;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Last suspend time %f, expiration time %f, isExpired: %@", &v15, 0x20u);
  }

  return v5;
}

+ (BOOL)userDesiresTraffic
{
  v2 = +[UIApplication sharedApplication];
  launchedToTest = [v2 launchedToTest];

  if (launchedToTest)
  {
    return 0;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"DesiresTrafficKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    BOOL = [v6 BOOLValue];
  }

  else
  {
    BOOL = GEOConfigGetBOOL();
  }

  v4 = BOOL;

  return v4;
}

+ (BOOL)userDesiresLabels
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"SatelliteMapShowLabelsKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (void)_sendDiscoverabilitySignalsForKey:(id)key
{
  if ([&off_1016ED4C0 containsObject:key])
  {
    v3 = dispatch_get_global_queue(9, 0);
    dispatch_async(v3, &stru_101637E38);
  }
}

+ (BOOL)usesMetric
{
  preferredDistanceUnit = [self preferredDistanceUnit];
  v3 = [@"Imperial" isEqualToString:preferredDistanceUnit];

  return v3;
}

+ (NSString)preferredDistanceUnit
{
  v2 = [MapsSettings valueForDefaultsKey:@"DistanceUnits"];
  v3 = v2;
  if (!v2 || [(__CFString *)v2 isEqualToString:@"FromLocale"])
  {
    v4 = +[NSLocale currentLocale];
    v5 = [v4 _navigation_objectForKey:NSLocaleUsesMetricSystem];
    bOOLValue = [v5 BOOLValue];

    v7 = @"Imperial";
    if (bOOLValue)
    {
      v7 = @"Metric";
    }

    v8 = v7;

    v3 = v8;
  }

  return v3;
}

+ (void)postNotification
{
  v4 = +[NSNotificationCenter defaultCenter];
  settingsUpdatedNotificationKey = [self settingsUpdatedNotificationKey];
  [v4 postNotificationName:settingsUpdatedNotificationKey object:self];
}

+ (void)setAlwaysShowScale:(BOOL)scale
{
  scaleCopy = scale;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:scaleCopy forKey:@"MapsDefaultAlwaysShowScale"];

  [self postNotification];
}

+ (BOOL)alwaysShowScale
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"MapsDefaultAlwaysShowScale"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (void)setShowsZoomControls:(BOOL)controls
{
  controlsCopy = controls;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:controlsCopy forKey:@"MapsDefaultShowZoomControls"];

  [self postNotification];
}

+ (BOOL)showsZoomControls
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"MapsDefaultShowZoomControls"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (void)setShowsCompass:(BOOL)compass
{
  compassCopy = compass;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:compassCopy forKey:@"MapsDefaultShowCompass"];

  [self postNotification];
}

+ (BOOL)showsCompass
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"MapsDefaultShowCompass"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (void)setAllowEmailCorrespondence:(BOOL)correspondence
{
  if (correspondence)
  {
    sub_10079ADEC(1);
  }

  else
  {
    sub_10079ADEC(2);
  }
}

+ (void)setShowsAirQualityIndex:(BOOL)index
{
  indexCopy = index;
  v4 = +[WeatherSettingsManager sharedManager];
  [v4 setShouldShowAirQualityConditions:indexCopy];
}

+ (BOOL)showsAirQualityIndex
{
  v2 = +[WeatherSettingsManager sharedManager];
  shouldShowAirQualityConditions = [v2 shouldShowAirQualityConditions];

  return shouldShowAirQualityConditions;
}

+ (void)setShowsWeather:(BOOL)weather
{
  weatherCopy = weather;
  v4 = +[WeatherSettingsManager sharedManager];
  [v4 setShouldShowWeatherConditions:weatherCopy];
}

+ (BOOL)showsWeather
{
  v2 = +[WeatherSettingsManager sharedManager];
  shouldShowWeatherConditions = [v2 shouldShowWeatherConditions];

  return shouldShowWeatherConditions;
}

+ (void)setUserDesiresLabels:(BOOL)labels
{
  labelsCopy = labels;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:labelsCopy forKey:@"SatelliteMapShowLabelsKey"];
}

+ (void)setUserDesiresTraffic:(BOOL)traffic
{
  trafficCopy = traffic;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:trafficCopy forKey:@"DesiresTrafficKey"];
}

+ (void)setSelectedViewMode:(int64_t)mode
{
  if (mode > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_101215550[mode];
  }

  if (((v3 - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setInteger:v4 forKey:@"ViewMode"];

  v6 = sub_100798408();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (v4 < 8 && ((0xEFu >> v4) & 1) != 0)
    {
      v7 = *(&off_101637EA0 + v4);
    }

    else
    {
      v7 = [NSString stringWithFormat:@"<Unknown: %ld>", v4];
    }

    *buf = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Saving view mode %{public}@ to user defaults", buf, 0xCu);
  }
}

+ (int64_t)selectedViewMode
{
  if ([self _selectedViewModeIsExpired])
  {
    v2 = sub_100798408();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "View mode is expired, returning Standard as default", buf, 2u);
    }

    return 0;
  }

  else
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 integerForKey:@"ViewMode"];

    v6 = sub_100798408();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v5 + 1;
      if (v5 + 1 < 9 && ((0x1DFu >> v7) & 1) != 0)
      {
        v8 = *(&off_101637E58 + v7);
      }

      else
      {
        v8 = [NSString stringWithFormat:@"<Unknown: %ld>", v5];
      }

      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Reading view mode %{public}@ from user defaults", buf, 0xCu);
    }

    if (v5 > 7)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_101215550[v5];
    }

    if (((v9 - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
    {
      return v9;
    }

    else
    {
      return 2;
    }
  }
}

+ (void)_synchronizeNanoDefaultsForDomain:(id)domain key:(id)key container:(id)container
{
  domainCopy = domain;
  keyCopy = key;
  containerCopy = container;
  if (domainCopy && keyCopy)
  {
    v10 = objc_alloc_init(NPSManager);
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412802;
      v14 = domainCopy;
      v15 = 2112;
      v16 = keyCopy;
      v17 = 2112;
      v18 = containerCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "NPSManager synchronizeUserDefaultsDomain:%@, key= %@, container= %@)", &v13, 0x20u);
    }

    v12 = [NSSet setWithObject:keyCopy];
    [v10 synchronizeUserDefaultsDomain:domainCopy keys:v12 container:containerCopy];
  }
}

+ (void)setValue:(id)value forConfigKey:(id)key
{
  valueCopy = value;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100AF7F30;
  v11 = sub_100AF7F40;
  v12 = 0;
  GEOConfigGetPropertiesForKey();
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v8[5];
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = valueCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GEOConfigSet(key= %@, value= %@)", buf, 0x16u);
  }

  _GEOConfigSetEncodedValue();
  _Block_object_dispose(&v7, 8);
}

+ (void)setValue:(id)value forDefaultsKey:(id)key bundleID:(id)d syncToNano:(BOOL)nano
{
  nanoCopy = nano;
  valueCopy = value;
  keyCopy = key;
  dCopy = d;
  if (dCopy)
  {
    v11 = dCopy;
  }

  else
  {
    v11 = @"com.apple.Maps";
  }

  v12 = +[MSPMapsPaths mapsApplicationContainerPaths];
  homeDirectory = [v12 homeDirectory];

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138413570;
    v23 = keyCopy;
    v24 = 2112;
    v25 = valueCopy;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = kCFPreferencesCurrentUser;
    v30 = 2112;
    v31 = kCFPreferencesAnyHost;
    v32 = 2112;
    v33 = homeDirectory;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "_CFPreferencesSetValueWithContainer(key= %@, value= %@, applicationId= %@, userName= %@, hostName= %@, containerPath= %@)", buf, 0x3Eu);
  }

  _CFPreferencesSetValueWithContainer();
  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v23 = v11;
    v24 = 2112;
    v25 = kCFPreferencesCurrentUser;
    v26 = 2112;
    v27 = kCFPreferencesAnyHost;
    v28 = 2112;
    v29 = homeDirectory;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "_CFPreferencesSynchronizeWithContainer(applicationID= %@, userName= %@, hostName= %@, containerPath= %@)", buf, 0x2Au);
  }

  _CFPreferencesSynchronizeWithContainer();
  GSSendAppPreferencesChanged();
  v16 = +[MSPMapsPaths mapsApplicationContainerPaths];
  groupDirectory = [v16 groupDirectory];

  v18 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138413570;
    v23 = keyCopy;
    v24 = 2112;
    v25 = valueCopy;
    v26 = 2112;
    v27 = @"group.com.apple.Maps";
    v28 = 2112;
    v29 = kCFPreferencesCurrentUser;
    v30 = 2112;
    v31 = kCFPreferencesAnyHost;
    v32 = 2112;
    v33 = groupDirectory;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "_CFPreferencesSetValueWithContainer(key= %@, value= %@, applicationId= %@, userName= %@, hostName= %@, containerPath= %@)", buf, 0x3Eu);
  }

  _CFPreferencesSetValueWithContainer();
  v19 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v23 = @"group.com.apple.Maps";
    v24 = 2112;
    v25 = kCFPreferencesCurrentUser;
    v26 = 2112;
    v27 = kCFPreferencesAnyHost;
    v28 = 2112;
    v29 = groupDirectory;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "_CFPreferencesSynchronizeWithContainer(applicationID= %@, userName= %@, hostName= %@, containerPath= %@)", buf, 0x2Au);
  }

  _CFPreferencesSynchronizeWithContainer();
  GSSendAppPreferencesChanged();
  if (nanoCopy)
  {
    [self _synchronizeNanoDefaultsForDomain:v11 key:keyCopy container:v11];
  }

  [self _sendDiscoverabilitySignalsForKey:keyCopy];
}

+ (id)valueForDefaultsKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v7 = +[MSPMapsPaths mapsApplicationContainerPaths];
  homeDirectory = [v7 homeDirectory];

  v9 = _CFPreferencesCopyValueWithContainer();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = valueCopy;
  }

  v11 = v10;

  return v10;
}

@end