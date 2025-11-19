@interface NCWaypointManager
+ (id)sharedAppManager;
+ (id)sharedCompassToolManager;
+ (id)sharedComplicationManager;
- (BOOL)_allowWriteAccess;
- (BOOL)_commitToCoreData;
- (BOOL)_useCloudKitContainer;
- (BOOL)addWaypoints:(id)a3;
- (BOOL)saveElevationForDatabaseWaypoints:(id)a3;
- (BOOL)updateWaypoints:(id)a3;
- (NCWaypointManager)initWithSupportsParkedCarWaypoint:(BOOL)a3;
- (NSArray)cellularWaypoints;
- (NSManagedObjectContext)viewContext;
- (NSPersistentContainer)persistentContainer;
- (id)_appBundle;
- (id)_convertToNCWaypointList:(id)a3;
- (id)_coreDataWaypointWithUUID:(id)a3;
- (id)_excludingDisabledWaypoints:(id)a3;
- (id)_fetchCompassWaypointsFromCoreDataIncludingDisabled:(BOOL)a3;
- (id)_fetchCompassWaypointsIncludingDisabled:(BOOL)a3;
- (id)_fetchItemsWithRequest:(id)a3;
- (id)addWaypointAtLocation:(id)a3 withAltitude:(id)a4 withLabel:(id)a5 withColor:(id)a6 withSymbol:(id)a7 withType:(int64_t)a8 isEnabled:(BOOL)a9;
- (id)fetchCompassWaypointsWithAltitude:(BOOL)a3;
- (id)fetchDatabaseWaypoints;
- (id)fetchDatabaseWaypointsWithElevation;
- (id)fetchTargetedWaypoint;
- (id)fetchWaypointsWithType:(int64_t)a3;
- (id)waypointWithUUID:(id)a3;
- (int64_t)_fetchCountItemsWithRequest:(id)a3;
- (int64_t)numWaypointsInElevationTableOfType:(int64_t)a3;
- (int64_t)numWaypointsMissingElevationOfType:(int64_t)a3;
- (unint64_t)waypointCountContainingKeyword:(id)a3;
- (void)_deleteWaypointInViewContext:(id)a3;
- (void)_deleteWaypointInViewContextByUUID:(id)a3;
- (void)_fetchOrCreateParkedCarWaypoint;
- (void)_logSystemWaypointsAnalytics;
- (void)_printWaypointList:(id)a3;
- (void)_publishCellularWaypointsUpdate;
- (void)_saveWaypoint:(id)a3;
- (void)_submitSystemWaypointsAnalytics:(unint64_t)a3;
- (void)_updateWaypointInViewContext:(id)a3;
- (void)deleteAllWaypoints;
- (void)deleteWaypoint:(id)a3;
- (void)deleteWaypointsByUUIDs:(id)a3;
- (void)resetCompassWaypointsInDemoMode;
- (void)setClosestDataWaypoint:(id)a3;
- (void)setClosestSOSWaypoint:(id)a3;
- (void)setRecentDataWaypoint:(id)a3;
- (void)setRecentSOSWaypoint:(id)a3;
- (void)updateParkedCarWaypointWithLocation:(id)a3 withAltitude:(id)a4;
- (void)updateWaypoint:(id)a3;
- (void)updateWaypointWithUUID:(id)a3 withLocation:(id)a4 withAltitude:(id)a5;
@end

@implementation NCWaypointManager

+ (id)sharedAppManager
{
  if (qword_27E1C5148 != -1)
  {
    sub_23BD66490();
  }

  v3 = qword_27E1C5140;

  return v3;
}

+ (id)sharedComplicationManager
{
  if (qword_27E1C5158 != -1)
  {
    sub_23BD664A4();
  }

  v3 = qword_27E1C5150;

  return v3;
}

+ (id)sharedCompassToolManager
{
  if (qword_27E1C5168 != -1)
  {
    sub_23BD664B8();
  }

  v3 = qword_27E1C5160;

  return v3;
}

- (NCWaypointManager)initWithSupportsParkedCarWaypoint:(BOOL)a3
{
  v3 = a3;
  v20.receiver = self;
  v20.super_class = NCWaypointManager;
  v4 = [(NCWaypointManager *)&v20 init];
  if (v4)
  {
    v5 = MEMORY[0x277CCA8D8];
    v6 = objc_opt_class();
    v9 = objc_msgSend_bundleForClass_(v5, v7, v6, v8);
    bundle = v4->_bundle;
    v4->_bundle = v9;

    v14 = objc_msgSend_bundleIdentifier(v4->_bundle, v11, v12, v13);
    bundleIdentifier = v4->_bundleIdentifier;
    v4->_bundleIdentifier = v14;

    v4->_lastCellularWaypointCount = -1;
    if (v3)
    {
      objc_msgSend__fetchOrCreateParkedCarWaypoint(v4, v16, v17, v18);
    }
  }

  return v4;
}

- (void)_fetchOrCreateParkedCarWaypoint
{
  v40 = *MEMORY[0x277D85DE8];
  if (!self->_parkedCarWaypoint)
  {
    v3 = objc_alloc(MEMORY[0x277CBEBD0]);
    v6 = objc_msgSend_initWithSuiteName_(v3, v4, @"com.apple.compass", v5);
    objc_msgSend_synchronize(v6, v7, v8, v9);
    v15 = objc_msgSend_objectForKey_(v6, v10, @"ParkedCarWaypointUUID", v11);
    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x277CCAD78]);
      v19 = objc_msgSend_initWithUUIDString_(v16, v17, v15, v18);
      objc_msgSend_parkedCarWaypointWithUUID_(NCWaypoint, v20, v19, v21);
    }

    else
    {
      v19 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v12, v13, v14);
      v25 = objc_msgSend_UUIDString(v19, v22, v23, v24);
      objc_msgSend_setObject_forKey_(v6, v26, v25, @"ParkedCarWaypointUUID");

      v27 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_msgSend_UUIDString(v19, v28, v29, v30);
        v36 = 136315394;
        v37 = "[NCWaypointManager _fetchOrCreateParkedCarWaypoint]";
        v38 = 2112;
        v39 = v31;
        _os_log_impl(&dword_23BD26000, v27, OS_LOG_TYPE_DEFAULT, "%s: created ParkedCarWaypoint with uuid %@ and saved to defaults.", &v36, 0x16u);
      }

      objc_msgSend_parkedCarWaypointWithUUID_(NCWaypoint, v32, v19, v33);
    }
    v34 = ;
    parkedCarWaypoint = self->_parkedCarWaypoint;
    self->_parkedCarWaypoint = v34;
  }
}

