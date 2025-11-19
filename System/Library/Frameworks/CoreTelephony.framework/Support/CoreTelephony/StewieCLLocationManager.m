@interface StewieCLLocationManager
- (StewieCLLocationManager)initWithQueue:(id)a3 locationDataCallback:(void *)a4 authorizationChangedCallback:(void *)a5;
- (id).cxx_construct;
- (void)configureAccuracy:(int)a3;
- (void)configureAccuracyBest;
- (void)configureAccuracyBystander;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)reEvaluate;
- (void)setEmergency:(BOOL)a3;
- (void)setLocationUpdateRequested:(BOOL)a3;
- (void)setupManager:(int)a3;
- (void)updateLocationAuthStatus:(int)a3;
@end

@implementation StewieCLLocationManager

- (StewieCLLocationManager)initWithQueue:(id)a3 locationDataCallback:(void *)a4 authorizationChangedCallback:(void *)a5
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = StewieCLLocationManager;
  if ([(StewieCLLocationManager *)&v9 init])
  {
    ctu::OsLogContext::OsLogContext(v8, kCtLoggingSystemName, "stw.loc.mgr");
    operator new();
  }

  return 0;
}

- (void)configureAccuracyBest
{
  v3 = sub_100032AC8(self->fLogger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Configuring for location accuracy - best, no distance filter", v4, 2u);
  }

  [(CLLocationManager *)self->fLocationManager setDesiredAccuracy:kCLLocationAccuracyBest];
  [(CLLocationManager *)self->fLocationManager setDistanceFilter:kCLDistanceFilterNone];
}

- (void)configureAccuracyBystander
{
  v3 = sub_100032AC8(self->fLogger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Configuring for location accuracy - bystander, distance filter of 100 meters", v4, 2u);
  }

  [(CLLocationManager *)self->fLocationManager setDesiredAccuracy:2147483650.0];
  [(CLLocationManager *)self->fLocationManager setDistanceFilter:100.0];
}

- (void)configureAccuracy:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      [(StewieCLLocationManager *)self configureAccuracyBest];
    }
  }

  else
  {
    [(StewieCLLocationManager *)self configureAccuracyBystander];
  }
}

- (void)setupManager:(int)a3
{
  v3 = *&a3;
  dispatch_assert_queue_V2(self->fQueue);
  v5 = sub_100032AC8(self->fLogger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Setting up manager", v10, 2u);
  }

  v6 = [CLLocationManager alloc];
  v7 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/Bifrost.bundle"];
  v8 = [v6 initWithEffectiveBundle:v7 delegate:self onQueue:self->fQueue];
  fLocationManager = self->fLocationManager;
  self->fLocationManager = v8;

  [(StewieCLLocationManager *)self configureAccuracy:v3];
  [(CLLocationManager *)self->fLocationManager setDynamicAccuracyReductionEnabled:0];
}

- (void)reEvaluate
{
  dispatch_assert_queue_V2(self->fQueue);
  fLocationAuthStatus = self->fLocationAuthStatus;
  v4 = (fLocationAuthStatus | 2) == 2 || fLocationAuthStatus == 3 && self->fIsEmergency;
  fLocationUpdateRequested = self->fLocationUpdateRequested;
  v6 = sub_100032AC8(self->fLogger.__ptr_);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_10097680C(self->fLocationAuthStatus);
    v8 = @"NO";
    v9 = self->fLocationUpdateRequested;
    if (self->fIsEmergency)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v14 = 136315650;
    if (v9)
    {
      v8 = @"YES";
    }

    v15 = v7;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Auth status: %s, isEmergency: %@, Location update requested: %@", &v14, 0x20u);
  }

  v11 = v4 && fLocationUpdateRequested;
  if (self->fStartedLocationUpdates != v11)
  {
    self->fStartedLocationUpdates = v11;
    v12 = sub_100032AC8(self->fLogger.__ptr_);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Start updating location", &v14, 2u);
      }

      [(CLLocationManager *)self->fLocationManager startUpdatingLocation];
    }

    else
    {
      if (v13)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Stop updating location", &v14, 2u);
      }

      [(CLLocationManager *)self->fLocationManager stopUpdatingLocation];
    }
  }
}

- (void)updateLocationAuthStatus:(int)a3
{
  dispatch_assert_queue_V2(self->fQueue);
  if (self->fLocationAuthStatus != a3)
  {
    v5 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_10097680C(self->fLocationAuthStatus);
      *v8 = 136315394;
      *&v8[4] = v6;
      v9 = 2080;
      v10 = sub_10097680C(a3);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Auth status changed from:%s to %s", v8, 0x16u);
    }

    self->fLocationAuthStatus = a3;
    f = self->fAuthorizationChangedCallback.__f_.__f_;
    *v8 = a3;
    if (!f)
    {
      sub_100022DB4();
    }

    (*(*f + 48))(f, v8);
    [(StewieCLLocationManager *)self reEvaluate];
  }
}

