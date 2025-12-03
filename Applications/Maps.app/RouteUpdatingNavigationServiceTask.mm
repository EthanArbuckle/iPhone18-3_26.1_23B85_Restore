@interface RouteUpdatingNavigationServiceTask
- (BOOL)_shouldUseNavigationServiceForRoutes:(id)routes;
- (RouteUpdatingNavigationServiceTask)initWithRoutes:(id)routes;
- (void)_createTransitRouteUpdaterIfNeeded;
- (void)_pauseUpdates;
- (void)_refreshUpdateEnabledForCurrentState;
- (void)_resumeUpdates;
- (void)_updateRouteUpdateObservationIfNeededWithRoutes:(id)routes;
- (void)dealloc;
- (void)navigationService:(id)service didReceiveRealtimeUpdates:(id)updates;
- (void)navigationService:(id)service didUpdatePreviewRoutes:(id)routes withSelectedRouteIndex:(unint64_t)index;
- (void)startWithUpdateHandler:(id)handler;
- (void)stop;
- (void)transitRouteUpdater:(id)updater didReceiveResponse:(id)response;
@end

@implementation RouteUpdatingNavigationServiceTask

- (void)transitRouteUpdater:(id)updater didReceiveResponse:(id)response
{
  updaterCopy = updater;
  responseCopy = response;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  if (responseCopy)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_1007E2404;
    v43 = sub_1007E2414;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_1007E241C;
    v37 = sub_1007E2448;
    v38 = 0;
    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007E2450;
    block[3] = &unk_10165DEF0;
    block[4] = self;
    block[5] = &v39;
    block[6] = &v33;
    dispatch_sync(isolationQueue, block);
    v8 = [NSMutableArray alloc];
    routeUpdates = [responseCopy routeUpdates];
    v10 = [v8 initWithCapacity:{objc_msgSend(routeUpdates, "count")}];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    routeUpdates2 = [responseCopy routeUpdates];
    v12 = [routeUpdates2 countByEnumeratingWithState:&v28 objects:v49 count:16];
    if (v12)
    {
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(routeUpdates2);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = v40[5];
          routeIdentifier = [v15 routeIdentifier];
          clientRouteID = [routeIdentifier clientRouteID];
          LOBYTE(v16) = [v16 containsObject:clientRouteID];

          if (v16)
          {
            routeIdentifier2 = [v15 routeIdentifier];
            clientRouteID2 = [routeIdentifier2 clientRouteID];
            v21 = [RouteUpdatingTaskResult resultWithRouteID:clientRouteID2 transitUpdate:v15];

            [v10 addObject:v21];
          }
        }

        v12 = [routeUpdates2 countByEnumeratingWithState:&v28 objects:v49 count:16];
      }

      while (v12);
    }

    if ([v10 count])
    {
      v22 = sub_100798A3C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v10 count];
        v24 = v40[5];
        *buf = 134218242;
        v46 = v23;
        v47 = 2112;
        v48 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Received %lu private realtime updates for routes: %@", buf, 0x16u);
      }

      v25 = v34[5];
      v26 = [v10 copy];
      (*(v25 + 16))(v25, v26);
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v39, 8);
  }
}

- (void)navigationService:(id)service didReceiveRealtimeUpdates:(id)updates
{
  serviceCopy = service;
  updatesCopy = updates;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  if ([updatesCopy count])
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_1007E2404;
    v41 = sub_1007E2414;
    v42 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_1007E241C;
    v35 = sub_1007E2448;
    v36 = 0;
    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007E28A4;
    block[3] = &unk_10165DEF0;
    block[4] = self;
    block[5] = &v37;
    block[6] = &v31;
    dispatch_sync(isolationQueue, block);
    v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(updatesCopy, "count", serviceCopy)}];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = updatesCopy;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v47 count:16];
    if (v10)
    {
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v38[5];
            routeID = [v13 routeID];
            LODWORD(v14) = [v14 containsObject:routeID];

            if (v14)
            {
              v16 = v13;
              routeID2 = [v16 routeID];
              transitUpdate = [v16 transitUpdate];
              v19 = [RouteUpdatingTaskResult resultWithRouteID:routeID2 transitUpdate:transitUpdate];

              [v8 addObject:v19];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v26 objects:v47 count:16];
      }

      while (v10);
    }

    if ([v8 count])
    {
      v20 = sub_100798A3C();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v8 count];
        v22 = v38[5];
        *buf = 134218242;
        v44 = v21;
        v45 = 2112;
        v46 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Received %lu navd realtime updates for routes: %@", buf, 0x16u);
      }

      v23 = v32[5];
      v24 = [v8 copy];
      (*(v23 + 16))(v23, v24);
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);
  }
}

- (void)navigationService:(id)service didUpdatePreviewRoutes:(id)routes withSelectedRouteIndex:(unint64_t)index
{
  [(RouteUpdatingNavigationServiceTask *)self _updateRouteUpdateObservationIfNeededWithRoutes:routes];

  [(RouteUpdatingNavigationServiceTask *)self _refreshUpdateEnabledForCurrentState];
}

- (void)_createTransitRouteUpdaterIfNeeded
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007E29D8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

