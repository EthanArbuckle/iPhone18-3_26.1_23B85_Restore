@interface NCGuidesManager
+ (NCGuidesManager)sharedManager;
- (BOOL)guideEnabled:(id)enabled;
- (BOOL)guideWithIdentifierEnabled:(id)enabled;
- (NCGuidesManager)init;
- (NSArray)allEnabledWaypoints;
- (NSArray)allEnabledWaypointsLimitedByDistance;
- (NSArray)allProviderAndMapsDatabaseWaypoints;
- (NSArray)allWaypoints;
- (NSArray)nonSystemEnabledWaypointsLimitedByDistance;
- (NSArray)systemWaypoints;
- (NSArray)systemWaypointsLimitedByDistance;
- (id)_allSystemWaypoints;
- (id)_currentlyDisabledGuides;
- (id)_enabledCompassWaypointsRestrictedTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count;
- (id)_enabledWaypointsForGuideType:(int64_t)type subType:(id)subType restrictedTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count;
- (id)_getUpdatedDatabaseWaypoints:(id)waypoints;
- (id)_systemWaypointsRestrictedTo:(double)to ofLocation:(id)location;
- (id)_waypointWithUUID:(id)d;
- (id)fetchTargetedWaypoint;
- (id)userGuides;
- (int64_t)numDisabledGuides;
- (int64_t)numEnabledGuideWaypoints;
- (int64_t)numEnabledPOIs;
- (int64_t)numGuideWaypoints;
- (int64_t)numTotalPOIs;
- (unint64_t)maxAllowedWaypoints;
- (unint64_t)maxPriorityCompassWaypoints;
- (void)_addEnabledWaypointsForGuide:(id)guide;
- (void)_fetchAllPlaceItemsRestrictingMapGuidesTo:(double)to ofLocation:(id)location handler:(id)handler;
- (void)_fetchAllWaypointsRestrictingMapGuidesTo:(double)to ofLocation:(id)location handler:(id)handler;
- (void)_fetchEnabledWaypointsForUserGuidesRestrictedToRadius:(double)radius around:(id)around maximumCount:(unint64_t)count handler:(id)handler;
- (void)_fetchEnabledWaypointsRestrictingMapGuidesTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count handler:(id)handler;
- (void)_handleFirstUnlock;
- (void)_handleWaypointListChanged:(id)changed;
- (void)_loadDisabledGuidesFromDefaults;
- (void)_loadGuides;
- (void)_refreshAllWaypoints;
- (void)_refreshGuides;
- (void)_refreshNonDistanceLimitedWaypoints;
- (void)_removeDisabledWaypointsForGuide:(id)guide;
- (void)_saveDisabledGuidesToDefaults;
- (void)_updateUserGuidesUsingCollections:(id)collections;
- (void)enableWaypoints:(BOOL)waypoints forGuide:(id)guide;
- (void)loadGuides;
- (void)refreshWaypointsWithCenterLocation:(id)location maxDiameterInMeters:(double)meters completion:(id)completion;
- (void)registerGuideProviders:(id)providers;
- (void)reloadWaypoints;
- (void)setGlobalEnabledState:(BOOL)state forGuideType:(int64_t)type;
- (void)storeControllerWithDataChanged:(id)changed;
- (void)storeControllerWithDidLoad:(id)load;
- (void)storeControllerWithFailedToLoad:(id)load;
@end

@implementation NCGuidesManager

+ (NCGuidesManager)sharedManager
{
  if (qword_27E1C53D0 != -1)
  {
    sub_23BD679B8();
  }

  v3 = qword_27E1C53C8;

  return v3;
}

- (NCGuidesManager)init
{
  v55 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = NCGuidesManager;
  v5 = [(NCGuidesManager *)&v50 init];
  if (v5)
  {
    v6 = objc_msgSend_sharedInstance(NCGuidesEnabledState, v2, v3, v4);
    guidesEnabledState = v5->_guidesEnabledState;
    v5->_guidesEnabledState = v6;

    v8 = dispatch_queue_create("com.apple.nanocompass.guidesmanager.disabledguides", 0);
    disabledGuidesQueue = v5->_disabledGuidesQueue;
    v5->_disabledGuidesQueue = v8;

    v10 = v5->_disabledGuidesQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD5C24C;
    block[3] = &unk_278B93FB0;
    v11 = v5;
    v49 = v11;
    dispatch_sync(v10, block);
    v14 = sub_23BD68730(v12) == 3 || sub_23BD68704(v13) == 1;
    v11->_hasBeenUnlockedSinceBoot = v14;
    v15 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"has NOT";
      if (v11->_hasBeenUnlockedSinceBoot)
      {
        v16 = @"has";
      }

      *buf = 136315394;
      v52 = "[NCGuidesManager init]";
      v53 = 2112;
      v54 = v16;
      _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_DEFAULT, "%s: device %@ been unlocked", buf, 0x16u);
    }

    if (!v11->_hasBeenUnlockedSinceBoot)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v11, sub_23BD5C254, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v18 = NanoCompassLocalizedString(@"COMPASS_WAYPOINTS_GUIDE_NAME");
    v19 = [NCCompassWaypointGuide alloc];
    v22 = objc_msgSend_initWithName_(v19, v20, v18, v21);
    compassGuide = v11->_compassGuide;
    v11->_compassGuide = v22;

    v24 = objc_opt_new();
    userGuides = v11->_userGuides;
    v11->_userGuides = v24;

    v26 = objc_opt_new();
    allEnabledWaypointsLimitedByDistance = v11->_allEnabledWaypointsLimitedByDistance;
    v11->_allEnabledWaypointsLimitedByDistance = v26;

    v28 = objc_opt_new();
    nonSystemEnabledWaypointsLimitedByDistance = v11->_nonSystemEnabledWaypointsLimitedByDistance;
    v11->_nonSystemEnabledWaypointsLimitedByDistance = v28;

    v30 = objc_opt_new();
    systemWaypoints = v11->_systemWaypoints;
    v11->_systemWaypoints = v30;

    v32 = objc_opt_new();
    systemWaypointsLimitedByDistance = v11->_systemWaypointsLimitedByDistance;
    v11->_systemWaypointsLimitedByDistance = v32;

    v11->_areWaypointsLimited = 0;
    v34 = objc_opt_new();
    allEnabledWaypoints = v11->_allEnabledWaypoints;
    v11->_allEnabledWaypoints = v34;

    v36 = objc_opt_new();
    allWaypoints = v11->_allWaypoints;
    v11->_allWaypoints = v36;

    v38 = objc_opt_new();
    allProviderAndMapsDatabaseWaypoints = v11->_allProviderAndMapsDatabaseWaypoints;
    v11->_allProviderAndMapsDatabaseWaypoints = v38;

    objc_initWeak(buf, v11);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_23BD5C2A0;
    v46[3] = &unk_278B94000;
    objc_copyWeak(&v47, buf);
    dispatch_async(MEMORY[0x277D85CD0], v46);
    v40 = dispatch_group_create();
    storeGroup = v11->_storeGroup;
    v11->_storeGroup = v40;

    dispatch_group_enter(v11->_storeGroup);
    v42 = dispatch_get_global_queue(2, 0);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_23BD5C2E4;
    v44[3] = &unk_278B94000;
    objc_copyWeak(&v45, buf);
    dispatch_async(v42, v44);

    objc_destroyWeak(&v45);
    objc_destroyWeak(&v47);
    objc_destroyWeak(buf);
  }

  return v5;
}

