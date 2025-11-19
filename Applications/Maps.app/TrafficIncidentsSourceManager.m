@interface TrafficIncidentsSourceManager
+ (id)sharedInstance;
- (TrafficIncidentsSourceManager)init;
- (id)_VKTrafficIncidentFeatureForIncidentReport:(id)a3;
- (id)cachedIncidentsPersonalizedItems;
- (id)cachedVKTrafficIncidentFeatureItemsForSelectedRoute:(id)a3;
- (id)observers;
- (void)_addReport:(id)a3;
- (void)_addVKTrafficIncidentFeatureItemToCache:(id)a3;
- (void)_refreshDataSource;
- (void)addObserver:(id)a3;
- (void)incidentsStorageManagerDidAddReport:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation TrafficIncidentsSourceManager

- (id)cachedIncidentsPersonalizedItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100A61470;
  v10 = sub_100A61480;
  v11 = 0;
  cachedIncidentsPersonalizedItemsLockQueue = self->_cachedIncidentsPersonalizedItemsLockQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100040600;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(cachedIncidentsPersonalizedItemsLockQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)sharedInstance
{
  if (qword_10195E2F0 != -1)
  {
    dispatch_once(&qword_10195E2F0, &stru_101632A68);
  }

  v3 = qword_10195E2E8;

  return v3;
}

- (TrafficIncidentsSourceManager)init
{
  v16.receiver = self;
  v16.super_class = TrafficIncidentsSourceManager;
  v2 = [(TrafficIncidentsSourceManager *)&v16 init];
  if (v2)
  {
    v3 = +[TrafficIncidentsStorageManager sharedInstance];
    [v3 addObserver:v2];

    v4 = objc_alloc_init(NSMutableArray);
    cachedIncidentsPersonalizedItems = v2->_cachedIncidentsPersonalizedItems;
    v2->_cachedIncidentsPersonalizedItems = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("TrafficIncidentsSourceManager.cachedIncidentsPersonalizedItemsLock", v6);
    cachedIncidentsPersonalizedItemsLockQueue = v2->_cachedIncidentsPersonalizedItemsLockQueue;
    v2->_cachedIncidentsPersonalizedItemsLockQueue = v7;

    v9 = objc_alloc_init(NSMutableArray);
    cachedVKTrafficIncidentFeatureItems = v2->_cachedVKTrafficIncidentFeatureItems;
    v2->_cachedVKTrafficIncidentFeatureItems = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("TrafficIncidentsSourceManager.cachedVKTrafficIncidentFeatureItemsLock", v11);
    cachedVKTrafficIncidentFeatureItemsLockQueue = v2->_cachedVKTrafficIncidentFeatureItemsLockQueue;
    v2->_cachedVKTrafficIncidentFeatureItemsLockQueue = v12;

    [(TrafficIncidentsSourceManager *)v2 _refreshDataSource];
    v14 = v2;
  }

  return v2;
}

- (void)_refreshDataSource
{
  v3 = +[TrafficIncidentsStorageManager sharedInstance];
  v4 = [v3 visibleReports];

  v5 = objc_alloc_init(NSMutableArray);
  cachedVKTrafficIncidentFeatureItems = self->_cachedVKTrafficIncidentFeatureItems;
  self->_cachedVKTrafficIncidentFeatureItems = v5;

  v7 = objc_alloc_init(NSMutableArray);
  cachedIncidentsPersonalizedItems = self->_cachedIncidentsPersonalizedItems;
  self->_cachedIncidentsPersonalizedItems = v7;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(TrafficIncidentsSourceManager *)self _addReport:*(*(&v16 + 1) + 8 * v13), v16];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v11);
  }

  v14 = [(TrafficIncidentsSourceManager *)self observers];
  [v14 incidentsSourceManagerDidUpdate];

  v15 = sub_100042750();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "TrafficIncidentsSourceManager did update with reports %@", buf, 0xCu);
  }
}

- (id)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___TrafficIncidentsSourceManagerObserver queue:&_dispatch_main_q];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)incidentsStorageManagerDidAddReport:(id)a3
{
  v4 = a3;
  [(TrafficIncidentsSourceManager *)self _addReport:v4];
  v5 = [(TrafficIncidentsSourceManager *)self observers];
  [v5 incidentsSourceManagerDidUpdate];

  v6 = sub_100042750();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "TrafficIncidentsSourceManager did update with report %@", &v7, 0xCu);
  }
}

