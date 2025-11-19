@interface RouteTrafficFeatureCalculator
- (RouteTrafficFeatureCalculator)init;
- (id)_cacheKeyForRoutes:(id)a3;
- (id)cachedSharedTrafficFeaturesForRoutes:(id)a3;
- (id)cachedTrafficFeaturesForRoute:(id)a3;
- (void)_calculateCameraFeaturesForRoute:(id)a3;
- (void)_startCalculationTaskForRoute:(id)a3 completion:(id)a4;
- (void)clearCachedSharedTrafficFeaturesForRoutes:(id)a3;
- (void)clearCachedTrafficFeaturesForRoute:(id)a3;
- (void)getSharedTrafficFeaturesForRoutes:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)getTrafficFeaturesForRoute:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
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

- (void)_calculateCameraFeaturesForRoute:(id)a3
{
  v4 = a3;
  v46 = self;
  v5 = [(RouteTrafficFeatureCalculator *)self synchronizationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [NSMutableArray alloc];
  v7 = [v4 enrouteNotices];
  v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

  v9 = sub_10009737C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v4 uniqueRouteID];
    v11 = [v4 enrouteNotices];
    v12 = [v11 count];
    v13 = [v4 enrouteNotices];
    *buf = 138412803;
    v62 = v10;
    v63 = 2048;
    v64 = v12;
    v65 = 2113;
    v66 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Route with ID: %@ has %lu enroute notices: %{private}@", buf, 0x20u);
  }

  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v55 = 0u;
  v14 = [v4 enrouteNotices];
  v15 = [v14 countByEnumeratingWithState:&v55 objects:v60 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v55 + 1) + 8 * v18);
        v20 = [v19 trafficCamera];
        if (v20 || ([v19 trafficSignal], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
        {

LABEL_11:
          v21 = [VKTrafficFeature newTrafficFeatureForEnrouteNotice:v19 onRoute:v4];
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
              v24 = [v19 identifier];
              *buf = 138412547;
              v62 = v24;
              v63 = 2113;
              v64 = v19;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Traffic feature for notice %@ (%{private}@) was nil; ignoring", buf, 0x16u);
            }

            v22 = 0;
          }

          goto LABEL_16;
        }

        v25 = [v19 routeAnnotation];

        if (v25)
        {
          goto LABEL_11;
        }

        v22 = sub_10009737C();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v19 identifier];
          *buf = 138412290;
          v62 = v26;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Enroute notice %@ has nil traffic camera, traffic signal and route annotation; ignoring", buf, 0xCu);
        }

LABEL_16:

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v27 = [v14 countByEnumeratingWithState:&v55 objects:v60 count:16];
      v16 = v27;
    }

    while (v27);
  }

  v28 = [v8 copy];
  if ([v28 count])
  {
    v29 = [(RouteTrafficFeatureCalculator *)v46 cache];
    v30 = [v4 uniqueRouteID];
    [v29 setObject:v28 forKey:v30];
  }

  v31 = sub_10009737C();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v28 count];
    v33 = [v4 uniqueRouteID];
    *buf = 134218499;
    v62 = v32;
    v63 = 2113;
    v64 = v28;
    v65 = 2112;
    v66 = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Finished calculation with %lu traffic features (%{private}@) for route with ID: %@", buf, 0x20u);
  }

  v34 = [(RouteTrafficFeatureCalculator *)v46 completionHandlers];
  v35 = v4;
  v36 = [v4 uniqueRouteID];
  v37 = [v34 objectForKey:v36];

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
        v43 = [v42 completionQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100CEB3A0;
        block[3] = &unk_101661A40;
        block[4] = v42;
        v49 = v35;
        v50 = v28;
        dispatch_async(v43, block);
      }

      v39 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v39);
  }

  v44 = [(RouteTrafficFeatureCalculator *)v46 completionHandlers];
  v45 = [v35 uniqueRouteID];
  [v44 removeObjectForKey:v45];
}

