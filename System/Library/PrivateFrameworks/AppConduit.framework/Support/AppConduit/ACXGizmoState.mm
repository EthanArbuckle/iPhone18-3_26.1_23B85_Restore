@interface ACXGizmoState
- (ACXGizmoState)initWithDevice:(id)device;
- (BOOL)_init_migrateSockPuppetSettings;
- (BOOL)_onQueue_cleanUpExpiredPendingUpdateStates;
- (BOOL)_onQueue_pendingInstallStateShouldBeIgnoredForApp:(id)app existingState:(id)state newState:(id)newState;
- (BOOL)_onQueue_setInstallStatusForApps:(id)apps sendNotification:(BOOL)notification withUpdatePredicate:(id)predicate;
- (BOOL)_onQueue_updatePendingForCompanionApp:(id)app;
- (BOOL)alwaysInstallApps;
- (BOOL)gizmoIsActivePairedDevice;
- (BOOL)initiallyInstallAllApps;
- (BOOL)iterateInstallStatusAndClearNeedsReunionSyncWithIterator:(id)iterator completion:(id)completion;
- (BOOL)needsReunionSync;
- (BOOL)setInstallStatusForApps:(id)apps sendNotification:(BOOL)notification withUpdatePredicate:(id)predicate;
- (BOOL)updatePendingForCompanionApp:(id)app;
- (NSDictionary)pendingApps;
- (id)appStateForApp:(id)app;
- (id)bundleIDsOfAllInstalledApps;
- (id)preferencesForApplicationWithIdentifier:(id)identifier;
- (id)uniqueInstallIDForApp:(id)app;
- (id)watchKitAppExecutableHashForBundleID:(id)d;
- (int64_t)exportedAppStateForDeviceState:(unint64_t)state;
- (unint64_t)installStatusForApp:(id)app;
- (void)_init_loadState;
- (void)_onQueue_cancelPendingUpdateStateTimer;
- (void)_onQueue_cancelUpdatePendingForCompanionApp:(id)app;
- (void)_onQueue_saveState;
- (void)_onQueue_setUpPendingUpdateStateTimer;
- (void)_onQueue_setUpdatePendingForCompanionApp:(id)app;
- (void)_removeSockPuppetSettings;
- (void)cancelUpdatePendingForCompanionApp:(id)app;
- (void)clearPendingInstallations;
- (void)dumpCurrentStateToLog;
- (void)initialPairedSyncComplete;
- (void)markInstalledAsPending;
- (void)noteNewApps:(id)apps updatedApps:(id)updatedApps removedApps:(id)removedApps transitioningAppBundleIDs:(id)ds completion:(id)completion;
- (void)noteTrustAddedApps:(id)apps trustRemovedApps:(id)removedApps completion:(id)completion;
- (void)processNewStatusUpdates:(id)updates updatedStatusUpdates:(id)statusUpdates removedStatusUpdates:(id)removedStatusUpdates completion:(id)completion;
- (void)purgeInstallStatusForApps:(id)apps;
- (void)regenerateAllUniqueInstallIDs;
- (void)setInstallStatus:(unint64_t)status forApp:(id)app companionBundleID:(id)d;
- (void)setNeedsReunionSync:(BOOL)sync;
- (void)setUpdatePendingForCompanionApp:(id)app;
- (void)setWatchKitAppExecutableHash:(id)hash forApp:(id)app;
@end

@implementation ACXGizmoState

- (ACXGizmoState)initWithDevice:(id)device
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = ACXGizmoState;
  v6 = [(ACXGizmoState *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.appconduit.GizmoStateQueue", v8);
    stateQueue = v7->_stateQueue;
    v7->_stateQueue = v9;

    v11 = [NPSDomainAccessor alloc];
    device = [(ACXGizmoState *)v7 device];
    nrDevice = [device nrDevice];
    v14 = [v11 initWithDomain:@"com.apple.appconduitd.gizmostate" pairedDevice:nrDevice];
    npsDomain = v7->_npsDomain;
    v7->_npsDomain = v14;

    [(ACXGizmoState *)v7 _init_loadState];
  }

  return v7;
}

- (BOOL)gizmoIsActivePairedDevice
{
  device = [(ACXGizmoState *)self device];
  isActivePairedDevice = [device isActivePairedDevice];

  return isActivePairedDevice;
}