- (void)registerGuideProviders:(id)providers
{
  v24 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_setGuideProviders_(selfCopy, v6, providersCopy, v7);
  objc_sync_exit(selfCopy);

  v8 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[NCGuidesManager registerGuideProviders:]";
    v22 = 2048;
    v23 = objc_msgSend_count(providersCopy, v9, v10, v11);
    _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "%s: Registered %lu app-specific guide providers.", &v20, 0x16u);
  }

  v15 = objc_msgSend_store(selfCopy, v12, v13, v14);

  if (v15)
  {
    v16 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[NCGuidesManager registerGuideProviders:]";
      _os_log_impl(&dword_23BD26000, v16, OS_LOG_TYPE_DEFAULT, "%s: Store is already available. Triggering refresh.", &v20, 0xCu);
    }

    objc_msgSend__refreshGuides(selfCopy, v17, v18, v19);
  }
}

- (unint64_t)maxAllowedWaypoints
{
  if (qword_27E1C53E0 != -1)
  {
    sub_23BD679CC();
  }

  return qword_27E1C53D8;
}

- (unint64_t)maxPriorityCompassWaypoints
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD5C7A4;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  if (qword_27E1C53F0 != -1)
  {
    dispatch_once(&qword_27E1C53F0, block);
  }

  return qword_27E1C53E8;
}

- (id)userGuides
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_userGuides;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)allEnabledWaypoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_allEnabledWaypoints;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)allEnabledWaypointsLimitedByDistance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_allEnabledWaypointsLimitedByDistance;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)nonSystemEnabledWaypointsLimitedByDistance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_nonSystemEnabledWaypointsLimitedByDistance;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)allWaypoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_allWaypoints;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)allProviderAndMapsDatabaseWaypoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_allProviderAndMapsDatabaseWaypoints;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)systemWaypoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_systemWaypoints;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)systemWaypointsLimitedByDistance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_systemWaypointsLimitedByDistance;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)fetchTargetedWaypoint
{
  v5 = objc_msgSend_sharedManager(NCTargetedWaypointManager, a2, v2, v3);
  v9 = objc_msgSend_fetchTargetedWaypointUUID(v5, v6, v7, v8);
  v13 = objc_msgSend_UUIDString(v9, v10, v11, v12);

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    v17 = objc_msgSend_initWithUUIDString_(v14, v15, v13, v16);
    v20 = objc_msgSend__waypointWithUUID_(self, v18, v17, v19);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_waypointWithUUID:(id)d
{
  dCopy = d;
  v8 = objc_msgSend_allWaypoints(self, v5, v6, v7);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_23BD5CCF8;
  v17[3] = &unk_278B949B0;
  v9 = dCopy;
  v18 = v9;
  v12 = objc_msgSend_indexOfObjectPassingTest_(v8, v10, v17, v11);
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v15 = objc_msgSend_objectAtIndexedSubscript_(v8, v13, v12, v14);
  }

  return v15;
}

- (id)_enabledWaypointsForGuideType:(int64_t)type subType:(id)subType restrictedTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count
{
  v109 = *MEMORY[0x277D85DE8];
  subTypeCopy = subType;
  locationCopy = location;
  v94 = objc_opt_new();
  v14 = objc_opt_new();
  v18 = v14;
  if (count)
  {
    countCopy = count;
    v96 = objc_msgSend__currentlyDisabledGuides(self, v15, v16, v17);
    v22 = objc_msgSend_loadedProviderGuidesByType(self, v19, v20, v21);
    v25 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v23, type, v24);
    v28 = objc_msgSend_objectForKeyedSubscript_(v22, v26, v25, v27);

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v29 = v28;
    v95 = v29;
    v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v103, v108, 16);
    if (v98)
    {
      v97 = *v104;
      while (2)
      {
        for (i = 0; i != v98; ++i)
        {
          if (*v104 != v97)
          {
            objc_enumerationMutation(v29);
          }

          v35 = *(*(&v103 + 1) + 8 * i);
          if (subTypeCopy)
          {
            NSClassFromString(&cfstr_Ncmapsdatabase.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            v36 = objc_msgSend_valueForKey_(v35, v31, @"databaseGuideType", v33);
            isEqualToNumber = objc_msgSend_isEqualToNumber_(v36, v37, subTypeCopy, v38);

            if (!isEqualToNumber)
            {
              continue;
            }
          }

          guidesEnabledState = self->_guidesEnabledState;
          v41 = objc_msgSend_type(v35, v31, v32, v33);
          isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(guidesEnabledState, v42, v41, v43);
          v48 = objc_msgSend_uuid(v35, v45, v46, v47);
          objc_msgSend_UUIDString(v48, v49, v50, v51);
          v52 = v18;
          v54 = v53 = subTypeCopy;
          v57 = objc_msgSend_containsObject_(v96, v55, v54, v56);

          subTypeCopy = v53;
          v18 = v52;

          v29 = v95;
          if (isEnabledForGuideType)
          {
            if ((v57 & 1) == 0)
            {
              v58 = objc_msgSend_fetchWaypoints(v35, v31, v32, v33);
              if (!v58)
              {
                v65 = v95;
                goto LABEL_30;
              }

              v62 = v58;
              objc_msgSend_addObjectsFromArray_(v94, v59, v58, v61);
            }
          }
        }

        v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v103, v108, 16);
        if (v98)
        {
          continue;
        }

        break;
      }
    }

    v65 = objc_msgSend__getUpdatedDatabaseWaypoints_(self, v63, v94, v64);
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v99, v107, 16);
    if (v67)
    {
      v71 = v67;
      v72 = *v100;
      do
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v100 != v72)
          {
            objc_enumerationMutation(v65);
          }

          v74 = *(*(&v99 + 1) + 8 * j);
          v75 = objc_msgSend_location(v74, v68, v69, v70);
          objc_msgSend_distanceFromLocation_(v75, v76, locationCopy, v77);
          v79 = v78;

          if (v79 < to)
          {
            v80 = [NCWaypointWithDistance alloc];
            v83 = objc_msgSend_initWithWaypoint_distance_(v80, v81, v74, v82, v79);
            objc_msgSend_addObject_(v18, v84, v83, v85);
          }
        }

        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v68, &v99, v107, 16);
      }

      while (v71);
    }

    objc_msgSend_sortUsingSelector_(v18, v68, sel_compare_, v70);
    if (objc_msgSend_count(v18, v86, v87, v88) > countCopy)
    {
      v89 = objc_msgSend_count(v18, v59, v60, v61);
      objc_msgSend_removeObjectsInRange_(v18, v90, countCopy, v89 - countCopy);
    }

    v29 = v95;
LABEL_30:
    v91 = objc_msgSend_copy(v18, v59, v60, v61);
  }

  else
  {
    v91 = objc_msgSend_copy(v14, v15, v16, v17);
  }

  return v91;
}

