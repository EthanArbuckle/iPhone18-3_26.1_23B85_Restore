@interface CTWifiLocationManager
- (BOOL)isLocationAcceptable:(double)a3 integrity:(unsigned int)a4 accuracy:(double)a5;
- (CTWifiLocationManager)init;
- (id).cxx_construct;
- (id)copyLastKnownLocation;
- (void)configureLocationManagerWithForceLocationLookup:(BOOL)a3;
- (void)dealloc;
- (void)disableVoWiFiLocationStatusOnFirstLaunch;
- (void)enableVoWiFiLocationStatus:(BOOL)a3;
- (void)handleDataMigration;
- (void)handleDumpState;
- (void)initialize;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)registerWifiCallingEntity;
- (void)shouldUpdateLocation:(BOOL)a3 forceLocationLookup:(BOOL)a4;
- (void)startLocationUpdateWithForceLocationLookup:(BOOL)a3;
- (void)stopLocationUpdates;
@end

@implementation CTWifiLocationManager

- (CTWifiLocationManager)init
{
  v6.receiver = self;
  v6.super_class = CTWifiLocationManager;
  v2 = [(CTWifiLocationManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    location = v2->_location;
    v2->_location = 0;

    v3->_forceLocationLookup = 0;
    *&v3->_locationServiceDenied = 256;
    v3->_desiredLocationAccuracy = kCLLocationAccuracyThreeKilometers;
    v3->_desiredIntegrity = kCLLocationIntegrityLow;
    v3->_initialized = 0;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  [(CTWifiLocationManager *)self stopLocationUpdates];
  v3.receiver = self;
  v3.super_class = CTWifiLocationManager;
  [(CTWifiLocationManager *)&v3 dealloc];
}

- (void)initialize
{
  if (!self->_initialized)
  {
    self->_initialized = 1;
    sub_10114BB38(self->logger.__ptr_);
    v3 = *self->logger.__ptr_;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_10114BE00();
      if (v4 > 4)
      {
        v5 = "???";
      }

      else
      {
        v5 = off_101F115B0[v4];
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I CTWifiLocationManager initialized. Currently location status: %s", &v6, 0xCu);
    }
  }
}

- (void)disableVoWiFiLocationStatusOnFirstLaunch
{
  v3 = *self->logger.__ptr_;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I CTWifiLocation disableVoWiFiLocationStatusOnFirstLaunch", v4, 2u);
    v3 = *self->logger.__ptr_;
  }

  sub_10114BEE8(v3, 0);
  sub_10114BFEC();
}

- (void)handleDataMigration
{
  ptr = self->logger.__ptr_;
  v4 = *ptr;
  if (os_log_type_enabled(*ptr, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_10114BE00();
    if (v5 > 4)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_101F115B0[v5];
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I CTWifiLocationManager handle data migration. current status: %s", &v7, 0xCu);
    ptr = self->logger.__ptr_;
  }

  sub_10114C138(ptr);
}

- (void)configureLocationManagerWithForceLocationLookup:(BOOL)a3
{
  v3 = a3;
  [(CTWifiLocationManager *)self setForceLocationLookup:?];
  manager = self->_manager;
  if (v3)
  {
    [(CLLocationManager *)manager setDesiredAccuracy:kCLLocationAccuracyBest];
    self->_desiredLocationAccuracy = kCLLocationAccuracyHundredMeters;
    self->_desiredIntegrity = kCLLocationIntegrityLow;
    [(CLLocationManager *)self->_manager setDynamicAccuracyReductionEnabled:0];
    sub_10114BB38(self->logger.__ptr_);
    v6 = *self->logger.__ptr_;

    sub_10114BEE8(v6, 1);
  }

  else
  {
    [(CLLocationManager *)manager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
    self->_desiredLocationAccuracy = kCLLocationAccuracyThreeKilometers;
    self->_desiredIntegrity = kCLLocationIntegrityLow;
    v7 = self->_manager;

    [(CLLocationManager *)v7 setDynamicAccuracyReductionEnabled:1];
  }
}

- (BOOL)isLocationAcceptable:(double)a3 integrity:(unsigned int)a4 accuracy:(double)a5
{
  if ([(CTWifiLocationManager *)self forceLocationLookup])
  {
    if ([(CTWifiLocationManager *)self desiredIntegrity]<= a4)
    {
      [(CTWifiLocationManager *)self desiredLocationAccuracy];
      if (v14 >= a5)
      {
        LOBYTE(v9) = 1;
        return v9;
      }

      v15 = *self->logger.__ptr_;
      v9 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        [(CTWifiLocationManager *)self desiredLocationAccuracy];
        v18 = 134217984;
        v19 = v16;
        v10 = "#I accuracy is worse than %f";
        v11 = v15;
        v12 = 12;
        goto LABEL_11;
      }
    }

    else
    {
      v8 = *self->logger.__ptr_;
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        v18 = 67109120;
        LODWORD(v19) = [(CTWifiLocationManager *)self desiredIntegrity];
        v10 = "#I integrity is less than %d";
        v11 = v8;
        v12 = 8;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v18, v12);
        LOBYTE(v9) = 0;
      }
    }
  }

  else
  {
    v13 = *self->logger.__ptr_;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Checking only integrity for a non-precise location request.", &v18, 2u);
    }

    LOBYTE(v9) = [(CTWifiLocationManager *)self desiredIntegrity]<= a4;
  }

  return v9;
}

