@interface CTLocationManager
+ (id)sharedManager;
- (BOOL)isLocationServiceEnabled;
- (CTLocationManager)init;
- (id).cxx_construct;
- (id)copyLastKnownLocation;
- (void)dealloc;
- (void)fetchLocationServiceEnabled;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManager:(id)a3 didVisit:(id)a4;
- (void)setRegistry:(const void *)a3;
- (void)shouldUpdateLocation:(BOOL)a3;
- (void)startLocationMonitoringVisitsWithReason:(const char *)a3;
- (void)startLocationUpdatesWithReason:(const char *)a3;
- (void)stopLocationMonitoringVisits;
- (void)stopLocationUpdates;
@end

@implementation CTLocationManager

+ (id)sharedManager
{
  if (qword_101FBA258 != -1)
  {
    sub_10176BA28();
  }

  v3 = qword_101FBA250;

  return v3;
}

- (CTLocationManager)init
{
  v6.receiver = self;
  v6.super_class = CTLocationManager;
  v2 = [(CTLocationManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    location = v2->_location;
    v2->_location = 0;

    *&v3->_locationServiceDenied = 256;
    if (v3->fLocationServiceEnabled.__engaged_)
    {
      v3->fLocationServiceEnabled.__engaged_ = 0;
    }

    operator new();
  }

  return 0;
}

- (void)setRegistry:(const void *)a3
{
  v4 = self;
  v5 = *(a3 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

- (void)dealloc
{
  [(CTLocationManager *)self stopLocationUpdates];
  v3.receiver = self;
  v3.super_class = CTLocationManager;
  [(CTLocationManager *)&v3 dealloc];
}

- (void)fetchLocationServiceEnabled
{
  v3 = *self->logger.__ptr_;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fetching locationServicesEnabled", &v7, 2u);
  }

  v4 = +[CLLocationManager locationServicesEnabled];
  self->fLocationServiceEnabled = (v4 | 0x100);
  v5 = *self->logger.__ptr_;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "False";
    if (v4)
    {
      v6 = "True";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I acquired locationServicesEnabled: %s", &v7, 0xCu);
    LOBYTE(v4) = self->fLocationServiceEnabled.var0.__null_state_;
  }

  LOBYTE(v7) = v4;
  sub_100332C08(&self->fServiceEnabledRestSource, &v7);
}

- (void)shouldUpdateLocation:(BOOL)a3
{
  v3 = a3;
  v5 = self->_manager;
  if (v5)
  {
    if ([(CTLocationManager *)self isLocationServiceAuthorized])
    {
      if ([(CTLocationManager *)self locationRequested]!= v3)
      {
        if (v3)
        {
          [(CLLocationManager *)v5 startUpdatingLocation];
        }

        else
        {
          [(CLLocationManager *)v5 stopUpdatingLocation];
        }

        [(CTLocationManager *)self setLocationRequested:v3];
      }
    }

    else
    {
      v6 = *self->logger.__ptr_;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Location services are not authorized", v7, 2u);
      }
    }
  }
}

- (void)startLocationUpdatesWithReason:(const char *)a3
{
  v5 = *self->logger.__ptr_;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I START LOCATION UPDATE: %s", &v6, 0xCu);
  }

  [(CTLocationManager *)self shouldUpdateLocation:1];
}

- (void)stopLocationUpdates
{
  v3 = *self->logger.__ptr_;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I STOP LOCATION UPDATE", v4, 2u);
  }

  [(CTLocationManager *)self shouldUpdateLocation:0];
}

- (BOOL)isLocationServiceEnabled
{
  v2 = self;
  v5 = self;
  fObj = v2->_queue.fObj.fObj;
  v7 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033401C;
  block[3] = &unk_101E26940;
  block[4] = &v7;
  block[5] = &v5;
  dispatch_sync(fObj, block);
  LOBYTE(v2) = v7;

  return v2;
}

