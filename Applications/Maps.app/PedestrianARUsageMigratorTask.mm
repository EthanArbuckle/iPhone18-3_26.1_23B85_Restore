@interface PedestrianARUsageMigratorTask
- (NavigationSession)navigationSession;
- (PedestrianARUsageMigratorTask)initWithUsageTracker:(id)tracker;
- (RoutePlanningSession)routePlanningSession;
- (void)dealloc;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type;
- (void)setNavigationSession:(id)session;
- (void)setRouteCollection:(id)collection;
- (void)setRoutePlanningSession:(id)session;
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

- (void)routePlanningSession:(id)session didUpdateRouteCollectionResult:(id)result forTransportType:(int64_t)type
{
  currentRouteCollection = [session currentRouteCollection];
  [(PedestrianARUsageMigratorTask *)self setRouteCollection:currentRouteCollection];
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = toSessionCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(PedestrianARUsageMigratorTask *)self setRoutePlanningSession:v8];

  v15 = toSessionCopy;
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
  routePlanningSession = [(PedestrianARUsageMigratorTask *)self routePlanningSession];
  currentRouteCollection = [routePlanningSession currentRouteCollection];
  if (currentRouteCollection)
  {
    [(PedestrianARUsageMigratorTask *)self setRouteCollection:currentRouteCollection];
  }

  else
  {
    navigationSession = [(PedestrianARUsageMigratorTask *)self navigationSession];
    currentRouteCollection2 = [navigationSession currentRouteCollection];
    [(PedestrianARUsageMigratorTask *)self setRouteCollection:currentRouteCollection2];
  }
}

- (void)setRouteCollection:(id)collection
{
  collectionCopy = collection;
  v6 = self->_routeCollection;
  v7 = collectionCopy;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      currentRoute = [(RouteCollection *)self->_routeCollection currentRoute];
      uniqueRouteID = [currentRoute uniqueRouteID];
      uUIDString = [uniqueRouteID UUIDString];

      currentRoute2 = [v7 currentRoute];
      uniqueRouteID2 = [currentRoute2 uniqueRouteID];
      uUIDString2 = [uniqueRouteID2 UUIDString];

      if (uUIDString && uUIDString2 && ([uUIDString isEqualToString:uUIDString2] & 1) == 0)
      {
        v15 = sub_100C7500C();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = 134349056;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Detected route ID changed; migrating usage flags now", &v16, 0xCu);
        }

        [(PedestrianARSessionUsageTracker *)self->_usageTracker migrateUsageFromRoute:uUIDString toRoute:uUIDString2];
      }

      objc_storeStrong(&self->_routeCollection, collection);
    }
  }
}

- (void)setNavigationSession:(id)session
{
  sessionCopy = session;
  v5 = objc_loadWeakRetained(&self->_navigationSession);
  v6 = sessionCopy;
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

- (void)setRoutePlanningSession:(id)session
{
  sessionCopy = session;
  v5 = objc_loadWeakRetained(&self->_routePlanningSession);
  v6 = sessionCopy;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARUsageMigratorTask;
  [(PedestrianARUsageMigratorTask *)&v4 dealloc];
}

- (PedestrianARUsageMigratorTask)initWithUsageTracker:(id)tracker
{
  trackerCopy = tracker;
  if (!trackerCopy)
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

    objc_storeStrong(&v6->_usageTracker, tracker);
  }

  return v6;
}

@end