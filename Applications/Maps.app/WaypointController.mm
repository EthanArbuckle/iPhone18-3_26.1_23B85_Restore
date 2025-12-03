@interface WaypointController
- (BOOL)isRunning;
- (NSDictionary)waypointRequestResults;
- (WaypointController)initWithConfiguration:(id)configuration;
- (WaypointControllerDelegate)delegate;
- (void)_processTaskFinished:(id)finished;
- (void)_refreshDynamicOrigin;
- (void)_startOnIsolationQueue;
- (void)_stopOnIsolationQueue;
- (void)_submitTask:(id)task;
- (void)rebroadcastWaypoints;
- (void)refresh;
- (void)refreshDynamicOrigin;
- (void)start;
- (void)stop;
@end

@implementation WaypointController

- (WaypointControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)rebroadcastWaypoints
{
  objc_initWeak(&location, self);
  isolationQueue = [(WaypointController *)self isolationQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006703D8;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_refreshDynamicOrigin
{
  isolationQueue = [(WaypointController *)self isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  configuration = [(WaypointController *)self configuration];
  origin = [configuration origin];
  isCurrentLocation = [origin isCurrentLocation];

  v7 = sub_1006704F0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (isCurrentLocation)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Refreshing dynamic origin waypoint", buf, 2u);
    }

    v9 = [ComposedWaypointTask alloc];
    configuration2 = [(WaypointController *)self configuration];
    origin2 = [configuration2 origin];
    v7 = [(ComposedWaypointTask *)v9 initWithRequest:origin2];

    tasks = [(WaypointController *)self tasks];
    [tasks replaceObjectAtIndex:0 withObject:v7];

    [(WaypointController *)self _submitTask:v7];
  }

  else if (v8)
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "The origin is not the user's current location; will not refresh dynamic origin", v13, 2u);
  }
}

- (void)refreshDynamicOrigin
{
  objc_initWeak(&location, self);
  isolationQueue = [(WaypointController *)self isolationQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006707AC;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (NSDictionary)waypointRequestResults
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1006709F0;
  v11 = sub_100670A00;
  v12 = objc_opt_new();
  isolationQueue = [(WaypointController *)self isolationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100670A08;
  v6[3] = &unk_101661600;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_processTaskFinished:(id)finished
{
  finishedCopy = finished;
  v5 = sub_1006704F0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Processing currently finished waypoint tasks", buf, 2u);
  }

  isolationQueue = [(WaypointController *)self isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  tasks = [(WaypointController *)self tasks];
  v8 = [tasks count] == 0;

  if (!v8)
  {
    tasks2 = [(WaypointController *)self tasks];
    v10 = [tasks2 count];

    tasks3 = [(WaypointController *)self tasks];
    v12 = [tasks3 indexOfObject:finishedCopy];

    if (v12)
    {
      v13 = sub_1006704F0();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (v12 == v10 - 1)
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Destination is ready", buf, 2u);
        }

        v13 = +[NSNotificationCenter defaultCenter];
        [v13 postNotificationName:@"MapsWaypointResolutionDidLoadDestinationNotification" object:0];
      }

      else if (v14)
      {
        *buf = 134217984;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Waypoint %lu loaded", buf, 0xCu);
      }
    }

    else
    {
      v15 = sub_1006704F0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Origin is ready", buf, 2u);
      }

      v13 = +[NSNotificationCenter defaultCenter];
      [v13 postNotificationName:@"MapsWaypointResolutionDidLoadOriginNotification" object:0];
    }

    receivedResults = [(WaypointController *)self receivedResults];
    v17 = [receivedResults objectForKey:finishedCopy];

    if ([v17 isSuccess])
    {
      receivedResults2 = [(WaypointController *)self receivedResults];
      v19 = [receivedResults2 count];

      if (v10 >= v19)
      {
        v20 = v10 - v19;
      }

      else
      {
        v20 = 0;
      }

      if (v10 <= v19)
      {
        v21 = sub_1006704F0();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "All waypoints are ready", buf, 2u);
        }

        v22 = [[NSMutableArray alloc] initWithCapacity:v10];
        v23 = [[NSMutableArray alloc] initWithCapacity:v10];
        tasks4 = [(WaypointController *)self tasks];
        v49 = _NSConcreteStackBlock;
        v50 = 3221225472;
        v51 = sub_10067140C;
        v52 = &unk_1016254E0;
        selfCopy = self;
        v25 = v22;
        v54 = v25;
        v26 = v23;
        v55 = v26;
        [tasks4 enumerateObjectsUsingBlock:&v49];

        v27 = [WaypointSet alloc];
        selfCopy = [(WaypointSet *)v27 initWithWaypoints:v25, v49, v50, v51, v52, selfCopy];
        v29 = [Result resultWithValue:selfCopy];
        [(WaypointController *)self setResolvedWaypointSetResult:v29];

        if ([v26 count])
        {
          v30 = sub_1006704F0();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = [v26 count];
            *buf = 134218242;
            *&buf[4] = v31;
            *&buf[12] = 2112;
            *&buf[14] = v26;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Found %lu errors while processing finished waypoint tasks: %@", buf, 0x16u);
          }
        }
      }

      resolvedWaypointSetResult = [(WaypointController *)self resolvedWaypointSetResult];
      v33 = resolvedWaypointSetResult == 0;

      v34 = sub_1006704F0();
      v35 = v34;
      if (v33)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          *&buf[4] = v20;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Still waiting for %lu waypoints to load; do nothing for now", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          resolvedWaypointSetResult2 = [(WaypointController *)self resolvedWaypointSetResult];
          *buf = 134218242;
          *&buf[4] = v10;
          *&buf[12] = 2112;
          *&buf[14] = resolvedWaypointSetResult2;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Finished resolving %lu waypoints: %@", buf, 0x16u);
        }

        delegate = [(WaypointController *)self delegate];
        resolvedWaypointSetResult3 = [(WaypointController *)self resolvedWaypointSetResult];
        [delegate waypointController:self didResolveWaypointSet:resolvedWaypointSetResult3];
      }
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      tasks5 = [(WaypointController *)self tasks];
      v40 = [tasks5 countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v40)
      {
        v41 = *v58;
        do
        {
          v42 = 0;
          do
          {
            if (*v58 != v41)
            {
              objc_enumerationMutation(tasks5);
            }

            v43 = *(*(&v57 + 1) + 8 * v42);
            if (v43 != finishedCopy)
            {
              [v43 cancel];
            }

            v42 = v42 + 1;
          }

          while (v40 != v42);
          v40 = [tasks5 countByEnumeratingWithState:&v57 objects:v69 count:16];
        }

        while (v40);
      }

      [(WaypointController *)self setTasks:0];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v66 = sub_1006709F0;
      v67 = sub_100670A00;
      v68 = 0;
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1006713FC;
      v56[3] = &unk_10165E590;
      v56[4] = buf;
      [v17 withValue:&stru_101625490 orError:v56];
      v44 = [Result resultWithError:*(*&buf[8] + 40)];
      [(WaypointController *)self setResolvedWaypointSetResult:v44];

      v45 = sub_1006704F0();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = *(*&buf[8] + 40);
        *v61 = 134218242;
        v62 = v12;
        v63 = 2112;
        v64 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Will stop waypoint refinement, error loading waypoint %lu: %@", v61, 0x16u);
      }

      delegate2 = [(WaypointController *)self delegate];
      resolvedWaypointSetResult4 = [(WaypointController *)self resolvedWaypointSetResult];
      [delegate2 waypointController:self didResolveWaypointSet:resolvedWaypointSetResult4];

      _Block_object_dispose(buf, 8);
    }
  }
}