- (id)copyLastKnownLocation
{
  if (![(CTLocationManager *)self isLocationServiceAuthorized])
  {
    return 0;
  }

  v3 = [(CTLocationManager *)self location];
  v4 = [v3 copy];

  return v4;
}

- (void)startLocationMonitoringVisitsWithReason:(const char *)a3
{
  v5 = *self->logger.__ptr_;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I START LOCATION MONITORING VISITS: %s", &v6, 0xCu);
  }

  [(CLLocationManager *)self->_manager startMonitoringVisits];
}

- (void)stopLocationMonitoringVisits
{
  v3 = *self->logger.__ptr_;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I STOP LOCATION MONITORING VISITS", v4, 2u);
  }

  [(CLLocationManager *)self->_manager stopMonitoringVisits];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = [a4 lastObject];
  v6 = *self->logger.__ptr_;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Location OK", v14, 2u);
  }

  [(CTLocationManager *)self setLocationAvailable:1];
  [(CTLocationManager *)self setLocation:v5];
  v7 = [(CTLocationManager *)self location];
  [v7 coordinate];
  v9 = v8;

  v10 = [(CTLocationManager *)self location];
  [v10 coordinate];
  v12 = v11;

  v13 = sub_1000FFCA4(&event::location::locationAvailable[1]);
  sub_100334104(v13, v9, v12);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && ![v7 code])
  {
    v10 = *self->logger.__ptr_;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Skipping recoverable error", v13, 2u);
    }

    v9 = sub_100B3931C("kLocationErrorDomain", [v8 code]);
  }

  else
  {
    self->_locationServiceDenied = [v8 code] == 1;
    [(CTLocationManager *)self stopLocationUpdates];
    [(CTLocationManager *)self setLocationAvailable:0];
    [(CTLocationManager *)self setLocationRequested:0];
    v9 = sub_100B3931C("kLocationErrorDomain", [v8 code]);
  }

  v11 = v9;
  v12 = sub_100334B9C(&event::location::locationUnavailable[1]);
  sub_100334BE0(v12, v11);
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v6 = a3;
  self->_locationServiceAuthorized = (a4 - 3) < 0xFFFFFFFE;
  if (a4 && a4 != 3)
  {
    [(CTLocationManager *)self stopLocationUpdates];
    v7 = sub_100B3931C("kPosixErrorDomain", 1);
    v8 = sub_100334B9C(&event::location::locationUnavailable[1]);
    sub_100334BE0(v8, v7);
  }

  v9 = *self->logger.__ptr_;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I didChangeAuthorizationStatus - refetching locationServiceEnabled", v11, 2u);
  }

  [(CTLocationManager *)self fetchLocationServiceEnabled];
  v10 = sub_100081A98(&event::location::locationAuthorizationChanged[1]);
  sub_100081ADC(v10);
}

- (void)locationManager:(id)a3 didVisit:(id)a4
{
  v18 = a3;
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 arrivalDate];
    v8 = +[NSDate distantPast];
    if ([v7 isEqual:v8])
    {
      v9 = 0;
    }

    else
    {
      v11 = [v6 arrivalDate];
      [v11 timeIntervalSince1970];
      v9 = v12;
    }

    v13 = [v6 departureDate];
    v14 = +[NSDate distantFuture];
    if ([v13 isEqual:v14])
    {
      v10 = 0;
    }

    else
    {
      v15 = [v6 departureDate];
      [v15 timeIntervalSince1970];
      v10 = v16;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v17 = sub_100336108(&event::location::locationVisit[1]);
  sub_10033614C(v17, v9, v10);
}

- (id).cxx_construct
{
  self->fIfRegistry.__ptr_ = 0;
  self->fIfRegistry.__cntrl_ = 0;
  self->logger.__ptr_ = 0;
  self->_queue.fObj.fObj = 0;
  self->fLocationServiceEnabled = 0;
  ctu::RestModule::RestModule(&self->fIfRestModule);
  self->fServiceEnabledRestSource.fSender.__f_.__f_ = 0;
  self->fServiceEnabledRestSource.fValue = 0;
  return self;
}

@end