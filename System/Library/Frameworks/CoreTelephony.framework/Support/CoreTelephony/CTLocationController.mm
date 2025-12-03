@interface CTLocationController
- (BOOL)isCircularGeofenceSupported_sync;
- (BOOL)isPolygonalGeofenceSupported_sync;
- (CTLocationController)init;
- (CTLocationController)initWithBundleIdentifier:(id)identifier withDistanceFilter:(int)filter withDesiredAccuracy:(int)accuracy withQueue:(dispatch_queue_s *)queue withDelegate:(CTLocationControllerDelegateInterface *)delegate;
- (CTLocationController)initWithBundlePath:(id)path withQueue:(dispatch_queue_s *)queue withDelegate:(CTLocationControllerDelegateInterface *)delegate;
- (id)setupPolygonalGeoFence:()vector<std:()double> :()std:(double>>> *)std :(id)a4 allocator<std::pair<double pair<double withName:;
- (void)dealloc;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didEnterRegion:(id)region;
- (void)locationManager:(id)manager didExitRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
- (void)requestLocation;
- (void)setupCircularGeoFence:()pair<std:()double> :(double>)a3 pair<double withName:(id)name;
- (void)stopGeofence:(id)geofence;
@end

@implementation CTLocationController

- (CTLocationController)initWithBundleIdentifier:(id)identifier withDistanceFilter:(int)filter withDesiredAccuracy:(int)accuracy withQueue:(dispatch_queue_s *)queue withDelegate:(CTLocationControllerDelegateInterface *)delegate
{
  identifierCopy = identifier;
  accuracyCopy = accuracy;
  filterCopy = filter;
  v15.receiver = self;
  v15.super_class = CTLocationController;
  v12 = [(CTLocationController *)&v15 init];
  v19 = v12;
  if (v12)
  {
    v12->_fDelegate = delegate;
    v12->_fQueue = queue;
    operator new();
  }

  v13 = 0;

  return v13;
}

- (CTLocationController)initWithBundlePath:(id)path withQueue:(dispatch_queue_s *)queue withDelegate:(CTLocationControllerDelegateInterface *)delegate
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = CTLocationController;
  v9 = [(CTLocationController *)&v11 init];
  if (v9)
  {
    v9->_fDelegate = delegate;
    v9->_fQueue = queue;
    operator new();
  }

  return 0;
}

- (CTLocationController)init
{
  v3.receiver = self;
  v3.super_class = CTLocationController;
  return [(CTLocationController *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CTLocationController;
  [(CTLocationController *)&v2 dealloc];
}

- (BOOL)isCircularGeofenceSupported_sync
{
  v3 = [CLLocationManager isMonitoringAvailableForClass:objc_opt_class()];
  if (!v3 && os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_10177A8C0();
  }

  return v3;
}

- (BOOL)isPolygonalGeofenceSupported_sync
{
  v3 = [CLLocationManager isMonitoringAvailableForClass:objc_opt_class()];
  if (!v3 && os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_10177A8F4();
  }

  return v3;
}

- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region
{
  managerCopy = manager;
  regionCopy = region;
  v8 = *self->logger.__ptr_;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p) = 138412290;
    *(&__p + 4) = regionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Monitoring did start for: %@", &__p, 0xCu);
  }

  if (self->_fDelegate)
  {
    __p = 0uLL;
    v12 = 0;
    identifier = [regionCopy identifier];
    v10 = identifier;
    sub_10000501C(&__p, [identifier UTF8String]);

    (*(self->_fDelegate->var0 + 2))(self->_fDelegate, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }
  }

  else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_10177A928();
  }
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  managerCopy = manager;
  regionCopy = region;
  errorCopy = error;
  if (regionCopy)
  {
    if (self->_fDelegate)
    {
      __p[0] = 0;
      __p[1] = 0;
      v14 = 0;
      identifier = [regionCopy identifier];
      sub_10000501C(__p, [identifier UTF8String]);

      v12 = *self->logger.__ptr_;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = errorCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Monitoring failure reason: %@", buf, 0xCu);
      }

      (*(self->_fDelegate->var0 + 3))(self->_fDelegate, __p);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
    {
      sub_10177A928();
    }
  }

  else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_10177A95C();
  }
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  managerCopy = manager;
  regionCopy = region;
  v10 = regionCopy;
  if (regionCopy)
  {
    if (self->_fDelegate)
    {
      __p[0] = 0;
      __p[1] = 0;
      v16 = 0;
      identifier = [regionCopy identifier];
      sub_10000501C(__p, [identifier UTF8String]);

      v12 = *self->logger.__ptr_;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v18 = v10;
        v19 = 2048;
        stateCopy = state;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Monitoring state determined for %@ : %ld", buf, 0x16u);
      }

      fDelegate = self->_fDelegate;
      if (state == 1)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      if (state == 2)
      {
        v14 = 3;
      }

      *buf = v14;
      (*(fDelegate->var0 + 6))(fDelegate, __p, buf);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
    {
      sub_10177A928();
    }
  }

  else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_10177A95C();
  }
}