- (void)_startCalculationTaskForRoute:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RouteTrafficFeatureCalculator *)self synchronizationQueue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_10009737C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v6 uniqueRouteID];
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Starting calculation for route with ID: %@", &v16, 0xCu);
  }

  v11 = [(RouteTrafficFeatureCalculator *)self completionHandlers];
  v12 = [v6 uniqueRouteID];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    [v13 addObject:v7];
  }

  else
  {
    v13 = [NSMutableArray arrayWithObject:v7];
    v14 = [(RouteTrafficFeatureCalculator *)self completionHandlers];
    v15 = [v6 uniqueRouteID];
    [v14 setObject:v13 forKey:v15];

    [(RouteTrafficFeatureCalculator *)self _calculateCameraFeaturesForRoute:v6];
  }
}

- (void)getSharedTrafficFeaturesForRoutes:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v27 = a4;
  v26 = a5;
  group = dispatch_group_create();
  v9 = objc_alloc_init(NSMutableArray);
  v25 = [(RouteTrafficFeatureCalculator *)self _cacheKeyForRoutes:v8];
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
  v11 = v8;
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
            [(RouteTrafficFeatureCalculator *)self getTrafficFeaturesForRoute:v16 completionQueue:v27 completionHandler:v36];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v13);
  }

  v18 = [(RouteTrafficFeatureCalculator *)self synchronizationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CEBAA4;
  block[3] = &unk_101650CD8;
  v30 = v24;
  v31 = self;
  v32 = v25;
  v33 = v27;
  v34 = v11;
  v35 = v26;
  v19 = v11;
  v20 = v26;
  v21 = v27;
  v22 = v25;
  v23 = v24;
  dispatch_group_notify(group, v18, block);
}

- (void)getTrafficFeaturesForRoute:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 transportType] == 1 || (objc_msgSend(v8, "uniqueRouteID"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100CEBD30;
    block[3] = &unk_101661090;
    v23 = v8;
    v24 = v10;
    v16 = v10;
    v17 = v8;
    dispatch_async(v9, block);

    v15 = v24;
  }

  else
  {
    v12 = [(RouteTrafficFeatureCalculator *)self synchronizationQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100CEBD4C;
    v18[3] = &unk_101660380;
    v18[4] = self;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v13 = v10;
    v14 = v8;
    dispatch_async(v12, v18);

    v15 = v19;
  }
}

- (void)clearCachedSharedTrafficFeaturesForRoutes:(id)a3
{
  v4 = [(RouteTrafficFeatureCalculator *)self _cacheKeyForRoutes:a3];
  v5 = sub_10009737C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Clearing cached shared traffic features for routes: %@", &v7, 0xCu);
  }

  v6 = [(RouteTrafficFeatureCalculator *)self sharedFeatureCache];
  [v6 removeObjectForKey:v4];
}

- (void)clearCachedTrafficFeaturesForRoute:(id)a3
{
  v4 = a3;
  v5 = sub_10009737C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 uniqueRouteID];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Clearing cached traffic features for route with ID: %@", &v9, 0xCu);
  }

  v7 = [(RouteTrafficFeatureCalculator *)self cache];
  v8 = [v4 uniqueRouteID];
  [v7 removeObjectForKey:v8];
}

- (id)_cacheKeyForRoutes:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) uniqueRouteID];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:{@", "}];

  return v11;
}

- (id)cachedSharedTrafficFeaturesForRoutes:(id)a3
{
  v4 = [(RouteTrafficFeatureCalculator *)self _cacheKeyForRoutes:a3];
  v5 = [(RouteTrafficFeatureCalculator *)self sharedFeatureCache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)cachedTrafficFeaturesForRoute:(id)a3
{
  v4 = a3;
  v5 = [(RouteTrafficFeatureCalculator *)self cache];
  v6 = [v4 uniqueRouteID];

  v7 = [v5 objectForKey:v6];

  return v7;
}

@end