- (void)refreshWaypointsWithCenterLocation:(id)location maxDiameterInMeters:(double)meters completion:(id)completion
{
  v81 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  completionCopy = completion;
  v10 = NCLogForCategory(9uLL);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (locationCopy)
  {
    if (v11)
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "[NCGuidesManager refreshWaypointsWithCenterLocation:maxDiameterInMeters:completion:]";
      _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Refreshing.", &buf, 0xCu);
    }

    v14 = objc_msgSend__systemWaypointsRestrictedTo_ofLocation_(self, v12, locationCopy, v13, meters);
    v18 = objc_msgSend_count(v14, v15, v16, v17);
    if (v18 >= objc_msgSend_maxAllowedWaypoints(self, v19, v20, v21) || (v25 = objc_msgSend_maxAllowedWaypoints(self, v22, v23, v24), v26 = v25 - v18, v25 == v18))
    {
      dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
      self->_areWaypointsLimited = 1;
      v29 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v27, v14, v28);
      allEnabledWaypointsLimitedByDistance = self->_allEnabledWaypointsLimitedByDistance;
      self->_allEnabledWaypointsLimitedByDistance = v29;

      v31 = objc_alloc_init(MEMORY[0x277CBEA60]);
      nonSystemEnabledWaypointsLimitedByDistance = self->_nonSystemEnabledWaypointsLimitedByDistance;
      self->_nonSystemEnabledWaypointsLimitedByDistance = v31;

      v35 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v33, v14, v34);
      systemWaypointsLimitedByDistance = self->_systemWaypointsLimitedByDistance;
      self->_systemWaypointsLimitedByDistance = v35;

      completionCopy[2](completionCopy);
    }

    else
    {
      v37 = meters * 0.5;
      v38 = dispatch_group_create();
      v40 = objc_msgSend__enabledCompassWaypointsRestrictedTo_ofLocation_maxCount_(self, v39, locationCopy, v26, v37);
      v42 = objc_msgSend__enabledWaypointsForGuideType_subType_restrictedTo_ofLocation_maxCount_(self, v41, 3, &unk_284E8B040, locationCopy, v26, v37);
      v59 = objc_msgSend__enabledWaypointsForGuideType_subType_restrictedTo_ofLocation_maxCount_(self, v43, 3, &unk_284E8B058, locationCopy, v26, v37);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v77 = 0x3032000000;
      v78 = sub_23BD5D640;
      v79 = sub_23BD5D650;
      v80 = 0;
      dispatch_group_enter(v38);
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = sub_23BD5D658;
      v73[3] = &unk_278B94AF8;
      p_buf = &buf;
      group = v38;
      v74 = group;
      objc_msgSend__fetchEnabledWaypointsForUserGuidesRestrictedToRadius_around_maximumCount_handler_(self, v44, locationCopy, v26, v73, v37);
      v46 = objc_msgSend__enabledWaypointsForGuideType_subType_restrictedTo_ofLocation_maxCount_(self, v45, 2, 0, locationCopy, v26, v37);
      v58 = v14;
      v47 = v42;
      v49 = objc_msgSend__enabledWaypointsForGuideType_subType_restrictedTo_ofLocation_maxCount_(self, v48, 3, &unk_284E8B070, locationCopy, v26, v37);
      queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23BD5D6B8;
      block[3] = &unk_278B94B48;
      v62 = v47;
      v63 = v59;
      v64 = v46;
      v65 = v49;
      v50 = v46;
      v66 = v40;
      selfCopy = self;
      v70 = &buf;
      v71 = v26;
      v68 = v58;
      v72 = v18;
      v69 = completionCopy;
      v51 = v40;
      v52 = v49;
      v53 = v50;
      v14 = v58;
      v54 = v53;
      v55 = v59;
      v56 = v47;
      dispatch_group_notify(group, queue, block);

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    if (v11)
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "[NCGuidesManager refreshWaypointsWithCenterLocation:maxDiameterInMeters:completion:]";
      _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Unable to calculate waypoints within range as location is nil", &buf, 0xCu);
    }

    completionCopy[2](completionCopy);
  }
}

- (id)_getUpdatedDatabaseWaypoints:(id)waypoints
{
  v48 = *MEMORY[0x277D85DE8];
  waypointsCopy = waypoints;
  v7 = objc_msgSend_sharedAppManager(NCWaypointManager, v4, v5, v6);
  v11 = objc_msgSend_fetchDatabaseWaypointsWithElevation(v7, v8, v9, v10);

  v12 = convertWaypointArrayToDict(waypointsCopy);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = v11;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v43, v47, 16);
  if (v15)
  {
    v19 = v15;
    v20 = *v44;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v44 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v43 + 1) + 8 * i);
        v23 = objc_msgSend_uuid(v22, v16, v17, v18, v43);
        v26 = objc_msgSend_objectForKey_(v12, v24, v23, v25);

        if (v26 && (objc_msgSend_isAltitudePopulated(v26, v27, v28, v29) & 1) == 0)
        {
          objc_msgSend_altitude(v22, v30, v31, v32);
          objc_msgSend_setAltitude_(v26, v33, v34, v35);
          objc_msgSend_setAltitudePopulated_(v26, v36, 1, v37);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v43, v47, 16);
    }

    while (v19);
  }

  v41 = objc_msgSend_allValues(v12, v38, v39, v40);

  return v41;
}

- (void)_fetchEnabledWaypointsForUserGuidesRestrictedToRadius:(double)radius around:(id)around maximumCount:(unint64_t)count handler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  aroundCopy = around;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (aroundCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_loadedGuides && selfCopy->_store)
    {
      objc_sync_exit(selfCopy);

      v14 = NCLogForCategory(9uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v27 = "[NCGuidesManager _fetchEnabledWaypointsForUserGuidesRestrictedToRadius:around:maximumCount:handler:]";
        _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Fetching waypoints for user guides only.", buf, 0xCu);
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_23BD5E070;
      v21[3] = &unk_278B94B70;
      v23 = v12;
      v21[4] = selfCopy;
      v22 = aroundCopy;
      radiusCopy = radius;
      countCopy = count;
      v15 = MEMORY[0x23EEBBDF0](v21);
      v16 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23BD5E7B4;
      block[3] = &unk_278B94718;
      block[4] = selfCopy;
      v20 = v15;
      v17 = v15;
      dispatch_async(v16, block);
    }

    else
    {
      v18 = NCLogForCategory(9uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v27 = "[NCGuidesManager _fetchEnabledWaypointsForUserGuidesRestrictedToRadius:around:maximumCount:handler:]";
        _os_log_impl(&dword_23BD26000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: returning empty list, guides or store are not loaded", buf, 0xCu);
      }

      v12[2](v12, MEMORY[0x277CBEBF8]);
      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8]);
  }
}

- (void)_addEnabledWaypointsForGuide:(id)guide
{
  guideCopy = guide;
  v7 = objc_msgSend_mutableCopy(self->_allEnabledWaypoints, v4, v5, v6);
  v11 = objc_msgSend_fetchWaypoints(guideCopy, v8, v9, v10);
  objc_msgSend_addObjectsFromArray_(v7, v12, v11, v13);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v15, v7, v16);
  allEnabledWaypoints = self->_allEnabledWaypoints;
  self->_allEnabledWaypoints = v17;

  objc_sync_exit(selfCopy);
  objc_msgSend__postNotification_(selfCopy, v19, @"GuideEnabledListChangedNotification", v20);
}

- (void)_removeDisabledWaypointsForGuide:(id)guide
{
  guideCopy = guide;
  v7 = objc_msgSend_mutableCopy(self->_allEnabledWaypoints, v4, v5, v6);
  v11 = objc_msgSend_fetchWaypoints(guideCopy, v8, v9, v10);
  objc_msgSend_removeObjectsInArray_(v7, v12, v11, v13);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v15, v7, v16);
  allEnabledWaypoints = self->_allEnabledWaypoints;
  self->_allEnabledWaypoints = v17;

  objc_sync_exit(selfCopy);
  objc_msgSend__postNotification_(selfCopy, v19, @"GuideEnabledListChangedNotification", v20);
}

