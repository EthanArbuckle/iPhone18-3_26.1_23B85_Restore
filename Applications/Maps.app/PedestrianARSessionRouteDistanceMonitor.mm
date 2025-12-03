@interface PedestrianARSessionRouteDistanceMonitor
- (MKLocationManager)locationManager;
- (MNNavigationService)navigationService;
- (NSString)debugDescription;
- (PedestrianARSessionRouteDistanceMonitor)initWithObserver:(id)observer platformController:(id)controller navigationService:(id)service locationManager:(id)manager;
- (PlatformController)platformController;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated;
- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)setRoutePlanningSession:(id)session;
- (void)updateState;
@end

@implementation PedestrianARSessionRouteDistanceMonitor

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (MNNavigationService)navigationService
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationService);

  return WeakRetained;
}

- (MKLocationManager)locationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_locationManager);

  return WeakRetained;
}

- (void)routePlanningSession:(id)session didChangeCurrentTransportType:(int64_t)type userInitiated:(BOOL)initiated
{
  v7 = sub_100E6D704();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if ((type - 1) > 4)
    {
      v8 = @"Undefined";
    }

    else
    {
      v8 = off_1016567F8[type - 1];
    }

    v9 = 134349314;
    selfCopy = self;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Route planning updated the current transport type: %@", &v9, 0x16u);
  }

  [(PedestrianARSessionRouteDistanceMonitor *)self updateState];
}

- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  v7 = [(PedestrianARSessionRouteDistanceMonitor *)self routePlanningSession:session];
  currentTransportType = [v7 currentTransportType];

  if (currentTransportType == type)
  {
    v9 = sub_100E6D704();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Route planning updated the route collection for the current transport type", &v10, 0xCu);
    }

    [(PedestrianARSessionRouteDistanceMonitor *)self updateState];
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  v7 = sub_100E6D704();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134349314;
    selfCopy = self;
    v13 = 2112;
    v14 = toSessionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Got a new session: %@", &v11, 0x16u);
  }

  v8 = toSessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [(PedestrianARSessionRouteDistanceMonitor *)self setRoutePlanningSession:v10];
  [(PedestrianARSessionRouteDistanceMonitor *)self updateState];
}

- (void)locationManagerUpdatedLocation:(id)location
{
  locationCopy = location;
  v5 = sub_100E6D704();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    lastLocation = [locationCopy lastLocation];
    v7 = 134349314;
    selfCopy = self;
    v9 = 2112;
    v10 = lastLocation;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Got a new location update: %@", &v7, 0x16u);
  }

  [(PedestrianARSessionRouteDistanceMonitor *)self updateState];
}

- (NSString)debugDescription
{
  friendlyName = [objc_opt_class() friendlyName];
  GEOConfigGetDouble();
  v4 = [NSString stringWithFormat:@"%@\nmax distance threshold: %f\n", friendlyName, v3];

  return v4;
}

