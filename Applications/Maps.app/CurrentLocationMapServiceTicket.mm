@interface CurrentLocationMapServiceTicket
- (CLLocation)currentLocation;
- (CurrentLocationMapServiceTicket)initWithLocationManager:(id)manager;
- (id)_revGeoTicketForCurrentLocation:(id)location traits:(id)traits completionHandler:(id)handler networkActivityHandler:(id)activityHandler;
- (void)applyToCorrectedSearch:(id)search;
- (void)cancel;
- (void)dealloc;
- (void)setLocationFixOperation:(id)operation;
- (void)setRevGeoTicket:(id)ticket;
- (void)submitWithTraits:(id)traits completionHandler:(id)handler networkActivityHandler:(id)activityHandler;
@end

@implementation CurrentLocationMapServiceTicket

- (void)setRevGeoTicket:(id)ticket
{
  ticketCopy = ticket;
  revGeoTicket = self->_revGeoTicket;
  p_revGeoTicket = &self->_revGeoTicket;
  v6 = revGeoTicket;
  if (revGeoTicket != ticketCopy)
  {
    v9 = ticketCopy;
    [(GEOMapServiceCorrectableTicket *)v6 cancel];
    objc_storeStrong(p_revGeoTicket, ticket);
    ticketCopy = v9;
  }
}

- (void)setLocationFixOperation:(id)operation
{
  operationCopy = operation;
  locationFixOperation = self->_locationFixOperation;
  p_locationFixOperation = &self->_locationFixOperation;
  v6 = locationFixOperation;
  if (locationFixOperation != operationCopy)
  {
    v9 = operationCopy;
    [(MKLocationManagerOperation *)v6 cancel];
    objc_storeStrong(p_locationFixOperation, operation);
    operationCopy = v9;
  }
}

- (CLLocation)currentLocation
{
  lastGoodLocation = [(MKLocationManager *)self->_locationManager lastGoodLocation];
  v4 = sub_100B63D48();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134349315;
    selfCopy4 = self;
    v19 = 2113;
    v20 = lastGoodLocation;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Attempting to use last 'good' location: %{private}@", &v17, 0x16u);
  }

  if (lastGoodLocation)
  {
    v5 = +[NSDate date];
    timestamp = [lastGoodLocation timestamp];
    [v5 timeIntervalSinceDate:timestamp];
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
        selfCopy4 = self;
        v19 = 2048;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[%{public}p] Last 'good' location is too old (> %f seconds); using last known location", &v17, 0x16u);
      }

      lastLocation = [(MKLocationManager *)self->_locationManager lastLocation];

      lastGoodLocation = lastLocation;
    }
  }

  else
  {
    v14 = sub_100B63D48();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v17 = 134349056;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}p] We don't have a last 'good' location; using last known location", &v17, 0xCu);
    }

    lastGoodLocation = [(MKLocationManager *)self->_locationManager lastLocation];
  }

  v15 = sub_100B63D48();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134349315;
    selfCopy4 = self;
    v19 = 2113;
    v20 = lastGoodLocation;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Returning current location: %{private}@", &v17, 0x16u);
  }

  return lastGoodLocation;
}

- (void)applyToCorrectedSearch:(id)search
{
  searchCopy = search;
  revGeoTicket = [(CurrentLocationMapServiceTicket *)self revGeoTicket];
  [revGeoTicket applyToCorrectedSearch:searchCopy];
}

- (void)cancel
{
  v3 = sub_100B63D48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Cancelling", &v5, 0xCu);
  }

  self->_cancelled = 1;
  [(CurrentLocationMapServiceTicket *)self setLocationFixOperation:0];
  revGeoTicket = [(CurrentLocationMapServiceTicket *)self revGeoTicket];
  [revGeoTicket cancel];
}

- (id)_revGeoTicketForCurrentLocation:(id)location traits:(id)traits completionHandler:(id)handler networkActivityHandler:(id)activityHandler
{
  activityHandlerCopy = activityHandler;
  handlerCopy = handler;
  traitsCopy = traits;
  locationCopy = location;
  v13 = [[GEOLocation alloc] initWithCLLocation:locationCopy];

  v14 = sub_100C2093C(handlerCopy);

  v15 = [GEOComposedWaypoint composedWaypointForCurrentLocation:v13 traits:traitsCopy completionHandler:v14 networkActivityHandler:activityHandlerCopy];

  return v15;
}

- (void)submitWithTraits:(id)traits completionHandler:(id)handler networkActivityHandler:(id)activityHandler
{
  traitsCopy = traits;
  handlerCopy = handler;
  activityHandlerCopy = activityHandler;
  self->_cancelled = 0;
  currentLocation = [(CurrentLocationMapServiceTicket *)self currentLocation];
  v12 = sub_100B63D48();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (currentLocation)
  {
    if (v13)
    {
      *buf = 134349315;
      selfCopy2 = self;
      v28 = 2113;
      v29 = currentLocation;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Submitting rev geo for location: %{private}@", buf, 0x16u);
    }

    v14 = [(CurrentLocationMapServiceTicket *)self _revGeoTicketForCurrentLocation:currentLocation traits:traitsCopy completionHandler:handlerCopy networkActivityHandler:activityHandlerCopy];
    [(CurrentLocationMapServiceTicket *)self setRevGeoTicket:v14];
  }

  else
  {
    if (v13)
    {
      *buf = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Submitting single location update", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    locationManager = [(CurrentLocationMapServiceTicket *)self locationManager];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100B64298;
    v21 = &unk_10163AE68;
    objc_copyWeak(&v25, buf);
    v23 = handlerCopy;
    v22 = traitsCopy;
    v24 = activityHandlerCopy;
    v16 = [locationManager singleLocationUpdateWithHandler:&v18];
    [(CurrentLocationMapServiceTicket *)self setLocationFixOperation:v16, v18, v19, v20, v21];

    locationFixOperation = [(CurrentLocationMapServiceTicket *)self locationFixOperation];
    [locationFixOperation start];

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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CurrentLocationMapServiceTicket;
  [(CurrentLocationMapServiceTicket *)&v4 dealloc];
}

- (CurrentLocationMapServiceTicket)initWithLocationManager:(id)manager
{
  managerCopy = manager;
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
      v13 = managerCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initializing with location manager: %@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_locationManager, manager);
  }

  return v6;
}

@end