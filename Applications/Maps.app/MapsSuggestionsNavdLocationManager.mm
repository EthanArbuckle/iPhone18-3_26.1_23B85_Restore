@interface MapsSuggestionsNavdLocationManager
- (BOOL)hasLocationAccess;
- (BOOL)hasMapsLocationAccess;
- (MapsSuggestionsNavdLocationManager)initWithName:(id)a3 locationBundleID:(id)a4 queue:(id)a5;
- (MapsSuggestionsNavdLocationManager)initWithName:(id)a3 locationBundlePath:(id)a4 queue:(id)a5;
- (NSString)uniqueName;
- (void)_updateLocationIfAllowed:(id)a3;
- (void)locationLeecher:(id)a3 errorLeechingLocation:(id)a4;
- (void)locationLeecher:(id)a3 receivedLocation:(id)a4;
- (void)locationManager:(id)a3 didVisit:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)onStartImplementation;
- (void)onStopImplementation;
@end

@implementation MapsSuggestionsNavdLocationManager

- (BOOL)hasLocationAccess
{
  result = [(MapsSuggestionsNavdLocationManager *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (void)locationManager:(id)a3 didVisit:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MapsSuggestionsNavdLocationManager *)self dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10064982C;
  v10[3] = &unk_101661480;
  v11 = v7;
  v9 = v7;
  objc_copyWeak(&v13, &location);
  v12 = self;
  dispatch_async(v8, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = [(MapsSuggestionsNavdLocationManager *)self _hasMapsCoarseLocationEnabled];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "DidChangeAuthorization coarse location enabled : %@", &v7, 0xCu);
  }

  [(MapsSuggestionsNavdLocationManager *)self considerMyAllowanceAsLimited:v4];
}

- (BOOL)hasMapsLocationAccess
{
  if ([CLLocationManager authorizationStatusForBundleIdentifier:MapsAppBundleId]- 3 > 1)
  {
    return 0;
  }

  else
  {
    return ![(MapsSuggestionsNavdLocationManager *)self _hasMapsCoarseLocationEnabled];
  }
}

- (void)locationLeecher:(id)a3 errorLeechingLocation:(id)a4
{
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v4;
      v7 = "Error leeching location : %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEBUG;
      v10 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v11, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v11 = 136446978;
    v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/MapsSuggestionsNavdLocationManager.m";
    v13 = 1024;
    v14 = 139;
    v15 = 2082;
    v16 = "[MapsSuggestionsNavdLocationManager locationLeecher:errorLeechingLocation:]";
    v17 = 2082;
    v18 = "nil == (error)";
    v7 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an error";
    v8 = v6;
    v9 = OS_LOG_TYPE_FAULT;
    v10 = 38;
    goto LABEL_6;
  }
}

- (void)locationLeecher:(id)a3 receivedLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MapsSuggestionsNavdLocationManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100649D78;
  block[3] = &unk_101661340;
  objc_copyWeak(&v12, &location);
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_updateLocationIfAllowed:(id)a3
{
  v4 = a3;
  [(MapsSuggestionsNavdLocationManager *)self considerMyAllowanceAsLimited:[(MapsSuggestionsNavdLocationManager *)self _hasMapsCoarseLocationEnabled]];
  if ([(MapsSuggestionsNavdLocationManager *)self hasMapsLocationAccess])
  {
    [(MapsSuggestionsNavdLocationManager *)self considerMyNewLocation:v4];
  }
}

- (void)onStopImplementation
{
  objc_initWeak(&location, self);
  v3 = [(MapsSuggestionsNavdLocationManager *)self dispatchQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100649FC0;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)onStartImplementation
{
  objc_initWeak(&location, self);
  v3 = [(MapsSuggestionsNavdLocationManager *)self dispatchQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10064A38C;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (MapsSuggestionsNavdLocationManager)initWithName:(id)a3 locationBundlePath:(id)a4 queue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = MapsSuggestionsNavdLocationManager;
  v10 = [(MapsSuggestionsNavdLocationManager *)&v17 initWithName:a3 queue:v9];
  if (v10)
  {
    v11 = [[CLLocationManager alloc] initWithEffectiveBundlePath:v8 delegate:v10 onQueue:v9];
    locationManager = v10->_locationManager;
    v10->_locationManager = v11;

    v13 = +[NavdLocationLeecher sharedLeecher];
    v14 = [v13 leechedLocations];
    v15 = [v14 lastObject];
    [(MapsSuggestionsNavdLocationManager *)v10 considerMyNewLocation:v15];
  }

  return v10;
}

- (MapsSuggestionsNavdLocationManager)initWithName:(id)a3 locationBundleID:(id)a4 queue:(id)a5
{
  v7 = a5;
  v16.receiver = self;
  v16.super_class = MapsSuggestionsNavdLocationManager;
  v8 = [(MapsSuggestionsNavdLocationManager *)&v16 initWithName:a3 queue:v7];
  if (v8)
  {
    v9 = [CLLocationManager alloc];
    v10 = [v9 initWithEffectiveBundleIdentifier:MapsAppBundleId delegate:v8 onQueue:v7];
    locationManager = v8->_locationManager;
    v8->_locationManager = v10;

    v12 = +[NavdLocationLeecher sharedLeecher];
    v13 = [v12 leechedLocations];
    v14 = [v13 lastObject];
    [(MapsSuggestionsNavdLocationManager *)v8 considerMyNewLocation:v14];
  }

  return v8;
}

@end