- (void)_submitTask:(id)task
{
  taskCopy = task;
  isolationQueue = [(WaypointController *)self isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  receivedResults = [(WaypointController *)self receivedResults];
  [receivedResults setObject:0 forKey:taskCopy];

  tasks = [(WaypointController *)self tasks];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Waypoint%lu", [tasks indexOfObject:taskCopy]);

  v9 = sub_1006704F0();
  v10 = os_signpost_id_generate(v9);

  v11 = sub_1006704F0();
  v12 = v11;
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 138543362;
    v25 = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FetchGEOComposedWaypoint", "%{public}@", buf, 0xCu);
  }

  v13 = sub_1006704F0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    identifier = [taskCopy identifier];
    *buf = 138543362;
    v25 = identifier;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Fetching waypoint with identifier: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1006718C0;
  v20[3] = &unk_101625450;
  objc_copyWeak(v23, buf);
  v23[1] = v10;
  v15 = v8;
  v21 = v15;
  v16 = taskCopy;
  v22 = v16;
  traitsForNextTask = [(WaypointController *)self traitsForNextTask];
  [v16 submitWithHandler:v20 traits:traitsForNextTask networkActivityHandler:0];

  traitsForNextTask2 = [(WaypointController *)self traitsForNextTask];
  copyByIncrementingSessionCounters = [traitsForNextTask2 copyByIncrementingSessionCounters];
  [(WaypointController *)self setTraitsForNextTask:copyByIncrementingSessionCounters];

  objc_destroyWeak(v23);
  objc_destroyWeak(buf);
}

- (void)refresh
{
  objc_initWeak(&location, self);
  isolationQueue = [(WaypointController *)self isolationQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100671C98;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)isRunning
{
  isolationQueue = [(WaypointController *)self isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  tasks = [(WaypointController *)self tasks];
  v5 = [tasks countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(tasks);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 isLoaded] & 1) == 0 && !objc_msgSend(v8, "isCancelled"))
        {
          LOBYTE(v5) = 1;
          goto LABEL_12;
        }
      }

      v5 = [tasks countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v5;
}