- (void)_refreshAllWaypoints
{
  v179 = *MEMORY[0x277D85DE8];
  v159 = objc_msgSend__currentlyDisabledGuides(self, a2, v2, v3);
  v156 = objc_opt_new();
  objc_msgSend_userGuides(self, v5, v6, v7);
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  obj = v169 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v168, v178, 16);
  if (v12)
  {
    v13 = *v169;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v169 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v168 + 1) + 8 * i);
        guidesEnabledState = self->_guidesEnabledState;
        v17 = objc_msgSend_type(v15, v9, v10, v11);
        isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(guidesEnabledState, v18, v17, v19);
        v24 = objc_msgSend_uuid(v15, v21, v22, v23);
        v28 = objc_msgSend_UUIDString(v24, v25, v26, v27);
        LOBYTE(guidesEnabledState) = objc_msgSend_containsObject_(v159, v29, v28, v30);

        if (!(guidesEnabledState & 1 | ((isEnabledForGuideType & 1) == 0)))
        {
          v31 = objc_msgSend_fetchWaypoints(v15, v9, v10, v11);
          objc_msgSend_addObjectsFromArray_(v156, v32, v31, v33);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v168, v178, 16);
    }

    while (v12);
  }

  v158 = objc_opt_new();
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v37 = objc_msgSend_loadedProviderGuidesByType(self, v34, v35, v36);
  v152 = objc_msgSend_allValues(v37, v38, v39, v40);

  v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v152, v41, &v164, v177, 16);
  if (v154)
  {
    v153 = *v165;
    do
    {
      v42 = 0;
      do
      {
        if (*v165 != v153)
        {
          v43 = v42;
          objc_enumerationMutation(v152);
          v42 = v43;
        }

        v155 = v42;
        v44 = *(*(&v164 + 1) + 8 * v42);
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v45 = v44;
        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v160, v176, 16);
        if (v50)
        {
          v51 = *v161;
          do
          {
            for (j = 0; j != v50; ++j)
            {
              if (*v161 != v51)
              {
                objc_enumerationMutation(v45);
              }

              v53 = *(*(&v160 + 1) + 8 * j);
              v54 = self->_guidesEnabledState;
              v55 = objc_msgSend_type(v53, v47, v48, v49, v152);
              v58 = objc_msgSend_isEnabledForGuideType_(v54, v56, v55, v57);
              v62 = objc_msgSend_uuid(v53, v59, v60, v61);
              v66 = objc_msgSend_UUIDString(v62, v63, v64, v65);
              v69 = objc_msgSend_containsObject_(v159, v67, v66, v68);

              if (!(v69 & 1 | ((v58 & 1) == 0)))
              {
                v70 = objc_msgSend_fetchWaypoints(v53, v47, v48, v49);
                objc_msgSend_addObjectsFromArray_(v158, v71, v70, v72);
              }
            }

            v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v160, v176, 16);
          }

          while (v50);
        }

        v42 = v155 + 1;
      }

      while (v155 + 1 != v154);
      v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v152, v73, &v164, v177, 16);
    }

    while (v154);
  }

  v74 = objc_opt_new();
  objc_msgSend_addObjectsFromArray_(v74, v75, v156, v76);
  objc_msgSend_addObjectsFromArray_(v74, v77, v158, v78);
  v79 = objc_opt_new();
  v80 = self->_guidesEnabledState;
  v84 = objc_msgSend_type(self->_compassGuide, v81, v82, v83);
  v87 = objc_msgSend_isEnabledForGuideType_(v80, v85, v84, v86);
  v91 = objc_msgSend_uuid(self->_compassGuide, v88, v89, v90);
  v95 = objc_msgSend_UUIDString(v91, v92, v93, v94);
  v98 = objc_msgSend_containsObject_(v159, v96, v95, v97);

  if (!(v98 & 1 | ((v87 & 1) == 0)))
  {
    v102 = objc_msgSend_enabledWaypoints(self->_compassGuide, v99, v100, v101);
    objc_msgSend_addObjectsFromArray_(v79, v103, v102, v104);
  }

  objc_msgSend_addObjectsFromArray_(v79, v99, v156, v101, v152);
  objc_msgSend_addObjectsFromArray_(v79, v105, v158, v106);
  v107 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    v111 = objc_msgSend_count(v79, v108, v109, v110);
    *buf = 136446466;
    v173 = "[NCGuidesManager _refreshAllWaypoints]";
    v174 = 2048;
    v175 = v111;
    _os_log_impl(&dword_23BD26000, v107, OS_LOG_TYPE_DEFAULT, "%{public}s: setting allEnabledWaypoints with %lu items", buf, 0x16u);
  }

  v112 = MEMORY[0x277CBEB18];
  v116 = objc_msgSend_fetchWaypoints(self->_compassGuide, v113, v114, v115);
  v119 = objc_msgSend_arrayWithArray_(v112, v117, v116, v118);

  objc_msgSend_addObjectsFromArray_(v119, v120, v156, v121);
  objc_msgSend_addObjectsFromArray_(v119, v122, v158, v123);
  v127 = objc_msgSend__allSystemWaypoints(self, v124, v125, v126);
  objc_msgSend_addObjectsFromArray_(v119, v128, v127, v129);
  v130 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
  {
    v134 = objc_msgSend_count(v119, v131, v132, v133);
    *buf = 136446466;
    v173 = "[NCGuidesManager _refreshAllWaypoints]";
    v174 = 2048;
    v175 = v134;
    _os_log_impl(&dword_23BD26000, v130, OS_LOG_TYPE_DEFAULT, "%{public}s: setting allWaypoints with %lu items", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v138 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v136, v79, v137);
  allEnabledWaypoints = selfCopy->_allEnabledWaypoints;
  selfCopy->_allEnabledWaypoints = v138;

  v142 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v140, v119, v141);
  allWaypoints = selfCopy->_allWaypoints;
  selfCopy->_allWaypoints = v142;

  v146 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v144, v74, v145);
  allProviderAndMapsDatabaseWaypoints = selfCopy->_allProviderAndMapsDatabaseWaypoints;
  selfCopy->_allProviderAndMapsDatabaseWaypoints = v146;

  v150 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v148, v127, v149);
  systemWaypoints = selfCopy->_systemWaypoints;
  selfCopy->_systemWaypoints = v150;

  objc_sync_exit(selfCopy);
}

- (id)_allSystemWaypoints
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  v6 = objc_msgSend_systemWaypoints(self->_compassGuide, a2, v2, v3);
  v9 = objc_msgSend_arrayWithArray_(v5, v7, v6, v8);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = self->_userGuides;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v27, v31, 16);
  if (v12)
  {
    v16 = v12;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v10);
        }

        v19 = objc_msgSend_systemWaypoints(*(*(&v27 + 1) + 8 * i), v13, v14, v15, v27);
        objc_msgSend_addObjectsFromArray_(v9, v20, v19, v21);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v27, v31, 16);
    }

    while (v16);
  }

  v25 = objc_msgSend_copy(v9, v22, v23, v24);

  return v25;
}

- (id)_enabledCompassWaypointsRestrictedTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count
{
  v93 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v9 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD67A60();
  }

  guidesEnabledState = self->_guidesEnabledState;
  v14 = objc_msgSend_type(self->_compassGuide, v11, v12, v13);
  if (objc_msgSend_isEnabledForGuideType_(guidesEnabledState, v15, v14, v16) && (objc_msgSend_guideEnabled_(self, v17, self->_compassGuide, v18) & 1) != 0)
  {
    countCopy = count;
    v22 = objc_msgSend_enabledWaypoints(self->_compassGuide, v19, v20, v21);
    v23 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v24 = v22;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v80, v92, 16);
    if (!v26)
    {
      goto LABEL_22;
    }

    v30 = v26;
    v31 = *v81;
    while (1)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v81 != v31)
        {
          objc_enumerationMutation(v24);
        }

        v33 = *(*(&v80 + 1) + 8 * i);
        v34 = objc_msgSend_location(v33, v27, v28, v29);
        objc_msgSend_distanceFromLocation_(v34, v35, locationCopy, v36);
        v38 = v37;

        v39 = allowVerboseLog();
        if (v38 >= to)
        {
          if (!v39)
          {
            continue;
          }

          v47 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            v54 = objc_msgSend_label(v33, v50, v51, v52);
            *buf = 136446722;
            v85 = "[NCGuidesManager _enabledCompassWaypointsRestrictedTo:ofLocation:maxCount:]";
            v86 = 2112;
            v87 = v54;
            v88 = 2048;
            v89 = v38;
            _os_log_debug_impl(&dword_23BD26000, v47, OS_LOG_TYPE_DEBUG, "%{public}s Excluding compass waypoint %@, distance is %f", buf, 0x20u);
          }
        }

        else
        {
          if (v39)
          {
            v40 = NCLogForCategory(9uLL);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              v53 = objc_msgSend_label(v33, v41, v42, v43);
              *buf = 136446722;
              v85 = "[NCGuidesManager _enabledCompassWaypointsRestrictedTo:ofLocation:maxCount:]";
              v86 = 2112;
              v87 = v53;
              v88 = 2048;
              v89 = v38;
              _os_log_debug_impl(&dword_23BD26000, v40, OS_LOG_TYPE_DEBUG, "%{public}s Including compass waypoint %@, distance is %f", buf, 0x20u);
            }
          }

          v44 = [NCWaypointWithDistance alloc];
          v47 = objc_msgSend_initWithWaypoint_distance_(v44, v45, v33, v46, v38);
          objc_msgSend_addObject_(v23, v48, v47, v49);
        }
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v80, v92, 16);
      if (!v30)
      {
LABEL_22:

        v55 = NCLogForCategory(9uLL);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v59 = objc_msgSend_count(v23, v56, v57, v58);
          v63 = objc_msgSend_count(v24, v60, v61, v62);
          *buf = 136446978;
          v85 = "[NCGuidesManager _enabledCompassWaypointsRestrictedTo:ofLocation:maxCount:]";
          v86 = 2048;
          v87 = v59;
          v88 = 2048;
          v89 = *&v63;
          v90 = 2048;
          v91 = countCopy;
          _os_log_impl(&dword_23BD26000, v55, OS_LOG_TYPE_INFO, "%{public}s: found %lu of %lu compass waypoints in range.  Max allowed is: %lu", buf, 0x2Au);
        }

        objc_msgSend_sortUsingSelector_(v23, v64, sel_compare_, v65);
        if (objc_msgSend_count(v23, v66, v67, v68) > countCopy)
        {
          v72 = objc_msgSend_count(v23, v69, v70, v71);
          v74 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v73, countCopy, v72 - countCopy);
          objc_msgSend_removeObjectsAtIndexes_(v23, v75, v74, v76);
        }

        v77 = objc_msgSend_copy(v23, v69, v70, v71);

        goto LABEL_30;
      }
    }
  }

  v24 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v85 = "[NCGuidesManager _enabledCompassWaypointsRestrictedTo:ofLocation:maxCount:]";
    _os_log_impl(&dword_23BD26000, v24, OS_LOG_TYPE_INFO, "%s: Compass guide is disabled (globally or individually), returning no waypoints.", buf, 0xCu);
  }

  v77 = MEMORY[0x277CBEBF8];
LABEL_30:

  return v77;
}

- (id)_systemWaypointsRestrictedTo:(double)to ofLocation:(id)location
{
  v69 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v7 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD67AE4();
  }

  v11 = objc_msgSend_systemWaypoints(self->_compassGuide, v8, v9, v10);
  v12 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v13 = v11;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v58, v68, 16);
  if (v15)
  {
    v20 = v15;
    v21 = *v59;
    *&v19 = 136446722;
    v57 = v19;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v59 != v21)
        {
          objc_enumerationMutation(v13);
        }

        v23 = *(*(&v58 + 1) + 8 * i);
        v24 = objc_msgSend_location(v23, v16, v17, v18, v57, v58);
        objc_msgSend_distanceFromLocation_(v24, v25, locationCopy, v26);
        v28 = v27;

        v29 = NCLogForCategory(9uLL);
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
        if (v28 >= to)
        {
          if (v30)
          {
            v40 = objc_msgSend_label(v23, v31, v32, v33);
            *buf = v57;
            v63 = "[NCGuidesManager _systemWaypointsRestrictedTo:ofLocation:]";
            v64 = 2112;
            v65 = v40;
            v66 = 2048;
            v67 = v28;
            _os_log_debug_impl(&dword_23BD26000, v29, OS_LOG_TYPE_DEBUG, "%{public}s Excluding system waypoint %@, distance is %f", buf, 0x20u);
          }
        }

        else
        {
          if (v30)
          {
            v39 = objc_msgSend_label(v23, v31, v32, v33);
            *buf = v57;
            v63 = "[NCGuidesManager _systemWaypointsRestrictedTo:ofLocation:]";
            v64 = 2112;
            v65 = v39;
            v66 = 2048;
            v67 = v28;
            _os_log_debug_impl(&dword_23BD26000, v29, OS_LOG_TYPE_DEBUG, "%{public}s Including system waypoint %@, distance is %f", buf, 0x20u);
          }

          v34 = [NCWaypointWithDistance alloc];
          v29 = objc_msgSend_initWithWaypoint_distance_(v34, v35, v23, v36, v28);
          objc_msgSend_addObject_(v12, v37, v29, v38);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v58, v68, 16);
    }

    while (v20);
  }

  v41 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v45 = objc_msgSend_count(v12, v42, v43, v44);
    v49 = objc_msgSend_count(v13, v46, v47, v48);
    *buf = 136446722;
    v63 = "[NCGuidesManager _systemWaypointsRestrictedTo:ofLocation:]";
    v64 = 2048;
    v65 = v45;
    v66 = 2048;
    v67 = *&v49;
    _os_log_impl(&dword_23BD26000, v41, OS_LOG_TYPE_INFO, "%{public}s: including %lu of %lu system waypoints", buf, 0x20u);
  }

  objc_msgSend_sortUsingSelector_(v12, v50, sel_compare_, v51);
  v55 = objc_msgSend_copy(v12, v52, v53, v54);

  return v55;
}

- (void)_fetchEnabledWaypointsRestrictingMapGuidesTo:(double)to ofLocation:(id)location maxCount:(unint64_t)count handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_loadedGuides)
  {
    objc_sync_exit(selfCopy);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23BD5FC28;
    v15[3] = &unk_278B94BC0;
    v15[4] = selfCopy;
    v16 = locationCopy;
    countCopy = count;
    v17 = handlerCopy;
    objc_msgSend__fetchAllPlaceItemsRestrictingMapGuidesTo_ofLocation_handler_(selfCopy, v13, v16, v15, to);
  }

  else
  {
    v14 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v20 = "[NCGuidesManager _fetchEnabledWaypointsRestrictingMapGuidesTo:ofLocation:maxCount:handler:]";
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: returning empty list, guides are not loaded", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8]);
    objc_sync_exit(selfCopy);
  }
}

