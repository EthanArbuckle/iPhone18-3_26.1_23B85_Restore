@interface PedestrianARSessionRoutePlanningConfigurationMonitor
- (NSString)debugDescription;
- (PedestrianARSessionRoutePlanningConfigurationMonitor)initWithObserver:(id)a3 platformController:(id)a4;
- (PlatformController)platformController;
- (RoutePlanningSession)routePlanningSession;
- (void)dealloc;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)routePlanningSession:(id)a3 didFinishResolvingWaypointSet:(id)a4;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setRoutePlanningSession:(id)a3;
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

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v7 = a4;
  v8 = sub_1007ABC94();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if ((a5 - 1) > 4)
    {
      v9 = @"Undefined";
    }

    else
    {
      v9 = off_101629EB0[a5 - 1];
    }

    v10 = 134349570;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Route planning session updated its route collection: %@ for transport type: %@", &v10, 0x20u);
  }

  [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self updateState];
}

- (void)routePlanningSession:(id)a3 didFinishResolvingWaypointSet:(id)a4
{
  v5 = a4;
  v6 = sub_1007ABC94();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349314;
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Route planning session finished resolving waypoints: %@", &v7, 0x16u);
  }

  [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self updateState];
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
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
  v3 = [objc_opt_class() friendlyName];
  v16 = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];
  if (v16)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = v4;
  v6 = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];
  v7 = [v6 resolvedWaypoints];
  v8 = [v7 origin];
  if ([v8 isCurrentLocation])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  v11 = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];
  v12 = [v11 currentRouteCollection];
  if (v12)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [NSString stringWithFormat:@"%@\nis in route planning: %@\nis origin current location: %@\nhas route: %@\n", v3, v5, v10, v13];

  return v14;
}

- (void)setRoutePlanningSession:(id)a3
{
  v4 = a3;
  v5 = sub_1007ABC94();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating route planning session: %@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_routePlanningSession);
  [WeakRetained unregisterObserver:self];

  v7 = objc_storeWeak(&self->_routePlanningSession, v4);
  [v4 registerObserver:self];
}

- (void)updateState
{
  v3 = sub_1007ABC94();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134349056;
    v20 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating state", &v19, 0xCu);
  }

  v4 = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];

  if (v4)
  {
    v5 = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];
    v6 = [v5 resolvedWaypoints];
    v7 = [v6 origin];
    v8 = [v7 isCurrentLocation];

    v9 = sub_1007ABC94();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      if (v8)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = v10;
      v19 = 134349314;
      v20 = self;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Is origin current location: %@", &v19, 0x16u);
    }

    v12 = [(PedestrianARSessionRoutePlanningConfigurationMonitor *)self routePlanningSession];
    v13 = [v12 currentRouteCollection];
    v14 = [v13 count];

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
      v20 = self;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}p] Has a route: %@", &v19, 0x16u);
    }

    if (v14)
    {
      v18 = v8;
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
    v8 = self;
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

- (PedestrianARSessionRoutePlanningConfigurationMonitor)initWithObserver:(id)a3 platformController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
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
  v8 = [(PedestrianARSessionMonitor *)&v15 initWithObserver:v6];
  if (v8)
  {
    v9 = sub_1007ABC94();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v10 = objc_storeWeak(&v8->_platformController, v7);
    [v7 registerObserver:v8];

    [(PedestrianARSessionRoutePlanningConfigurationMonitor *)v8 updateState];
  }

  return v8;
}

@end