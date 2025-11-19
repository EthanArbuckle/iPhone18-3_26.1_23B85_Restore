@interface CurrentLocationMapServiceTicket
- (CLLocation)currentLocation;
- (CurrentLocationMapServiceTicket)initWithLocationManager:(id)a3;
- (id)_revGeoTicketForCurrentLocation:(id)a3 traits:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6;
- (void)applyToCorrectedSearch:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)setLocationFixOperation:(id)a3;
- (void)setRevGeoTicket:(id)a3;
- (void)submitWithTraits:(id)a3 completionHandler:(id)a4 networkActivityHandler:(id)a5;
@end

@implementation CurrentLocationMapServiceTicket

- (void)setRevGeoTicket:(id)a3
{
  v5 = a3;
  revGeoTicket = self->_revGeoTicket;
  p_revGeoTicket = &self->_revGeoTicket;
  v6 = revGeoTicket;
  if (revGeoTicket != v5)
  {
    v9 = v5;
    [(GEOMapServiceCorrectableTicket *)v6 cancel];
    objc_storeStrong(p_revGeoTicket, a3);
    v5 = v9;
  }
}

- (void)setLocationFixOperation:(id)a3
{
  v5 = a3;
  locationFixOperation = self->_locationFixOperation;
  p_locationFixOperation = &self->_locationFixOperation;
  v6 = locationFixOperation;
  if (locationFixOperation != v5)
  {
    v9 = v5;
    [(MKLocationManagerOperation *)v6 cancel];
    objc_storeStrong(p_locationFixOperation, a3);
    v5 = v9;
  }
}

- (CLLocation)currentLocation
{
  v3 = [(MKLocationManager *)self->_locationManager lastGoodLocation];
  v4 = sub_100B63D48();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134349315;
    v18 = self;
    v19 = 2113;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Attempting to use last 'good' location: %{private}@", &v17, 0x16u);
  }

  if (v3)
  {
    v5 = +[NSDate date];
    v6 = [v3 timestamp];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;
    +[CLLocation _mapkit_timeToExpire];
    v10 = v9;

    if (v8 > v10)
    {
      v11 = sub_100B63D48();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        +[CLLocation _mapkit_timeToExpire];
        v17 = 134349312;
        v18 = self;
        v19 = 2048;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}p] Last 'good' location is too old (> %f seconds); using last known location", &v17, 0x16u);
      }

      v13 = [(MKLocationManager *)self->_locationManager lastLocation];

      v3 = v13;
    }
  }

  else
  {
    v14 = sub_100B63D48();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v17 = 134349056;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] We don't have a last 'good' location; using last known location", &v17, 0xCu);
    }

    v3 = [(MKLocationManager *)self->_locationManager lastLocation];
  }

  v15 = sub_100B63D48();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134349315;
    v18 = self;
    v19 = 2113;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Returning current location: %{private}@", &v17, 0x16u);
  }

  return v3;
}

- (void)applyToCorrectedSearch:(id)a3
{
  v4 = a3;
  v5 = [(CurrentLocationMapServiceTicket *)self revGeoTicket];
  [v5 applyToCorrectedSearch:v4];
}

- (void)cancel
{
  v3 = sub_100B63D48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Cancelling", &v5, 0xCu);
  }

  self->_cancelled = 1;
  [(CurrentLocationMapServiceTicket *)self setLocationFixOperation:0];
  v4 = [(CurrentLocationMapServiceTicket *)self revGeoTicket];
  [v4 cancel];
}

- (id)_revGeoTicketForCurrentLocation:(id)a3 traits:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[GEOLocation alloc] initWithCLLocation:v12];

  v14 = sub_100C2093C(v10);

  v15 = [GEOComposedWaypoint composedWaypointForCurrentLocation:v13 traits:v11 completionHandler:v14 networkActivityHandler:v9];

  return v15;
}

- (void)submitWithTraits:(id)a3 completionHandler:(id)a4 networkActivityHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  self->_cancelled = 0;
  v11 = [(CurrentLocationMapServiceTicket *)self currentLocation];
  v12 = sub_100B63D48();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      *buf = 134349315;
      v27 = self;
      v28 = 2113;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Submitting rev geo for location: %{private}@", buf, 0x16u);
    }

    v14 = [(CurrentLocationMapServiceTicket *)self _revGeoTicketForCurrentLocation:v11 traits:v8 completionHandler:v9 networkActivityHandler:v10];
    [(CurrentLocationMapServiceTicket *)self setRevGeoTicket:v14];
  }

  else
  {
    if (v13)
    {
      *buf = 134349056;
      v27 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Submitting single location update", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v15 = [(CurrentLocationMapServiceTicket *)self locationManager];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100B64298;
    v21 = &unk_10163AE68;
    objc_copyWeak(&v25, buf);
    v23 = v9;
    v22 = v8;
    v24 = v10;
    v16 = [v15 singleLocationUpdateWithHandler:&v18];
    [(CurrentLocationMapServiceTicket *)self setLocationFixOperation:v16, v18, v19, v20, v21];

    v17 = [(CurrentLocationMapServiceTicket *)self locationFixOperation];
    [v17 start];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

- (void)dealloc
{
  v3 = sub_100B63D48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CurrentLocationMapServiceTicket;
  [(CurrentLocationMapServiceTicket *)&v4 dealloc];
}

- (CurrentLocationMapServiceTicket)initWithLocationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CurrentLocationMapServiceTicket;
  v6 = [(CurrentLocationMapServiceTicket *)&v9 init];
  if (v6)
  {
    v7 = sub_100B63D48();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v11 = v6;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with location manager: %@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_locationManager, a3);
  }

  return v6;
}

@end