- (void)locationManager:(id)manager didEnterRegion:(id)region
{
  managerCopy = manager;
  regionCopy = region;
  v8 = regionCopy;
  if (regionCopy)
  {
    if (self->_fDelegate)
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      identifier = [regionCopy identifier];
      sub_10000501C(__p, [identifier UTF8String]);

      v10 = *self->logger.__ptr_;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Region entered: %@", buf, 0xCu);
      }

      (*(self->_fDelegate->var0 + 7))(self->_fDelegate, __p);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
    {
      sub_10177A928();
    }
  }

  else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_10177A95C();
  }
}

- (void)locationManager:(id)manager didExitRegion:(id)region
{
  managerCopy = manager;
  regionCopy = region;
  v8 = regionCopy;
  if (regionCopy)
  {
    if (self->_fDelegate)
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      identifier = [regionCopy identifier];
      sub_10000501C(__p, [identifier UTF8String]);

      v10 = *self->logger.__ptr_;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Region exited: %@", buf, 0xCu);
      }

      (*(self->_fDelegate->var0 + 8))(self->_fDelegate, __p);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
    {
      sub_10177A928();
    }
  }

  else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_10177A95C();
  }
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  v7 = *self->logger.__ptr_;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = status;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I didChangeAuthStatus changed to: %d", v9, 8u);
  }

  fDelegate = self->_fDelegate;
  if (fDelegate)
  {
    (*(fDelegate->var0 + 5))(fDelegate, (status - 3) < 2);
  }

  else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_10177A928();
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    if (self->_fDelegate)
    {
      v8 = [locationsCopy objectAtIndex:0];
      [v8 coordinate];
      v10 = v9;

      v11 = [locationsCopy objectAtIndex:0];
      [v11 coordinate];
      v13 = v12;

      (*(self->_fDelegate->var0 + 9))(self->_fDelegate, v10, v13);
    }

    else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
    {
      sub_10177A928();
    }
  }

  else if (os_log_type_enabled(*self->logger.__ptr_, OS_LOG_TYPE_ERROR))
  {
    sub_10177A990();
  }
}

- (void)setupCircularGeoFence:()pair<std:()double> :(double>)a3 pair<double withName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  v7 = nameCopy;
  operator new();
}

- (id)setupPolygonalGeoFence:()vector<std:()double> :()std:(double>>> *)std :(id)a4 allocator<std::pair<double pair<double withName:
{
  v6 = a4;
  fQueue = self->_fQueue;
  selfCopy = self;
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_1003BCA04(&__p, std->var0, std->var1, (std->var1 - std->var0) >> 4);
  v8 = v6;
  v17 = 0;
  v15 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006DE534;
  block[3] = &unk_101E26940;
  block[4] = &v17;
  block[5] = &selfCopy;
  dispatch_sync(fQueue, block);
  v9 = v17;

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v9;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  fDelegate = self->_fDelegate;
  v9 = *self->logger.__ptr_;
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (fDelegate)
  {
    if (v10)
    {
      v11 = 138412290;
      v12 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Monitoring failure reason: %@", &v11, 0xCu);
      fDelegate = self->_fDelegate;
    }

    (*(fDelegate->var0 + 4))(fDelegate);
  }

  else if (v10)
  {
    sub_10177A928();
  }
}

- (void)stopGeofence:(id)geofence
{
  geofenceCopy = geofence;
  v5 = *self->logger.__ptr_;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Stopping a geofence", buf, 2u);
  }

  selfCopy = self;
  v7 = geofenceCopy;
  operator new();
}

- (void)requestLocation
{
  v3 = *self->logger.__ptr_;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Requesting CL for current location", buf, 2u);
  }

  selfCopy = self;
  operator new();
}

@end