- (void)_init_loadState
{
  npsDomain = [(ACXGizmoState *)self npsDomain];
  synchronize = [npsDomain synchronize];

  v67 = 0;
  npsDomain2 = [(ACXGizmoState *)self npsDomain];
  v6 = [npsDomain2 integerForKey:@"AppStateVersion" keyExistsAndHasValidFormat:&v67];

  npsDomain3 = [(ACXGizmoState *)self npsDomain];
  self->_needsReunionSync = [npsDomain3 BOOLForKey:@"NeedsReunionSync"];

  npsDomain4 = [(ACXGizmoState *)self npsDomain];
  v9 = [npsDomain4 objectForKey:@"CompletedInitialPairedSync"];

  npsDomain5 = [(ACXGizmoState *)self npsDomain];
  v11 = [npsDomain5 objectForKey:@"ApplicationStates"];
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v9 || !v13)
  {
    self->_hasCompletedInitialPairedSync = (sub_100005E38(v9, 0) & 1) != 0 || [(ACXGizmoState *)self _init_migrateSockPuppetSettings];
  }

  else
  {
    [(ACXGizmoState *)self initialPairedSyncComplete];
  }

  v14 = objc_opt_new();
  [(ACXGizmoState *)self setAppStates:v14];

  if (v13)
  {
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100044664;
    v66[3] = &unk_10008DDB0;
    v66[4] = self;
    [v13 enumerateKeysAndObjectsUsingBlock:v66];
  }

  else
  {
    npsDomain6 = [(ACXGizmoState *)self npsDomain];
    v16 = [npsDomain6 objectForKey:@"ApplicationState"];
    objc_opt_class();
    v17 = v16;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [v18 mutableCopy];
    if (v19)
    {
      if (v67 != 1 || v6 <= 1)
      {
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_1000447AC;
        v64[3] = &unk_10008DDD8;
        v20 = objc_opt_new();
        v65 = v20;
        [v19 enumerateKeysAndObjectsUsingBlock:v64];
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v61;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v61 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v60 + 1) + 8 * i);
              if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
              {
                v47 = *(*(&v60 + 1) + 8 * i);
                v48 = 5;
                MOLogWrite();
              }

              [v19 setObject:&off_100097860 forKeyedSubscript:{v26, v47, v48}];
            }

            v23 = [v21 countByEnumeratingWithState:&v60 objects:v69 count:16];
          }

          while (v23);
        }
      }

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100044810;
      v59[3] = &unk_10008DDD8;
      v59[4] = self;
      [v19 enumerateKeysAndObjectsUsingBlock:v59];
      npsDomain7 = [(ACXGizmoState *)self npsDomain];
      [npsDomain7 removeObjectForKey:@"ApplicationState"];

      stateQueue = [(ACXGizmoState *)self stateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000448C8;
      block[3] = &unk_10008CD40;
      block[4] = self;
      dispatch_sync(stateQueue, block);

      v13 = 0;
    }
  }

  v29 = objc_opt_new();
  pendingAppUpdateStates = self->_pendingAppUpdateStates;
  self->_pendingAppUpdateStates = v29;

  npsDomain8 = [(ACXGizmoState *)self npsDomain];
  v32 = [npsDomain8 objectForKey:@"PendingAppUpdateStates"];

  objc_opt_class();
  if (sub_100005D2C(v32))
  {
    v50 = v9;
    v51 = v13;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v49 = v32;
    v33 = v32;
    v34 = [v33 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v55;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v55 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v54 + 1) + 8 * j);
          v39 = [NSKeyedUnarchiver alloc];
          v53 = 0;
          v40 = [v39 initForReadingFromData:v38 error:&v53];
          v41 = v53;
          if (v40)
          {
            v42 = [[ACXPendingAppUpdateState alloc] initWithCoder:v40];
            if (v42)
            {
              pendingAppUpdateStates = [(ACXGizmoState *)self pendingAppUpdateStates];
              [pendingAppUpdateStates addObject:v42];
            }

            else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
            {
              MOLogWrite();
            }
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v47 = v41;
            MOLogWrite();
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v35);
    }

    v9 = v50;
    v13 = v51;
    v32 = v49;
  }

  pendingAppUpdateStates2 = [(ACXGizmoState *)self pendingAppUpdateStates];
  v45 = [pendingAppUpdateStates2 count];

  if (v45)
  {
    stateQueue2 = [(ACXGizmoState *)self stateQueue];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000448D0;
    v52[3] = &unk_10008CD40;
    v52[4] = self;
    sub_100005828(stateQueue2, v52);
  }
}

- (void)_onQueue_saveState
{
  npsDomain = [(ACXGizmoState *)self npsDomain];
  [npsDomain setInteger:2 forKey:@"AppStateVersion"];

  v4 = objc_opt_new();
  appStates = [(ACXGizmoState *)self appStates];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100044B4C;
  v18[3] = &unk_10008DE00;
  v6 = v4;
  v19 = v6;
  [appStates enumerateKeysAndObjectsUsingBlock:v18];

  npsDomain2 = [(ACXGizmoState *)self npsDomain];
  [npsDomain2 setBool:self->_hasCompletedInitialPairedSync forKey:@"CompletedInitialPairedSync"];

  npsDomain3 = [(ACXGizmoState *)self npsDomain];
  [npsDomain3 setObject:v6 forKey:@"ApplicationStates"];

  npsDomain4 = [(ACXGizmoState *)self npsDomain];
  [npsDomain4 setBool:self->_needsReunionSync forKey:@"NeedsReunionSync"];

  [(ACXGizmoState *)self _onQueue_cleanUpExpiredPendingUpdateStates];
  v10 = objc_opt_new();
  pendingAppUpdateStates = [(ACXGizmoState *)self pendingAppUpdateStates];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100044C84;
  v16[3] = &unk_10008DE28;
  v12 = v10;
  v17 = v12;
  [pendingAppUpdateStates enumerateObjectsUsingBlock:v16];

  npsDomain5 = [(ACXGizmoState *)self npsDomain];
  [npsDomain5 setObject:v12 forKey:@"PendingAppUpdateStates"];

  npsDomain6 = [(ACXGizmoState *)self npsDomain];
  synchronize = [npsDomain6 synchronize];

  if (synchronize && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    MOLogWrite();
  }
}