- (void)_fetchAllWaypointsRestrictingMapGuidesTo:(double)to ofLocation:(id)location handler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_loadedGuides)
  {
    objc_sync_exit(selfCopy);

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23BD60270;
    v13[3] = &unk_278B94BE8;
    v14 = handlerCopy;
    objc_msgSend__fetchAllPlaceItemsRestrictingMapGuidesTo_ofLocation_handler_(selfCopy, v11, locationCopy, v13, to);
    selfCopy = v14;
  }

  else
  {
    v12 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = "[NCGuidesManager _fetchAllWaypointsRestrictingMapGuidesTo:ofLocation:handler:]";
      _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: returning empty list, guides are not loaded", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8]);
    objc_sync_exit(selfCopy);
  }
}

- (void)_fetchAllPlaceItemsRestrictingMapGuidesTo:(double)to ofLocation:(id)location handler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  locationCopy = location;
  v10 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v36 = "[NCGuidesManager _fetchAllPlaceItemsRestrictingMapGuidesTo:ofLocation:handler:]";
    _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Determining which guide waypoints are within range and enabled.", buf, 0xCu);
  }

  v11 = objc_alloc(MEMORY[0x277D26680]);
  objc_msgSend_coordinate(locationCopy, v12, v13, v14);
  v16 = v15;
  objc_msgSend_coordinate(locationCopy, v17, v18, v19);
  v21 = v20;

  v25 = objc_msgSend_initWithCenterLatitude_centerLongitude_squareSideLengthMeters_(v11, v22, v23, v24, v16, v21, to);
  v26 = objc_alloc(MEMORY[0x277D26678]);
  v28 = objc_msgSend_initWithPredicate_sortDescriptors_range_(v26, v27, v25, 0, 0);
  v29 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD60670;
  block[3] = &unk_278B94920;
  block[4] = self;
  v33 = v28;
  v34 = handlerCopy;
  v30 = handlerCopy;
  v31 = v28;
  dispatch_async(v29, block);
}

- (void)loadGuides
{
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD608B8;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)guideEnabled:(id)enabled
{
  v5 = objc_msgSend_uuid(enabled, a2, enabled, v3);
  LOBYTE(self) = objc_msgSend_guideWithIdentifierEnabled_(self, v6, v5, v7);

  return self;
}

- (BOOL)guideWithIdentifierEnabled:(id)enabled
{
  enabledCopy = enabled;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  disabledGuidesQueue = self->_disabledGuidesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD609D4;
  block[3] = &unk_278B94C10;
  v9 = enabledCopy;
  v10 = &v11;
  block[4] = self;
  v6 = enabledCopy;
  dispatch_sync(disabledGuidesQueue, block);
  LOBYTE(disabledGuidesQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return disabledGuidesQueue;
}

- (void)enableWaypoints:(BOOL)waypoints forGuide:(id)guide
{
  guideCopy = guide;
  disabledGuidesQueue = self->_disabledGuidesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD60AE8;
  block[3] = &unk_278B94080;
  waypointsCopy = waypoints;
  v10 = guideCopy;
  selfCopy = self;
  v8 = guideCopy;
  dispatch_async(disabledGuidesQueue, block);
}

- (void)setGlobalEnabledState:(BOOL)state forGuideType:(int64_t)type
{
  stateCopy = state;
  v20 = *MEMORY[0x277D85DE8];
  isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(self->_guidesEnabledState, a2, type, type);
  v8 = NCLogForCategory(9uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (isEnabledForGuideType == stateCopy)
  {
    if (v9)
    {
      v14 = 136315650;
      v15 = "[NCGuidesManager setGlobalEnabledState:forGuideType:]";
      v16 = 2048;
      typeCopy2 = type;
      v18 = 1024;
      v19 = stateCopy;
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_INFO, "%s: No change needed. Global enabled state for type %ld is already %d.", &v14, 0x1Cu);
    }
  }

  else
  {
    if (v9)
    {
      v14 = 136315650;
      v15 = "[NCGuidesManager setGlobalEnabledState:forGuideType:]";
      v16 = 2048;
      typeCopy2 = type;
      v18 = 1024;
      v19 = stateCopy;
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_INFO, "%s: Setting global enabled state for guide type %ld to %d", &v14, 0x1Cu);
    }

    objc_msgSend_setEnabled_forGuideType_(self->_guidesEnabledState, v10, stateCopy, type);
    objc_msgSend__refreshNonDistanceLimitedWaypoints(self, v11, v12, v13);
  }
}

- (int64_t)numEnabledGuideWaypoints
{
  v48 = *MEMORY[0x277D85DE8];
  v42 = objc_msgSend__currentlyDisabledGuides(self, a2, v2, v3);
  selfCopy = self;
  objc_msgSend_userGuides(self, v5, v6, v7);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = v46 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v43, v47, 16);
  if (v10)
  {
    v11 = v10;
    v41 = 0;
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v14;
          guidesEnabledState = selfCopy->_guidesEnabledState;
          v21 = objc_msgSend_type(v16, v18, v19, v20);
          isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(guidesEnabledState, v22, v21, v23);
          v28 = objc_msgSend_uuid(v16, v25, v26, v27);
          v32 = objc_msgSend_UUIDString(v28, v29, v30, v31);
          v35 = objc_msgSend_containsObject_(v42, v33, v32, v34);

          if (isEnabledForGuideType && (v35 & 1) == 0)
          {
            v41 += objc_msgSend_waypointCount(v16, v36, v37, v38);
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v43, v47, 16);
    }

    while (v11);
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