- (void)shouldUpdateLocation:(BOOL)a3 forceLocationLookup:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = self->_manager;
  if (!v7)
  {
    v13 = *self->logger.__ptr_;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    LOWORD(v24) = 0;
    v14 = "#I WifiLocation manager is nil";
    v15 = v13;
    goto LABEL_25;
  }

  if ([(CTWifiLocationManager *)self isLocationServiceEnabled])
  {
    goto LABEL_3;
  }

  v16 = *self->logger.__ptr_;
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (!v17)
    {
      goto LABEL_32;
    }

    LOWORD(v24) = 0;
    v14 = "#I WifiLocation services are disabled";
    v15 = v16;
LABEL_25:
    v20 = 2;
    goto LABEL_26;
  }

  if (v17)
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I WifiLocation services are disabled. However, force location lookup is requested so we'll let it through", &v24, 2u);
  }

LABEL_3:
  if ([(CTWifiLocationManager *)self locationRequested]== v5)
  {
    if (v5 && v4 && ![(CTWifiLocationManager *)self forceLocationLookup])
    {
      [(CLLocationManager *)v7 stopUpdatingLocation];
      v23 = *self->logger.__ptr_;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I WifiLocation update was enabled for coarse location. Need more accurate location now", &v24, 2u);
      }

      goto LABEL_4;
    }

    v18 = *self->logger.__ptr_;
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v19 = "disabled";
    if (v5)
    {
      v19 = "enabled";
    }

    v24 = 136315138;
    v25 = v19;
    v14 = "#I WifiLocation update already %s";
    v15 = v18;
    v20 = 12;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v24, v20);
    goto LABEL_32;
  }

LABEL_4:
  if (v5)
  {
    if (v4)
    {
      v8 = [(CTWifiLocationManager *)self locationServicesAssertion];
      v9 = v8 == 0;

      if (v9)
      {
        v10 = *self->logger.__ptr_;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Acquiring Emergency location services assertion", &v24, 2u);
        }

        v11 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/WifiCalling.bundle"];
        v12 = [CLEmergencyEnablementAssertion newAssertionForBundle:v11 withReason:@"Emergency Wifi calling"];
        [(CTWifiLocationManager *)self setLocationServicesAssertion:v12];
      }
    }

    [(CTWifiLocationManager *)self configureLocationManagerWithForceLocationLookup:v4];
    [(CLLocationManager *)v7 startUpdatingLocation];
  }

  else
  {
    v21 = [(CTWifiLocationManager *)self locationServicesAssertion];
    v22 = v21 == 0;

    if (!v22)
    {
      [(CTWifiLocationManager *)self setLocationServicesAssertion:0];
    }

    [(CLLocationManager *)v7 stopUpdatingLocation];
    if ([(CTWifiLocationManager *)self forceLocationLookup])
    {
      sub_10114C138(self->logger.__ptr_);
    }
  }

  [(CTWifiLocationManager *)self setLocationRequested:v5];
LABEL_32:
}

- (void)startLocationUpdateWithForceLocationLookup:(BOOL)a3
{
  v3 = a3;
  v5 = *self->logger.__ptr_;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = CSIBOOLAsString(v3);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Start WifiLocation Update. Force location lookup: %s", &v6, 0xCu);
  }

  [(CTWifiLocationManager *)self shouldUpdateLocation:1 forceLocationLookup:v3];
}

- (void)stopLocationUpdates
{
  v3 = *self->logger.__ptr_;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Stop WifiLocation Update", v4, 2u);
  }

  [(CTWifiLocationManager *)self shouldUpdateLocation:0 forceLocationLookup:[(CTWifiLocationManager *)self forceLocationLookup]];
}

