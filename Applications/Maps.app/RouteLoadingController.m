@interface RouteLoadingController
- (BOOL)isActive;
- (BOOL)isActiveForTransportType:(int64_t)a3;
- (NSDictionary)routesResults;
- (NSSet)supportedTransportTypes;
- (RouteLoadingController)initWithWaypointSet:(id)a3 taskFactory:(id)a4;
- (RouteLoadingControllerDelegate)delegate;
- (id)_routeLoadingTaskForTransportType:(int64_t)a3;
- (id)routesForTransportType:(int64_t)a3;
- (void)_handleResults:(id)a3;
- (void)_updateTaskForRealtimeUpdates;
- (void)cancelLoading;
- (void)cancelLoadingForTransportType:(int64_t)a3;
- (void)refreshRoutesForTransportType:(int64_t)a3;
- (void)setTransportTypeForRealtimeUpdates:(int64_t)a3;
- (void)setWaypointSet:(id)a3;
@end

@implementation RouteLoadingController

- (RouteLoadingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleResults:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v20 = self;
    v22 = [(RouteLoadingController *)self routesForTransportType:[(RouteLoadingController *)self transportTypeForRealtimeUpdates]];
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateWillUpdateRoute" object:0 userInfo:0];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [v11 routeID];
          v13 = [v11 transitUpdate];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10099DC40;
          v23[3] = &unk_1016308B0;
          v24 = v12;
          v25 = v13;
          v26 = v5;
          v27 = v6;
          v14 = v13;
          v15 = v12;
          [v22 withValue:v23 orError:&stru_1016308D0];
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }

    [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateDidUpdateRoute" object:0 userInfo:0];
    v16 = [(RouteLoadingController *)v20 delegate];
    v17 = [v6 copy];
    v18 = [v5 copy];
    v19 = [Result resultWithValue:v18];
    [v16 routeLoadingController:v20 didReceiveUpdates:v17 forRoutesResult:v19];
  }
}

- (void)_updateTaskForRealtimeUpdates
{
  v3 = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(v3);
  v4 = [(RouteLoadingController *)self routeUpdatingTask];
  [v4 stop];

  [(RouteLoadingController *)self setRouteUpdatingTask:0];
  objc_sync_exit(v3);

  if ([(RouteLoadingController *)self transportTypeForRealtimeUpdates])
  {
    v5 = [(RouteLoadingController *)self routesForTransportType:[(RouteLoadingController *)self transportTypeForRealtimeUpdates]];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10099DF88;
    v6[3] = &unk_101655400;
    v6[4] = self;
    [v5 withValue:v6 orError:&stru_101630888];
  }
}

- (void)setTransportTypeForRealtimeUpdates:(int64_t)a3
{
  if (self->_transportTypeForRealtimeUpdates != a3)
  {
    v5 = sub_100798A3C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = self->_transportTypeForRealtimeUpdates - 1;
      if (v6 > 4)
      {
        v7 = @"Undefined";
      }

      else
      {
        v7 = off_1016308F0[v6];
      }

      if ((a3 - 1) > 4)
      {
        v8 = @"Undefined";
      }

      else
      {
        v8 = off_1016308F0[a3 - 1];
      }

      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating transport type for realtime updates: %{public}@ -> %{public}@", &v9, 0x16u);
    }

    self->_transportTypeForRealtimeUpdates = a3;
    [(RouteLoadingController *)self _updateTaskForRealtimeUpdates];
  }
}

- (id)_routeLoadingTaskForTransportType:(int64_t)a3
{
  v5 = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(v5);
  v6 = [(RouteLoadingController *)self activeTasks];
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  objc_sync_exit(v5);

  return v8;
}

- (void)refreshRoutesForTransportType:(int64_t)a3
{
  v5 = [(RouteLoadingController *)self supportedTransportTypes];
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [v5 containsObject:v6];

  if (!v7)
  {
    return;
  }

  if ([(RouteLoadingController *)self isActiveForTransportType:a3])
  {
    [(RouteLoadingController *)self cancelLoadingForTransportType:a3];
  }

  v8 = sub_100798A3C();
  v9 = os_signpost_id_generate(v8);

  v10 = sub_100798A3C();
  v11 = v10;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RouteLoading", "", buf, 2u);
  }

  v12 = [(RouteLoadingController *)self waypointSet];
  [v12 count];
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 5)
      {
        MapsFeature_IsEnabled_Maps420();
      }

      goto LABEL_17;
    }