- (BOOL)alwaysInstallApps
{
  npsDomain = [(ACXGizmoState *)self npsDomain];
  synchronize = [npsDomain synchronize];

  npsDomain2 = [(ACXGizmoState *)self npsDomain];
  LOBYTE(npsDomain) = [npsDomain2 BOOLForKey:@"AlwaysInstall"];

  return npsDomain;
}

- (BOOL)initiallyInstallAllApps
{
  npsDomain = [(ACXGizmoState *)self npsDomain];
  synchronize = [npsDomain synchronize];

  npsDomain2 = [(ACXGizmoState *)self npsDomain];
  LOBYTE(npsDomain) = [npsDomain2 BOOLForKey:@"InitiallyInstallAllExistingApps"];

  return npsDomain;
}

- (BOOL)needsReunionSync
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100044F54;
  v5[3] = &unk_10008C958;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setNeedsReunionSync:(BOOL)sync
{
  stateQueue = [(ACXGizmoState *)self stateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100045000;
  v6[3] = &unk_10008DE50;
  v6[4] = self;
  syncCopy = sync;
  dispatch_sync(stateQueue, v6);
}

- (unint64_t)installStatusForApp:(id)app
{
  appCopy = app;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000451D0;
  block[3] = &unk_10008CA70;
  block[4] = self;
  v10 = appCopy;
  v11 = &v12;
  v6 = appCopy;
  dispatch_sync(stateQueue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (id)uniqueInstallIDForApp:(id)app
{
  appCopy = app;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100045398;
  v16 = sub_1000453A8;
  v17 = 0;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000453B0;
  block[3] = &unk_10008CA70;
  block[4] = self;
  v10 = appCopy;
  v11 = &v12;
  v6 = appCopy;
  dispatch_sync(stateQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)appStateForApp:(id)app
{
  appCopy = app;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100045398;
  v16 = sub_1000453A8;
  v17 = 0;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004557C;
  block[3] = &unk_10008CA20;
  v10 = appCopy;
  v11 = &v12;
  block[4] = self;
  v6 = appCopy;
  dispatch_sync(stateQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)regenerateAllUniqueInstallIDs
{
  stateQueue = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004567C;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)setInstallStatus:(unint64_t)status forApp:(id)app companionBundleID:(id)d
{
  appCopy = app;
  dCopy = d;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000457B4;
  v13[3] = &unk_10008CF40;
  v13[4] = self;
  v14 = appCopy;
  v15 = dCopy;
  statusCopy = status;
  v11 = dCopy;
  v12 = appCopy;
  dispatch_sync(stateQueue, v13);
}

- (BOOL)_onQueue_setInstallStatusForApps:(id)apps sendNotification:(BOOL)notification withUpdatePredicate:(id)predicate
{
  notificationCopy = notification;
  appsCopy = apps;
  predicateCopy = predicate;
  if ([appsCopy count])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v10 = objc_opt_new();
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100045B8C;
    v17 = &unk_10008DEB8;
    selfCopy = self;
    v20 = predicateCopy;
    v21 = &v22;
    v11 = v10;
    v19 = v11;
    [appsCopy enumerateKeysAndObjectsUsingBlock:&v14];
    if (-[ACXGizmoState gizmoIsActivePairedDevice](self, "gizmoIsActivePairedDevice", v14, v15, v16, v17, selfCopy) && *(v23 + 24) == 1 && [v11 count])
    {
      if (notificationCopy)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          MOLogWrite();
        }

        notify_post([@"com.apple.sockpuppet.applications.updated" UTF8String]);
      }

      [ACXDeviceConnectionClient messageAllObserversWithInstallStateUpdate:v11];
    }

    v12 = *(v23 + 24);

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (BOOL)setInstallStatusForApps:(id)apps sendNotification:(BOOL)notification withUpdatePredicate:(id)predicate
{
  appsCopy = apps;
  predicateCopy = predicate;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if ([appsCopy count])
  {
    stateQueue = [(ACXGizmoState *)self stateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100046060;
    block[3] = &unk_10008DEE0;
    block[4] = self;
    v14 = appsCopy;
    notificationCopy = notification;
    v15 = predicateCopy;
    v16 = &v18;
    dispatch_sync(stateQueue, block);

    v11 = *(v19 + 24);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v11 & 1;
}

- (BOOL)iterateInstallStatusAndClearNeedsReunionSyncWithIterator:(id)iterator completion:(id)completion
{
  iteratorCopy = iterator;
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000461D4;
  v12[3] = &unk_10008DF30;
  v12[4] = self;
  v13 = iteratorCopy;
  v14 = completionCopy;
  v15 = &v16;
  v9 = completionCopy;
  v10 = iteratorCopy;
  dispatch_sync(stateQueue, v12);

  LOBYTE(completionCopy) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return completionCopy;
}

- (void)clearPendingInstallations
{
  stateQueue = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004649C;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)markInstalledAsPending
{
  stateQueue = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000466EC;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)purgeInstallStatusForApps:(id)apps
{
  appsCopy = apps;
  if ([appsCopy count])
  {
    stateQueue = [(ACXGizmoState *)self stateQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100046970;
    v6[3] = &unk_10008CC38;
    v6[4] = self;
    v7 = appsCopy;
    dispatch_sync(stateQueue, v6);
  }
}

- (NSDictionary)pendingApps
{
  v3 = objc_opt_new();
  stateQueue = [(ACXGizmoState *)self stateQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100046A9C;
  v11 = &unk_10008CC38;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(stateQueue, &v8);

  v6 = [v5 copy];

  return v6;
}

- (BOOL)_onQueue_cleanUpExpiredPendingUpdateStates
{
  stateQueue = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  pendingAppUpdateStates = [(ACXGizmoState *)self pendingAppUpdateStates];
  v6 = [pendingAppUpdateStates countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(pendingAppUpdateStates);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 hasExpired])
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v14 = v10;
            MOLogWrite();
          }

          [v4 addObject:{v10, v14}];
        }
      }

      v7 = [pendingAppUpdateStates countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v4 count];
  if (v11)
  {
    pendingAppUpdateStates2 = [(ACXGizmoState *)self pendingAppUpdateStates];
    [pendingAppUpdateStates2 minusSet:v4];

    notify_post([@"com.apple.sockpuppet.applications.updated" UTF8String]);
  }

  return v11 != 0;
}

- (void)_onQueue_cancelPendingUpdateStateTimer
{
  stateQueue = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  cleanUpPendingUpdateStateTimer = [(ACXGizmoState *)self cleanUpPendingUpdateStateTimer];

  if (cleanUpPendingUpdateStateTimer)
  {
    cleanUpPendingUpdateStateTimer2 = [(ACXGizmoState *)self cleanUpPendingUpdateStateTimer];
    dispatch_source_cancel(cleanUpPendingUpdateStateTimer2);

    [(ACXGizmoState *)self setCleanUpPendingUpdateStateTimer:0];
  }
}

- (void)_onQueue_setUpPendingUpdateStateTimer
{
  stateQueue = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  cleanUpPendingUpdateStateTimer = [(ACXGizmoState *)self cleanUpPendingUpdateStateTimer];

  if (!cleanUpPendingUpdateStateTimer)
  {
    stateQueue2 = [(ACXGizmoState *)self stateQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, stateQueue2);

    v7 = dispatch_time(0, 3600000000000);
    dispatch_source_set_timer(v6, v7, 0x34630B8A000uLL, 0xDF8475800uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100046F44;
    handler[3] = &unk_10008CD40;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    [(ACXGizmoState *)self setCleanUpPendingUpdateStateTimer:v6];
  }
}

- (BOOL)_onQueue_updatePendingForCompanionApp:(id)app
{
  appCopy = app;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  v6 = [[ACXPendingAppUpdateState alloc] initWithCompanionBundleID:appCopy];
  pendingAppUpdateStates = [(ACXGizmoState *)self pendingAppUpdateStates];
  LOBYTE(appCopy) = [pendingAppUpdateStates containsObject:v6];

  return appCopy;
}

- (BOOL)updatePendingForCompanionApp:(id)app
{
  appCopy = app;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047168;
  block[3] = &unk_10008CA20;
  v9 = appCopy;
  v10 = &v11;
  block[4] = self;
  v6 = appCopy;
  dispatch_sync(stateQueue, block);

  LOBYTE(appCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return appCopy;
}

- (void)_onQueue_setUpdatePendingForCompanionApp:(id)app
{
  appCopy = app;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  v5 = [[ACXPendingAppUpdateState alloc] initWithCompanionBundleID:appCopy];
  pendingAppUpdateStates = [(ACXGizmoState *)self pendingAppUpdateStates];
  [pendingAppUpdateStates addObject:v5];

  [(ACXGizmoState *)self _onQueue_saveState];
  notify_post([@"com.apple.sockpuppet.applications.updated" UTF8String]);
  [(ACXGizmoState *)self _onQueue_setUpPendingUpdateStateTimer];
}

- (void)setUpdatePendingForCompanionApp:(id)app
{
  appCopy = app;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100047350;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = appCopy;
  v6 = appCopy;
  sub_100005828(stateQueue, v7);
}

- (void)_onQueue_cancelUpdatePendingForCompanionApp:(id)app
{
  appCopy = app;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v9 = appCopy;
    MOLogWrite();
  }

  v5 = [[ACXPendingAppUpdateState alloc] initWithCompanionBundleID:appCopy];
  pendingAppUpdateStates = [(ACXGizmoState *)self pendingAppUpdateStates];
  [pendingAppUpdateStates removeObject:v5];

  [(ACXGizmoState *)self _onQueue_saveState];
  pendingAppUpdateStates2 = [(ACXGizmoState *)self pendingAppUpdateStates];
  v8 = [pendingAppUpdateStates2 count];

  if (!v8)
  {
    [(ACXGizmoState *)self _onQueue_cancelPendingUpdateStateTimer];
  }

  notify_post([@"com.apple.sockpuppet.applications.updated" UTF8String]);
}

- (void)cancelUpdatePendingForCompanionApp:(id)app
{
  appCopy = app;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004752C;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = appCopy;
  v6 = appCopy;
  sub_100005828(stateQueue, v7);
}

- (id)preferencesForApplicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_opt_new();
  v6 = +[ACXAvailableApplicationManager sharedApplicationManager];
  v7 = [v6 gizmoAppWithBundleID:identifierCopy];

  if (v7)
  {
    teamID = [v7 teamID];
    v9 = teamID;
    v10 = &stru_10008F378;
    if (teamID)
    {
      v10 = teamID;
    }

    v11 = v10;

    identifierCopy = [NSString stringWithFormat:@"%@.%@", v11, identifierCopy];
    v13 = [NPSDomainAccessor alloc];
    device = [(ACXGizmoState *)self device];
    nrDevice = [device nrDevice];
    v16 = [v13 initWithDomain:identifierCopy pairedDevice:nrDevice];

    if (v16)
    {
      v27 = identifierCopy;
      v28 = v11;
      v17 = objc_opt_new();

      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      copyKeyList = [v16 copyKeyList];
      v19 = [copyKeyList countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(copyKeyList);
            }

            v23 = *(*(&v29 + 1) + 8 * i);
            v24 = [v16 objectForKey:v23];
            if (v24)
            {
              [v17 setObject:v24 forKeyedSubscript:v23];
            }
          }

          v20 = [copyKeyList countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v20);
      }

      v5 = v17;
      identifierCopy = v27;
      v11 = v28;
    }
  }

  v25 = [v5 copy];

  return v25;
}

- (id)watchKitAppExecutableHashForBundleID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100045398;
  v16 = sub_1000453A8;
  v17 = 0;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000478DC;
  block[3] = &unk_10008CA20;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(stateQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setWatchKitAppExecutableHash:(id)hash forApp:(id)app
{
  hashCopy = hash;
  appCopy = app;
  stateQueue = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047A30;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v12 = appCopy;
  v13 = hashCopy;
  v9 = hashCopy;
  v10 = appCopy;
  dispatch_sync(stateQueue, block);
}

- (int64_t)exportedAppStateForDeviceState:(unint64_t)state
{
  if (state < 8)
  {
    return qword_100066738[state];
  }

  if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
  {
    return 0;
  }

  MOLogWrite();
  return 0;
}

- (void)dumpCurrentStateToLog
{
  stateQueue = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047BA0;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (id)bundleIDsOfAllInstalledApps
{
  v3 = objc_opt_new();
  stateQueue = [(ACXGizmoState *)self stateQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100047E20;
  v11 = &unk_10008CC38;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(stateQueue, &v8);

  v6 = [v5 copy];

  return v6;
}

- (void)noteNewApps:(id)apps updatedApps:(id)updatedApps removedApps:(id)removedApps transitioningAppBundleIDs:(id)ds completion:(id)completion
{
  appsCopy = apps;
  updatedAppsCopy = updatedApps;
  removedAppsCopy = removedApps;
  dsCopy = ds;
  completionCopy = completion;
  alwaysInstallApps = [(ACXGizmoState *)self alwaysInstallApps];
  gizmoIsActivePairedDevice = [(ACXGizmoState *)self gizmoIsActivePairedDevice];
  v88 = objc_opt_new();
  v90 = objc_opt_new();
  v86 = objc_opt_new();
  device = [(ACXGizmoState *)self device];
  osVersion = [device osVersion];

  selfCopy = self;
  device2 = [(ACXGizmoState *)self device];
  supportsStandaloneApps = [device2 supportsStandaloneApps];

  v87 = dsCopy;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    device3 = [(ACXGizmoState *)self device];
    idsDeviceIdentifier = [device3 idsDeviceIdentifier];
    watchKitVersion = sub_100006DA8(gizmoIsActivePairedDevice);
    MOLogWrite();
  }

  if (!gizmoIsActivePairedDevice)
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v55 = updatedAppsCopy;
    v67 = [v55 countByEnumeratingWithState:&v93 objects:v109 count:16];
    if (v67)
    {
      v68 = v67;
      v79 = completionCopy;
      v81 = appsCopy;
      v85 = removedAppsCopy;
      v69 = *v94;
      do
      {
        for (i = 0; i != v68; i = i + 1)
        {
          if (*v94 != v69)
          {
            objc_enumerationMutation(v55);
          }

          v71 = *(*(&v93 + 1) + 8 * i);
          if (([v71 isSystemApp] & 1) == 0)
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              idsDeviceIdentifier = [v71 bundleIdentifier];
              MOLogWrite();
            }

            companionAppBundleID = [v71 companionAppBundleID];
            v73 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:companionAppBundleID];

            watchKitAppExecutableHash = [v71 watchKitAppExecutableHash];
            [v73 setWatchAppExecutableHash:watchKitAppExecutableHash];

            bundleIdentifier = [v71 bundleIdentifier];
            [v90 setObject:v73 forKeyedSubscript:bundleIdentifier];
          }
        }

        v68 = [v55 countByEnumeratingWithState:&v93 objects:v109 count:16];
      }

      while (v68);
      completionCopy = v79;
      appsCopy = v81;
      removedAppsCopy = v85;
    }

    goto LABEL_129;
  }

  v78 = completionCopy;
  v80 = appsCopy;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v21 = appsCopy;
  v22 = [v21 countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v106;
    v83 = kACXSourceAppWatchApplicationStore;
    do
    {
      v25 = 0;
      do
      {
        if (*v106 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v105 + 1) + 8 * v25);
        if (([v26 isSystemApp] & 1) == 0)
        {
          companionAppBundleID2 = [v26 companionAppBundleID];
          [(ACXGizmoState *)selfCopy cancelUpdatePendingForCompanionApp:companionAppBundleID2];

          if ([v26 isCompatibleWithOSVersion:osVersion])
          {
            if (([v26 isRuntimeCompatibleWithOSVersion:osVersion] & 1) == 0)
            {
              if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
              {
                goto LABEL_27;
              }

              bundleIdentifier2 = [v26 bundleIdentifier];
              watchKitVersion = [v26 watchKitVersion];
              idsDeviceIdentifier = bundleIdentifier2;
              MOLogWrite();

              goto LABEL_26;
            }

            device4 = [(ACXGizmoState *)selfCopy device];
            v29 = [v26 isCompatibleWithDevice:device4];

            if (v29)
            {
              if ([v26 isTrusted])
              {
                if ([v26 isEligibleForWatchAppInstall])
                {
                  sourceAppIdentifier = [v26 sourceAppIdentifier];
                  v31 = [sourceAppIdentifier isEqualToString:v83];

                  if (v31)
                  {
                    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                    {
                      goto LABEL_51;
                    }

LABEL_52:
                    companionAppBundleID3 = [v26 companionAppBundleID];
                    companionAppBundleID4 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:companionAppBundleID3];

                    watchKitAppExecutableHash2 = [v26 watchKitAppExecutableHash];
                    [companionAppBundleID4 setWatchAppExecutableHash:watchKitAppExecutableHash2];

                    bundleIdentifier3 = [v26 bundleIdentifier];
                    [v88 setObject:companionAppBundleID4 forKeyedSubscript:bundleIdentifier3];
LABEL_28:

                    goto LABEL_29;
                  }

                  autoInstallOverride = [v26 autoInstallOverride];
                  if (alwaysInstallApps)
                  {
                    if (autoInstallOverride == 1)
                    {
                      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                      {
                        goto LABEL_55;
                      }

LABEL_27:
                      companionAppBundleID4 = [v26 companionAppBundleID];
                      bundleIdentifier3 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:5 companionBundleID:companionAppBundleID4];
                      bundleIdentifier4 = [v26 bundleIdentifier];
                      [v88 setObject:bundleIdentifier3 forKeyedSubscript:bundleIdentifier4];

                      goto LABEL_28;
                    }

                    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                    {
                      goto LABEL_52;
                    }

LABEL_51:
                    idsDeviceIdentifier = [v26 bundleIdentifier];
                    MOLogWrite();

                    goto LABEL_52;
                  }

                  if (autoInstallOverride == 2)
                  {
                    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_51;
                  }

                  if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                  {
                    goto LABEL_27;
                  }

LABEL_55:
                  bundleIdentifier2 = [v26 bundleIdentifier];
                  idsDeviceIdentifier = bundleIdentifier2;
                  MOLogWrite();
LABEL_26:

                  goto LABEL_27;
                }

                if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                {
                  goto LABEL_27;
                }
              }

              else if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
              {
                goto LABEL_27;
              }
            }

            else if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
            {
              goto LABEL_27;
            }
          }

          else if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_27;
          }

          idsDeviceIdentifier = [v26 bundleIdentifier];
          MOLogWrite();

          goto LABEL_27;
        }

