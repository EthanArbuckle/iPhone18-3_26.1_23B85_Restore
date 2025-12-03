@interface RouteTrafficFeatureCalculator
- (RouteTrafficFeatureCalculator)init;
- (id)_cacheKeyForRoutes:(id)routes;
- (id)cachedSharedTrafficFeaturesForRoutes:(id)routes;
- (id)cachedTrafficFeaturesForRoute:(id)route;
- (void)_calculateCameraFeaturesForRoute:(id)route;
- (void)_startCalculationTaskForRoute:(id)route completion:(id)completion;
- (void)clearCachedSharedTrafficFeaturesForRoutes:(id)routes;
- (void)clearCachedTrafficFeaturesForRoute:(id)route;
- (void)getSharedTrafficFeaturesForRoutes:(id)routes completionQueue:(id)queue completionHandler:(id)handler;
- (void)getTrafficFeaturesForRoute:(id)route completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation RouteTrafficFeatureCalculator

- (RouteTrafficFeatureCalculator)init
{
  v15.receiver = self;
  v15.super_class = RouteTrafficFeatureCalculator;
  v2 = [(RouteTrafficFeatureCalculator *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCache);
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = objc_alloc_init(NSCache);
    sharedFeatureCache = v2->_sharedFeatureCache;
    v2->_sharedFeatureCache = v5;

    v7 = +[NSMapTable strongToStrongObjectsMapTable];
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v7;

    v9 = [NSString stringWithFormat:@"com.apple.Maps.%@.synchronization.%p", objc_opt_class(), v2];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_UTILITY, 0);

    v12 = dispatch_queue_create([v9 UTF8String], v11);
    synchronizationQueue = v2->_synchronizationQueue;
    v2->_synchronizationQueue = v12;
  }

  return v2;
}

- (void)_calculateCameraFeaturesForRoute:(id)route
{
  routeCopy = route;
  selfCopy = self;
  synchronizationQueue = [(RouteTrafficFeatureCalculator *)self synchronizationQueue];
  dispatch_assert_queue_V2(synchronizationQueue);

  v6 = [NSMutableArray alloc];
  enrouteNotices = [routeCopy enrouteNotices];
  v8 = [v6 initWithCapacity:{objc_msgSend(enrouteNotices, "count")}];

  v9 = sub_10009737C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID = [routeCopy uniqueRouteID];
    enrouteNotices2 = [routeCopy enrouteNotices];
    v12 = [enrouteNotices2 count];
    enrouteNotices3 = [routeCopy enrouteNotices];
    *buf = 138412803;
    v62 = uniqueRouteID;
    v63 = 2048;
    v64 = v12;
    v65 = 2113;
    v66 = enrouteNotices3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Route with ID: %@ has %lu enroute notices: %{private}@", buf, 0x20u);
  }

  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v55 = 0u;
  enrouteNotices4 = [routeCopy enrouteNotices];
  v15 = [enrouteNotices4 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v56;
    do
    {
      v18 = 0;
      do
      {
        if (*v56 != v17)
        {
          objc_enumerationMutation(enrouteNotices4);
        }

        v19 = *(*(&v55 + 1) + 8 * v18);
        trafficCamera = [v19 trafficCamera];
        if (trafficCamera || ([v19 trafficSignal], (trafficCamera = objc_claimAutoreleasedReturnValue()) != 0))
        {

LABEL_11:
          v21 = [VKTrafficFeature newTrafficFeatureForEnrouteNotice:v19 onRoute:routeCopy];
          if (v21)
          {
            v22 = v21;
            [v8 addObject:v21];
          }

          else
          {
            v23 = sub_10009737C();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              identifier = [v19 identifier];
              *buf = 138412547;
              v62 = identifier;
              v63 = 2113;
              v64 = v19;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Traffic feature for notice %@ (%{private}@) was nil; ignoring", buf, 0x16u);
            }

            v22 = 0;
          }

          goto LABEL_16;
        }

        routeAnnotation = [v19 routeAnnotation];

        if (routeAnnotation)
        {
          goto LABEL_11;
        }

        v22 = sub_10009737C();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          identifier2 = [v19 identifier];
          *buf = 138412290;
          v62 = identifier2;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Enroute notice %@ has nil traffic camera, traffic signal and route annotation; ignoring", buf, 0xCu);
        }

LABEL_16:

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v27 = [enrouteNotices4 countByEnumeratingWithState:&v55 objects:v60 count:16];
      v16 = v27;
    }

    while (v27);
  }

  v28 = [v8 copy];
  if ([v28 count])
  {
    cache = [(RouteTrafficFeatureCalculator *)selfCopy cache];
    uniqueRouteID2 = [routeCopy uniqueRouteID];
    [cache setObject:v28 forKey:uniqueRouteID2];
  }

  v31 = sub_10009737C();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v28 count];
    uniqueRouteID3 = [routeCopy uniqueRouteID];
    *buf = 134218499;
    v62 = v32;
    v63 = 2113;
    v64 = v28;
    v65 = 2112;
    v66 = uniqueRouteID3;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Finished calculation with %lu traffic features (%{private}@) for route with ID: %@", buf, 0x20u);
  }

  completionHandlers = [(RouteTrafficFeatureCalculator *)selfCopy completionHandlers];
  v35 = routeCopy;
  uniqueRouteID4 = [routeCopy uniqueRouteID];
  v37 = [completionHandlers objectForKey:uniqueRouteID4];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v37;
  v38 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v52;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v52 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v51 + 1) + 8 * i);
        completionQueue = [v42 completionQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100CEB3A0;
        block[3] = &unk_101661A40;
        block[4] = v42;
        v49 = v35;
        v50 = v28;
        dispatch_async(completionQueue, block);
      }

      v39 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v39);
  }

  completionHandlers2 = [(RouteTrafficFeatureCalculator *)selfCopy completionHandlers];
  uniqueRouteID5 = [v35 uniqueRouteID];
  [completionHandlers2 removeObjectForKey:uniqueRouteID5];
}