- (void)updateParkedCarWaypointWithLocation:(id)a3 withAltitude:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_parkedCarWaypoint(self, v8, v9, v10);

  if (!v11)
  {
    objc_msgSend__fetchOrCreateParkedCarWaypoint(self, v12, v13, v14);
  }

  v15 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 136315138;
    v50 = "[NCWaypointManager updateParkedCarWaypointWithLocation:withAltitude:]";
    _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_DEFAULT, "%s: Updating parked car waypoint. Posting ParkedCarWaypointChangedNotification.", &v49, 0xCu);
  }

  objc_msgSend_setLocation_(self->_parkedCarWaypoint, v16, v7, v17);
  objc_msgSend__postParkedCarWaypointChangedNotification(self, v18, v19, v20);
  if (!v7)
  {
    v25 = objc_msgSend_sharedManager(NCTargetedWaypointManager, v21, v22, v23);
    v29 = objc_msgSend_targetedWaypointUUID(v25, v26, v27, v28);

    if (v29)
    {
      v33 = objc_msgSend_uuid(self->_parkedCarWaypoint, v30, v31, v32);
      isEqual = objc_msgSend_isEqual_(v29, v34, v33, v35);

      if (isEqual)
      {
        v37 = NCLogForCategory(7uLL);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v49 = 136315138;
          v50 = "[NCWaypointManager updateParkedCarWaypointWithLocation:withAltitude:]";
          _os_log_impl(&dword_23BD26000, v37, OS_LOG_TYPE_DEFAULT, "%s: Clearing Targeted Waypoint because it was set to Parked Car and Parked Car location is now nil.", &v49, 0xCu);
        }

        v41 = objc_msgSend_sharedManager(NCTargetedWaypointManager, v38, v39, v40);
        objc_msgSend_setTargetedWaypointUUID_(v41, v42, 0, v43);
      }
    }

    if (v6)
    {
      goto LABEL_7;
    }

LABEL_14:
    v24 = 0.0;
    goto LABEL_15;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  objc_msgSend_doubleValue(v6, v21, v22, v23);
LABEL_15:
  objc_msgSend_setAltitude_(self->_parkedCarWaypoint, v21, v22, v23, v24);
  objc_msgSend_setAltitudePopulated_(self->_parkedCarWaypoint, v44, v6 != 0, v45);
  objc_msgSend__logSystemWaypointsAnalytics(self, v46, v47, v48);
}

- (id)fetchTargetedWaypoint
{
  v5 = objc_msgSend_sharedManager(NCTargetedWaypointManager, a2, v2, v3);
  v9 = objc_msgSend_fetchTargetedWaypointUUID(v5, v6, v7, v8);
  v13 = objc_msgSend_UUIDString(v9, v10, v11, v12);

  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = objc_alloc(MEMORY[0x277CCAD78]);
  v17 = objc_msgSend_initWithUUIDString_(v14, v15, v13, v16);
  v20 = objc_msgSend_waypointWithUUID_(self, v18, v17, v19);

  if (v20)
  {
    goto LABEL_6;
  }

  v24 = objc_msgSend_parkedCarWaypoint(self, v21, v22, v23);
  v28 = objc_msgSend_uuid(v24, v25, v26, v27);
  v32 = objc_msgSend_UUIDString(v28, v29, v30, v31);
  isEqualToString = objc_msgSend_isEqualToString_(v32, v33, v13, v34);

  if (isEqualToString)
  {
    v20 = objc_msgSend_parkedCarWaypoint(self, v36, v37, v38);
  }

  else
  {
LABEL_5:
    v20 = 0;
  }

LABEL_6:

  return v20;
}

- (id)fetchCompassWaypointsWithAltitude:(BOOL)a3
{
  v5 = objc_msgSend_fetchRequestForCompassWaypointsWithAltitude_(NCWaypointFetchRequests, a2, a3, v3);
  v8 = objc_msgSend__fetchItemsWithRequest_(self, v6, v5, v7);
  v11 = objc_msgSend__convertToNCWaypointList_(self, v9, v8, v10);

  return v11;
}

- (id)fetchWaypointsWithType:(int64_t)a3
{
  v5 = objc_msgSend_fetchRequestForCountOfWaypointsInElevationTableOfType_(NCWaypointFetchRequests, a2, a3, v3);
  v8 = objc_msgSend__fetchItemsWithRequest_(self, v6, v5, v7);
  v11 = objc_msgSend__convertToNCWaypointList_(self, v9, v8, v10);

  return v11;
}

- (unint64_t)waypointCountContainingKeyword:(id)a3
{
  v5 = objc_msgSend_fetchRequestForWaypointContainingKeyword_(NCWaypointFetchRequests, a2, a3, v3);
  v8 = objc_msgSend__fetchItemsWithRequest_(self, v6, v5, v7);
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_count(v8, v9, v10, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)deleteWaypoint:(id)a3
{
  objc_msgSend__deleteWaypointInViewContext_(self, a2, a3, v3);
  objc_msgSend__commitToCoreData(self, v5, v6, v7);

  objc_msgSend__postWaypointListChangedNotification(self, v8, v9, v10);
}

- (void)deleteWaypointsByUUIDs:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend__deleteWaypointInViewContextByUUID_(self, v11, *(*(&v22 + 1) + 8 * v15++), v12, v22);
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
      }

      while (v13);
    }

    objc_msgSend__commitToCoreData(self, v16, v17, v18);
    objc_msgSend__postWaypointListChangedNotification(self, v19, v20, v21);
  }
}

- (void)_deleteWaypointInViewContextByUUID:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_viewContext(self, v5, v6, v7);

  if (v8)
  {
    v14 = objc_msgSend__coreDataWaypointWithUUID_(self, v9, v4, v10);
    if (v14)
    {
      v15 = objc_msgSend_viewContext(self, v11, v12, v13);
      objc_msgSend_deleteObject_(v15, v16, v14, v17);

      v21 = objc_msgSend_sharedManager(NCTargetedWaypointManager, v18, v19, v20);
      v25 = objc_msgSend_targetedWaypointUUID(v21, v22, v23, v24);

      if (v25 && objc_msgSend_isEqual_(v4, v26, v25, v27))
      {
        v31 = objc_msgSend_sharedManager(NCTargetedWaypointManager, v28, v29, v30);
        objc_msgSend_setTargetedWaypointUUID_(v31, v32, 0, v33);
      }
    }

    else
    {
      v25 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_23BD664CC();
      }
    }
  }

  else
  {
    v14 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_23BD6654C();
    }
  }
}

- (void)_deleteWaypointInViewContext:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_label(v4, v6, v7, v8);
    v13 = objc_msgSend_uuid(v4, v10, v11, v12);
    v17 = objc_msgSend_UUIDString(v13, v14, v15, v16);
    v24 = 138412546;
    v25 = v9;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "Delete waypoint %@ with uuid %{public}@.", &v24, 0x16u);
  }

  v21 = objc_msgSend_uuid(v4, v18, v19, v20);
  objc_msgSend__deleteWaypointInViewContextByUUID_(self, v22, v21, v23);
}