LABEL_16:
    MapsFeature_IsEnabled_Maps182();
    goto LABEL_17;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
    }

    goto LABEL_17;
  }

  if ((MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) == 0 && (MapsFeature_IsEnabled_Maps420() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v13 = [(RouteLoadingController *)self routeLoadingTaskFactory];
  v14 = [v13 taskForTransportType:a3 waypointSet:v12];

  v15 = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(v15);
  v16 = [(RouteLoadingController *)self activeTasks];
  v17 = [NSNumber numberWithInteger:a3];
  [v16 setObject:v14 forKeyedSubscript:v17];

  objc_sync_exit(v15);
  objc_initWeak(buf, self);
  v18 = +[GEONotificationPreferenceManager sharedManager];
  LODWORD(v15) = [v18 isEnabledForSubTestWithName:@"GEOPPTTest_RouteManager_DirectionsRequest"];

  if (v15)
  {
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 postNotificationName:@"GEOPPTTest_RouteManager_DirectionsRequestBEGIN" object:0];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10099E5F8;
  v20[3] = &unk_101630868;
  v21[1] = v9;
  objc_copyWeak(v21, buf);
  v21[2] = a3;
  [v14 startWithCompletionHandler:v20];
  objc_destroyWeak(v21);
  objc_destroyWeak(buf);
}

- (id)routesForTransportType:(int64_t)a3
{
  v5 = [(RouteLoadingController *)self routesResultsSync];
  objc_sync_enter(v5);
  v6 = [(RouteLoadingController *)self mutableRoutesResults];
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  objc_sync_exit(v5);

  return v8;
}

- (NSDictionary)routesResults
{
  v3 = [(RouteLoadingController *)self routesResultsSync];
  objc_sync_enter(v3);
  v4 = [(RouteLoadingController *)self mutableRoutesResults];
  v5 = [v4 copy];

  objc_sync_exit(v3);

  return v5;
}

- (void)setWaypointSet:(id)a3
{
  v5 = a3;
  if (self->_waypointSet != v5)
  {
    v6 = v5;
    [(RouteLoadingController *)self cancelLoading];
    objc_storeStrong(&self->_waypointSet, a3);
    v5 = v6;
  }
}

- (BOOL)isActiveForTransportType:(int64_t)a3
{
  v3 = [(RouteLoadingController *)self _routeLoadingTaskForTransportType:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 inProgress];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isActive
{
  v3 = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(v3);
  v4 = [(RouteLoadingController *)self activeTasks];
  v5 = [v4 count] != 0;

  objc_sync_exit(v3);
  return v5;
}

- (void)cancelLoadingForTransportType:(int64_t)a3
{
  obj = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(obj);
  v5 = [(RouteLoadingController *)self activeTasks];
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];
  [v7 cancel];

  v8 = [(RouteLoadingController *)self activeTasks];
  v9 = [NSNumber numberWithInteger:a3];
  [v8 removeObjectForKey:v9];

  objc_sync_exit(obj);
}

- (void)cancelLoading
{
  obj = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(obj);
  v3 = [(RouteLoadingController *)self activeTasks];
  [v3 enumerateKeysAndObjectsUsingBlock:&stru_101630820];

  v4 = [(RouteLoadingController *)self activeTasks];
  [v4 removeAllObjects];

  objc_sync_exit(obj);
}

- (NSSet)supportedTransportTypes
{
  v2 = [(RouteLoadingController *)self routeLoadingTaskFactory];
  v3 = [v2 supportedTransportTypes];

  return v3;
}

- (RouteLoadingController)initWithWaypointSet:(id)a3 taskFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = RouteLoadingController;
  v9 = [(RouteLoadingController *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_waypointSet, a3);
    objc_storeStrong(&v10->_routeLoadingTaskFactory, a4);
    v11 = +[NSBundle mainBundle];
    v12 = [v11 bundleIdentifier];
    v13 = [NSString stringWithFormat:@"%@.%@.%p", v12, objc_opt_class(), v10];

    v14 = [NSString stringWithFormat:@"%@.activeTasksSync", v13];
    activeTasksSync = v10->_activeTasksSync;
    v10->_activeTasksSync = v14;

    v16 = [NSString stringWithFormat:@"%@.routesResultsSync", v13];
    routesResultsSync = v10->_routesResultsSync;
    v10->_routesResultsSync = v16;

    v18 = objc_opt_new();
    activeTasks = v10->_activeTasks;
    v10->_activeTasks = v18;

    v20 = objc_opt_new();
    mutableRoutesResults = v10->_mutableRoutesResults;
    v10->_mutableRoutesResults = v20;
  }

  return v10;
}

@end