- (int64_t)numGuideWaypoints
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_userGuides(self, a2, v2, v3);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 += objc_msgSend_waypointCount(v11, v12, v13, v14);
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v12, &v16, v20, 16);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)numDisabledGuides
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  disabledGuidesQueue = self->_disabledGuidesQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23BD610B8;
  v5[3] = &unk_278B94C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(disabledGuidesQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)numEnabledPOIs
{
  v60 = *MEMORY[0x277D85DE8];
  v49 = objc_msgSend__currentlyDisabledGuides(self, a2, v2, v3);
  v8 = objc_msgSend_loadedProviderGuidesByType(self, v5, v6, v7);
  v11 = objc_msgSend_objectForKeyedSubscript_(v8, v9, &unk_284E8B088, v10);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v11;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v54, v59, 16);
  if (v13)
  {
    v17 = v13;
    v18 = 0;
    v19 = *v55;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v54 + 1) + 8 * i);
        guidesEnabledState = self->_guidesEnabledState;
        v23 = objc_msgSend_type(v21, v14, v15, v16);
        isEnabledForGuideType = objc_msgSend_isEnabledForGuideType_(guidesEnabledState, v24, v23, v25);
        v30 = objc_msgSend_uuid(v21, v27, v28, v29);
        v34 = objc_msgSend_UUIDString(v30, v31, v32, v33);
        v37 = objc_msgSend_containsObject_(v49, v35, v34, v36);

        if (isEnabledForGuideType && (v37 & 1) == 0)
        {
          v38 = objc_msgSend_fetchWaypoints(v21, v14, v15, v16);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v50, v58, 16);
          if (v40)
          {
            v44 = v40;
            v45 = *v51;
            do
            {
              for (j = 0; j != v44; ++j)
              {
                if (*v51 != v45)
                {
                  objc_enumerationMutation(v38);
                }

                v18 += objc_msgSend_isEnabled(*(*(&v50 + 1) + 8 * j), v41, v42, v43);
              }

              v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v50, v58, 16);
            }

            while (v44);
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v54, v59, 16);
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (int64_t)numTotalPOIs
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_loadedProviderGuidesByType(self, a2, v2, v3);
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, &unk_284E8B088, v6);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v27, 16);
  if (v10)
  {
    v14 = v10;
    v15 = 0;
    v16 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v18 = objc_msgSend_fetchWaypoints(*(*(&v23 + 1) + 8 * i), v11, v12, v13, v23);
        v15 += objc_msgSend_count(v18, v19, v20, v21);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v23, v27, 16);
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_handleFirstUnlock
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[NCGuidesManager _handleFirstUnlock]";
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s: Received notification that device has been unlocked.", buf, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_hasBeenUnlockedSinceBoot)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy->_hasBeenUnlockedSinceBoot = 1;
    objc_sync_exit(selfCopy);

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD615B0;
    block[3] = &unk_278B93FB0;
    block[4] = selfCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)_currentlyDisabledGuides
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_23BD5D640;
  v10 = sub_23BD5D650;
  v11 = 0;
  disabledGuidesQueue = self->_disabledGuidesQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23BD61768;
  v5[3] = &unk_278B94C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(disabledGuidesQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_loadDisabledGuidesFromDefaults
{
  v36[1] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_disabledGuidesQueue);
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = objc_msgSend_initWithSuiteName_(v3, v4, @"com.apple.compass", v5);
  v12 = objc_msgSend_objectForKey_(v6, v7, @"DisabledGuides", v8);
  if (v12)
  {
    v13 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB58], v9, v12, v11);
    disabledGuides = self->_disabledGuides;
    self->_disabledGuides = v13;
  }

  else
  {
    v15 = objc_msgSend_placesSavedPlacesGuideUUID(NCFixedGuidesUUID, v9, v10, v11);
    v19 = objc_msgSend_UUIDString(v15, v16, v17, v18);

    v20 = MEMORY[0x277CBEB58];
    v36[0] = v19;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v36, 1);
    v25 = objc_msgSend_setWithArray_(v20, v23, v22, v24);
    v26 = self->_disabledGuides;
    self->_disabledGuides = v25;

    objc_msgSend__saveDisabledGuidesToDefaults(self, v27, v28, v29);
  }

  v30 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = self->_disabledGuides;
    v32 = 136315394;
    v33 = "[NCGuidesManager _loadDisabledGuidesFromDefaults]";
    v34 = 2112;
    v35 = v31;
    _os_log_impl(&dword_23BD26000, v30, OS_LOG_TYPE_INFO, "%s: Final _disabledGuides array contents: %@", &v32, 0x16u);
  }
}

- (void)_saveDisabledGuidesToDefaults
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_disabledGuidesQueue);
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = objc_msgSend_initWithSuiteName_(v3, v4, @"com.apple.compass", v5);
  v10 = objc_msgSend_allObjects(self->_disabledGuides, v7, v8, v9);
  objc_msgSend_setObject_forKey_(v6, v11, v10, @"DisabledGuides");

  objc_msgSend_synchronize(v6, v12, v13, v14);
  v15 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v19 = 136315138;
    v20 = "[NCGuidesManager _saveDisabledGuidesToDefaults]";
    _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_INFO, "%s: _saveDisabledGuidesToDefaults", &v19, 0xCu);
  }

  objc_msgSend__backupDisabledGuides(self, v16, v17, v18);
}

- (void)_loadGuides
{
  v39 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_hasBeenUnlockedSinceBoot)
  {
    v3 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[NCGuidesManager _loadGuides]";
      v4 = "%s: We can't refresh guides until the device is unlocked the first time.";
      goto LABEL_13;
    }

LABEL_14:

    objc_sync_exit(selfCopy);
    v5 = selfCopy;
    goto LABEL_15;
  }

  if (!selfCopy->_store)
  {
    v3 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[NCGuidesManager _loadGuides]";
      v4 = "%s: We can't refresh guides because store didn't load or failed to load.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (selfCopy->_loadingGuides)
  {
    v3 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[NCGuidesManager _loadGuides]";
      v4 = "%s: Not refreshing guides as they are currently loading.";
LABEL_13:
      _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_INFO, v4, buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (selfCopy->_loadedGuides)
  {
    v3 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[NCGuidesManager _loadGuides]";
      v4 = "%s: Guides are already loaded.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  objc_sync_exit(selfCopy);

  v6 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[NCGuidesManager _loadGuides]";
    _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s: Fetching map guide collections", buf, 0xCu);
  }

  v7 = selfCopy;
  objc_sync_enter(v7);
  selfCopy->_loadingGuides = 1;
  objc_sync_exit(v7);

  v11 = objc_msgSend_storeGroup(v7, v8, v9, v10);
  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

  v12 = objc_alloc(MEMORY[0x277D26618]);
  v16 = objc_msgSend_store(v7, v13, v14, v15);
  v19 = objc_msgSend_initWithStore_(v12, v17, v16, v18);

  v34 = 0;
  v22 = objc_msgSend_fetchSyncAndReturnError_(v19, v20, &v34, v21);
  v5 = v34;
  objc_msgSend__updateUserGuidesUsingCollections_(v7, v23, v22, v24);
  v25 = v7;
  objc_sync_enter(v25);
  selfCopy->_loadingGuides = 0;
  objc_sync_exit(v25);

  v26 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v30 = objc_msgSend_count(v22, v27, v28, v29);
    *buf = 136315394;
    v36 = "[NCGuidesManager _loadGuides]";
    v37 = 2048;
    v38 = v30;
    _os_log_impl(&dword_23BD26000, v26, OS_LOG_TYPE_DEFAULT, "%s: Fetched collections, num collections is %lu", buf, 0x16u);
  }

  if (v5)
  {
    v31 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_23BD67BE0();
    }
  }

  else
  {
    v32 = v25;
    objc_sync_enter(v32);
    selfCopy->_loadedGuides = 1;
    objc_sync_exit(v32);

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_23BD61ED8;
    v33[3] = &unk_278B93FB0;
    v33[4] = v32;
    dispatch_async(MEMORY[0x277D85CD0], v33);
  }

LABEL_15:
}