- (void)deleteAllWaypoints
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "Delete all waypoints in the database", buf, 2u);
  }

  v7 = objc_msgSend_viewContext(self, v4, v5, v6);

  if (v7)
  {
    v11 = objc_msgSend_fetchRequestForAllWaypoints(NCWaypointFetchRequests, v8, v9, v10);
    v14 = objc_msgSend__fetchItemsWithRequest_(self, v12, v11, v13);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v36, v41, 16);
    if (v16)
    {
      v20 = v16;
      v21 = *v37;
      do
      {
        v22 = 0;
        do
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v23 = *(*(&v36 + 1) + 8 * v22);
          v24 = objc_msgSend_viewContext(self, v17, v18, v19);
          objc_msgSend_deleteObject_(v24, v25, v23, v26);

          ++v22;
        }

        while (v20 != v22);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v36, v41, 16);
      }

      while (v20);
    }

    objc_msgSend__commitToCoreData(self, v17, v18, v19);
    v30 = objc_msgSend_sharedManager(NCTargetedWaypointManager, v27, v28, v29);
    objc_msgSend_setTargetedWaypointUUID_(v30, v31, 0, v32);

    objc_msgSend__postWaypointListChangedNotification(self, v33, v34, v35);
  }

  else
  {
    v11 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_23BD665CC();
    }
  }
}

- (id)addWaypointAtLocation:(id)a3 withAltitude:(id)a4 withLabel:(id)a5 withColor:(id)a6 withSymbol:(id)a7 withType:(int64_t)a8 isEnabled:(BOOL)a9
{
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [NCWaypoint alloc];
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v20, v21, v17, v16, v15, a8, v19, v18, a9);

  objc_msgSend__saveWaypoint_(self, v23, isEnabled, v24);
  objc_msgSend__commitToCoreData(self, v25, v26, v27);
  objc_msgSend__postWaypointListChangedNotification(self, v28, v29, v30);

  return isEnabled;
}

- (BOOL)addWaypoints:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v28, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend__saveWaypoint_(self, v11, *(*(&v24 + 1) + 8 * i), v12, v24);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v24, v28, 16);
      }

      while (v13);
    }

    if (!objc_msgSend__commitToCoreData(self, v16, v17, v18))
    {
      v22 = 0;
      goto LABEL_13;
    }

    objc_msgSend__postWaypointListChangedNotification(self, v19, v20, v21);
  }

  v22 = 1;
LABEL_13:

  return v22;
}

- (void)updateWaypoint:(id)a3
{
  objc_msgSend__updateWaypointInViewContext_(self, a2, a3, v3);
  objc_msgSend__commitToCoreData(self, v5, v6, v7);

  objc_msgSend__postWaypointListChangedNotification(self, v8, v9, v10);
}

- (BOOL)updateWaypoints:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v28, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend__updateWaypointInViewContext_(self, v11, *(*(&v24 + 1) + 8 * i), v12, v24);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v24, v28, 16);
      }

      while (v13);
    }

    if (!objc_msgSend__commitToCoreData(self, v16, v17, v18))
    {
      v22 = 0;
      goto LABEL_13;
    }

    objc_msgSend__postWaypointListChangedNotification(self, v19, v20, v21);
  }

  v22 = 1;
LABEL_13:

  return v22;
}

- (void)_updateWaypointInViewContext:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_uuid(v4, v5, v6, v7);
  v11 = objc_msgSend__coreDataWaypointWithUUID_(self, v9, v8, v10);

  if (v11)
  {
    v15 = objc_msgSend_label(v4, v12, v13, v14);
    objc_msgSend_setLabel_(v11, v16, v15, v17);

    v21 = objc_msgSend_labelColor(v4, v18, v19, v20);
    objc_msgSend_setLabelColor_(v11, v22, v21, v23);

    isEnabled = objc_msgSend_isEnabled(v4, v24, v25, v26);
    objc_msgSend_setEnabled_(v11, v28, isEnabled, v29);
    v33 = objc_msgSend_symbol(v4, v30, v31, v32);
    objc_msgSend_setSymbol_(v11, v34, v33, v35);

    v39 = objc_msgSend_timestampOfCreation(v4, v36, v37, v38);
    objc_msgSend_setTimeOfCreation_(v11, v40, v39, v41);

    v45 = objc_msgSend_location(v4, v42, v43, v44);
    objc_msgSend_setCoreLocation_(v11, v46, v45, v47);

    objc_msgSend_altitude(v4, v48, v49, v50);
    objc_msgSend_setAltitude_(v11, v51, v52, v53);
    isAltitudePopulated = objc_msgSend_isAltitudePopulated(v4, v54, v55, v56);
    objc_msgSend_setAltitudePopulated_(v11, v58, isAltitudePopulated, v59);
    v63 = objc_msgSend_type(v4, v60, v61, v62);
    objc_msgSend_setType_(v11, v64, v63, v65);
  }

  else
  {
    v66 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      sub_23BD6664C(v4, v66, v67, v68);
    }
  }
}

- (void)updateWaypointWithUUID:(id)a3 withLocation:(id)a4 withAltitude:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend__coreDataWaypointWithUUID_(self, v11, v8, v12);
  v16 = v13;
  if (v13)
  {
    objc_msgSend_setCoreLocation_(v13, v14, v9, v15);
    if (v10)
    {
      objc_msgSend_doubleValue(v10, v17, v18, v19);
    }

    else
    {
      v20 = 0.0;
    }

    objc_msgSend_setAltitude_(v16, v17, v18, v19, v20);
    objc_msgSend_setAltitudePopulated_(v16, v22, v10 != 0, v23);
    objc_msgSend__commitToCoreData(self, v24, v25, v26);
    objc_msgSend__postWaypointListChangedNotification(self, v27, v28, v29);
  }

  else
  {
    v21 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_23BD666E8();
    }
  }
}

