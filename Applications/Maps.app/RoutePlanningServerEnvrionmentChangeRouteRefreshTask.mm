@interface RoutePlanningServerEnvrionmentChangeRouteRefreshTask
- (RoutePlanningServerEnvrionmentChangeRouteRefreshTask)init;
- (void)dealloc;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)resourceManifestManager:(id)manager didChangeActiveTileGroup:(id)group fromOldTileGroup:(id)tileGroup;
@end

@implementation RoutePlanningServerEnvrionmentChangeRouteRefreshTask

- (void)resourceManifestManager:(id)manager didChangeActiveTileGroup:(id)group fromOldTileGroup:(id)tileGroup
{
  groupCopy = group;
  tileGroupCopy = tileGroup;
  environment = [groupCopy environment];
  environment2 = [tileGroupCopy environment];
  v11 = environment;
  v12 = environment2;
  if (v11 | v12)
  {
    v13 = v12;
    v14 = [v11 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      v15 = sub_100624C3C();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        environment3 = [tileGroupCopy environment];
        environment4 = [groupCopy environment];
        v21 = 134349571;
        selfCopy2 = self;
        v23 = 2113;
        v24 = environment3;
        v25 = 2113;
        v26 = environment4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Environment changed %{private}@ -> %{private}@", &v21, 0x20u);
      }

      routePlanningSession = [(RoutePlanningServerEnvrionmentChangeRouteRefreshTask *)self routePlanningSession];

      if (routePlanningSession)
      {
        v19 = sub_100624C3C();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = 134349056;
          selfCopy2 = self;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] Requesting new routes", &v21, 0xCu);
        }

        routePlanningSession2 = [(RoutePlanningServerEnvrionmentChangeRouteRefreshTask *)self routePlanningSession];
        [routePlanningSession2 requestUpdatedRouteWithRefreshedOrigin:0];
      }
    }
  }
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
  [(RoutePlanningServerEnvrionmentChangeRouteRefreshTask *)self setRoutePlanningSession:v7];
}

- (void)dealloc
{
  v3 = sub_100624C3C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = +[GEOResourceManifestManager modernManager];
  [v4 removeTileGroupObserver:self];

  v5.receiver = self;
  v5.super_class = RoutePlanningServerEnvrionmentChangeRouteRefreshTask;
  [(RoutePlanningServerEnvrionmentChangeRouteRefreshTask *)&v5 dealloc];
}

- (RoutePlanningServerEnvrionmentChangeRouteRefreshTask)init
{
  v6.receiver = self;
  v6.super_class = RoutePlanningServerEnvrionmentChangeRouteRefreshTask;
  v2 = [(RoutePlanningServerEnvrionmentChangeRouteRefreshTask *)&v6 init];
  if (v2)
  {
    v3 = sub_100624C3C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    v4 = +[GEOResourceManifestManager modernManager];
    [v4 addTileGroupObserver:v2 queue:&_dispatch_main_q];
  }

  return v2;
}

@end