- (void)_addReport:(id)a3
{
  v4 = a3;
  v5 = +[TrafficIncidentLayoutManager sharedInstance];
  if ([v5 isIncidentTypeDisplayedOnMap:{objc_msgSend(v4, "incidentType")}])
  {
    v6 = [v4 isHidden];

    if ((v6 & 1) == 0)
    {
      v7 = [[TrafficIncidentPersonalizedItem alloc] initWithIncidentReport:v4];
      cachedIncidentsPersonalizedItemsLockQueue = self->_cachedIncidentsPersonalizedItemsLockQueue;
      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_100A60F20;
      v13 = &unk_101661A90;
      v14 = self;
      v15 = v7;
      v9 = v7;
      dispatch_sync(cachedIncidentsPersonalizedItemsLockQueue, &v10);
      [(TrafficIncidentsSourceManager *)self _addVKTrafficIncidentFeatureItemToCache:v4, v10, v11, v12, v13, v14];
    }
  }

  else
  {
  }
}

- (id)_VKTrafficIncidentFeatureForIncidentReport:(id)a3
{
  v4 = a3;
  v5 = +[MKTrafficSupport VKTrafficIncidentTypeForGEOTrafficIncidentType:](MKTrafficSupport, "VKTrafficIncidentTypeForGEOTrafficIncidentType:", [v4 incidentType]);
  v6 = [v4 mapItemLocation];
  v7 = [v6 latLng];
  [v7 lat];
  v9 = v8;
  v10 = [v4 mapItemLocation];
  v11 = [v10 latLng];
  [v11 lng];
  v13 = v12;

  v14 = [VKUserReportedTrafficIncident alloc];
  v15 = [v4 uniqueID];

  v16 = [v15 UUIDString];
  v17 = [v14 initWithIncidentType:v5 uniqueIdentifier:v16 position:self->_selectedRoute onRoute:{v9, v13, 1.79769313e308}];

  return v17;
}

- (void)_addVKTrafficIncidentFeatureItemToCache:(id)a3
{
  v4 = [(TrafficIncidentsSourceManager *)self _VKTrafficIncidentFeatureForIncidentReport:a3];
  cachedVKTrafficIncidentFeatureItemsLockQueue = self->_cachedVKTrafficIncidentFeatureItemsLockQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100A610FC;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(cachedVKTrafficIncidentFeatureItemsLockQueue, v7);
}

- (id)cachedVKTrafficIncidentFeatureItemsForSelectedRoute:(id)a3
{
  v5 = a3;
  v25 = v5;
  if (v5)
  {
    v6 = v5;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_100A61470;
    v37 = sub_100A61480;
    v38 = 0;
    cachedVKTrafficIncidentFeatureItemsLockQueue = self->_cachedVKTrafficIncidentFeatureItemsLockQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A61488;
    block[3] = &unk_101661600;
    block[4] = self;
    block[5] = &v33;
    dispatch_sync(cachedVKTrafficIncidentFeatureItemsLockQueue, block);
    if (self->_selectedRoute == v6 && [v34[5] count])
    {
      v23 = v34[5];
    }

    else
    {
      objc_storeStrong(&self->_selectedRoute, a3);
      v8 = +[TrafficIncidentsStorageManager sharedInstance];
      v9 = [v8 visibleReports];
      v10 = [v9 copy];

      v11 = objc_alloc_init(NSMutableArray);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v39 count:16];
      if (v13)
      {
        v14 = *v29;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v28 + 1) + 8 * i);
            v17 = +[TrafficIncidentLayoutManager sharedInstance];
            v18 = [v17 isIncidentTypeDisplayedOnMap:{objc_msgSend(v16, "incidentType")}];

            if (v18)
            {
              v19 = [(TrafficIncidentsSourceManager *)self _VKTrafficIncidentFeatureForIncidentReport:v16];
              if (v19)
              {
                [v11 addObject:v19];
              }
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v28 objects:v39 count:16];
        }

        while (v13);
      }

      v20 = self->_cachedVKTrafficIncidentFeatureItemsLockQueue;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100A614D4;
      v26[3] = &unk_101661A90;
      v26[4] = self;
      v21 = v11;
      v27 = v21;
      dispatch_sync(v20, v26);
      v22 = v27;
      v23 = v21;
    }

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v23 = &__NSArray0__struct;
  }

  return v23;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(TrafficIncidentsSourceManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(TrafficIncidentsSourceManager *)self observers];
  [v5 registerObserver:v4];
}

@end