- (id)copyLastKnownLocation
{
  if (![(CTWifiLocationManager *)self isLocationServiceEnabled])
  {
    return 0;
  }

  v3 = [(CTWifiLocationManager *)self location];
  v4 = [v3 copy];

  return v4;
}

- (void)registerWifiCallingEntity
{
  v2 = *self->logger.__ptr_;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I CTWifiLocation registerWifiCallingEntity NOT supported", v3, 2u);
  }
}

- (void)enableVoWiFiLocationStatus:(BOOL)a3
{
  v3 = a3;
  sub_10114BEE8(*self->logger.__ptr_, a3);
  sub_10114BFEC();
  v5 = *self->logger.__ptr_;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "'Denied'";
    if (v3)
    {
      v6 = "'Authorized'";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Successfully set location status to %s", &v7, 0xCu);
  }
}

- (void)handleDumpState
{
  v3 = sub_10114CD1C();
  v4 = *self->logger.__ptr_;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I ------ CTWifiLocationManager state ------", &v12, 2u);
    v4 = *self->logger.__ptr_;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    locationRequested = self->_locationRequested;
    locationAvailable = self->_locationAvailable;
    locationServiceDenied = self->_locationServiceDenied;
    locationServiceAuthorized = self->_locationServiceAuthorized;
    v12 = 67109888;
    *v13 = locationRequested;
    *&v13[4] = 1024;
    *&v13[6] = locationAvailable;
    LOWORD(v14) = 1024;
    *(&v14 + 2) = locationServiceDenied;
    HIWORD(v14) = 1024;
    v15 = locationServiceAuthorized;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I LocationRequested: %d, LocationAvailable: %d, LocationServiceDenied: %d, LocationServiceAuthorized: %d", &v12, 0x1Au);
    v4 = *self->logger.__ptr_;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_10114BE00();
    if (v9 > 4)
    {
      v10 = "???";
    }

    else
    {
      v10 = off_101F115B0[v9];
    }

    if (HIDWORD(v3))
    {
      if (v3 > 4)
      {
        v11 = "???";
      }

      else
      {
        v11 = off_101F115B0[v3 & 7];
      }
    }

    else
    {
      v11 = "none";
    }

    v12 = 136315394;
    *v13 = v10;
    *&v13[8] = 2080;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Current status: %s, Saved status: %s", &v12, 0x16u);
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
  v6 = [v5 lastObject];
  v7 = [v6 timestamp];
  memset(&__p, 0, sizeof(__p));
  sub_10000501C(&__p, "unknown");
  v8 = [v7 description];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_100016890(&__p, [v9 UTF8String]);
  }

  [v7 timeIntervalSinceNow];
  v12 = v11;
  [v6 horizontalAccuracy];
  v14 = v13;
  v15 = [v6 integrity];
  v16 = *self->logger.__ptr_;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 134218498;
    v30 = v14;
    v31 = 1024;
    v32 = v15;
    v33 = 2080;
    v34 = p_p;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I WifiLocation accuracy = %f, integrity = %d, timestamp = %s", buf, 0x1Cu);
  }

  v18 = [(CTWifiLocationManager *)self isLocationAcceptable:v15 integrity:v12 accuracy:v14];
  v19 = *self->logger.__ptr_;
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Desired WifiLocation Obtained", buf, 2u);
    }

    [(CTWifiLocationManager *)self setLocation:v6];
    v21 = [(CTWifiLocationManager *)self location];
    [v21 coordinate];
    v23 = v22;

    v24 = [(CTWifiLocationManager *)self location];
    [v24 coordinate];
    v26 = v25;

    v27 = sub_1000FFCA4(&event::location::wifiLocationAvailable[1]);
    sub_100334104(v27, v23, v26);
  }

  else if (v20)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I WifiLocation not of desired accuracy and integrity", buf, 2u);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && ![v7 code])
  {
    v9 = *self->logger.__ptr_;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I WifiLocation Skipping recoverable error", v10, 2u);
    }
  }

  else
  {
    self->_locationServiceDenied = [v8 code] == 1;
    [(CTWifiLocationManager *)self stopLocationUpdates];
    [(CTWifiLocationManager *)self setLocationRequested:0];
  }
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v6 = a3;
  self->_locationServiceAuthorized = a4 != 2;
  v7 = *self->logger.__ptr_;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a4 == 2)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I WifiLocation service access is NOT authorized", buf, 2u);
    }

    [(CTWifiLocationManager *)self stopLocationUpdates];
  }

  else if (v8)
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I WifiLocation service access is authorized", v9, 2u);
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end