- (void)setEmergency:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->fQueue);
  if (self->fIsEmergency != v3)
  {
    self->fIsEmergency = v3;
    v5 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I isEmergency: %@", buf, 0xCu);
    }

    if (self->fIsEmergency)
    {
      ptr = self->fAssertion.__ptr_;
      v8 = sub_100032AC8(self->fLogger.__ptr_);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!ptr)
      {
        if (v9)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [Stewie + Compass] Acquiring CLECEA/CLEPTO", buf, 2u);
        }

        sub_101501FF8();
      }

      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [Stewie + Compass] CLECEA/CLEPTO already exists", buf, 2u);
      }
    }

    else
    {
      v10 = sub_100032AC8(self->fLogger.__ptr_);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (self->fAssertion.__ptr_)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [Stewie + Compass] Releasing CLECEA/CLEPTO (if required). Assertion exists: %@", buf, 0xCu);
      }

      cntrl = self->fAssertion.__cntrl_;
      self->fAssertion.__ptr_ = 0;
      self->fAssertion.__cntrl_ = 0;
      if (cntrl)
      {
        sub_100004A34(cntrl);
      }
    }
  }
}

- (void)setLocationUpdateRequested:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->fQueue);
  if (self->fLocationUpdateRequested != v3)
  {
    self->fLocationUpdateRequested = v3;
    v5 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Location update is requested: %@", &v7, 0xCu);
    }

    [(StewieCLLocationManager *)self reEvaluate];
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->fQueue);
  if (![v5 code])
  {
    v9 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Still waiting to get location fix. Info: %@", &v10, 0xCu);
    }

    goto LABEL_10;
  }

  v6 = [v5 code];
  ptr = self->fLogger.__ptr_;
  if (v6 != 1)
  {
    v9 = sub_100032AC8(ptr);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Got error. Error: %@", &v10, 0xCu);
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = sub_100032AC8(ptr);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Denied; Error: %@", &v10, 0xCu);
  }

  [(StewieCLLocationManager *)self updateLocationAuthStatus:1];
LABEL_11:
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->fQueue);
  v4 = +[CLLocationManager locationServicesEnabled];
  v5 = [v7 authorizationStatus];
  if (v5 <= 4 && ((1 << v5) & 0x19) != 0)
  {
    v6 = 2;
  }

  else if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  [(StewieCLLocationManager *)self updateLocationAuthStatus:v6];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->fQueue);
  v8 = [v7 lastObject];
  [v8 horizontalAccuracy];
  if (v9 >= 0.0)
  {
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    if ([v8 integrity] >= 0x19)
    {
      if ([v8 integrity] >= 0x32)
      {
        if ([v8 integrity] < 0x4B)
        {
          v10 = 2;
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 1;
      }

      BYTE11(v38) = v10;
      v11 = [v8 timestamp];
      [v11 timeIntervalSince1970];
      v13 = (v12 * 1000000.0);

      v33[0] = v13;
      [v8 coordinate];
      v33[1] = v14;
      [v8 coordinate];
      v33[2] = v15;
      [v8 altitude];
      v34 = v16;
      [v8 ellipsoidalAltitude];
      v35 = v17;
      [v8 horizontalAccuracy];
      *&v36 = v18;
      [v8 verticalAccuracy];
      v20 = v19;
      *(&v36 + 1) = v19;
      v21 = [v8 sourceInformation];

      if (v21)
      {
        v22 = [v8 sourceInformation];
        v23 = [v22 isSimulatedBySoftware];
        v24 = [v8 sourceInformation];
        if ([v24 isProducedByAccessory])
        {
          v25 = 256;
        }

        else
        {
          v25 = 0;
        }

        BYTE10(v38) = 1;
        WORD4(v38) = v25 | v23;
      }

      if (v20 < 0.0)
      {
        *(&v36 + 1) = 0;
        v34 = 0;
        v35 = 0;
      }

      fHorizontalScalingFactor = self->fHorizontalScalingFactor;
      [v8 horizontalAccuracy];
      *&v37 = fHorizontalScalingFactor * v27;
      fVerticalScalingFactor = self->fVerticalScalingFactor;
      [v8 verticalAccuracy];
      *(&v37 + 1) = fVerticalScalingFactor * v29;
      [v8 speed];
      if (v30 >= 0.0)
      {
        [v8 speed];
        *&v38 = v31;
      }

      f = self->fLocationDataCallback.__f_.__f_;
      if (!f)
      {
        sub_100022DB4();
      }

      (*(*f + 48))(f, v33);
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 7) = 0;
  *(self + 11) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  return self;
}

@end