- (id)waypointWithUUID:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_23BD42190;
  v21 = sub_23BD421A0;
  v22 = 0;
  v8 = objc_msgSend_fetchCompassWaypoints(self, v5, v6, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23BD421A8;
  v14[3] = &unk_278B945F8;
  v9 = v4;
  v15 = v9;
  v16 = &v17;
  objc_msgSend_enumerateObjectsUsingBlock_(v8, v10, v14, v11);

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (BOOL)saveElevationForDatabaseWaypoints:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v60 = v4;
    obj = v4;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v63, v73, 16);
    if (v9)
    {
      v13 = v9;
      v14 = *v64;
      v15 = 0x277CCA000uLL;
      v16 = 0x278B93000uLL;
      v61 = *v64;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v64 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v63 + 1) + 8 * i);
          v19 = *(v15 + 2992);
          objc_msgSend_altitude(v18, v10, v11, v12);
          v23 = objc_msgSend_numberWithDouble_(v19, v20, v21, v22);
          v24 = *(v16 + 2544);
          v28 = objc_msgSend_uuid(v18, v25, v26, v27);
          v30 = objc_msgSend_databaseWaypointInDbWithUUID_altitude_(v24, v29, v28, v23);

          v31 = NCLogForCategory(7uLL);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v35 = objc_msgSend_uuid(v18, v32, v33, v34);
            objc_msgSend_UUIDString(v35, v36, v37, v38);
            v40 = v39 = self;
            objc_msgSend_label(v18, v41, v42, v43);
            v45 = v44 = v13;
            objc_msgSend_altitude(v18, v46, v47, v48);
            *buf = 138412802;
            v68 = v40;
            v69 = 2112;
            v70 = v45;
            v71 = 2048;
            v72 = v49;
            _os_log_impl(&dword_23BD26000, v31, OS_LOG_TYPE_DEFAULT, "Saving elevation for waypoint %@, %@, %f", buf, 0x20u);

            v13 = v44;
            self = v39;
            v15 = 0x277CCA000;
            v16 = 0x278B93000;

            v14 = v61;
          }

          objc_msgSend__saveWaypoint_(self, v50, v30, v51);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v63, v73, 16);
      }

      while (v13);
    }

    v55 = objc_msgSend__commitToCoreData(self, v52, v53, v54);
    objc_msgSend__postWaypointListChangedNotification(self, v56, v57, v58);
    v4 = v60;
  }

  else
  {
    v55 = 1;
  }

  return v55;
}

- (id)fetchDatabaseWaypointsWithElevation
{
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_23BD42638;
  v17[3] = &unk_278B94620;
  v17[4] = self;
  v2 = MEMORY[0x23EEBBDF0](v17, a2);
  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v3, v4, v5))
  {
    v6 = v2[2](v2);
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_23BD42190;
    v15 = sub_23BD421A0;
    v16 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD426C8;
    block[3] = &unk_278B94648;
    v10 = &v11;
    v9 = v2;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return v6;
}

- (id)fetchDatabaseWaypoints
{
  v5 = objc_msgSend_fetchRequestForDatabaseWaypoints(NCWaypointFetchRequests, a2, v2, v3);
  v8 = objc_msgSend__fetchItemsWithRequest_(self, v6, v5, v7);
  v11 = objc_msgSend__convertToNCWaypointList_(self, v9, v8, v10);

  return v11;
}

- (NSPersistentContainer)persistentContainer
{
  v90[1] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_persistentContainer && isFullyFeaturedApp())
  {
    bundle = v2->_bundle;
    if (bundle)
    {
      v5 = objc_msgSend_URLForResource_withExtension_(bundle, v3, @"CompassModel", @"momd");
      v6 = objc_alloc(MEMORY[0x277CBE450]);
      v9 = objc_msgSend_initWithContentsOfURL_(v6, v7, v5, v8);
      v13 = objc_msgSend__useCloudKitContainer(v2, v10, v11, v12);
      v14 = 0x277CBE470;
      if (!v13)
      {
        v14 = 0x277CBE4A0;
      }

      v15 = objc_alloc(*v14);
      v17 = objc_msgSend_initWithName_managedObjectModel_(v15, v16, @"CompassModel", v9);
      persistentContainer = v2->_persistentContainer;
      v2->_persistentContainer = v17;

      v22 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v19, v20, v21);
      v25 = objc_msgSend_containerURLForSecurityApplicationGroupIdentifier_(v22, v23, @"group.com.apple.nanocompass", v24);

      if (v25)
      {
        v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%@.sqlite", v27, @"CompassModel");
        v31 = objc_msgSend_URLByAppendingPathComponent_(v25, v29, v28, v30);

        v32 = NCLogForCategory(7uLL);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v36 = objc_msgSend_description(v31, v33, v34, v35);
          *buf = 138412290;
          v85 = v36;
          _os_log_impl(&dword_23BD26000, v32, OS_LOG_TYPE_DEFAULT, "print store URL %@", buf, 0xCu);
        }

        v42 = objc_msgSend_persistentStoreDescriptionWithURL_(MEMORY[0x277CBE4E0], v37, v31, v38);
        if (v13)
        {
          v43 = objc_msgSend__appBundle(v2, v39, v40, v41);
          v90[0] = v43;
          v45 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v44, v90, 1);
          objc_msgSend_setOption_forKey_(v42, v46, v45, *MEMORY[0x277CBE220]);

          v47 = objc_alloc(MEMORY[0x277CBE498]);
          v50 = objc_msgSend_initWithContainerIdentifier_(v47, v48, @"com.apple.watch.compass", v49);
          objc_msgSend_setUseDeviceToDeviceEncryption_(v50, v51, 1, v52);
          objc_msgSend_setCloudKitContainerOptions_(v42, v53, v50, v54);
        }

        v55 = objc_msgSend__allowWriteAccess(v2, v39, v40, v41);
        v57 = *MEMORY[0x277CBE2B0];
        if (v55)
        {
          objc_msgSend_setOption_forKey_(v42, v56, MEMORY[0x277CBEC28], v57);
          objc_msgSend_setOption_forKey_(v42, v58, MEMORY[0x277CBEC38], *MEMORY[0x277CBE210]);
        }

        else
        {
          objc_msgSend_setOption_forKey_(v42, v56, MEMORY[0x277CBEC38], v57);
          objc_msgSend_setOption_forKey_(v42, v65, MEMORY[0x277CBEC28], *MEMORY[0x277CBE210]);
        }

        v66 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v59, v42, v60);
        objc_msgSend_setPersistentStoreDescriptions_(v2->_persistentContainer, v67, v66, v68);

        objc_initWeak(&location, v2);
        v69 = NCLogForCategory(7uLL);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = v2->_bundleIdentifier;
          Only = objc_msgSend_isReadOnly(v42, v70, v71, v72);
          v75 = @"not ";
          if (v13)
          {
            v75 = &stru_284E80A60;
          }

          *buf = 138412802;
          v85 = bundleIdentifier;
          v86 = 2112;
          v87 = v75;
          if (Only)
          {
            v76 = @"read-only";
          }

          else
          {
            v76 = @"read-write";
          }

          v88 = 2112;
          v89 = v76;
          _os_log_impl(&dword_23BD26000, v69, OS_LOG_TYPE_DEFAULT, "Start loading store for %@. It's %@a CloudKit container. It's %@.", buf, 0x20u);
        }

        v77 = v2->_persistentContainer;
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = sub_23BD42D0C;
        v81[3] = &unk_278B94670;
        objc_copyWeak(&v82, &location);
        objc_msgSend_loadPersistentStoresWithCompletionHandler_(v77, v78, v81, v79);
        objc_destroyWeak(&v82);
        objc_destroyWeak(&location);

        goto LABEL_29;
      }

      v62 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        sub_23BD66768();
      }

      v63 = v2->_persistentContainer;
      v2->_persistentContainer = 0;

      viewContext = v2->_viewContext;
      v2->_viewContext = 0;

      v61 = v2->_persistentContainer;
    }

    else
    {
      v5 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_23BD667A8();
      }

      v61 = 0;
    }

    objc_sync_exit(v2);
    goto LABEL_30;
  }

