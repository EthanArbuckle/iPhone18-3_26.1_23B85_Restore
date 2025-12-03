@interface RouteLoadingController
- (BOOL)isActive;
- (BOOL)isActiveForTransportType:(int64_t)type;
- (NSDictionary)routesResults;
- (NSSet)supportedTransportTypes;
- (RouteLoadingController)initWithWaypointSet:(id)set taskFactory:(id)factory;
- (RouteLoadingControllerDelegate)delegate;
- (id)_routeLoadingTaskForTransportType:(int64_t)type;
- (id)routesForTransportType:(int64_t)type;
- (void)_handleResults:(id)results;
- (void)_updateTaskForRealtimeUpdates;
- (void)cancelLoading;
- (void)cancelLoadingForTransportType:(int64_t)type;
- (void)refreshRoutesForTransportType:(int64_t)type;
- (void)setTransportTypeForRealtimeUpdates:(int64_t)updates;
- (void)setWaypointSet:(id)set;
@end

@implementation RouteLoadingController

- (RouteLoadingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleResults:(id)results
{
  resultsCopy = results;
  if ([resultsCopy count])
  {
    selfCopy = self;
    v22 = [(RouteLoadingController *)self routesForTransportType:[(RouteLoadingController *)self transportTypeForRealtimeUpdates]];
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
    [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateWillUpdateRoute" object:0 userInfo:0];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = resultsCopy;
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
          routeID = [v11 routeID];
          transitUpdate = [v11 transitUpdate];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10099DC40;
          v23[3] = &unk_1016308B0;
          v24 = routeID;
          v25 = transitUpdate;
          v26 = v5;
          v27 = v6;
          v14 = transitUpdate;
          v15 = routeID;
          [v22 withValue:v23 orError:&stru_1016308D0];
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }

    [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingTransitRouteUpdateDidUpdateRoute" object:0 userInfo:0];
    delegate = [(RouteLoadingController *)selfCopy delegate];
    v17 = [v6 copy];
    v18 = [v5 copy];
    v19 = [Result resultWithValue:v18];
    [delegate routeLoadingController:selfCopy didReceiveUpdates:v17 forRoutesResult:v19];
  }
}

- (void)_updateTaskForRealtimeUpdates
{
  activeTasksSync = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(activeTasksSync);
  routeUpdatingTask = [(RouteLoadingController *)self routeUpdatingTask];
  [routeUpdatingTask stop];

  [(RouteLoadingController *)self setRouteUpdatingTask:0];
  objc_sync_exit(activeTasksSync);

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

- (void)setTransportTypeForRealtimeUpdates:(int64_t)updates
{
  if (self->_transportTypeForRealtimeUpdates != updates)
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

      if ((updates - 1) > 4)
      {
        v8 = @"Undefined";
      }

      else
      {
        v8 = off_1016308F0[updates - 1];
      }

      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating transport type for realtime updates: %{public}@ -> %{public}@", &v9, 0x16u);
    }

    self->_transportTypeForRealtimeUpdates = updates;
    [(RouteLoadingController *)self _updateTaskForRealtimeUpdates];
  }
}

- (id)_routeLoadingTaskForTransportType:(int64_t)type
{
  activeTasksSync = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(activeTasksSync);
  activeTasks = [(RouteLoadingController *)self activeTasks];
  v7 = [NSNumber numberWithInteger:type];
  v8 = [activeTasks objectForKeyedSubscript:v7];

  objc_sync_exit(activeTasksSync);

  return v8;
}

- (void)refreshRoutesForTransportType:(int64_t)type
{
  supportedTransportTypes = [(RouteLoadingController *)self supportedTransportTypes];
  v6 = [NSNumber numberWithInteger:type];
  v7 = [supportedTransportTypes containsObject:v6];

  if (!v7)
  {
    return;
  }

  if ([(RouteLoadingController *)self isActiveForTransportType:type])
  {
    [(RouteLoadingController *)self cancelLoadingForTransportType:type];
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

  waypointSet = [(RouteLoadingController *)self waypointSet];
  [waypointSet count];
  if (type > 1)
  {
    if (type != 2)
    {
      if (type == 5)
      {
        MapsFeature_IsEnabled_Maps420();
      }

      goto LABEL_17;
    }

LABEL_16:
    MapsFeature_IsEnabled_Maps182();
    goto LABEL_17;
  }

  if (type)
  {
    if (type == 1)
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
  routeLoadingTaskFactory = [(RouteLoadingController *)self routeLoadingTaskFactory];
  v14 = [routeLoadingTaskFactory taskForTransportType:type waypointSet:waypointSet];

  activeTasksSync = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(activeTasksSync);
  activeTasks = [(RouteLoadingController *)self activeTasks];
  v17 = [NSNumber numberWithInteger:type];
  [activeTasks setObject:v14 forKeyedSubscript:v17];

  objc_sync_exit(activeTasksSync);
  objc_initWeak(buf, self);
  v18 = +[GEONotificationPreferenceManager sharedManager];
  LODWORD(activeTasksSync) = [v18 isEnabledForSubTestWithName:@"GEOPPTTest_RouteManager_DirectionsRequest"];

  if (activeTasksSync)
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
  v21[2] = type;
  [v14 startWithCompletionHandler:v20];
  objc_destroyWeak(v21);
  objc_destroyWeak(buf);
}

- (id)routesForTransportType:(int64_t)type
{
  routesResultsSync = [(RouteLoadingController *)self routesResultsSync];
  objc_sync_enter(routesResultsSync);
  mutableRoutesResults = [(RouteLoadingController *)self mutableRoutesResults];
  v7 = [NSNumber numberWithInteger:type];
  v8 = [mutableRoutesResults objectForKeyedSubscript:v7];

  objc_sync_exit(routesResultsSync);

  return v8;
}

- (NSDictionary)routesResults
{
  routesResultsSync = [(RouteLoadingController *)self routesResultsSync];
  objc_sync_enter(routesResultsSync);
  mutableRoutesResults = [(RouteLoadingController *)self mutableRoutesResults];
  v5 = [mutableRoutesResults copy];

  objc_sync_exit(routesResultsSync);

  return v5;
}

- (void)setWaypointSet:(id)set
{
  setCopy = set;
  if (self->_waypointSet != setCopy)
  {
    v6 = setCopy;
    [(RouteLoadingController *)self cancelLoading];
    objc_storeStrong(&self->_waypointSet, set);
    setCopy = v6;
  }
}

- (BOOL)isActiveForTransportType:(int64_t)type
{
  v3 = [(RouteLoadingController *)self _routeLoadingTaskForTransportType:type];
  v4 = v3;
  if (v3)
  {
    inProgress = [v3 inProgress];
  }

  else
  {
    inProgress = 0;
  }

  return inProgress;
}

- (BOOL)isActive
{
  activeTasksSync = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(activeTasksSync);
  activeTasks = [(RouteLoadingController *)self activeTasks];
  v5 = [activeTasks count] != 0;

  objc_sync_exit(activeTasksSync);
  return v5;
}

- (void)cancelLoadingForTransportType:(int64_t)type
{
  obj = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(obj);
  activeTasks = [(RouteLoadingController *)self activeTasks];
  v6 = [NSNumber numberWithInteger:type];
  v7 = [activeTasks objectForKeyedSubscript:v6];
  [v7 cancel];

  activeTasks2 = [(RouteLoadingController *)self activeTasks];
  v9 = [NSNumber numberWithInteger:type];
  [activeTasks2 removeObjectForKey:v9];

  objc_sync_exit(obj);
}

- (void)cancelLoading
{
  obj = [(RouteLoadingController *)self activeTasksSync];
  objc_sync_enter(obj);
  activeTasks = [(RouteLoadingController *)self activeTasks];
  [activeTasks enumerateKeysAndObjectsUsingBlock:&stru_101630820];

  activeTasks2 = [(RouteLoadingController *)self activeTasks];
  [activeTasks2 removeAllObjects];

  objc_sync_exit(obj);
}

- (NSSet)supportedTransportTypes
{
  routeLoadingTaskFactory = [(RouteLoadingController *)self routeLoadingTaskFactory];
  supportedTransportTypes = [routeLoadingTaskFactory supportedTransportTypes];

  return supportedTransportTypes;
}

- (RouteLoadingController)initWithWaypointSet:(id)set taskFactory:(id)factory
{
  setCopy = set;
  factoryCopy = factory;
  v23.receiver = self;
  v23.super_class = RouteLoadingController;
  v9 = [(RouteLoadingController *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_waypointSet, set);
    objc_storeStrong(&v10->_routeLoadingTaskFactory, factory);
    v11 = +[NSBundle mainBundle];
    bundleIdentifier = [v11 bundleIdentifier];
    v13 = [NSString stringWithFormat:@"%@.%@.%p", bundleIdentifier, objc_opt_class(), v10];

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