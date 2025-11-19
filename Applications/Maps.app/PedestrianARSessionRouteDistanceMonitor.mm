@interface PedestrianARSessionRouteDistanceMonitor
- (MKLocationManager)locationManager;
- (MNNavigationService)navigationService;
- (NSString)debugDescription;
- (PedestrianARSessionRouteDistanceMonitor)initWithObserver:(id)a3 platformController:(id)a4 navigationService:(id)a5 locationManager:(id)a6;
- (PlatformController)platformController;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setRoutePlanningSession:(id)a3;
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

- (void)routePlanningSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4 userInitiated:(BOOL)a5
{
  v7 = sub_100E6D704();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if ((a4 - 1) > 4)
    {
      v8 = @"Undefined";
    }

    else
    {
      v8 = off_1016567F8[a4 - 1];
    }

    v9 = 134349314;
    v10 = self;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Route planning updated the current transport type: %@", &v9, 0x16u);
  }

  [(PedestrianARSessionRouteDistanceMonitor *)self updateState];
}

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v7 = [(PedestrianARSessionRouteDistanceMonitor *)self routePlanningSession:a3];
  v8 = [v7 currentTransportType];

  if (v8 == a5)
  {
    v9 = sub_100E6D704();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134349056;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Route planning updated the route collection for the current transport type", &v10, 0xCu);
    }

    [(PedestrianARSessionRouteDistanceMonitor *)self updateState];
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a5;
  v7 = sub_100E6D704();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134349314;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Got a new session: %@", &v11, 0x16u);
  }

  v8 = v6;
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

- (void)locationManagerUpdatedLocation:(id)a3
{
  v4 = a3;
  v5 = sub_100E6D704();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 lastLocation];
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Got a new location update: %@", &v7, 0x16u);
  }

  [(PedestrianARSessionRouteDistanceMonitor *)self updateState];
}

- (NSString)debugDescription
{
  v2 = [objc_opt_class() friendlyName];
  GEOConfigGetDouble();
  v4 = [NSString stringWithFormat:@"%@\nmax distance threshold: %f\n", v2, v3];

  return v4;
}