LABEL_29:
  objc_sync_exit(v2);

  v61 = v2->_persistentContainer;
LABEL_30:

  return v61;
}

- (BOOL)_useCloudKitContainer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD42EF0;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C5178 != -1)
  {
    dispatch_once(&qword_27E1C5178, block);
  }

  return byte_27E1C5170;
}

- (BOOL)_allowWriteAccess
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD42FB8;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C5188 != -1)
  {
    dispatch_once(&qword_27E1C5188, block);
  }

  return byte_27E1C5180;
}

- (id)_appBundle
{
  if (qword_27E1C5198 != -1)
  {
    sub_23BD667E8();
  }

  v3 = qword_27E1C5190;

  return v3;
}

- (NSManagedObjectContext)viewContext
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_viewContext)
  {
    v6 = objc_msgSend_persistentContainer(v2, v3, v4, v5);
    v10 = objc_msgSend_viewContext(v6, v7, v8, v9);
    viewContext = v2->_viewContext;
    v2->_viewContext = v10;

    objc_msgSend_setMergePolicy_(v2->_viewContext, v12, *MEMORY[0x277CBE1C8], v13);
  }

  objc_sync_exit(v2);

  v14 = v2->_viewContext;

  return v14;
}

- (id)_fetchItemsWithRequest:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = objc_msgSend_viewContext(self, v5, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_viewContext(self, v9, v10, v11);
    v36 = 0;
    v14 = objc_msgSend_executeFetchRequest_error_(v12, v13, v4, &v36);
    v15 = v36;
    v19 = objc_msgSend_mutableCopy(v14, v16, v17, v18);

    if (v15)
    {
      v23 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_23BD667FC(v15, v23, v24, v25);
      }
    }

    else
    {
      if (v19 && objc_msgSend_count(v19, v20, v21, v22))
      {
        v29 = v19;
        goto LABEL_6;
      }

      v23 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v38 = "[NCWaypointManager _fetchItemsWithRequest:]";
        _os_log_impl(&dword_23BD26000, v23, OS_LOG_TYPE_DEFAULT, "%s no record is found in the database", buf, 0xCu);
      }
    }

    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v26, v27, v28);
LABEL_6:
    v30 = v29;

    goto LABEL_10;
  }

  v31 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_23BD6689C();
  }

  v30 = objc_msgSend_array(MEMORY[0x277CBEB18], v32, v33, v34);
LABEL_10:

  return v30;
}

- (int64_t)_fetchCountItemsWithRequest:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_viewContext(self, v5, v6, v7);

  if (!v8)
  {
    v15 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_23BD669BC();
    }

    goto LABEL_8;
  }

  v12 = objc_msgSend_viewContext(self, v9, v10, v11);
  v20 = 0;
  Request_error = objc_msgSend_countForFetchRequest_error_(v12, v13, v4, &v20);
  v15 = v20;

  if (v15)
  {
    v16 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_23BD6691C(v15, v16, v17, v18);
    }

LABEL_8:
    Request_error = -1;
  }

  return Request_error;
}

- (BOOL)_commitToCoreData
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_viewContext(self, a2, v2, v3);

  if (!v5)
  {
    v20 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_23BD66AF4();
    }

    goto LABEL_9;
  }

  v9 = objc_msgSend_viewContext(self, v6, v7, v8);
  if (objc_msgSend_hasChanges(v9, v10, v11, v12))
  {
    v16 = objc_msgSend_viewContext(self, v13, v14, v15);
    v27 = 0;
    v19 = objc_msgSend_save_(v16, v17, &v27, v18);
    v20 = v27;

    if ((v19 & 1) == 0)
    {
      v21 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_23BD66A3C(v20, v21, v22, v23);
      }

LABEL_9:
      v24 = 0;
      goto LABEL_14;
    }
  }

  else
  {

    v20 = 0;
  }

  v25 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[NCWaypointManager _commitToCoreData]";
    _os_log_impl(&dword_23BD26000, v25, OS_LOG_TYPE_DEFAULT, "%s Data is saved successfully.", buf, 0xCu);
  }

  v24 = 1;
LABEL_14:

  return v24;
}

- (id)_fetchCompassWaypointsIncludingDisabled:(BOOL)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)_fetchCompassWaypointsFromCoreDataIncludingDisabled:(BOOL)a3
{
  if (a3)
  {
    objc_msgSend_fetchRequestForCompassWaypoints(NCWaypointFetchRequests, a2, a3, v3);
  }

  else
  {
    objc_msgSend_fetchRequestForEnabledCompassWaypoints(NCWaypointFetchRequests, a2, a3, v3);
  }
  v5 = ;
  v8 = objc_msgSend__fetchItemsWithRequest_(self, v6, v5, v7);
  v11 = objc_msgSend__convertToNCWaypointList_(self, v9, v8, v10);

  return v11;
}

- (id)_coreDataWaypointWithUUID:(id)a3
{
  v5 = objc_msgSend_fetchRequestForWaypointWithUUID_(NCWaypointFetchRequests, a2, a3, v3);
  v8 = objc_msgSend__fetchItemsWithRequest_(self, v6, v5, v7);
  v12 = v8;
  if (v8 && objc_msgSend_count(v8, v9, v10, v11))
  {
    v15 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, 0, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_excludingDisabledWaypoints:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v25, v33, 16);
  if (v7)
  {
    v12 = v7;
    v13 = *v26;
    *&v11 = 136315394;
    v24 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if (objc_msgSend_isEnabled(v15, v8, v9, v10, v24, v25))
        {
          v16 = NCLogForCategory(1uLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v20 = objc_msgSend_label(v15, v17, v18, v19);
            *buf = v24;
            v30 = "[NCWaypointManager _excludingDisabledWaypoints:]";
            v31 = 2112;
            v32 = v20;
            _os_log_impl(&dword_23BD26000, v16, OS_LOG_TYPE_DEFAULT, "%s waypoint: %@ is enabled.", buf, 0x16u);
          }

          objc_msgSend_addObject_(v4, v21, v15, v22);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v25, v33, 16);
    }

    while (v12);
  }

  return v4;
}