- (void)_startCalculationTaskForRoute:(id)route completion:(id)completion
{
  routeCopy = route;
  completionCopy = completion;
  synchronizationQueue = [(RouteTrafficFeatureCalculator *)self synchronizationQueue];
  dispatch_assert_queue_V2(synchronizationQueue);

  v9 = sub_10009737C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID = [routeCopy uniqueRouteID];
    v16 = 138412290;
    v17 = uniqueRouteID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Starting calculation for route with ID: %@", &v16, 0xCu);
  }

  completionHandlers = [(RouteTrafficFeatureCalculator *)self completionHandlers];
  uniqueRouteID2 = [routeCopy uniqueRouteID];
  v13 = [completionHandlers objectForKey:uniqueRouteID2];

  if (v13)
  {
    [v13 addObject:completionCopy];
  }

  else
  {
    v13 = [NSMutableArray arrayWithObject:completionCopy];
    completionHandlers2 = [(RouteTrafficFeatureCalculator *)self completionHandlers];
    uniqueRouteID3 = [routeCopy uniqueRouteID];
    [completionHandlers2 setObject:v13 forKey:uniqueRouteID3];

    [(RouteTrafficFeatureCalculator *)self _calculateCameraFeaturesForRoute:routeCopy];
  }
}

- (void)getSharedTrafficFeaturesForRoutes:(id)routes completionQueue:(id)queue completionHandler:(id)handler
{
  routesCopy = routes;
  queueCopy = queue;
  handlerCopy = handler;
  group = dispatch_group_create();
  v9 = objc_alloc_init(NSMutableArray);
  v25 = [(RouteTrafficFeatureCalculator *)self _cacheKeyForRoutes:routesCopy];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100CEB950;
  v43[3] = &unk_101655400;
  v24 = v9;
  v44 = v24;
  v10 = objc_retainBlock(v43);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = routesCopy;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        if ([v16 transportType] != 1)
        {
          v17 = [(RouteTrafficFeatureCalculator *)self cachedTrafficFeaturesForRoute:v16];
          if (v17)
          {
            (v10[2])(v10, v17);
          }

          else
          {
            dispatch_group_enter(group);
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_100CEBA5C;
            v36[3] = &unk_101650CB0;
            v38 = v10;
            v37 = group;
            [(RouteTrafficFeatureCalculator *)self getTrafficFeaturesForRoute:v16 completionQueue:queueCopy completionHandler:v36];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v13);
  }

  synchronizationQueue = [(RouteTrafficFeatureCalculator *)self synchronizationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CEBAA4;
  block[3] = &unk_101650CD8;
  v30 = v24;
  selfCopy = self;
  v32 = v25;
  v33 = queueCopy;
  v34 = v11;
  v35 = handlerCopy;
  v19 = v11;
  v20 = handlerCopy;
  v21 = queueCopy;
  v22 = v25;
  v23 = v24;
  dispatch_group_notify(group, synchronizationQueue, block);
}

- (void)getTrafficFeaturesForRoute:(id)route completionQueue:(id)queue completionHandler:(id)handler
{
  routeCopy = route;
  queueCopy = queue;
  handlerCopy = handler;
  if ([routeCopy transportType] == 1 || (objc_msgSend(routeCopy, "uniqueRouteID"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100CEBD30;
    block[3] = &unk_101661090;
    v23 = routeCopy;
    v24 = handlerCopy;
    v16 = handlerCopy;
    v17 = routeCopy;
    dispatch_async(queueCopy, block);

    v15 = v24;
  }

  else
  {
    synchronizationQueue = [(RouteTrafficFeatureCalculator *)self synchronizationQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100CEBD4C;
    v18[3] = &unk_101660380;
    v18[4] = self;
    v19 = routeCopy;
    v20 = queueCopy;
    v21 = handlerCopy;
    v13 = handlerCopy;
    v14 = routeCopy;
    dispatch_async(synchronizationQueue, v18);

    v15 = v19;
  }
}

- (void)clearCachedSharedTrafficFeaturesForRoutes:(id)routes
{
  v4 = [(RouteTrafficFeatureCalculator *)self _cacheKeyForRoutes:routes];
  v5 = sub_10009737C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Clearing cached shared traffic features for routes: %@", &v7, 0xCu);
  }

  sharedFeatureCache = [(RouteTrafficFeatureCalculator *)self sharedFeatureCache];
  [sharedFeatureCache removeObjectForKey:v4];
}

- (void)clearCachedTrafficFeaturesForRoute:(id)route
{
  routeCopy = route;
  v5 = sub_10009737C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uniqueRouteID = [routeCopy uniqueRouteID];
    v9 = 138412290;
    v10 = uniqueRouteID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Clearing cached traffic features for route with ID: %@", &v9, 0xCu);
  }

  cache = [(RouteTrafficFeatureCalculator *)self cache];
  uniqueRouteID2 = [routeCopy uniqueRouteID];
  [cache removeObjectForKey:uniqueRouteID2];
}

- (id)_cacheKeyForRoutes:(id)routes
{
  routesCopy = routes;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(routesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = routesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        uniqueRouteID = [*(*(&v13 + 1) + 8 * i) uniqueRouteID];
        [v4 addObject:uniqueRouteID];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:{@", "}];

  return v11;
}

- (id)cachedSharedTrafficFeaturesForRoutes:(id)routes
{
  v4 = [(RouteTrafficFeatureCalculator *)self _cacheKeyForRoutes:routes];
  sharedFeatureCache = [(RouteTrafficFeatureCalculator *)self sharedFeatureCache];
  v6 = [sharedFeatureCache objectForKey:v4];

  return v6;
}

- (id)cachedTrafficFeaturesForRoute:(id)route
{
  routeCopy = route;
  cache = [(RouteTrafficFeatureCalculator *)self cache];
  uniqueRouteID = [routeCopy uniqueRouteID];

  v7 = [cache objectForKey:uniqueRouteID];

  return v7;
}

@end