@interface RCLocationsOfInterestManager
+ (id)defaultManager;
- (CLLocation)currentLocation;
- (NSArray)locationsOfInterest;
- (RCLocationsOfInterestManager)init;
- (void)_didFetchPlaceInferences:(id)a3 location:(id)a4 error:(id)a5;
- (void)_requestPlaceInferences;
- (void)_startMonitoringLocation;
- (void)_stopMonitoringLocation;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)prepare;
- (void)start;
- (void)stop;
@end

@implementation RCLocationsOfInterestManager

+ (id)defaultManager
{
  if (qword_1002D70C8 != -1)
  {
    sub_100014A50();
  }

  v3 = qword_1002D70C0;

  return v3;
}

- (RCLocationsOfInterestManager)init
{
  v7.receiver = self;
  v7.super_class = RCLocationsOfInterestManager;
  v2 = [(RCLocationsOfInterestManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.voicememod.RCLocationsOfInterestManager.serialQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v2->_accessLock._os_unfair_lock_opaque = 0;
    locationsOfInterest = v2->_locationsOfInterest;
    v2->_locationsOfInterest = &__NSArray0__struct;
  }

  return v2;
}

- (void)prepare
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018020;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)start
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019C34;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_startMonitoringLocation
{
  [(CLLocationManager *)self->_locationManager startMonitoringSignificantLocationChanges];
  [(CLLocationManager *)self->_locationManager requestLocation];
  self->_placeInferencePolicy = 1;

  [(RCLocationsOfInterestManager *)self _requestPlaceInferences];
}

- (void)_requestPlaceInferences
{
  v3 = [(CLLocationManager *)self->_locationManager location];
  if (v3 && !self->_isFetchingPlacesOfInterest && (objc_opt_respondsToSelector() & 1) != 0)
  {
    self->_isFetchingPlacesOfInterest = 1;
    locationManager = self->_locationManager;
    placeInferencePolicy = self->_placeInferencePolicy;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100083DE0;
    v6[3] = &unk_10028B868;
    v6[4] = self;
    v7 = v3;
    [(CLLocationManager *)locationManager _fetchPlaceInferencesWithFidelityPolicy:placeInferencePolicy handler:v6];
  }
}

- (void)stop
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083CEC;
  block[3] = &unk_10028A3B8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_stopMonitoringLocation
{
  if (self->_active)
  {
    if ((self->_authorizationStatus - 3) <= 1)
    {
      [(CLLocationManager *)self->_locationManager stopMonitoringSignificantLocationChanges];
    }

    self->_active = 0;
  }
}

- (CLLocation)currentLocation
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = [(CLLocation *)self->_currentLocation copy];
  os_unfair_lock_unlock(&self->_accessLock);

  return v3;
}

- (NSArray)locationsOfInterest
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = [(NSArray *)self->_locationsOfInterest copy];
  os_unfair_lock_unlock(&self->_accessLock);

  return v3;
}

- (void)_didFetchPlaceInferences:(id)a3 location:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (self->_active)
  {
    if (v8)
    {
      objc_storeStrong(&self->_currentLocation, a4);
      v12 = [v8 copy];
      locationsOfInterest = self->_locationsOfInterest;
      self->_locationsOfInterest = v12;

      if (self->_placeInferencePolicy != 3)
      {
        self->_placeInferencePolicy = 3;
        [(RCLocationsOfInterestManager *)self _requestPlaceInferences];
      }
    }

    else if (v10)
    {
      v14 = OSLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1001B9260();
      }
    }
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = [a3 authorizationStatus];
  v5 = v4;
  if (v4 - 1 < 2)
  {
    [(RCLocationsOfInterestManager *)self _stopMonitoringLocation];
    currentLocation = self->_currentLocation;
    self->_currentLocation = 0;

    locationsOfInterest = self->_locationsOfInterest;
    self->_locationsOfInterest = &__NSArray0__struct;
  }

  else if (v4 - 3 >= 2)
  {
    if (!v4)
    {
      [(CLLocationManager *)self->_locationManager requestWhenInUseAuthorization];
    }
  }

  else if (self->_active && (self->_authorizationStatus - 3) >= 2)
  {
    [(RCLocationsOfInterestManager *)self _startMonitoringLocation];
  }

  self->_authorizationStatus = v5;
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = [v5 domain];
  if ([v6 isEqualToString:kCLErrorDomain])
  {
    v7 = [v5 code];

    if (!v7)
    {
      [(CLLocationManager *)self->_locationManager requestLocation];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001B92E0();
  }

LABEL_8:
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self->_active && (self->_authorizationStatus - 3) <= 1)
  {
    [(RCLocationsOfInterestManager *)self _requestPlaceInferences];
  }
}

@end