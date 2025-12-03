@interface PedestrianARSessionRoutePlanningConfigurationMonitor
- (NSString)debugDescription;
- (PedestrianARSessionRoutePlanningConfigurationMonitor)initWithObserver:(id)observer platformController:(id)controller;
- (PlatformController)platformController;
- (RoutePlanningSession)routePlanningSession;
- (void)dealloc;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)routePlanningSession:(id)session didFinishResolvingWaypointSet:(id)set;
- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)setRoutePlanningSession:(id)session;
- (void)updateState;
@end

@implementation PedestrianARSessionRoutePlanningConfigurationMonitor

- (RoutePlanningSession)routePlanningSession
{
  WeakRetained = objc_loadWeakRetained(&self->_routePlanningSession);

  return WeakRetained;
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  resultCopy = result;
  v8 = sub_1007ABC94();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if ((type - 1) > 4)
    {
      v9 = @"Undefined";
    }

    else
    {
      v9 = off_101629EB0[type - 1];
    }

    v10 = 134349570;
    selfCopy = self;
    v12 = 2112;
    v13 = resultCopy;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Route planning session updated its route collection: %@ for transport type: %@", &v10, 0x20u);
  }

  [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self updateState];
}

- (void)routePlanningSession:(id)session didFinishResolvingWaypointSet:(id)set
{
  setCopy = set;
  v6 = sub_1007ABC94();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349314;
    selfCopy = self;
    v9 = 2112;
    v10 = setCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Route planning session finished resolving waypoints: %@", &v7, 0x16u);
  }

  [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self updateState];
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = toSessionCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self setRoutePlanningSession:v7];

  [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self updateState];
}

- (NSString)debugDescription
{
  friendlyName = [objc_opt_class() friendlyName];
  routePlanningSession = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];
  if (routePlanningSession)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = v4;
  routePlanningSession2 = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];
  resolvedWaypoints = [routePlanningSession2 resolvedWaypoints];
  origin = [resolvedWaypoints origin];
  if ([origin isCurrentLocation])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  routePlanningSession3 = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];
  currentRouteCollection = [routePlanningSession3 currentRouteCollection];
  if (currentRouteCollection)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [NSString stringWithFormat:@"%@\nis in route planning: %@\nis origin current location: %@\nhas route: %@\n", friendlyName, v5, v10, v13];

  return v14;
}

- (void)setRoutePlanningSession:(id)session
{
  sessionCopy = session;
  v5 = sub_1007ABC94();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    selfCopy = self;
    v10 = 2112;
    v11 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating route planning session: %@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_routePlanningSession);
  [WeakRetained unregisterObserver:self];

  v7 = objc_storeWeak(&self->_routePlanningSession, sessionCopy);
  [sessionCopy registerObserver:self];
}

- (void)updateState
{
  v3 = sub_1007ABC94();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134349056;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating state", &v19, 0xCu);
  }

  routePlanningSession = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];
    resolvedWaypoints = [routePlanningSession2 resolvedWaypoints];
    origin = [resolvedWaypoints origin];
    isCurrentLocation = [origin isCurrentLocation];

    v9 = sub_1007ABC94();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      if (isCurrentLocation)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = v10;
      v19 = 134349314;
      selfCopy3 = self;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Is origin current location: %@", &v19, 0x16u);
    }

    routePlanningSession3 = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];
    currentRouteCollection = [routePlanningSession3 currentRouteCollection];
    v14 = [currentRouteCollection count];

    v15 = sub_1007ABC94();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      if (v14)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = v16;
      v19 = 134349314;
      selfCopy3 = self;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Has a route: %@", &v19, 0x16u);
    }

    if (v14)
    {
      v18 = isCurrentLocation;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  [(PedestrianARSessionMonitor *)self setShouldShowPedestrianAR:v18];
}

- (void)dealloc
{
  v3 = sub_1007ABC94();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocing", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  [WeakRetained unregisterObserver:self];

  v5 = objc_loadWeakRetained(&self->_routePlanningSession);
  [v5 unregisterObserver:self];

  v6.receiver = self;
  v6.super_class = PedestrianARSessionRoutePlanningConfigurationMonitor;
  [(PedestrianARSessionMonitor *)&v6 dealloc];
}

- (PedestrianARSessionRoutePlanningConfigurationMonitor)initWithObserver:(id)observer platformController:(id)controller
{
  observerCopy = observer;
  controllerCopy = controller;
  if (!controllerCopy)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[PedestrianARSessionRoutePlanningConfigurationMonitor initWithObserver:platformController:]";
      v18 = 2080;
      v19 = "PedestrianARSessionRoutePlanningConfigurationMonitor.m";
      v20 = 1024;
      v21 = 37;
      v22 = 2080;
      v23 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v15.receiver = self;
  v15.super_class = PedestrianARSessionRoutePlanningConfigurationMonitor;
  v8 = [(PedestrianARSessionMonitor *)&v15 initWithObserver:observerCopy];
  if (v8)
  {
    v9 = sub_1007ABC94();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v10 = objc_storeWeak(&v8->_platformController, controllerCopy);
    [controllerCopy registerObserver:v8];

    [(PedestrianARSessionRoutePlanningConfigurationMonitor *)v8 updateState];
  }

  return v8;
}

@end