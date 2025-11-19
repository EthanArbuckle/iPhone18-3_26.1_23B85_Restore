@interface RoutePlanningServerEnvrionmentChangeRouteRefreshTask
- (RoutePlanningServerEnvrionmentChangeRouteRefreshTask)init;
- (void)dealloc;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)resourceManifestManager:(id)a3 didChangeActiveTileGroup:(id)a4 fromOldTileGroup:(id)a5;
@end

@implementation RoutePlanningServerEnvrionmentChangeRouteRefreshTask

- (void)resourceManifestManager:(id)a3 didChangeActiveTileGroup:(id)a4 fromOldTileGroup:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 environment];
  v10 = [v8 environment];
  v11 = v9;
  v12 = v10;
  if (v11 | v12)
  {
    v13 = v12;
    v14 = [v11 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      v15 = sub_100624C3C();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v8 environment];
        v17 = [v7 environment];
        v21 = 134349571;
        v22 = self;
        v23 = 2113;
        v24 = v16;
        v25 = 2113;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Environment changed %{private}@ -> %{private}@", &v21, 0x20u);
      }

      v18 = [(RoutePlanningServerEnvrionmentChangeRouteRefreshTask *)self routePlanningSession];

      if (v18)
      {
        v19 = sub_100624C3C();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = 134349056;
          v22 = self;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] Requesting new routes", &v21, 0xCu);
        }

        v20 = [(RoutePlanningServerEnvrionmentChangeRouteRefreshTask *)self routePlanningSession];
        [v20 requestUpdatedRouteWithRefreshedOrigin:0];
      }
    }
  }
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
  [(RoutePlanningServerEnvrionmentChangeRouteRefreshTask *)self setRoutePlanningSession:v7];
}

- (void)dealloc
{
  v3 = sub_100624C3C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v7 = self;
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