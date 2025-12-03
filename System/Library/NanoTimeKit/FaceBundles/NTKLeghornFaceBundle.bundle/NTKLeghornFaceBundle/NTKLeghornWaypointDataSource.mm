@interface NTKLeghornWaypointDataSource
+ (id)sharedInstance;
- (NSArray)waypoints;
- (NTKLeghornWaypointDataSource)init;
- (id)_allWaypoints;
- (void)_restartUpdates;
- (void)_setAllWaypoints:(id)waypoints;
- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion;
- (void)start;
- (void)stop;
- (void)storeDidChangeWithCategories:(unint64_t)categories;
@end

@implementation NTKLeghornWaypointDataSource

- (NTKLeghornWaypointDataSource)init
{
  v23.receiver = self;
  v23.super_class = NTKLeghornWaypointDataSource;
  v2 = [(NTKLeghornWaypointDataSource *)&v23 init];
  if (v2)
  {
    v3 = objc_opt_new();
    compassWaypointManager = v2->_compassWaypointManager;
    v2->_compassWaypointManager = v3;

    v7 = objc_msgSend_sharedManager(NTKMapsSyncManager, v5, v6);
    mapsSyncManager = v2->_mapsSyncManager;
    v2->_mapsSyncManager = v7;

    v9 = objc_opt_new();
    coreRoutineManager = v2->_coreRoutineManager;
    v2->_coreRoutineManager = v9;

    v13 = objc_msgSend_sharedManager(NTKMapsSearchManager, v11, v12);
    mapsSearchManager = v2->_mapsSearchManager;
    v2->_mapsSearchManager = v13;

    allWaypoints = v2->_allWaypoints;
    v2->_allWaypoints = 0;

    v18 = objc_msgSend_invalidQuery(NTKLeghornWaypointQuery, v16, v17);
    currentQuery = v2->_currentQuery;
    v2->_currentQuery = v18;

    v20 = dispatch_get_global_queue(2, 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v20;
  }

  return v2;
}

+ (id)sharedInstance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DF030);
  if (!WeakRetained)
  {
    WeakRetained = objc_opt_new();
    objc_storeWeak(&qword_27E1DF030, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (void)_restartUpdates
{
  objc_msgSend_stop(self, a2, v2);
  objc_msgSend_startUpdatingDelegate_(self->_compassWaypointManager, v4, v5, self);
  objc_msgSend_startUpdatingDelegate_(self->_mapsSyncManager, v6, v7, self);
  objc_msgSend_startUpdatingDelegate_(self->_coreRoutineManager, v8, v9, self);
  mapsSearchManager = self->_mapsSearchManager;

  objc_msgSend_startUpdatingDelegate_(mapsSearchManager, v10, v11, self);
}

- (void)stop
{
  v11.receiver = self;
  v11.super_class = NTKLeghornWaypointDataSource;
  [(NTKFoghornDataSource *)&v11 stop];
  objc_msgSend_stopUpdating(self->_compassWaypointManager, v3, v4);
  objc_msgSend_stopUpdating(self->_mapsSyncManager, v5, v6);
  objc_msgSend_stopUpdating(self->_coreRoutineManager, v7, v8);
  objc_msgSend_stopUpdating(self->_mapsSearchManager, v9, v10);
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = NTKLeghornWaypointDataSource;
  [(NTKFoghornDataSource *)&v5 start];
  objc_msgSend__restartUpdates(self, v3, v4);
}

- (id)_allWaypoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_allWaypoints;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setAllWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  obj = self;
  objc_sync_enter(obj);
  allWaypoints = obj->_allWaypoints;
  obj->_allWaypoints = waypointsCopy;

  objc_sync_exit(obj);
}

- (void)storeDidChangeWithCategories:(unint64_t)categories
{
  v15 = *MEMORY[0x277D85DE8];
  if (categories)
  {
    v5 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NTKLeghornWaypointCategoryString(categories, v6, v7);
      v11 = 136315394;
      v12 = "[NTKLeghornWaypointDataSource storeDidChangeWithCategories:]";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_23BEB1000, v5, OS_LOG_TYPE_DEFAULT, "%s: updating categories = %@", &v11, 0x16u);
    }

    objc_msgSend__setAllWaypoints_(self, v9, v10, 0);
  }
}