- (void)_stopOnIsolationQueue
{
  v3 = sub_1006704F0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping waypoint fetching", buf, 2u);
  }

  isolationQueue = [(WaypointController *)self isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  tasks = [(WaypointController *)self tasks];
  v6 = [tasks countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(tasks);
        }

        [*(*(&v10 + 1) + 8 * v9) cancel];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [tasks countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  [(WaypointController *)self setActivity:0];
}

- (void)stop
{
  objc_initWeak(&location, self);
  isolationQueue = [(WaypointController *)self isolationQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100672084;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_startOnIsolationQueue
{
  v3 = sub_1006704F0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting waypoint fetching", buf, 2u);
  }

  isolationQueue = [(WaypointController *)self isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  if ([(WaypointController *)self isRunning])
  {
    tasks3 = sub_1006704F0();
    if (os_log_type_enabled(tasks3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, tasks3, OS_LOG_TYPE_ERROR, "Asked to start fetching waypoints but we already started; ignoring", buf, 2u);
    }
  }

  else
  {
    configuration = [(WaypointController *)self configuration];
    requests = [configuration requests];
    v8 = [requests count];

    if (v8 > 1)
    {
      tasks = [(WaypointController *)self tasks];
      [tasks removeAllObjects];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      configuration2 = [(WaypointController *)self configuration];
      requests2 = [configuration2 requests];

      v16 = [requests2 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        do
        {
          v19 = 0;
          do
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(requests2);
            }

            v20 = [[ComposedWaypointTask alloc] initWithRequest:*(*(&v30 + 1) + 8 * v19)];
            tasks2 = [(WaypointController *)self tasks];
            [tasks2 addObject:v20];

            v19 = v19 + 1;
          }

          while (v17 != v19);
          v17 = [requests2 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v17);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      tasks3 = [(WaypointController *)self tasks];
      v22 = [tasks3 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v27;
        do
        {
          v25 = 0;
          do
          {
            if (*v27 != v24)
            {
              objc_enumerationMutation(tasks3);
            }

            [(WaypointController *)self _submitTask:*(*(&v26 + 1) + 8 * v25)];
            v25 = v25 + 1;
          }

          while (v23 != v25);
          v23 = [tasks3 countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v23);
      }
    }

    else
    {
      v9 = sub_1006704F0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot load waypoints with nil origin or destination; defaulting to a generic error.", buf, 2u);
      }

      v10 = [NSError errorWithDomain:@"WaypointRequestErrorDomain" code:0 userInfo:0];
      v11 = [Result resultWithError:v10];
      [(WaypointController *)self setResolvedWaypointSetResult:v11];

      tasks3 = [(WaypointController *)self delegate];
      resolvedWaypointSetResult = [(WaypointController *)self resolvedWaypointSetResult];
      [tasks3 waypointController:self didResolveWaypointSet:resolvedWaypointSetResult];
    }
  }
}

- (void)start
{
  v3 = _os_activity_create(&_mh_execute_header, "Resolve waypoints", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = sub_1006704F0();
  if (os_signpost_enabled(v4))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "StartFetchingGEOComposedWaypoint", "", buf, 2u);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"MapsWaypointResolutionDidBeginNotification" object:0];

  objc_initWeak(buf, self);
  isolationQueue = [(WaypointController *)self isolationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100672618;
  v8[3] = &unk_101661340;
  v9 = v3;
  v7 = v3;
  objc_copyWeak(&v10, buf);
  dispatch_async(isolationQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);
}

- (WaypointController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = sub_1006704F0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  v8 = sub_1006704F0();
  v9 = v8;
  if (v7)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [configurationCopy debugDescription];
    *buf = 138412546;
    v35 = v11;
    v36 = 2112;
    v37 = v12;
    v13 = v9;
    v14 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v15 = objc_opt_class();
    v11 = NSStringFromClass(v15);
    v12 = [configurationCopy description];
    *buf = 138412546;
    v35 = v11;
    v36 = 2112;
    v37 = v12;
    v13 = v9;
    v14 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&_mh_execute_header, v13, v14, "%@ is being initialized: configuration=%@", buf, 0x16u);

LABEL_7:
  v33.receiver = self;
  v33.super_class = WaypointController;
  v16 = [(WaypointController *)&v33 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_configuration, configuration);
    traits = [configurationCopy traits];
    v19 = [traits copy];
    traitsForNextTask = v17->_traitsForNextTask;
    v17->_traitsForNextTask = v19;

    [(GEOMapServiceTraits *)v17->_traitsForNextTask setRequestPurpose:1];
    v21 = +[NSBundle mainBundle];
    bundleIdentifier = [v21 bundleIdentifier];
    v23 = [NSString stringWithFormat:@"%@.WaypointController.%p", bundleIdentifier, v17];

    uTF8String = [v23 UTF8String];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create(uTF8String, v25);
    isolationQueue = v17->_isolationQueue;
    v17->_isolationQueue = v26;

    v28 = +[NSMapTable weakToStrongObjectsMapTable];
    receivedResults = v17->_receivedResults;
    v17->_receivedResults = v28;

    v30 = objc_opt_new();
    tasks = v17->_tasks;
    v17->_tasks = v30;
  }

  return v17;
}

@end