LABEL_29:
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v39 = [v21 countByEnumeratingWithState:&v105 objects:v112 count:16];
      v23 = v39;
    }

    while (v39);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v40 = updatedAppsCopy;
  v41 = [v40 countByEnumeratingWithState:&v101 objects:v111 count:16];
  dsCopy = v87;
  if (!v41)
  {
    goto LABEL_98;
  }

  v42 = v41;
  v43 = *v102;
  do
  {
    v44 = 0;
    do
    {
      if (*v102 != v43)
      {
        objc_enumerationMutation(v40);
      }

      v45 = *(*(&v101 + 1) + 8 * v44);
      if (([v45 isSystemApp] & 1) == 0)
      {
        if (dsCopy)
        {
          bundleIdentifier5 = [v45 bundleIdentifier];
          v47 = [dsCopy containsObject:bundleIdentifier5];
        }

        else
        {
          v47 = 0;
        }

        if (([v45 isCompatibleWithOSVersion:osVersion] & 1) == 0)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
LABEL_82:
            idsDeviceIdentifier = [v45 bundleIdentifier];
            MOLogWrite();
          }

LABEL_83:
          companionAppBundleID5 = [v45 companionAppBundleID];
          v49 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:companionAppBundleID5];
          bundleIdentifier6 = [v45 bundleIdentifier];
          [v90 setObject:v49 forKeyedSubscript:bundleIdentifier6];

LABEL_84:
          goto LABEL_85;
        }

        if (([v45 isTrusted] & 1) == 0)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        if (([v45 isEligibleForWatchAppInstall] & 1) == 0)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            goto LABEL_82;
          }

          goto LABEL_83;
        }

        if ([v45 autoInstallOverride] == 1 && -[ACXGizmoState gizmoIsActivePairedDevice](selfCopy, "gizmoIsActivePairedDevice"))
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (!supportsStandaloneApps || [v45 applicationMode] == 1 || ((objc_msgSend(v45, "isProfileValidated") | v47) & 1) != 0)
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              idsDeviceIdentifier = [v45 bundleIdentifier];
              MOLogWrite();
            }

            companionAppBundleID6 = [v45 companionAppBundleID];
            companionAppBundleID5 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:companionAppBundleID6];

            watchKitAppExecutableHash3 = [v45 watchKitAppExecutableHash];
            [companionAppBundleID5 setWatchAppExecutableHash:watchKitAppExecutableHash3];

            bundleIdentifier7 = [v45 bundleIdentifier];
            [v90 setObject:companionAppBundleID5 forKeyedSubscript:bundleIdentifier7];

            dsCopy = v87;
            goto LABEL_84;
          }

          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