- (void)setRoutePlanningSession:(id)a3
{
  v4 = a3;
  [(RoutePlanningSession *)self->_routePlanningSession unregisterObserver:self];
  routePlanningSession = self->_routePlanningSession;
  self->_routePlanningSession = v4;
  v6 = v4;

  [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
  v7 = self->_routePlanningSession;
  v8 = [(PedestrianARSessionRouteDistanceMonitor *)self locationManager];
  v9 = v8;
  if (v7)
  {
    [v8 listenForLocationUpdates:self];
  }

  else
  {
    [v8 stopListeningForLocationUpdates:self];
  }
}

- (void)updateState
{
  v3 = [(PedestrianARSessionRouteDistanceMonitor *)self routePlanningSession];

  if (!v3)
  {
    v18 = [(PedestrianARSessionRouteDistanceMonitor *)self navigationService];
    v19 = [v18 state];
    if (v19 <= 6 && ((1 << v19) & 0x47) != 0)
    {

      v20 = sub_100E6D704();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      v21 = [(PedestrianARSessionRouteDistanceMonitor *)self navigationService];
      [v21 state];
      v22 = MNNavigationServiceStateAsString();
      *buf = 134349314;
      v45 = self;
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
        v45 = self;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[%{public}p] Checking whether to allow feature during active guidance", buf, 0xCu);
      }

      v31 = [(PedestrianARSessionRouteDistanceMonitor *)self navigationService];
      v32 = [v31 navigationTransportType];

      if (v32 == 2)
      {
        v33 = [(PedestrianARSessionRouteDistanceMonitor *)self navigationService];
        v8 = [v33 lastLocation];

        if (v8)
        {
          v14 = [v8 routeMatch];
          goto LABEL_8;
        }

        v20 = sub_100E6D704();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          v45 = self;
          v27 = "[%{public}p] We are navigating but do not have a last location estimate; will not interfere with feature availability";
          goto LABEL_21;
        }

LABEL_24:

        v28 = self;
        v29 = 1;
        goto LABEL_25;
      }

      v20 = sub_100E6D704();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      v21 = [(PedestrianARSessionRouteDistanceMonitor *)self navigationService];
      v42 = [v21 navigationTransportType];
      if (v42 >= 7)
      {
        v22 = [NSString stringWithFormat:@"(unknown: %i)", v42];
      }

      else
      {
        v22 = off_1016567C0[v42];
      }

      *buf = 134349314;
      v45 = self;
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
    v45 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Checking whether to allow feature during route planning", buf, 0xCu);
  }

  v5 = [(PedestrianARSessionRouteDistanceMonitor *)self routePlanningSession];
  v6 = [v5 currentTransportType];

  if (v6 != 2)
  {
    v20 = sub_100E6D704();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v24 = [(PedestrianARSessionRouteDistanceMonitor *)self routePlanningSession];
      v25 = [v24 currentTransportType];
      if ((v25 - 1) > 4)
      {
        v26 = @"Undefined";
      }

      else
      {
        v26 = off_1016567F8[(v25 - 1)];
      }

      *buf = 134349314;
      v45 = self;
      v46 = 2112;
      v47 = *&v26;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] We are route planning with a non-walking transport type (%@); will not interfere with feature availability", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v7 = [(PedestrianARSessionRouteDistanceMonitor *)self locationManager];
  v8 = [v7 lastLocation];

  if (!v8)
  {
    v20 = sub_100E6D704();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v45 = self;
      v27 = "[%{public}p] We are in route planning but do not have a last location estimate; will not interfere with feature availability";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v27, buf, 0xCu);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v9 = [(PedestrianARSessionRouteDistanceMonitor *)self routePlanningSession];
  v10 = [v9 currentRouteCollection];
  v11 = [v10 currentRoute];

  if (v11)
  {
    v12 = [[GEOLocation alloc] initWithCLLocation:v8];
    v13 = [[GEORouteMatcher alloc] initWithRoute:v11 auditToken:0];
    v14 = [v13 matchToRouteWithLocation:v12];

LABEL_8:
    GEOConfigGetDouble();
    if (v15 >= 0.0)
    {
      v17 = v15;
      v35 = sub_100E6D704();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349312;
        v45 = self;
        v46 = 2048;
        v47 = v17;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%{public}p] Using debug overridden distance value: %f", buf, 0x16u);
      }

      goto LABEL_37;
    }

    if (v14)
    {
      [v14 distanceFromRoute];
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
          v45 = self;
          v46 = 2048;
          v47 = v17;
          v48 = 2048;
          v49 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%{public}p] The user is too far from the route (%f >= %f); will not allow the feature to be visible", buf, 0x20u);
        }

        v40 = self;
        v41 = 0;
      }

      else
      {
        if (v39)
        {
          *buf = 134349568;
          v45 = self;
          v46 = 2048;
          v47 = v17;
          v48 = 2048;
          v49 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%{public}p] The user is sufficiently close to the route (%f < %f); will allow the feature to be visible", buf, 0x20u);
        }

        v40 = self;
        v41 = 1;
      }

      [(PedestrianARSessionMonitor *)v40 setShouldShowPedestrianAR:v41];

      return;
    }

    v43 = sub_100E6D704();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v45 = self;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%{public}p] We don't have a route match; will not allow the feature to be visible", buf, 0xCu);
    }

    v28 = self;
    v29 = 0;
LABEL_25:
    [(PedestrianARSessionMonitor *)v28 setShouldShowPedestrianAR:v29];
    return;
  }

  v34 = sub_100E6D704();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v45 = self;
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
    v9 = self;
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

- (PedestrianARSessionRouteDistanceMonitor)initWithObserver:(id)a3 platformController:(id)a4 navigationService:(id)a5 locationManager:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
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

  if (!v12)
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

  if (!v13)
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
  v14 = [(PedestrianARSessionMonitor *)&v32 initWithObserver:v10];
  if (v14)
  {
    v15 = sub_100E6D704();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v16 = objc_storeWeak(&v14->_platformController, v11);
    [v11 registerObserver:v14];

    objc_storeWeak(&v14->_locationManager, v13);
    v17 = objc_storeWeak(&v14->_navigationService, v12);
    [v12 registerObserver:v14];

    WeakRetained = objc_loadWeakRetained(&v14->_platformController);
    v19 = [WeakRetained currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
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