- (void)_updateRouteUpdateObservationIfNeededWithRoutes:(id)routes
{
  isolationQueue = self->_isolationQueue;
  routesCopy = routes;
  dispatch_assert_queue_not_V2(isolationQueue);
  v6 = [(RouteUpdatingNavigationServiceTask *)self _shouldUseNavigationServiceForRoutes:routesCopy];

  v7 = +[MNNavigationService sharedService];
  v8 = v7;
  if (v6)
  {
    [v7 registerObserver:self];

    v9 = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007E2C14;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_sync(v9, block);
  }

  else
  {
    [v7 unregisterObserver:self];

    [(RouteUpdatingNavigationServiceTask *)self _createTransitRouteUpdaterIfNeeded];
  }
}

- (BOOL)_shouldUseNavigationServiceForRoutes:(id)routes
{
  routesCopy = routes;
  if (GEOConfigGetBOOL())
  {
    v5 = sub_100798A3C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      routeIDs = self->_routeIDs;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = routeIDs;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Forcing use of local updater for routes: %@", &buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    if (!routesCopy)
    {
      v7 = 1;
      goto LABEL_8;
    }

    dispatch_assert_queue_not_V2(self->_isolationQueue);
    v5 = sub_100021DB0(routesCopy, &stru_10162AB48);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x3032000000;
    v15 = sub_1007E2404;
    v16 = sub_1007E2414;
    v17 = 0;
    isolationQueue = self->_isolationQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1007E2EF0;
    v12[3] = &unk_101661600;
    v12[4] = self;
    v12[5] = &buf;
    dispatch_sync(isolationQueue, v12);
    v9 = *(*(&buf + 1) + 40);
    v10 = [NSSet setWithArray:v5];
    v7 = [v9 isEqualToSet:v10];

    _Block_object_dispose(&buf, 8);
  }

LABEL_8:
  return v7;
}

- (void)_refreshUpdateEnabledForCurrentState
{
  v3 = +[MKApplicationStateMonitor sharedInstance];
  isInBackground = [v3 isInBackground];

  if (isInBackground)
  {

    [(RouteUpdatingNavigationServiceTask *)self _pauseUpdates];
  }

  else if (self->_transitRouteUpdater || (+[MNNavigationService sharedService](MNNavigationService, "sharedService"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, v6 == 2))
  {

    [(RouteUpdatingNavigationServiceTask *)self _resumeUpdates];
  }
}

- (void)_resumeUpdates
{
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007E307C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(isolationQueue, block);
}

- (void)_pauseUpdates
{
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007E325C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(isolationQueue, block);
}

- (void)stop
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007E34C8;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  if ((v7[3] & 1) == 0)
  {
    [(GEOTransitRouteUpdater *)self->_transitRouteUpdater setActive:0];
    v4 = +[MNNavigationService sharedService];
    [v4 unregisterObserver:self];
  }

  _Block_object_dispose(&v6, 8);
}

- (void)startWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007E3614;
  block[3] = &unk_1016562F0;
  v9 = &v10;
  block[4] = self;
  v6 = handlerCopy;
  v8 = v6;
  dispatch_sync(isolationQueue, block);
  if ((v11[3] & 1) == 0)
  {
    [(RouteUpdatingNavigationServiceTask *)self _updateRouteUpdateObservationIfNeededWithRoutes:0];
    [(RouteUpdatingNavigationServiceTask *)self _refreshUpdateEnabledForCurrentState];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)dealloc
{
  [(GEOTransitRouteUpdater *)self->_transitRouteUpdater setActive:0];
  v3 = +[MNNavigationService sharedService];
  [v3 unregisterObserver:self];

  v4 = +[MKApplicationStateMonitor sharedInstance];
  [v4 stopObserving];

  v5.receiver = self;
  v5.super_class = RouteUpdatingNavigationServiceTask;
  [(RouteUpdatingNavigationServiceTask *)&v5 dealloc];
}

- (RouteUpdatingNavigationServiceTask)initWithRoutes:(id)routes
{
  routesCopy = routes;
  v25.receiver = self;
  v25.super_class = RouteUpdatingNavigationServiceTask;
  v5 = [(RouteUpdatingNavigationServiceTask *)&v25 init];
  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    bundleIdentifier = [v6 bundleIdentifier];
    v8 = [NSString stringWithFormat:@"%@.%@.isolationQueue.%p", bundleIdentifier, objc_opt_class(), v5];

    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    isolationQueue = v5->_isolationQueue;
    v5->_isolationQueue = v11;

    v13 = [NSSet alloc];
    v14 = sub_100021DB0(routesCopy, &stru_10162AAE8);
    v15 = [v13 initWithArray:v14];
    routeIDs = v5->_routeIDs;
    v5->_routeIDs = v15;

    v17 = [NSSet alloc];
    v18 = sub_100021DB0(routesCopy, &stru_10162AB28);
    v19 = [v17 initWithArray:v18];
    routeUpdateRequests = v5->_routeUpdateRequests;
    v5->_routeUpdateRequests = v19;

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:v5 selector:"_didEnterBackground" name:MKApplicationStateDidEnterBackgroundNotification object:0];

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v5 selector:"_willEnterForeground" name:MKApplicationStateWillEnterForegroundNotification object:0];

    v23 = +[MKApplicationStateMonitor sharedInstance];
    [v23 startObserving];
  }

  return v5;
}

@end