LABEL_96:
            companionAppBundleID5 = [v45 bundleIdentifier];
            idsDeviceIdentifier = companionAppBundleID5;
            MOLogWrite();
            goto LABEL_84;
          }
        }
      }

LABEL_85:
      v44 = v44 + 1;
    }

    while (v42 != v44);
    v54 = [v40 countByEnumeratingWithState:&v101 objects:v111 count:16];
    v42 = v54;
  }

  while (v54);
LABEL_98:

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v55 = removedAppsCopy;
  v56 = [v55 countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (!v56)
  {
    goto LABEL_115;
  }

  v57 = v56;
  v84 = removedAppsCopy;
  v58 = updatedAppsCopy;
  v59 = *v98;
  while (2)
  {
    v60 = 0;
    while (2)
    {
      if (*v98 != v59)
      {
        objc_enumerationMutation(v55);
      }

      v61 = *(*(&v97 + 1) + 8 * v60);
      if (([v61 isSystemApp] & 1) == 0)
      {
        if (!supportsStandaloneApps || [v61 applicationMode] == 1)
        {
          companionAppBundleID7 = [v61 companionAppBundleID];
          v63 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:companionAppBundleID7];
          bundleIdentifier8 = [v61 bundleIdentifier];
          [v86 setObject:v63 forKeyedSubscript:bundleIdentifier8];

          dsCopy = v87;
          companionAppBundleID8 = [v61 companionAppBundleID];
          [(ACXGizmoState *)selfCopy cancelUpdatePendingForCompanionApp:companionAppBundleID8];
          goto LABEL_107;
        }

        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          companionAppBundleID8 = [v61 bundleIdentifier];
          idsDeviceIdentifier = companionAppBundleID8;
          MOLogWrite();
LABEL_107:
        }
      }

      if (v57 != ++v60)
      {
        continue;
      }

      break;
    }

    v66 = [v55 countByEnumeratingWithState:&v97 objects:v110 count:16];
    v57 = v66;
    if (v66)
    {
      continue;
    }

    break;
  }

  updatedAppsCopy = v58;
  removedAppsCopy = v84;