- (void)setRoutePlanningSession:(id)session
{
  sessionCopy = session;
  [(RoutePlanningSession *)self->_routePlanningSession unregisterObserver:self];
  routePlanningSession = self->_routePlanningSession;
  self->_routePlanningSession = sessionCopy;
  v6 = sessionCopy;

  [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
  v7 = self->_routePlanningSession;
  locationManager = [(PedestrianARSessionRouteDistanceMonitor *)self locationManager];
  v9 = locationManager;
  if (v7)
  {
    [locationManager listenForLocationUpdates:self];
  }

  else
  {
    [locationManager stopListeningForLocationUpdates:self];
  }
}

- (void)updateState
{
  routePlanningSession = [(PedestrianARSessionRouteDistanceMonitor *)self routePlanningSession];

  if (!routePlanningSession)
  {
    navigationService = [(PedestrianARSessionRouteDistanceMonitor *)self navigationService];
    state = [navigationService state];
    if (state <= 6 && ((1 << state) & 0x47) != 0)
    {

      v20 = sub_100E6D704();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      navigationService2 = [(PedestrianARSessionRouteDistanceMonitor *)self navigationService];
      [navigationService2 state];
      v22 = MNNavigationServiceStateAsString();
      *buf = 134349314;
      selfCopy16 = self;
      v46 = 2112;
      v47 = *&v22;
      v23 = "[%{public}p] We are not in route planning nor in a pedestrian AR navigation state (%@); will not interfere with feature availability";
    }

    else
    {

      v30 = sub_100E6D704();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy16 = self;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}p] Checking whether to allow feature during active guidance", buf, 0xCu);
      }

      navigationService3 = [(PedestrianARSessionRouteDistanceMonitor *)self navigationService];
      navigationTransportType = [navigationService3 navigationTransportType];

      if (navigationTransportType == 2)
      {
        navigationService4 = [(PedestrianARSessionRouteDistanceMonitor *)self navigationService];
        lastLocation = [navigationService4 lastLocation];

        if (lastLocation)
        {
          routeMatch = [lastLocation routeMatch];
          goto LABEL_8;
        }

        v20 = sub_100E6D704();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          selfCopy16 = self;
          v27 = "[%{public}p] We are navigating but do not have a last location estimate; will not interfere with feature availability";
          goto LABEL_21;
        }

LABEL_24:

        selfCopy15 = self;
        v29 = 1;
        goto LABEL_25;
      }

      v20 = sub_100E6D704();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      navigationService2 = [(PedestrianARSessionRouteDistanceMonitor *)self navigationService];
      navigationTransportType2 = [navigationService2 navigationTransportType];
      if (navigationTransportType2 >= 7)
      {
        v22 = [NSString stringWithFormat:@"(unknown: %i)", navigationTransportType2];
      }

      else
      {
        v22 = off_1016567C0[navigationTransportType2];
      }

      *buf = 134349314;
      selfCopy16 = self;
      v46 = 2112;
      v47 = *&v22;
      v23 = "[%{public}p] We are navigating with a non-walking transport type (%@); will not interfere with feature availability";
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v23, buf, 0x16u);

    goto LABEL_24;
  }

  v4 = sub_100E6D704();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy16 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Checking whether to allow feature during route planning", buf, 0xCu);
  }

  routePlanningSession2 = [(PedestrianARSessionRouteDistanceMonitor *)self routePlanningSession];
  currentTransportType = [routePlanningSession2 currentTransportType];

  if (currentTransportType != 2)
  {
    v20 = sub_100E6D704();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      routePlanningSession3 = [(PedestrianARSessionRouteDistanceMonitor *)self routePlanningSession];
      currentTransportType2 = [routePlanningSession3 currentTransportType];
      if ((currentTransportType2 - 1) > 4)
      {
        v26 = @"Undefined";
      }

      else
      {
        v26 = off_1016567F8[(currentTransportType2 - 1)];
      }

      *buf = 134349314;
      selfCopy16 = self;
      v46 = 2112;
      v47 = *&v26;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] We are route planning with a non-walking transport type (%@); will not interfere with feature availability", buf, 0x16u);
    }

    goto LABEL_24;
  }

  locationManager = [(PedestrianARSessionRouteDistanceMonitor *)self locationManager];
  lastLocation = [locationManager lastLocation];

  if (!lastLocation)
  {
    v20 = sub_100E6D704();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy16 = self;
      v27 = "[%{public}p] We are in route planning but do not have a last location estimate; will not interfere with feature availability";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v27, buf, 0xCu);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  routePlanningSession4 = [(PedestrianARSessionRouteDistanceMonitor *)self routePlanningSession];
  currentRouteCollection = [routePlanningSession4 currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];

  if (currentRoute)
  {
    v12 = [[GEOLocation alloc] initWithCLLocation:lastLocation];
    v13 = [[GEORouteMatcher alloc] initWithRoute:currentRoute auditToken:0];
    routeMatch = [v13 matchToRouteWithLocation:v12];

LABEL_8:
    GEOConfigGetDouble();
    if (v15 >= 0.0)
    {
      v17 = v15;
      v35 = sub_100E6D704();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349312;
        selfCopy16 = self;
        v46 = 2048;
        v47 = v17;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%{public}p] Using debug overridden distance value: %f", buf, 0x16u);
      }

      goto LABEL_37;
    }

    if (routeMatch)
    {
      [routeMatch distanceFromRoute];
      v17 = v16;
LABEL_37:
      GEOConfigGetDouble();
      v37 = v36;
      v38 = sub_100E6D704();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      if (v17 >= v37)
      {
        if (v39)
        {
          *buf = 134349568;
          selfCopy16 = self;
          v46 = 2048;
          v47 = v17;
          v48 = 2048;
          v49 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%{public}p] The user is too far from the route (%f >= %f); will not allow the feature to be visible", buf, 0x20u);
        }

        selfCopy13 = self;
        v41 = 0;
      }

      else
      {
        if (v39)
        {
          *buf = 134349568;
          selfCopy16 = self;
          v46 = 2048;
          v47 = v17;
          v48 = 2048;
          v49 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%{public}p] The user is sufficiently close to the route (%f < %f); will allow the feature to be visible", buf, 0x20u);
        }

        selfCopy13 = self;
        v41 = 1;
      }

      [(PedestrianARSessionMonitor *)selfCopy13 setShouldShowPedestrianAR:v41];

      return;
    }

    v43 = sub_100E6D704();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      selfCopy16 = self;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%{public}p] We don't have a route match; will not allow the feature to be visible", buf, 0xCu);
    }

    selfCopy15 = self;
    v29 = 0;