- (void)_printWaypointList:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = a3;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v51, v67, 16);
  if (v4)
  {
    v5 = v4;
    v6 = *v52;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v52 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v51 + 1) + 8 * i);
        v9 = NCLogForCategory(1uLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_msgSend_label(v8, v10, v11, v12);
          v50 = objc_msgSend_location(v8, v14, v15, v16);
          objc_msgSend_coordinate(v50, v17, v18, v19);
          v21 = v20;
          v25 = objc_msgSend_location(v8, v22, v23, v24);
          objc_msgSend_coordinate(v25, v26, v27, v28);
          v30 = v29;
          v34 = objc_msgSend_uuid(v8, v31, v32, v33);
          objc_msgSend_UUIDString(v34, v35, v36, v37);
          v39 = v38 = v6;
          v43 = objc_msgSend_symbol(v8, v40, v41, v42);
          isEnabled = objc_msgSend_isEnabled(v8, v44, v45, v46);
          *buf = 138413570;
          v56 = v13;
          v57 = 2048;
          v58 = v21;
          v59 = 2048;
          v60 = v30;
          v61 = 2112;
          v62 = v39;
          v63 = 2112;
          v64 = v43;
          v65 = 1024;
          v66 = isEnabled;
          _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "waypoint label %@, lat %f, lng %f, UUID %@, symbol name %@, is enabled %d", buf, 0x3Au);

          v6 = v38;
        }
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, &v51, v67, 16);
    }

    while (v5);
  }
}

- (void)_saveWaypoint:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_viewContext(self, v5, v6, v7);

  if (v8)
  {
    v12 = MEMORY[0x277CBE408];
    v13 = objc_msgSend_viewContext(self, v9, v10, v11);
    v15 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(v12, v14, @"Waypoint", v13);

    v19 = objc_msgSend_uuid(v4, v16, v17, v18);
    objc_msgSend_setUuid_(v15, v20, v19, v21);

    v25 = objc_msgSend_label(v4, v22, v23, v24);
    objc_msgSend_setLabel_(v15, v26, v25, v27);

    v31 = objc_msgSend_labelColor(v4, v28, v29, v30);
    objc_msgSend_setLabelColor_(v15, v32, v31, v33);

    isEnabled = objc_msgSend_isEnabled(v4, v34, v35, v36);
    objc_msgSend_setEnabled_(v15, v38, isEnabled, v39);
    v43 = objc_msgSend_symbol(v4, v40, v41, v42);
    objc_msgSend_setSymbol_(v15, v44, v43, v45);

    v49 = objc_msgSend_timestampOfCreation(v4, v46, v47, v48);
    objc_msgSend_setTimeOfCreation_(v15, v50, v49, v51);

    v55 = objc_msgSend_location(v4, v52, v53, v54);
    objc_msgSend_setCoreLocation_(v15, v56, v55, v57);

    objc_msgSend_altitude(v4, v58, v59, v60);
    objc_msgSend_setAltitude_(v15, v61, v62, v63);
    isAltitudePopulated = objc_msgSend_isAltitudePopulated(v4, v64, v65, v66);
    objc_msgSend_setAltitudePopulated_(v15, v68, isAltitudePopulated, v69);
    v73 = objc_msgSend_type(v4, v70, v71, v72);
    objc_msgSend_setType_(v15, v74, v73, v75);
  }

  else
  {
    v15 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_23BD66B74();
    }
  }
}

- (id)_convertToNCWaypointList:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v46, v60, 16);
  if (v7)
  {
    v12 = v7;
    v13 = *v47;
    *&v11 = 136315394;
    v45 = v11;
    v14 = 0x278B93000uLL;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        v17 = objc_msgSend_uuid(v16, v8, v9, v10, v45);

        v18 = NCLogForCategory(7uLL);
        v19 = v18;
        if (v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v30 = objc_msgSend_label(v16, v20, v21, v22);
            v34 = objc_msgSend_symbol(v16, v31, v32, v33);
            v38 = objc_msgSend_uuid(v16, v35, v36, v37);
            objc_msgSend_altitude(v16, v39, v40, v41);
            *buf = 136316162;
            v51 = "[NCWaypointManager _convertToNCWaypointList:]";
            v52 = 2112;
            v53 = v30;
            v54 = 2112;
            v55 = v34;
            v56 = 2112;
            v57 = v38;
            v58 = 2048;
            v59 = v42;
            _os_log_debug_impl(&dword_23BD26000, v19, OS_LOG_TYPE_DEBUG, "%s printing core data waypoint label %@, symbol %@, UUID %@, altitude %f", buf, 0x34u);

            v14 = 0x278B93000;
          }

          v19 = objc_msgSend_waypointForCoreDataWaypoint_(*(v14 + 2544), v23, v16, v24);
          objc_msgSend_addObject_(v4, v25, v19, v26);
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v43 = objc_msgSend_label(v16, v27, v28, v29);
          *buf = v45;
          v51 = "[NCWaypointManager _convertToNCWaypointList:]";
          v52 = 2112;
          v53 = v43;
          _os_log_error_impl(&dword_23BD26000, v19, OS_LOG_TYPE_ERROR, "%s Waypoint has no UUID, ignoring (name = %@)", buf, 0x16u);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v46, v60, 16);
    }

    while (v12);
  }

  return v4;
}