LABEL_115:
  completionCopy = v78;
  appsCopy = v80;
LABEL_129:

  [(ACXGizmoState *)selfCopy processNewStatusUpdates:v88 updatedStatusUpdates:v90 removedStatusUpdates:v86 completion:completionCopy];
}

- (BOOL)_onQueue_pendingInstallStateShouldBeIgnoredForApp:(id)app existingState:(id)state newState:(id)newState
{
  appCopy = app;
  newStateCopy = newState;
  stateCopy = state;
  watchAppExecutableHash = [stateCopy watchAppExecutableHash];
  watchAppExecutableHash2 = [newStateCopy watchAppExecutableHash];
  installStatus = [newStateCopy installStatus];

  installStatus2 = [stateCopy installStatus];
  if (installStatus == 1 && installStatus2 == 2 && watchAppExecutableHash && watchAppExecutableHash2 && [watchAppExecutableHash isEqualToString:watchAppExecutableHash2])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v14 = 1;
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v14 = 0;
  }

  return v14;
}

- (void)processNewStatusUpdates:(id)updates updatedStatusUpdates:(id)statusUpdates removedStatusUpdates:(id)removedStatusUpdates completion:(id)completion
{
  updatesCopy = updates;
  statusUpdatesCopy = statusUpdates;
  removedStatusUpdatesCopy = removedStatusUpdates;
  completionCopy = completion;
  if ([updatesCopy count] || objc_msgSend(statusUpdatesCopy, "count") || objc_msgSend(removedStatusUpdatesCopy, "count"))
  {
    stateQueue = [(ACXGizmoState *)self stateQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100048FE0;
    v15[3] = &unk_10008DFC8;
    v15[4] = self;
    v16 = updatesCopy;
    v17 = statusUpdatesCopy;
    v18 = removedStatusUpdatesCopy;
    v19 = completionCopy;
    sub_100005828(stateQueue, v15);
  }
}

- (void)noteTrustAddedApps:(id)apps trustRemovedApps:(id)removedApps completion:(id)completion
{
  appsCopy = apps;
  removedAppsCopy = removedApps;
  selfCopy = self;
  v42 = removedAppsCopy;
  completionCopy = completion;
  alwaysInstallApps = [(ACXGizmoState *)self alwaysInstallApps];
  v12 = objc_opt_new();
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    device = [(ACXGizmoState *)self device];
    idsDeviceIdentifier = [device idsDeviceIdentifier];
    v39 = sub_100006DA8([(ACXGizmoState *)selfCopy gizmoIsActivePairedDevice]);
    MOLogWrite();
  }

  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v52 = 0u;
  obj = appsCopy;
  v14 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v53;
    do
    {
      v17 = 0;
      do
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v52 + 1) + 8 * v17);
        if (!alwaysInstallApps)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            idsDeviceIdentifier = [*(*(&v52 + 1) + 8 * v17) bundleIdentifier];
            MOLogWrite();
          }

          companionAppBundleID = [v18 companionAppBundleID];
          bundleIdentifier2 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:5 companionBundleID:companionAppBundleID];
          goto LABEL_22;
        }

        device2 = [(ACXGizmoState *)selfCopy device];
        companionAppBundleID = [device2 osVersion];

        if ([v18 isCompatibleWithOSVersion:companionAppBundleID])
        {
          if ([v18 isRuntimeCompatibleWithOSVersion:companionAppBundleID])
          {
            device3 = [(ACXGizmoState *)selfCopy device];
            v22 = [v18 isCompatibleWithDevice:device3];

            if (v22)
            {
              if ([v18 isEligibleForWatchAppInstall])
              {
                if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                {
                  idsDeviceIdentifier = [v18 bundleIdentifier];
                  MOLogWrite();
                }

                companionAppBundleID2 = [v18 companionAppBundleID];
                bundleIdentifier2 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:companionAppBundleID2];

                watchKitAppExecutableHash = [v18 watchKitAppExecutableHash];
                [bundleIdentifier2 setWatchAppExecutableHash:watchKitAppExecutableHash];

LABEL_22:
                bundleIdentifier = [v18 bundleIdentifier];
                [v12 setObject:bundleIdentifier2 forKeyedSubscript:bundleIdentifier];
LABEL_23:

LABEL_27:
                goto LABEL_28;
              }

              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                goto LABEL_26;
              }
            }

            else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              goto LABEL_26;
            }
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            bundleIdentifier2 = [v18 bundleIdentifier];
            bundleIdentifier = [v18 watchKitVersion];
            v39 = bundleIdentifier;
            v40 = companionAppBundleID;
            idsDeviceIdentifier = bundleIdentifier2;
            MOLogWrite();
            goto LABEL_23;
          }
        }

        else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