- (void)_refreshGuides
{
  v52 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_store)
  {
    selfCopy->_loadedGuides = 0;
    objc_sync_exit(selfCopy);

    objc_msgSend_loadGuides(selfCopy, v3, v4, v5);
    v9 = objc_msgSend_guideProviders(selfCopy, v6, v7, v8);
    v13 = objc_msgSend_count(v9, v10, v11, v12);

    if (!v13)
    {
      return;
    }

    v14 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_msgSend_guideProviders(selfCopy, v15, v16, v17);
      *buf = 136315394;
      *&buf[4] = "[NCGuidesManager _refreshGuides]";
      *&buf[12] = 2048;
      *&buf[14] = objc_msgSend_count(v18, v19, v20, v21);
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "%s: Refreshing guides from %lu providers.", buf, 0x16u);
    }

    p_super = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v49 = sub_23BD5D640;
    v50 = sub_23BD5D650;
    v51 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v26 = objc_msgSend_guideProviders(selfCopy, v23, v24, v25);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v43, v47, 16);
    if (v28)
    {
      v29 = *v44;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v43 + 1) + 8 * i);
          dispatch_group_enter(p_super);
          v35 = objc_msgSend_store(selfCopy, v32, v33, v34);
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = sub_23BD62368;
          v40[3] = &unk_278B94AF8;
          v42 = buf;
          v41 = p_super;
          objc_msgSend_refreshGuidesWithStore_completion_(v31, v36, v35, v40);
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v37, &v43, v47, 16);
      }

      while (v28);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD62404;
    block[3] = &unk_278B94C38;
    block[5] = buf;
    block[4] = selfCopy;
    dispatch_group_notify(p_super, MEMORY[0x277D85CD0], block);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v38 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[NCGuidesManager _refreshGuides]";
      _os_log_impl(&dword_23BD26000, v38, OS_LOG_TYPE_INFO, "%s: Aborting refresh because the store is not available.", buf, 0xCu);
    }

    p_super = &selfCopy->super;
    objc_sync_exit(selfCopy);
  }
}

- (void)_updateUserGuidesUsingCollections:(id)collections
{
  v106 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  v86 = objc_opt_new();
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = collectionsCopy;
  v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v94, v105, 16);
  if (v88)
  {
    v87 = *v95;
    do
    {
      v8 = 0;
      do
      {
        if (*v95 != v87)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v89 = v8;
        v10 = *(*(&v94 + 1) + 8 * v8);
        v11 = objc_msgSend_title(v10, v5, v6, v7);

        v12 = NCLogForCategory(9uLL);
        v13 = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v17 = objc_msgSend_title(v10, v14, v15, v16);
            v18 = v17;
            v22 = objc_msgSend_UTF8String(v17, v19, v20, v21);
            v23 = MEMORY[0x277CCABB0];
            v27 = objc_msgSend_placesCount(v10, v24, v25, v26);
            v30 = objc_msgSend_numberWithInt_(v23, v28, v27, v29);
            *buf = 136315650;
            v100 = "[NCGuidesManager _updateUserGuidesUsingCollections:]";
            v101 = 2080;
            v102 = v22;
            v103 = 2112;
            v104 = v30;
            _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "%s: Converting to Guide - Collection: %s, num items is %@", buf, 0x20u);
          }

          v13 = objc_opt_new();
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v34 = objc_msgSend_fetchPlaces(v10, v31, v32, v33);
          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v90, v98, 16);
          if (v36)
          {
            v37 = *v91;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v91 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v90 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v41 = v39;
                  v45 = objc_msgSend_identifier(v10, v42, v43, v44);
                  v47 = objc_msgSend_waypointForCollectionPlaceItem_inGuide_(NCWaypoint, v46, v41, v45);

                  objc_msgSend_addObject_(v13, v48, v47, v49);
                }
              }

              v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v40, &v90, v98, 16);
            }

            while (v36);
          }

          v50 = MEMORY[0x277CCACA8];
          v54 = objc_msgSend_title(v10, v51, v52, v53);
          v55 = v54;
          v59 = objc_msgSend_UTF8String(v54, v56, v57, v58);
          v62 = objc_msgSend_stringWithUTF8String_(v50, v60, v59, v61);

          v63 = [NCMapsUserGuide alloc];
          v67 = objc_msgSend_identifier(v10, v64, v65, v66);
          v69 = objc_msgSend_initWithIdentifier_name_waypoints_(v63, v68, v67, v62, v13);

          v70 = NCLogForCategory(9uLL);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v100 = v62;
            v101 = 2112;
            v102 = v13;
            _os_log_impl(&dword_23BD26000, v70, OS_LOG_TYPE_DEFAULT, "Created guide with name %@ and waypoints %@", buf, 0x16u);
          }

          objc_msgSend_addObject_(v86, v71, v69, v72);
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v76 = objc_msgSend_identifier(v10, v73, v74, v75);
          *buf = 136315394;
          v100 = "[NCGuidesManager _updateUserGuidesUsingCollections:]";
          v101 = 2112;
          v102 = v76;
          _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_INFO, "%s: Skipping collection %@, it has no title", buf, 0x16u);
        }

        v8 = v89 + 1;
      }

      while (v89 + 1 != v88);
      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v94, v105, 16);
    }

    while (v88);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v78 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
  {
    v82 = objc_msgSend_count(v86, v79, v80, v81);
    *buf = 136315394;
    v100 = "[NCGuidesManager _updateUserGuidesUsingCollections:]";
    v101 = 2048;
    v102 = v82;
    _os_log_impl(&dword_23BD26000, v78, OS_LOG_TYPE_INFO, "%s: setting _userGuides with %lu guides", buf, 0x16u);
  }

  userGuides = selfCopy->_userGuides;
  selfCopy->_userGuides = v86;

  objc_sync_exit(selfCopy);
}

- (void)_refreshNonDistanceLimitedWaypoints
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[NCGuidesManager _refreshNonDistanceLimitedWaypoints]";
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_INFO, "%s: refreshing allEnabledWaypoints and allWaypoints.", &v9, 0xCu);
  }

  objc_msgSend__refreshAllWaypoints(self, v4, v5, v6);
  objc_msgSend__postNotification_(self, v7, @"GuideWaypointsChangedNotification", v8);
}

- (void)_handleWaypointListChanged:(id)changed
{
  v16 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_name(changedCopy, v6, v7, v8);
    *buf = 136315394;
    v13 = "[NCGuidesManager _handleWaypointListChanged:]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_INFO, "%s: %@", buf, 0x16u);
  }

  disabledGuidesQueue = self->_disabledGuidesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD62DD4;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  dispatch_async(disabledGuidesQueue, block);
}

- (void)reloadWaypoints
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[NCGuidesManager reloadWaypoints]";
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_INFO, "%s: will refresh waypoints/guides.", buf, 0xCu);
  }

  disabledGuidesQueue = self->_disabledGuidesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD62F6C;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  dispatch_async(disabledGuidesQueue, block);
}

- (void)storeControllerWithDidLoad:(id)load
{
  v18 = *MEMORY[0x277D85DE8];
  loadCopy = load;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_setStore_(selfCopy, v6, loadCopy, v7);
  objc_sync_exit(selfCopy);

  v11 = objc_msgSend_storeGroup(selfCopy, v8, v9, v10);
  dispatch_group_leave(v11);

  v12 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[NCGuidesManager storeControllerWithDidLoad:]";
    _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, "%s: storeControllerWithDidLoad completed, loading guides", &v16, 0xCu);
  }

  objc_msgSend__refreshGuides(selfCopy, v13, v14, v15);
}

- (void)storeControllerWithFailedToLoad:(id)load
{
  v14 = *MEMORY[0x277D85DE8];
  loadCopy = load;
  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[NCGuidesManager storeControllerWithFailedToLoad:]";
    v12 = 2114;
    v13 = loadCopy;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s: storeControllerWithFailedToLoad, error is %{public}@", &v10, 0x16u);
  }

  v9 = objc_msgSend_storeGroup(self, v6, v7, v8);
  dispatch_group_leave(v9);
}

- (void)storeControllerWithDataChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[NCGuidesManager storeControllerWithDataChanged:]";
    v11 = 2114;
    v12 = changedCopy;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s: storeControllerWithDataChanged, error is %{public}@", &v9, 0x16u);
  }

  objc_msgSend__refreshGuides(self, v6, v7, v8);
}

@end