- (NSArray)waypoints
{
  v5 = objc_msgSend__allWaypoints(self, a2, v2);
  if (!v5)
  {
    v7 = objc_msgSend_waypoints(self->_compassWaypointManager, v4, v6);
    v10 = v7;
    if (v7)
    {
      v11 = v7;
    }

    v12 = objc_msgSend_waypoints(self->_coreRoutineManager, v8, v9);
    v15 = v12;
    v5 = v10;
    if (v12)
    {
      if (v10)
      {
        v5 = objc_msgSend_arrayByAddingObjectsFromArray_(v10, v13, v14, v12);
      }

      else
      {
        v5 = v12;
      }
    }

    v16 = objc_msgSend_waypoints(self->_mapsSyncManager, v13, v14);
    v19 = v16;
    if (v16)
    {
      if (v5)
      {
        v20 = objc_msgSend_arrayByAddingObjectsFromArray_(v5, v17, v18, v16);

        v5 = v20;
      }

      else
      {
        v5 = v16;
      }
    }

    v21 = objc_msgSend_waypoints(self->_mapsSearchManager, v17, v18);
    v24 = v21;
    if (v21)
    {
      if (v5)
      {
        v25 = objc_msgSend_arrayByAddingObjectsFromArray_(v5, v22, v23, v21);

        v5 = v25;
        objc_msgSend__setAllWaypoints_(self, v26, v27, v25);
LABEL_17:

        goto LABEL_18;
      }

      v5 = v21;
    }

    objc_msgSend__setAllWaypoints_(self, v22, v23, v5);
    goto LABEL_17;
  }

LABEL_18:

  return v5;
}

- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  filterCopy = filter;
  completionCopy = completion;
  v13 = self->_currentQuery;
  objc_msgSend_coordinate(locationCopy, v14, v15);
  v18 = objc_msgSend_queryWithCenterCoordinate_radius_poiFilter_(NTKLeghornWaypointQuery, v16, v17, filterCopy);
  if (objc_msgSend_matchesQuery_(v13, v19, v20, v18))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    goto LABEL_22;
  }

  v21 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_msgSend_includedCategories(filterCopy, v22, v23);
    v27 = NTKLeghornWaypointCategoryString(v24, v25, v26);
    *buf = 136315650;
    v55 = "[NTKLeghornWaypointDataSource setQueryCenterLocation:radius:poiFilter:completion:]";
    v56 = 2048;
    radiusCopy = radius;
    v58 = 2112;
    v59 = v27;
    _os_log_impl(&dword_23BEB1000, v21, OS_LOG_TYPE_DEFAULT, "%s: new query for radius = %fm, categories = %@", buf, 0x20u);
  }

  objc_storeStrong(&self->_currentQuery, v18);
  if (!completionCopy)
  {
    v29 = 0;
    goto LABEL_10;
  }

  v28 = dispatch_group_create();
  v29 = v28;
  if (!v28)
  {
LABEL_10:
    v30 = 1;
    goto LABEL_11;
  }

  dispatch_group_enter(v28);
  v30 = 0;
LABEL_11:
  compassWaypointManager = self->_compassWaypointManager;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_23BEBD300;
  v52[3] = &unk_278BA0F08;
  v32 = v29;
  v53 = v32;
  objc_msgSend_setQueryCenterLocation_radius_poiFilter_completion_(compassWaypointManager, v33, radius, locationCopy, filterCopy, v52);
  if ((v30 & 1) == 0)
  {
    dispatch_group_enter(v32);
  }

  coreRoutineManager = self->_coreRoutineManager;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_23BEBD310;
  v50[3] = &unk_278BA0F08;
  v35 = v32;
  v51 = v35;
  objc_msgSend_setQueryCenterLocation_radius_poiFilter_completion_(coreRoutineManager, v36, radius, locationCopy, filterCopy, v50);
  if ((v30 & 1) == 0)
  {
    dispatch_group_enter(v35);
  }

  mapsSyncManager = self->_mapsSyncManager;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_23BEBD320;
  v48[3] = &unk_278BA0F08;
  v38 = v35;
  v49 = v38;
  objc_msgSend_setQueryCenterLocation_radius_poiFilter_completion_(mapsSyncManager, v39, radius, locationCopy, filterCopy, v48);
  if ((v30 & 1) == 0)
  {
    dispatch_group_enter(v38);
  }

  mapsSearchManager = self->_mapsSearchManager;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_23BEBD330;
  v46[3] = &unk_278BA0F08;
  v41 = v38;
  v47 = v41;
  objc_msgSend_setQueryCenterLocation_radius_poiFilter_completion_(mapsSearchManager, v42, radius, locationCopy, filterCopy, v46);
  if (v30)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BEBD340;
    block[3] = &unk_278BA0F30;
    v45 = completionCopy;
    dispatch_group_notify(v41, workQueue, block);
  }

LABEL_22:
}

@end