LABEL_26:
          bundleIdentifier2 = [v18 bundleIdentifier];
          idsDeviceIdentifier = bundleIdentifier2;
          MOLogWrite();
          goto LABEL_27;
        }

LABEL_28:

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v27 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      v15 = v27;
    }

    while (v27);
  }

  v41 = selfCopy;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v28 = v42;
  v29 = [v28 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v49;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v48 + 1) + 8 * i);
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          idsDeviceIdentifier = [*(*(&v48 + 1) + 8 * i) bundleIdentifier];
          MOLogWrite();
        }

        companionAppBundleID3 = [v33 companionAppBundleID];
        v35 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:companionAppBundleID3];
        bundleIdentifier3 = [v33 bundleIdentifier];
        [v12 setObject:v35 forKeyedSubscript:bundleIdentifier3];
      }

      v30 = [v28 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v30);
  }

  if ([v12 count])
  {
    stateQueue = [(ACXGizmoState *)v41 stateQueue];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100049B88;
    v45[3] = &unk_10008CA98;
    v45[4] = v41;
    v46 = v12;
    v47 = completionCopy;
    sub_100005828(stateQueue, v45);
  }
}

- (BOOL)_init_migrateSockPuppetSettings
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v3 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.companionappd"];
  v4 = v3;
  if (v3)
  {
    synchronize = [v3 synchronize];
    v6 = [v4 objectForKey:@"SPApplicationsDomain"];
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v10 = [v4 objectForKey:@"SPAlwaysInstallKey"];
      objc_opt_class();
      v11 = v10;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 BOOLValue])
      {
        *(v20 + 24) = 1;
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          MOLogWrite();
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      npsDomain = [(ACXGizmoState *)self npsDomain];
      [npsDomain setBool:v13 forKey:@"AlwaysInstall"];

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10004A190;
      v18[3] = &unk_10008DFF0;
      v18[4] = self;
      v18[5] = &v19;
      [v8 enumerateKeysAndObjectsUsingBlock:v18];
      if (*(v20 + 24) == 1)
      {
        self->_needsReunionSync = 1;
        stateQueue = [(ACXGizmoState *)self stateQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10004A460;
        block[3] = &unk_10008CD40;
        block[4] = self;
        dispatch_sync(stateQueue, block);
      }

      [(ACXGizmoState *)self _removeSockPuppetSettings];
      v9 = *(v20 + 24);
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      v9 = 0;
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v9 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v9 & 1;
}

- (void)_removeSockPuppetSettings
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.companionappd"];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    [v2 removeObjectForKey:@"SPApplicationsDomain"];
    [v5 removeObjectForKey:@"SPAlwaysInstallKey"];
    [v5 removeObjectForKey:@"appStateOwnedBySystem"];
    synchronize = [v5 synchronize];
LABEL_9:
    v3 = v5;
    goto LABEL_10;
  }

  synchronize = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v5 = 0;
    synchronize = MOLogWrite();
    goto LABEL_9;
  }

LABEL_10:

  _objc_release_x1(synchronize, v3);
}

- (void)initialPairedSyncComplete
{
  self->_hasCompletedInitialPairedSync = 1;
  npsDomain = [(ACXGizmoState *)self npsDomain];
  [npsDomain setBool:1 forKey:@"CompletedInitialPairedSync"];

  npsDomain2 = [(ACXGizmoState *)self npsDomain];
  synchronize = [npsDomain2 synchronize];

  v6 = synchronize;
  if (synchronize)
  {
    v5 = qword_1000A4878;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v5 = MOLogWrite();
      v6 = synchronize;
    }
  }

  _objc_release_x1(v5, v6);
}

@end