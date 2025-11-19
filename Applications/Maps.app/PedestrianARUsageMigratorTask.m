@interface PedestrianARUsageMigratorTask
- (NavigationSession)navigationSession;
- (PedestrianARUsageMigratorTask)initWithUsageTracker:(id)a3;
- (RoutePlanningSession)routePlanningSession;
- (void)dealloc;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5;
- (void)setNavigationSession:(id)a3;
- (void)setRouteCollection:(id)a3;
- (void)setRoutePlanningSession:(id)a3;
@end

@implementation PedestrianARUsageMigratorTask

- (NavigationSession)navigationSession
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationSession);

  return WeakRetained;
}

- (RoutePlanningSession)routePlanningSession
{
  WeakRetained = objc_loadWeakRetained(&self->_routePlanningSession);

  return WeakRetained;
}

- (void)routePlanningSession:(id)a3 didUpdateRouteCollectionResult:(id)a4 forTransportType:(int64_t)a5
{
  v6 = [a3 currentRouteCollection];
  [(PedestrianARUsageMigratorTask *)self setRouteCollection:v6];
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(PedestrianARUsageMigratorTask *)self setRoutePlanningSession:v8];

  v15 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v15;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [(PedestrianARUsageMigratorTask *)self setNavigationSession:v10];
  v11 = [(PedestrianARUsageMigratorTask *)self routePlanningSession];
  v12 = [v11 currentRouteCollection];
  if (v12)
  {
    [(PedestrianARUsageMigratorTask *)self setRouteCollection:v12];
  }

  else
  {
    v13 = [(PedestrianARUsageMigratorTask *)self navigationSession];
    v14 = [v13 currentRouteCollection];
    [(PedestrianARUsageMigratorTask *)self setRouteCollection:v14];
  }
}

- (void)setRouteCollection:(id)a3
{
  v5 = a3;
  v6 = self->_routeCollection;
  v7 = v5;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(RouteCollection *)self->_routeCollection currentRoute];
      v10 = [v9 uniqueRouteID];
      v11 = [v10 UUIDString];

      v12 = [v7 currentRoute];
      v13 = [v12 uniqueRouteID];
      v14 = [v13 UUIDString];

      if (v11 && v14 && ([v11 isEqualToString:v14] & 1) == 0)
      {
        v15 = sub_100C7500C();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = 134349056;
          v17 = self;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Detected route ID changed; migrating usage flags now", &v16, 0xCu);
        }

        [(PedestrianARSessionUsageTracker *)self->_usageTracker migrateUsageFromRoute:v11 toRoute:v14];
      }

      objc_storeStrong(&self->_routeCollection, a3);
    }
  }
}

- (void)setNavigationSession:(id)a3
{
  v4 = a3;
  v5 = objc_loadWeakRetained(&self->_navigationSession);
  v6 = v4;
  if (v6 | v5)
  {
    obj = v6;
    v7 = [v5 isEqual:v6];

    v6 = obj;
    if ((v7 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_navigationSession);
      [WeakRetained unregisterObserver:self];

      v9 = objc_storeWeak(&self->_navigationSession, obj);
      [obj registerObserver:self];

      v6 = obj;
    }
  }
}

- (void)setRoutePlanningSession:(id)a3
{
  v4 = a3;
  v5 = objc_loadWeakRetained(&self->_routePlanningSession);
  v6 = v4;
  if (v6 | v5)
  {
    obj = v6;
    v7 = [v5 isEqual:v6];

    v6 = obj;
    if ((v7 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_routePlanningSession);
      [WeakRetained unregisterObserver:self];

      v9 = objc_storeWeak(&self->_routePlanningSession, obj);
      [obj registerObserver:self];

      v6 = obj;
    }
  }
}

- (void)dealloc
{
  v3 = sub_100C7500C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARUsageMigratorTask;
  [(PedestrianARUsageMigratorTask *)&v4 dealloc];
}

- (PedestrianARUsageMigratorTask)initWithUsageTracker:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v14 = "[PedestrianARUsageMigratorTask initWithUsageTracker:]";
      v15 = 2080;
      v16 = "PedestrianARUsageMigratorTask.m";
      v17 = 1024;
      v18 = 45;
      v19 = 2080;
      v20 = "usageTracker != nil";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v12.receiver = self;
  v12.super_class = PedestrianARUsageMigratorTask;
  v6 = [(PedestrianARUsageMigratorTask *)&v12 init];
  if (v6)
  {
    v7 = sub_100C7500C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v6->_usageTracker, a3);
  }

  return v6;
}

@end