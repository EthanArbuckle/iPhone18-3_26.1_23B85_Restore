@interface WeatherPrefsMonitor
- (BOOL)areLocationServicesAuthorized;
- (BOOL)areLocationServicesResolved;
- (City)selectedCity;
- (NSArray)cities;
- (NSArray)cityNames;
- (NSArray)sanitizedCities;
- (NSString)selectedCityLocationID;
- (WeatherPrefsMonitor)initWithDelegate:(id)delegate;
- (WeatherPrefsMonitorDelegate)delegate;
- (void)_notifyObserversOfReload;
- (void)dealloc;
- (void)setSelectedCity:(id)city;
- (void)setSelectedCityLocationID:(id)d;
- (void)weatherPrefsDidGetUpdated:(id)updated;
@end

@implementation WeatherPrefsMonitor

- (WeatherPrefsMonitor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = WeatherPrefsMonitor;
  v5 = [(WeatherPrefsMonitor *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanoweatherprefs"];
    gizmoDefaults = v6->_gizmoDefaults;
    v6->_gizmoDefaults = v7;

    synchronize = [(NPSDomainAccessor *)v6->_gizmoDefaults synchronize];
    v10 = objc_opt_new();
    gizmoDefaultsManager = v6->_gizmoDefaultsManager;
    v6->_gizmoDefaultsManager = v10;

    v12 = +[NSDistributedNotificationCenter defaultCenter];
    [v12 addObserver:v6 selector:"weatherPrefsDidGetUpdated:" name:kWeatherPrefAppToPrefsDidUpdate object:0 suspensionBehavior:2];

    v13 = +[NSDistributedNotificationCenter defaultCenter];
    [v13 addObserver:v6 selector:"weatherPrefsDidGetUpdated:" name:kWeatherPrefGroupPrefsDidUpdate object:0 suspensionBehavior:2];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_2050, @"com.apple.nanoweatherprefsd.PreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = WeatherPrefsMonitor;
  [(WeatherPrefsMonitor *)&v5 dealloc];
}

- (void)_notifyObserversOfReload
{
  delegate = [(WeatherPrefsMonitor *)self delegate];
  [delegate monitorObservedReload:self];
}

- (void)weatherPrefsDidGetUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = +[NSProcessInfo processInfo];
  processName = [v5 processName];
  object = [updatedCopy object];

  LOBYTE(updatedCopy) = [processName isEqualToString:object];
  if ((updatedCopy & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_22B4;
    block[3] = &unk_8350;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (NSArray)cityNames
{
  cities = [(WeatherPrefsMonitor *)self cities];
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [cities count]);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_23D0;
  v3 = v5[3] = &unk_8378;
  v6 = v3;
  [cities enumerateObjectsUsingBlock:v5];

  return v3;
}

- (NSArray)cities
{
  sanitizedCities = [(WeatherPrefsMonitor *)self sanitizedCities];
  v4 = [NSMutableArray arrayWithArray:sanitizedCities];

  if ([(WeatherPrefsMonitor *)self areLocationServicesAuthorized])
  {
    v5 = +[City currentLocationCity];
    [v4 insertObject:v5 atIndex:0];
  }

  return v4;
}

- (BOOL)areLocationServicesAuthorized
{
  v2 = +[WeatherLocationManager sharedWeatherLocationManager];
  forceLoadingAuthorizationStatus = [v2 forceLoadingAuthorizationStatus];

  return forceLoadingAuthorizationStatus > 2;
}

- (BOOL)areLocationServicesResolved
{
  v2 = +[WeatherLocationManager sharedWeatherLocationManager];
  forceLoadingAuthorizationStatus = [v2 forceLoadingAuthorizationStatus];

  return forceLoadingAuthorizationStatus != 0;
}

- (NSArray)sanitizedCities
{
  v2 = +[WeatherPreferences sharedPreferences];
  [v2 synchronizeStateToDisk];
  loadSavedCities = [v2 loadSavedCities];
  v4 = [NSPredicate predicateWithBlock:&stru_83B8];
  v5 = [loadSavedCities filteredArrayUsingPredicate:v4];

  return v5;
}

- (City)selectedCity
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_27D4;
  v18[3] = &unk_83E0;
  v18[4] = self;
  v3 = objc_retainBlock(v18);
  selectedCityLocationID = [(WeatherPrefsMonitor *)self selectedCityLocationID];
  v5 = selectedCityLocationID;
  if (selectedCityLocationID && ![selectedCityLocationID isEqualToString:kLocalWeatherCityID])
  {
    cities = [(WeatherPrefsMonitor *)self cities];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_281C;
    v16 = &unk_8408;
    v17 = v5;
    v8 = [cities indexOfObjectPassingTest:&v13];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = (v3[2])(v3);
      v10 = v9;
      if (v9)
      {
        firstObject = v9;
      }

      else
      {
        firstObject = [cities firstObject];
      }

      v6 = firstObject;
    }

    else
    {
      v6 = [cities objectAtIndexedSubscript:{v8, v13, v14, v15, v16}];
    }
  }

  else
  {
    v6 = (v3[2])(v3);
  }

  return v6;
}

- (void)setSelectedCity:(id)city
{
  cityCopy = city;
  selectedCity = [(WeatherPrefsMonitor *)self selectedCity];
  v5 = [cityCopy isEqual:selectedCity];

  if ((v5 & 1) == 0)
  {
    locationID = [cityCopy locationID];
    [(WeatherPrefsMonitor *)self setSelectedCityLocationID:locationID];
  }
}

- (NSString)selectedCityLocationID
{
  gizmoDefaults = [(WeatherPrefsMonitor *)self gizmoDefaults];
  v3 = [gizmoDefaults stringForKey:@"UserSelected"];

  return v3;
}

- (void)setSelectedCityLocationID:(id)d
{
  dCopy = d;
  gizmoDefaults = [(WeatherPrefsMonitor *)self gizmoDefaults];
  [gizmoDefaults setObject:dCopy forKey:@"UserSelected"];

  gizmoDefaults2 = [(WeatherPrefsMonitor *)self gizmoDefaults];
  synchronize = [gizmoDefaults2 synchronize];

  v8 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A3C;
  block[3] = &unk_8350;
  block[4] = self;
  dispatch_async(v8, block);
}

- (WeatherPrefsMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end