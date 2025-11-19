@interface RoutePlanningFeatureDiscoveryProvider
- (BOOL)_updateCurrentModelAndNotify:(BOOL)a3;
- (BOOL)updateWithTransportType:(int64_t)a3 routeCollection:(id)a4;
- (RoutePlanningFeatureDiscoveryProvider)init;
- (TransitPayActionDelegate)transitPayActionDelegate;
- (id)_bestModelForCurrentState;
- (void)setTransitPayActionDelegate:(id)a3;
- (void)source:(id)a3 didUpdateAvailability:(BOOL)a4;
@end

@implementation RoutePlanningFeatureDiscoveryProvider

- (TransitPayActionDelegate)transitPayActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitPayActionDelegate);

  return WeakRetained;
}

- (void)source:(id)a3 didUpdateAvailability:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_10006250C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = @"NO";
    if (v4)
    {
      v10 = @"YES";
    }

    v11 = v10;
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Availability of %@ changed to %@.", &v12, 0x16u);
  }

  [(RoutePlanningFeatureDiscoveryProvider *)self _updateCurrentModelAndNotify:1];
}

- (void)setTransitPayActionDelegate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v12 = sub_10003D020();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/RoutePlanningFeatureDiscoveryProvider.m";
      v20 = 1024;
      v21 = 119;
      v22 = 2082;
      v23 = "[RoutePlanningFeatureDiscoveryProvider setTransitPayActionDelegate:]";
      v24 = 2082;
      v25 = "nil == transitPayActionDelegate";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Transit + Pay requires an action delegate", buf, 0x26u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Feature Discovery/RoutePlanningFeatureDiscoveryProvider.m";
      v20 = 1024;
      v21 = 119;
      v22 = 2082;
      v23 = "[RoutePlanningFeatureDiscoveryProvider setTransitPayActionDelegate:]";
      v24 = 2082;
      v25 = "nil == transitPayActionDelegate";
      _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Transit + Pay requires an action delegate", buf, 0x26u);
    }

    goto LABEL_17;
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitPayActionDelegate);

  if (!WeakRetained)
  {
    objc_storeWeak(&self->_transitPayActionDelegate, v4);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_sources;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 setTransitPayActionDelegate:{v4, v13}];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

LABEL_17:
  }
}

- (id)_bestModelForCurrentState
{
  v2 = sub_100021DB0(self->_sources, &stru_101654020);
  v3 = [v2 firstObject];

  return v3;
}

- (BOOL)_updateCurrentModelAndNotify:(BOOL)a3
{
  v3 = a3;
  v5 = [(RoutePlanningFeatureDiscoveryProvider *)self _bestModelForCurrentState];
  os_unfair_lock_lock(&self->_lock);
  suggestedModel = self->_suggestedModel;
  v7 = v5;
  v8 = suggestedModel;
  if (v7 | v8 && (v9 = v8, v10 = [v7 isEqual:v8], v9, v7, !v10))
  {
    v12 = sub_10006250C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Suggestion did change to %@", buf, 0xCu);
    }

    objc_storeStrong(&self->_suggestedModel, v5);
    v13 = [(RoutePlanningFeatureDiscoveryProvider *)self changeHandler];
    os_unfair_lock_unlock(&self->_lock);
    if (v3 && v13)
    {
      v14 = sub_10006250C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Will notify suggestion did change", buf, 2u);
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100DA1970;
      v16[3] = &unk_101661090;
      v18 = v13;
      v17 = v7;
      dispatch_async(&_dispatch_main_q, v16);
    }

    v11 = 1;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v11 = 0;
  }

  return v11;
}

- (BOOL)updateWithTransportType:(int64_t)a3 routeCollection:(id)a4
{
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (self->_transportType == a3 && ((routeCollection = self->_routeCollection, v9 = v7, v10 = routeCollection, !(v9 | v10)) || (v11 = v10, v12 = [v9 isEqual:v10], v11, v9, v12)))
  {
    os_unfair_lock_unlock(&self->_lock);
    v13 = 0;
  }

  else
  {
    v14 = [v7 routes];
    v15 = [(RouteCollection *)self->_routeCollection routes];
    if (v14 | v15)
    {
      v16 = [v14 isEqual:v15];
    }

    else
    {
      v16 = 1;
    }

    v17 = sub_10006250C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = self->_transportType - 1;
      if (v18 > 4)
      {
        v19 = @"Undefined";
      }

      else
      {
        v19 = off_101654080[v18];
      }

      if ((a3 - 1) > 4)
      {
        v20 = @"Undefined";
      }

      else
      {
        v20 = off_101654080[a3 - 1];
      }

      v21 = @"NO";
      *buf = 138413058;
      v37 = v19;
      v38 = 2112;
      if (v16)
      {
        v21 = @"YES";
      }

      v39 = v20;
      v40 = 2048;
      v41 = v7;
      v42 = 2112;
      v43 = v21;
      v22 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Updating transport type from %@ to %@, route collection to %p (only route idx changed: %@)", buf, 0x2Au);
    }

    self->_transportType = a3;
    objc_storeStrong(&self->_routeCollection, a4);
    v23 = [(NSArray *)self->_sources copy];
    os_unfair_lock_unlock(&self->_lock);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v31 + 1) + 8 * i);
          if (!v16 || [*(*(&v31 + 1) + 8 * i) wantsAllRouteCollectionChanges])
          {
            [v29 setTransportType:a3 routeCollection:{v7, v31}];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v26);
    }

    v13 = [(RoutePlanningFeatureDiscoveryProvider *)self _updateCurrentModelAndNotify:0];
  }

  return v13;
}

- (RoutePlanningFeatureDiscoveryProvider)init
{
  v12.receiver = self;
  v12.super_class = RoutePlanningFeatureDiscoveryProvider;
  v2 = [(RoutePlanningFeatureDiscoveryProvider *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [[TransitPayDiscoverySource alloc] initWithPriority:0 delegate:v2];
    v13[0] = v4;
    v5 = [[DTMFeatureDiscoverySource alloc] initWithPriority:3 delegate:v3];
    v13[1] = v5;
    v6 = [[LPRRoutingFeatureDiscoverySource alloc] initWithPriority:2 delegate:v3];
    v13[2] = v6;
    v7 = [[EnvironmentalFeatureDiscoverySource alloc] initWithPriority:4 delegate:v3];
    v13[3] = v7;
    v8 = [NSArray arrayWithObjects:v13 count:4];

    v9 = [v8 sortedArrayUsingComparator:&stru_101653FE0];
    sources = v3->_sources;
    v3->_sources = v9;
  }

  return v3;
}

@end