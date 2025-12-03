@interface NTKCoreRoutineManager
+ (id)_filteredWaypointForVehicleEvents:(id)events withQuery:(id)query;
- (NSArray)waypoints;
- (NTKCoreRoutineManager)init;
- (void)_monitorParkedCarEvents;
- (void)_startMonitoringVehicleEvents;
- (void)_stopMonitoringVehicleEvents;
- (void)_updateParkedCarWaypointWith:(id)with withError:(id)error;
- (void)dealloc;
- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion;
- (void)startUpdatingDelegate:(id)delegate;
- (void)stopUpdating;
@end

@implementation NTKCoreRoutineManager

- (NTKCoreRoutineManager)init
{
  v12.receiver = self;
  v12.super_class = NTKCoreRoutineManager;
  v2 = [(NTKCoreRoutineManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D01280]);
    routineManager = v2->_routineManager;
    v2->_routineManager = v3;

    vehicleEvents = v2->_vehicleEvents;
    v2->_vehicleEvents = 0;

    filteredWaypoints = v2->_filteredWaypoints;
    v2->_filteredWaypoints = 0;

    v9 = objc_msgSend_invalidQuery(NTKLeghornWaypointQuery, v7, v8);
    currentQuery = v2->_currentQuery;
    v2->_currentQuery = v9;
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend__stopMonitoringVehicleEvents(self, a2, v2);
  routineManager = self->_routineManager;
  self->_routineManager = 0;

  v5.receiver = self;
  v5.super_class = NTKCoreRoutineManager;
  [(NTKCoreRoutineManager *)&v5 dealloc];
}

- (void)startUpdatingDelegate:(id)delegate
{
  objc_storeStrong(&self->_delegate, delegate);

  MEMORY[0x2821F9670](v3);
}

- (void)stopUpdating
{
  objc_msgSend__stopMonitoringVehicleEvents(self, a2, v2);
  delegate = self->_delegate;
  self->_delegate = 0;
}

- (void)_updateParkedCarWaypointWith:(id)with withError:(id)error
{
  withCopy = with;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE6E14();
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!withCopy || !objc_msgSend_count(withCopy, v8, v10))
  {
    v11 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE6EA0();
    }

    goto LABEL_10;
  }

  objc_storeStrong(&self->_vehicleEvents, with);
  filteredWaypoints = self->_filteredWaypoints;
  self->_filteredWaypoints = 0;

  delegate = self->_delegate;
  if (delegate)
  {
    objc_msgSend_storeDidChangeWithCategories_(delegate, v13, v14, 32);
  }

LABEL_11:
}

- (void)_monitorParkedCarEvents
{
  objc_initWeak(&location, self);
  routineManager = self->_routineManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23BEC3B18;
  v11[3] = &unk_278BA1188;
  objc_copyWeak(&v12, &location);
  objc_msgSend_fetchLastVehicleEventsWithHandler_(routineManager, v4, v5, v11);
  v6 = self->_routineManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BEC3C00;
  v9[3] = &unk_278BA1188;
  objc_copyWeak(&v10, &location);
  objc_msgSend_startMonitoringVehicleEventsWithHandler_(v6, v7, v8, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_startMonitoringVehicleEvents
{
  if (!self->_monitoringParkedCarEvents)
  {
    self->_monitoringParkedCarEvents = 1;
    (MEMORY[0x2821F9670])();
  }
}

- (void)_stopMonitoringVehicleEvents
{
  if (self->_monitoringParkedCarEvents)
  {
    objc_msgSend_stopMonitoringVehicleEvents(self->_routineManager, a2, v2);
    self->_monitoringParkedCarEvents = 0;
  }
}

+ (id)_filteredWaypointForVehicleEvents:(id)events withQuery:(id)query
{
  v62 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  queryCopy = query;
  v7 = objc_opt_new();
  v10 = objc_msgSend_poiFilter(queryCopy, v8, v9);
  v13 = objc_msgSend_includesCategory_(v10, v11, v12, 32);

  if (v13)
  {
    objc_msgSend_radius(queryCopy, v14, v15);
    if (v17 <= 0.0)
    {
      v19 = *MEMORY[0x277CE4278];
      v21 = *(MEMORY[0x277CE4278] + 8);
    }

    else
    {
      objc_msgSend_centerCoordinate(queryCopy, v16, v17);
      v19 = v18;
      v21 = v20;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v22 = eventsCopy;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, v24, &v57, v61, 16);
    if (v25)
    {
      v26 = v25;
      v27 = *v58;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v58 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v57 + 1) + 8 * i);
          v64.latitude = v19;
          v64.longitude = v21;
          if (CLLocationCoordinate2DIsValid(v64))
          {
            v32 = objc_msgSend_location(v29, v30, v31, v57);
            objc_msgSend_latitude(v32, v33, v34);
            v36 = v35;

            v39 = objc_msgSend_location(v29, v37, v38);
            objc_msgSend_longitude(v39, v40, v41);
            v43 = v42;

            v44 = CLLocationCoordinate2DMake(v36, v43);
            v45 = ntk_CLLocationCoordinate2DDistanceToCoordinate(v19, v21, v44.latitude, v44.longitude);
            objc_msgSend_radius(queryCopy, v46, v45);
            if (v45 > v48)
            {
              continue;
            }
          }

          v49 = [_VehiclePOI alloc];
          v52 = objc_msgSend_initWithRTVehicleEvent_(v49, v50, v51, v29);
          objc_msgSend_addObject_(v7, v53, v54, v52);
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v47, v48, &v57, v61, 16);
      }

      while (v26);
    }
  }

  v55 = objc_msgSend_copy(v7, v14, v15, v57);

  return v55;
}

- (NSArray)waypoints
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = self->_filteredWaypoints;
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self->_vehicleEvents;
    if (v5)
    {
      v6 = objc_opt_class();
      v9 = objc_msgSend__filteredWaypointForVehicleEvents_withQuery_(v6, v7, v8, v5, self->_currentQuery);
      v12 = objc_msgSend_firstObject(v9, v10, v11);
      if (v12)
      {
        v15 = v12;
        v20[0] = v12;
        v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v14, v20, 1);

        if (v16)
        {
          v17 = v16;
          v3 = v17;
LABEL_8:
          filteredWaypoints = self->_filteredWaypoints;
          self->_filteredWaypoints = v17;

          objc_autoreleasePoolPop(v4);
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v3 = 0;
    v17 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

LABEL_9:

  return v3;
}

- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion
{
  completionCopy = completion;
  locationCopy = location;
  v13 = objc_msgSend_copyIncludingCategories_(filter, v11, v12, 32);
  v14 = self->_currentQuery;
  objc_msgSend_coordinate(locationCopy, v15, v16);
  v18 = v17;
  v20 = v19;

  v22 = objc_msgSend_queryWithCenterCoordinate_radius_poiFilter_(NTKLeghornWaypointQuery, v21, v18, v13, v20, radius);
  if ((objc_msgSend_matchesQuery_(v14, v23, v24, v22) & 1) == 0)
  {
    objc_storeStrong(&self->_currentQuery, v22);
    filteredWaypoints = self->_filteredWaypoints;
    self->_filteredWaypoints = 0;
  }

  if (completionCopy)
  {
    v28 = objc_msgSend_waypoints(self, v25, v26);
    completionCopy[2](completionCopy, self->_filteredWaypoints != 0);
  }
}

@end