LABEL_25:
    [(PedestrianARSessionMonitor *)selfCopy15 setShouldShowPedestrianAR:v29];
    return;
  }

  v34 = sub_100E6D704();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy16 = self;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[%{public}p] We are in route planning but do not have a route; will not interfere with feature availability", buf, 0xCu);
  }

  [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:1];
}

- (void)dealloc
{
  v3 = sub_100E6D704();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_navigationService);
  [WeakRetained unregisterObserver:self];

  v5 = objc_loadWeakRetained(&self->_locationManager);
  [v5 stopListeningForLocationUpdates:self];

  v6 = objc_loadWeakRetained(&self->_platformController);
  [v6 unregisterObserver:self];

  v7.receiver = self;
  v7.super_class = PedestrianARSessionRouteDistanceMonitor;
  [(PedestrianARSessionMonitor *)&v7 dealloc];
}

- (PedestrianARSessionRouteDistanceMonitor)initWithObserver:(id)observer platformController:(id)controller navigationService:(id)service locationManager:(id)manager
{
  observerCopy = observer;
  controllerCopy = controller;
  serviceCopy = service;
  managerCopy = manager;
  if (!controllerCopy)
  {
    v23 = sub_10006D178();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v34 = "[PedestrianARSessionRouteDistanceMonitor initWithObserver:platformController:navigationService:locationManager:]";
      v35 = 2080;
      v36 = "PedestrianARSessionRouteDistanceMonitor.m";
      v37 = 1024;
      v38 = 54;
      v39 = 2080;
      v40 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v24 = sub_10006D178();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v34 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!serviceCopy)
  {
    v26 = sub_10006D178();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v34 = "[PedestrianARSessionRouteDistanceMonitor initWithObserver:platformController:navigationService:locationManager:]";
      v35 = 2080;
      v36 = "PedestrianARSessionRouteDistanceMonitor.m";
      v37 = 1024;
      v38 = 55;
      v39 = 2080;
      v40 = "navigationService != nil";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v27 = sub_10006D178();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v34 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!managerCopy)
  {
    v29 = sub_10006D178();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v34 = "[PedestrianARSessionRouteDistanceMonitor initWithObserver:platformController:navigationService:locationManager:]";
      v35 = 2080;
      v36 = "PedestrianARSessionRouteDistanceMonitor.m";
      v37 = 1024;
      v38 = 56;
      v39 = 2080;
      v40 = "locationManager != nil";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v30 = sub_10006D178();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v34 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v32.receiver = self;
  v32.super_class = PedestrianARSessionRouteDistanceMonitor;
  v14 = [(PedestrianARSessionMonitor *)&v32 initWithObserver:observerCopy];
  if (v14)
  {
    v15 = sub_100E6D704();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v16 = objc_storeWeak(&v14->_platformController, controllerCopy);
    [controllerCopy registerObserver:v14];

    objc_storeWeak(&v14->_locationManager, managerCopy);
    v17 = objc_storeWeak(&v14->_navigationService, serviceCopy);
    [serviceCopy registerObserver:v14];

    WeakRetained = objc_loadWeakRetained(&v14->_platformController);
    currentSession = [WeakRetained currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = currentSession;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    [(PedestrianARSessionRouteDistanceMonitor *)v14 setRoutePlanningSession:v21];
    [(PedestrianARSessionRouteDistanceMonitor *)v14 updateState];
  }

  return v14;
}

@end