- (void)setClosestDataWaypoint:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((objc_msgSend_isEquivalentCellularWaypoint_(self->_closestDataWaypoint, v6, v5, v7) & 1) == 0)
  {
    if (v5)
    {
      v11 = objc_msgSend_uuid(v5, v8, v9, v10);
      v15 = objc_msgSend_location(v5, v12, v13, v14);
      objc_msgSend_altitude(v15, v16, v17, v18);
      v20 = v19;
      v21 = NCLogForCategory(8uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138543874;
        v29 = v11;
        v30 = 2112;
        v31 = v15;
        v32 = 2048;
        v33 = v20;
        _os_log_impl(&dword_23BD26000, v21, OS_LOG_TYPE_DEFAULT, "Manager receiving update to closest data waypoint (%{public}@ at %@ ^ %.2fm).", &v28, 0x20u);
      }
    }

    else
    {
      v11 = NCLogForCategory(8uLL);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        objc_storeStrong(&self->_closestDataWaypoint, a3);
        objc_msgSend__publishCellularWaypointsUpdate(self, v25, v26, v27);
        goto LABEL_10;
      }

      v15 = objc_msgSend_uuid(self->_closestDataWaypoint, v22, v23, v24);
      v28 = 138543362;
      v29 = v15;
      _os_log_impl(&dword_23BD26000, v11, OS_LOG_TYPE_DEFAULT, "Manager receiving update to clear closest data waypoint (%{public}@).", &v28, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setClosestSOSWaypoint:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((objc_msgSend_isEquivalentCellularWaypoint_(self->_closestSOSWaypoint, v6, v5, v7) & 1) == 0)
  {
    if (v5)
    {
      v11 = objc_msgSend_uuid(v5, v8, v9, v10);
      v15 = objc_msgSend_location(v5, v12, v13, v14);
      objc_msgSend_altitude(v15, v16, v17, v18);
      v20 = v19;
      v21 = NCLogForCategory(8uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138543874;
        v29 = v11;
        v30 = 2112;
        v31 = v15;
        v32 = 2048;
        v33 = v20;
        _os_log_impl(&dword_23BD26000, v21, OS_LOG_TYPE_DEFAULT, "Manager receiving update to closest sos waypoint (%{public}@ at %@ ^ %.2fm).", &v28, 0x20u);
      }
    }

    else
    {
      v11 = NCLogForCategory(8uLL);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        objc_storeStrong(&self->_closestSOSWaypoint, a3);
        objc_msgSend__publishCellularWaypointsUpdate(self, v25, v26, v27);
        goto LABEL_10;
      }

      v15 = objc_msgSend_uuid(self->_closestSOSWaypoint, v22, v23, v24);
      v28 = 138543362;
      v29 = v15;
      _os_log_impl(&dword_23BD26000, v11, OS_LOG_TYPE_DEFAULT, "Manager receiving update to clear closest sos waypoint (%{public}@).", &v28, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setRecentDataWaypoint:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((objc_msgSend_isEquivalentCellularWaypoint_(self->_recentDataWaypoint, v6, v5, v7) & 1) == 0)
  {
    if (v5)
    {
      v11 = objc_msgSend_uuid(v5, v8, v9, v10);
      v15 = objc_msgSend_location(v5, v12, v13, v14);
      objc_msgSend_altitude(v15, v16, v17, v18);
      v20 = v19;
      v21 = NCLogForCategory(8uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138543874;
        v29 = v11;
        v30 = 2112;
        v31 = v15;
        v32 = 2048;
        v33 = v20;
        _os_log_impl(&dword_23BD26000, v21, OS_LOG_TYPE_DEFAULT, "Manager receiving update to recent data waypoint (%{public}@ at %@ ^ %.2fm).", &v28, 0x20u);
      }
    }

    else
    {
      v11 = NCLogForCategory(8uLL);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        objc_storeStrong(&self->_recentDataWaypoint, a3);
        objc_msgSend__publishCellularWaypointsUpdate(self, v25, v26, v27);
        goto LABEL_10;
      }

      v15 = objc_msgSend_uuid(self->_recentDataWaypoint, v22, v23, v24);
      v28 = 138543362;
      v29 = v15;
      _os_log_impl(&dword_23BD26000, v11, OS_LOG_TYPE_DEFAULT, "Manager receiving update to clear recent data waypoint (%{public}@).", &v28, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
  objc_msgSend__logSystemWaypointsAnalytics(self, v8, v9, v10);
}

- (void)setRecentSOSWaypoint:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((objc_msgSend_isEquivalentCellularWaypoint_(self->_recentSOSWaypoint, v6, v5, v7) & 1) == 0)
  {
    if (v5)
    {
      v11 = objc_msgSend_uuid(v5, v8, v9, v10);
      v15 = objc_msgSend_location(v5, v12, v13, v14);
      objc_msgSend_altitude(v15, v16, v17, v18);
      v20 = v19;
      v21 = NCLogForCategory(8uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138543874;
        v29 = v11;
        v30 = 2112;
        v31 = v15;
        v32 = 2048;
        v33 = v20;
        _os_log_impl(&dword_23BD26000, v21, OS_LOG_TYPE_DEFAULT, "Manager receiving update to recent sos waypoint (%{public}@ at %@ ^ %.2fm).", &v28, 0x20u);
      }
    }

    else
    {
      v11 = NCLogForCategory(8uLL);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        objc_storeStrong(&self->_recentSOSWaypoint, a3);
        objc_msgSend__publishCellularWaypointsUpdate(self, v25, v26, v27);
        goto LABEL_10;
      }

      v15 = objc_msgSend_uuid(self->_recentSOSWaypoint, v22, v23, v24);
      v28 = 138543362;
      v29 = v15;
      _os_log_impl(&dword_23BD26000, v11, OS_LOG_TYPE_DEFAULT, "Manager receiving update to clear recent sos waypoint. (%{public}@)", &v28, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
  objc_msgSend__logSystemWaypointsAnalytics(self, v8, v9, v10);
}

- (NSArray)cellularWaypoints
{
  v42 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4, v5);
  v7 = self->_recentDataWaypoint;
  objc_msgSend_nc_safeAddObject_(v6, v8, v7, v9);
  v10 = self->_recentSOSWaypoint;
  v13 = v10;
  if (v7)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (!v7 && v10)
    {
      goto LABEL_11;
    }

    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    isSignificantlyDifferentFrom = objc_msgSend_isSignificantlyDifferentFrom_(v10, v11, v7, v12);
    if (isSignificantlyDifferentFrom)
    {
LABEL_11:
      objc_msgSend_addObject_(v6, v11, v13, v12);
      goto LABEL_15;
    }
  }

  v16 = NCLogForCategory(8uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v40) = 0;
    _os_log_impl(&dword_23BD26000, v16, OS_LOG_TYPE_DEFAULT, "Recent SOS is being excluded.", &v40, 2u);
  }

LABEL_15:
  v17 = self->_closestDataWaypoint;
  v20 = v17;
  if (v7 && v17)
  {
    if (objc_msgSend_isSignificantlyDifferentFrom_(v17, v18, v7, v19))
    {
      objc_msgSend_addObject_(v6, v21, v20, v22);
      goto LABEL_23;
    }
  }

  else if (!v17)
  {
    goto LABEL_23;
  }

  v23 = NCLogForCategory(8uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    LOWORD(v40) = 0;
    _os_log_impl(&dword_23BD26000, v23, OS_LOG_TYPE_INFO, "Closest Data is being excluded.", &v40, 2u);
  }

LABEL_23:
  v24 = self->_closestSOSWaypoint;
  v28 = v24;
  if (v13 && v24)
  {
    if (objc_msgSend_isSignificantlyDifferentFrom_(v24, v25, v13, v27))
    {
      objc_msgSend_addObject_(v6, v29, v28, v30);
      goto LABEL_31;
    }
  }

  else if (!v24)
  {
    goto LABEL_31;
  }

  v31 = NCLogForCategory(8uLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    LOWORD(v40) = 0;
    _os_log_impl(&dword_23BD26000, v31, OS_LOG_TYPE_INFO, "Closest SOS is being excluded.", &v40, 2u);
  }

LABEL_31:
  v32 = objc_msgSend_count(v6, v25, v26, v27);
  if (v32 != self->_lastCellularWaypointCount)
  {
    v36 = v32;
    v37 = NCLogForCategory(8uLL);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 134217984;
      v41 = v36;
      _os_log_impl(&dword_23BD26000, v37, OS_LOG_TYPE_DEFAULT, "Showing %lu cellular waypoints.", &v40, 0xCu);
    }

    self->_lastCellularWaypointCount = v36;
  }

  v38 = objc_msgSend_copy(v6, v33, v34, v35);

  return v38;
}

- (void)_publishCellularWaypointsUpdate
{
  cellularWaypointsUpdatedHandle = self->_cellularWaypointsUpdatedHandle;
  if (cellularWaypointsUpdatedHandle)
  {
    cellularWaypointsUpdatedHandle[2](cellularWaypointsUpdatedHandle, a2);
  }

  objc_msgSend__postWaypointListChangedNotification(self, a2, v2, v3);
}

- (int64_t)numWaypointsMissingElevationOfType:(int64_t)a3
{
  v5 = objc_msgSend_fetchRequestForCountOfMissingElevationForWaypointsOfType_(NCWaypointFetchRequests, a2, a3, v3);
  CountItemsWithRequest = objc_msgSend__fetchCountItemsWithRequest_(self, v6, v5, v7);

  return CountItemsWithRequest;
}

- (int64_t)numWaypointsInElevationTableOfType:(int64_t)a3
{
  v5 = objc_msgSend_fetchRequestForCountOfWaypointsInElevationTableOfType_(NCWaypointFetchRequests, a2, a3, v3);
  CountItemsWithRequest = objc_msgSend__fetchCountItemsWithRequest_(self, v6, v5, v7);

  return CountItemsWithRequest;
}

- (void)_logSystemWaypointsAnalytics
{
  if (objc_msgSend_isEqualToString_(@"com.apple.NanoCompass.watchkitapp", a2, self->_bundleIdentifier, v2))
  {
    v7 = objc_msgSend_location(self->_parkedCarWaypoint, v4, v5, v6);

    recentDataWaypoint = self->_recentDataWaypoint;
    recentSOSWaypoint = self->_recentSOSWaypoint;
    v10 = objc_alloc(MEMORY[0x277CBEBD0]);
    v34 = objc_msgSend_initWithSuiteName_(v10, v11, @"com.apple.compass", v12);
    objc_msgSend_synchronize(v34, v13, v14, v15);
    v19 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v16, v17, v18);
    v24 = objc_msgSend_objectForKey_(v34, v20, @"systemWaypointsAnalyticsLastLoggedDate", v21);
    if (!v24 || (objc_msgSend_isDateInToday_(v19, v22, v24, v23) & 1) == 0)
    {
      objc_msgSend__submitSystemWaypointsAnalytics_(self, v22, 0, v23);
    }

    v25 = objc_msgSend_integerForKey_(v34, v22, @"systemWaypointsAnalyticsLastLoggedWaypoints", v23);
    v28 = v7 | v25 & 1;
    v29 = v28 == 0;
    v30 = v28 != 0;
    v31 = 2;
    if (!v29)
    {
      v31 = 3;
    }

    if (recentDataWaypoint | v25 & 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    if (recentSOSWaypoint | v25 & 4)
    {
      v33 = v32 | 4;
    }

    else
    {
      v33 = v32;
    }

    if (v25 != v33)
    {
      objc_msgSend__submitSystemWaypointsAnalytics_(self, v26, v33, v27);
    }
  }
}

- (void)_submitSystemWaypointsAnalytics:(unint64_t)a3
{
  v5 = a3 >> 2;
  v6 = a3 >> 1;
  v13 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, a3, v3);
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v10 = objc_msgSend_initWithSuiteName_(v7, v8, @"com.apple.compass", v9);
  objc_msgSend_setInteger_forKey_(v10, v11, a3, @"systemWaypointsAnalyticsLastLoggedWaypoints");
  objc_msgSend_setObject_forKey_(v10, v12, v13, @"systemWaypointsAnalyticsLastLoggedDate");
  SendSystemWaypointAvailability(a3 & 1 | ((v6 & 1) << 8) | ((v5 & 1) << 16));
}

- (void)resetCompassWaypointsInDemoMode
{
  v58[3] = *MEMORY[0x277D85DE8];
  objc_msgSend_deleteAllWaypoints(self, a2, v2, v3);
  v4 = objc_alloc(MEMORY[0x277CE41F8]);
  v8 = objc_msgSend_initWithLatitude_longitude_(v4, v5, v6, v7, 37.336425, -122.011737);
  v9 = objc_alloc(MEMORY[0x277D75348]);
  v13 = objc_msgSend_initWithRed_green_blue_alpha_(v9, v10, v11, v12, 0.0156862745, 0.870588235, 0.443137255, 1.0);
  v14 = [NCWaypoint alloc];
  v54 = v13;
  v55 = v8;
  isEnabled = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v14, v15, @"Campsite", v13, @"tent.2.fill", 4, v8, &unk_284E8ABC8, 1);
  v17 = objc_alloc(MEMORY[0x277CE41F8]);
  v21 = objc_msgSend_initWithLatitude_longitude_(v17, v18, v19, v20, 37.4163442, -121.913333);
  v22 = objc_alloc(MEMORY[0x277D75348]);
  v26 = objc_msgSend_initWithRed_green_blue_alpha_(v22, v23, v24, v25, 1.0, 0.584313725, 0.0, 1.0);
  v27 = [NCWaypoint alloc];
  LOBYTE(v51) = 1;
  v29 = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v27, v28, @"Lodge", v26, @"house.lodge.fill", 4, v21, &unk_284E8ABC8, v51);
  v30 = objc_alloc(MEMORY[0x277CE41F8]);
  v34 = objc_msgSend_initWithLatitude_longitude_(v30, v31, v32, v33, 37.3131798, -122.016657);
  v35 = objc_alloc(MEMORY[0x277D75348]);
  v39 = objc_msgSend_initWithRed_green_blue_alpha_(v35, v36, v37, v38, 1.0, 0.349019608, 0.392156863, 1.0);
  v40 = isEnabled;
  v41 = [NCWaypoint alloc];
  LOBYTE(v52) = 1;
  v43 = objc_msgSend_initWithLabel_color_symbol_type_location_altitude_isEnabled_(v41, v42, @"Bike Trail", v39, @"bicycle", 4, v34, &unk_284E8ABC8, v52);
  v58[0] = isEnabled;
  v58[1] = v29;
  v58[2] = v43;
  v45 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v44, v58, 3);
  v48 = objc_msgSend_addWaypoints_(self, v46, v45, v47);
  v49 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = @"not ";
    if (v48)
    {
      v50 = &stru_284E80A60;
    }

    *buf = 138412290;
    v57 = v50;
    _os_log_impl(&dword_23BD26000, v49, OS_LOG_TYPE_DEFAULT, "Database is reset in demo mode and demo data is %@inserted successfully.", buf, 0xCu);
  }
}

@end