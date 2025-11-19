@interface ACXGizmoState
- (ACXGizmoState)initWithDevice:(id)a3;
- (BOOL)_init_migrateSockPuppetSettings;
- (BOOL)_onQueue_cleanUpExpiredPendingUpdateStates;
- (BOOL)_onQueue_pendingInstallStateShouldBeIgnoredForApp:(id)a3 existingState:(id)a4 newState:(id)a5;
- (BOOL)_onQueue_setInstallStatusForApps:(id)a3 sendNotification:(BOOL)a4 withUpdatePredicate:(id)a5;
- (BOOL)_onQueue_updatePendingForCompanionApp:(id)a3;
- (BOOL)alwaysInstallApps;
- (BOOL)gizmoIsActivePairedDevice;
- (BOOL)initiallyInstallAllApps;
- (BOOL)iterateInstallStatusAndClearNeedsReunionSyncWithIterator:(id)a3 completion:(id)a4;
- (BOOL)needsReunionSync;
- (BOOL)setInstallStatusForApps:(id)a3 sendNotification:(BOOL)a4 withUpdatePredicate:(id)a5;
- (BOOL)updatePendingForCompanionApp:(id)a3;
- (NSDictionary)pendingApps;
- (id)appStateForApp:(id)a3;
- (id)bundleIDsOfAllInstalledApps;
- (id)preferencesForApplicationWithIdentifier:(id)a3;
- (id)uniqueInstallIDForApp:(id)a3;
- (id)watchKitAppExecutableHashForBundleID:(id)a3;
- (int64_t)exportedAppStateForDeviceState:(unint64_t)a3;
- (unint64_t)installStatusForApp:(id)a3;
- (void)_init_loadState;
- (void)_onQueue_cancelPendingUpdateStateTimer;
- (void)_onQueue_cancelUpdatePendingForCompanionApp:(id)a3;
- (void)_onQueue_saveState;
- (void)_onQueue_setUpPendingUpdateStateTimer;
- (void)_onQueue_setUpdatePendingForCompanionApp:(id)a3;
- (void)_removeSockPuppetSettings;
- (void)cancelUpdatePendingForCompanionApp:(id)a3;
- (void)clearPendingInstallations;
- (void)dumpCurrentStateToLog;
- (void)initialPairedSyncComplete;
- (void)markInstalledAsPending;
- (void)noteNewApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5 transitioningAppBundleIDs:(id)a6 completion:(id)a7;
- (void)noteTrustAddedApps:(id)a3 trustRemovedApps:(id)a4 completion:(id)a5;
- (void)processNewStatusUpdates:(id)a3 updatedStatusUpdates:(id)a4 removedStatusUpdates:(id)a5 completion:(id)a6;
- (void)purgeInstallStatusForApps:(id)a3;
- (void)regenerateAllUniqueInstallIDs;
- (void)setInstallStatus:(unint64_t)a3 forApp:(id)a4 companionBundleID:(id)a5;
- (void)setNeedsReunionSync:(BOOL)a3;
- (void)setUpdatePendingForCompanionApp:(id)a3;
- (void)setWatchKitAppExecutableHash:(id)a3 forApp:(id)a4;
@end

@implementation ACXGizmoState

- (ACXGizmoState)initWithDevice:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = ACXGizmoState;
  v6 = [(ACXGizmoState *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.appconduit.GizmoStateQueue", v8);
    stateQueue = v7->_stateQueue;
    v7->_stateQueue = v9;

    v11 = [NPSDomainAccessor alloc];
    v12 = [(ACXGizmoState *)v7 device];
    v13 = [v12 nrDevice];
    v14 = [v11 initWithDomain:@"com.apple.appconduitd.gizmostate" pairedDevice:v13];
    npsDomain = v7->_npsDomain;
    v7->_npsDomain = v14;

    [(ACXGizmoState *)v7 _init_loadState];
  }

  return v7;
}

- (BOOL)gizmoIsActivePairedDevice
{
  v2 = [(ACXGizmoState *)self device];
  v3 = [v2 isActivePairedDevice];

  return v3;
}

- (void)_init_loadState
{
  v3 = [(ACXGizmoState *)self npsDomain];
  v4 = [v3 synchronize];

  v67 = 0;
  v5 = [(ACXGizmoState *)self npsDomain];
  v6 = [v5 integerForKey:@"AppStateVersion" keyExistsAndHasValidFormat:&v67];

  v7 = [(ACXGizmoState *)self npsDomain];
  self->_needsReunionSync = [v7 BOOLForKey:@"NeedsReunionSync"];

  v8 = [(ACXGizmoState *)self npsDomain];
  v9 = [v8 objectForKey:@"CompletedInitialPairedSync"];

  v10 = [(ACXGizmoState *)self npsDomain];
  v11 = [v10 objectForKey:@"ApplicationStates"];
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
    v15 = [(ACXGizmoState *)self npsDomain];
    v16 = [v15 objectForKey:@"ApplicationState"];
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
      v27 = [(ACXGizmoState *)self npsDomain];
      [v27 removeObjectForKey:@"ApplicationState"];

      v28 = [(ACXGizmoState *)self stateQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000448C8;
      block[3] = &unk_10008CD40;
      block[4] = self;
      dispatch_sync(v28, block);

      v13 = 0;
    }
  }

  v29 = objc_opt_new();
  pendingAppUpdateStates = self->_pendingAppUpdateStates;
  self->_pendingAppUpdateStates = v29;

  v31 = [(ACXGizmoState *)self npsDomain];
  v32 = [v31 objectForKey:@"PendingAppUpdateStates"];

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
              v43 = [(ACXGizmoState *)self pendingAppUpdateStates];
              [v43 addObject:v42];
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

  v44 = [(ACXGizmoState *)self pendingAppUpdateStates];
  v45 = [v44 count];

  if (v45)
  {
    v46 = [(ACXGizmoState *)self stateQueue];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000448D0;
    v52[3] = &unk_10008CD40;
    v52[4] = self;
    sub_100005828(v46, v52);
  }
}

- (void)_onQueue_saveState
{
  v3 = [(ACXGizmoState *)self npsDomain];
  [v3 setInteger:2 forKey:@"AppStateVersion"];

  v4 = objc_opt_new();
  v5 = [(ACXGizmoState *)self appStates];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100044B4C;
  v18[3] = &unk_10008DE00;
  v6 = v4;
  v19 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v18];

  v7 = [(ACXGizmoState *)self npsDomain];
  [v7 setBool:self->_hasCompletedInitialPairedSync forKey:@"CompletedInitialPairedSync"];

  v8 = [(ACXGizmoState *)self npsDomain];
  [v8 setObject:v6 forKey:@"ApplicationStates"];

  v9 = [(ACXGizmoState *)self npsDomain];
  [v9 setBool:self->_needsReunionSync forKey:@"NeedsReunionSync"];

  [(ACXGizmoState *)self _onQueue_cleanUpExpiredPendingUpdateStates];
  v10 = objc_opt_new();
  v11 = [(ACXGizmoState *)self pendingAppUpdateStates];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100044C84;
  v16[3] = &unk_10008DE28;
  v12 = v10;
  v17 = v12;
  [v11 enumerateObjectsUsingBlock:v16];

  v13 = [(ACXGizmoState *)self npsDomain];
  [v13 setObject:v12 forKey:@"PendingAppUpdateStates"];

  v14 = [(ACXGizmoState *)self npsDomain];
  v15 = [v14 synchronize];

  if (v15 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    MOLogWrite();
  }
}

- (BOOL)alwaysInstallApps
{
  v3 = [(ACXGizmoState *)self npsDomain];
  v4 = [v3 synchronize];

  v5 = [(ACXGizmoState *)self npsDomain];
  LOBYTE(v3) = [v5 BOOLForKey:@"AlwaysInstall"];

  return v3;
}

- (BOOL)initiallyInstallAllApps
{
  v3 = [(ACXGizmoState *)self npsDomain];
  v4 = [v3 synchronize];

  v5 = [(ACXGizmoState *)self npsDomain];
  LOBYTE(v3) = [v5 BOOLForKey:@"InitiallyInstallAllExistingApps"];

  return v3;
}

- (BOOL)needsReunionSync
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ACXGizmoState *)self stateQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100044F54;
  v5[3] = &unk_10008C958;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setNeedsReunionSync:(BOOL)a3
{
  v5 = [(ACXGizmoState *)self stateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100045000;
  v6[3] = &unk_10008DE50;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (unint64_t)installStatusForApp:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000451D0;
  block[3] = &unk_10008CA70;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (id)uniqueInstallIDForApp:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100045398;
  v16 = sub_1000453A8;
  v17 = 0;
  v5 = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000453B0;
  block[3] = &unk_10008CA70;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)appStateForApp:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100045398;
  v16 = sub_1000453A8;
  v17 = 0;
  v5 = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004557C;
  block[3] = &unk_10008CA20;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)regenerateAllUniqueInstallIDs
{
  v3 = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004567C;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)setInstallStatus:(unint64_t)a3 forApp:(id)a4 companionBundleID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ACXGizmoState *)self stateQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000457B4;
  v13[3] = &unk_10008CF40;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, v13);
}

- (BOOL)_onQueue_setInstallStatusForApps:(id)a3 sendNotification:(BOOL)a4 withUpdatePredicate:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ([v8 count])
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
    v18 = self;
    v20 = v9;
    v21 = &v22;
    v11 = v10;
    v19 = v11;
    [v8 enumerateKeysAndObjectsUsingBlock:&v14];
    if (-[ACXGizmoState gizmoIsActivePairedDevice](self, "gizmoIsActivePairedDevice", v14, v15, v16, v17, v18) && *(v23 + 24) == 1 && [v11 count])
    {
      if (v6)
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

- (BOOL)setInstallStatusForApps:(id)a3 sendNotification:(BOOL)a4 withUpdatePredicate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if ([v8 count])
  {
    v10 = [(ACXGizmoState *)self stateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100046060;
    block[3] = &unk_10008DEE0;
    block[4] = self;
    v14 = v8;
    v17 = a4;
    v15 = v9;
    v16 = &v18;
    dispatch_sync(v10, block);

    v11 = *(v19 + 24);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v11 & 1;
}

- (BOOL)iterateInstallStatusAndClearNeedsReunionSyncWithIterator:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [(ACXGizmoState *)self stateQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000461D4;
  v12[3] = &unk_10008DF30;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v12);

  LOBYTE(v7) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v7;
}

- (void)clearPendingInstallations
{
  v3 = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004649C;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)markInstalledAsPending
{
  v3 = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000466EC;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)purgeInstallStatusForApps:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(ACXGizmoState *)self stateQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100046970;
    v6[3] = &unk_10008CC38;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

- (NSDictionary)pendingApps
{
  v3 = objc_opt_new();
  v4 = [(ACXGizmoState *)self stateQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100046A9C;
  v11 = &unk_10008CC38;
  v12 = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(v4, &v8);

  v6 = [v5 copy];

  return v6;
}

- (BOOL)_onQueue_cleanUpExpiredPendingUpdateStates
{
  v3 = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(ACXGizmoState *)self pendingAppUpdateStates];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
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

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v4 count];
  if (v11)
  {
    v12 = [(ACXGizmoState *)self pendingAppUpdateStates];
    [v12 minusSet:v4];

    notify_post([@"com.apple.sockpuppet.applications.updated" UTF8String]);
  }

  return v11 != 0;
}

- (void)_onQueue_cancelPendingUpdateStateTimer
{
  v3 = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ACXGizmoState *)self cleanUpPendingUpdateStateTimer];

  if (v4)
  {
    v5 = [(ACXGizmoState *)self cleanUpPendingUpdateStateTimer];
    dispatch_source_cancel(v5);

    [(ACXGizmoState *)self setCleanUpPendingUpdateStateTimer:0];
  }
}

- (void)_onQueue_setUpPendingUpdateStateTimer
{
  v3 = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ACXGizmoState *)self cleanUpPendingUpdateStateTimer];

  if (!v4)
  {
    v5 = [(ACXGizmoState *)self stateQueue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);

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

- (BOOL)_onQueue_updatePendingForCompanionApp:(id)a3
{
  v4 = a3;
  v5 = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [[ACXPendingAppUpdateState alloc] initWithCompanionBundleID:v4];
  v7 = [(ACXGizmoState *)self pendingAppUpdateStates];
  LOBYTE(v4) = [v7 containsObject:v6];

  return v4;
}

- (BOOL)updatePendingForCompanionApp:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047168;
  block[3] = &unk_10008CA20;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)_onQueue_setUpdatePendingForCompanionApp:(id)a3
{
  v7 = a3;
  v4 = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(v4);

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  v5 = [[ACXPendingAppUpdateState alloc] initWithCompanionBundleID:v7];
  v6 = [(ACXGizmoState *)self pendingAppUpdateStates];
  [v6 addObject:v5];

  [(ACXGizmoState *)self _onQueue_saveState];
  notify_post([@"com.apple.sockpuppet.applications.updated" UTF8String]);
  [(ACXGizmoState *)self _onQueue_setUpPendingUpdateStateTimer];
}

- (void)setUpdatePendingForCompanionApp:(id)a3
{
  v4 = a3;
  v5 = [(ACXGizmoState *)self stateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100047350;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  sub_100005828(v5, v7);
}

- (void)_onQueue_cancelUpdatePendingForCompanionApp:(id)a3
{
  v10 = a3;
  v4 = [(ACXGizmoState *)self stateQueue];
  dispatch_assert_queue_V2(v4);

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v9 = v10;
    MOLogWrite();
  }

  v5 = [[ACXPendingAppUpdateState alloc] initWithCompanionBundleID:v10];
  v6 = [(ACXGizmoState *)self pendingAppUpdateStates];
  [v6 removeObject:v5];

  [(ACXGizmoState *)self _onQueue_saveState];
  v7 = [(ACXGizmoState *)self pendingAppUpdateStates];
  v8 = [v7 count];

  if (!v8)
  {
    [(ACXGizmoState *)self _onQueue_cancelPendingUpdateStateTimer];
  }

  notify_post([@"com.apple.sockpuppet.applications.updated" UTF8String]);
}

- (void)cancelUpdatePendingForCompanionApp:(id)a3
{
  v4 = a3;
  v5 = [(ACXGizmoState *)self stateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004752C;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  sub_100005828(v5, v7);
}

- (id)preferencesForApplicationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = +[ACXAvailableApplicationManager sharedApplicationManager];
  v7 = [v6 gizmoAppWithBundleID:v4];

  if (v7)
  {
    v8 = [v7 teamID];
    v9 = v8;
    v10 = &stru_10008F378;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [NSString stringWithFormat:@"%@.%@", v11, v4];
    v13 = [NPSDomainAccessor alloc];
    v14 = [(ACXGizmoState *)self device];
    v15 = [v14 nrDevice];
    v16 = [v13 initWithDomain:v12 pairedDevice:v15];

    if (v16)
    {
      v27 = v12;
      v28 = v11;
      v17 = objc_opt_new();

      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = [v16 copyKeyList];
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * i);
            v24 = [v16 objectForKey:v23];
            if (v24)
            {
              [v17 setObject:v24 forKeyedSubscript:v23];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v20);
      }

      v5 = v17;
      v12 = v27;
      v11 = v28;
    }
  }

  v25 = [v5 copy];

  return v25;
}

- (id)watchKitAppExecutableHashForBundleID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100045398;
  v16 = sub_1000453A8;
  v17 = 0;
  v5 = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000478DC;
  block[3] = &unk_10008CA20;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setWatchKitAppExecutableHash:(id)a3 forApp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047A30;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, block);
}

- (int64_t)exportedAppStateForDeviceState:(unint64_t)a3
{
  if (a3 < 8)
  {
    return qword_100066738[a3];
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
  v3 = [(ACXGizmoState *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047BA0;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)bundleIDsOfAllInstalledApps
{
  v3 = objc_opt_new();
  v4 = [(ACXGizmoState *)self stateQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100047E20;
  v11 = &unk_10008CC38;
  v12 = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(v4, &v8);

  v6 = [v5 copy];

  return v6;
}

- (void)noteNewApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5 transitioningAppBundleIDs:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v82 = [(ACXGizmoState *)self alwaysInstallApps];
  v17 = [(ACXGizmoState *)self gizmoIsActivePairedDevice];
  v88 = objc_opt_new();
  v90 = objc_opt_new();
  v86 = objc_opt_new();
  v18 = [(ACXGizmoState *)self device];
  v92 = [v18 osVersion];

  v91 = self;
  v19 = [(ACXGizmoState *)self device];
  v89 = [v19 supportsStandaloneApps];

  v87 = v15;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v20 = [(ACXGizmoState *)self device];
    v76 = [v20 idsDeviceIdentifier];
    v77 = sub_100006DA8(v17);
    MOLogWrite();
  }

  if (!v17)
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v55 = v13;
    v67 = [v55 countByEnumeratingWithState:&v93 objects:v109 count:16];
    if (v67)
    {
      v68 = v67;
      v79 = v16;
      v81 = v12;
      v85 = v14;
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
              v76 = [v71 bundleIdentifier];
              MOLogWrite();
            }

            v72 = [v71 companionAppBundleID];
            v73 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:v72];

            v74 = [v71 watchKitAppExecutableHash];
            [v73 setWatchAppExecutableHash:v74];

            v75 = [v71 bundleIdentifier];
            [v90 setObject:v73 forKeyedSubscript:v75];
          }
        }

        v68 = [v55 countByEnumeratingWithState:&v93 objects:v109 count:16];
      }

      while (v68);
      v16 = v79;
      v12 = v81;
      v14 = v85;
    }

    goto LABEL_129;
  }

  v78 = v16;
  v80 = v12;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v21 = v12;
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
          v27 = [v26 companionAppBundleID];
          [(ACXGizmoState *)v91 cancelUpdatePendingForCompanionApp:v27];

          if ([v26 isCompatibleWithOSVersion:v92])
          {
            if (([v26 isRuntimeCompatibleWithOSVersion:v92] & 1) == 0)
            {
              if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
              {
                goto LABEL_27;
              }

              v32 = [v26 bundleIdentifier];
              v77 = [v26 watchKitVersion];
              v76 = v32;
              MOLogWrite();

              goto LABEL_26;
            }

            v28 = [(ACXGizmoState *)v91 device];
            v29 = [v26 isCompatibleWithDevice:v28];

            if (v29)
            {
              if ([v26 isTrusted])
              {
                if ([v26 isEligibleForWatchAppInstall])
                {
                  v30 = [v26 sourceAppIdentifier];
                  v31 = [v30 isEqualToString:v83];

                  if (v31)
                  {
                    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                    {
                      goto LABEL_51;
                    }

LABEL_52:
                    v37 = [v26 companionAppBundleID];
                    v33 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:v37];

                    v38 = [v26 watchKitAppExecutableHash];
                    [v33 setWatchAppExecutableHash:v38];

                    v34 = [v26 bundleIdentifier];
                    [v88 setObject:v33 forKeyedSubscript:v34];
LABEL_28:

                    goto LABEL_29;
                  }

                  v36 = [v26 autoInstallOverride];
                  if (v82)
                  {
                    if (v36 == 1)
                    {
                      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                      {
                        goto LABEL_55;
                      }

LABEL_27:
                      v33 = [v26 companionAppBundleID];
                      v34 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:5 companionBundleID:v33];
                      v35 = [v26 bundleIdentifier];
                      [v88 setObject:v34 forKeyedSubscript:v35];

                      goto LABEL_28;
                    }

                    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                    {
                      goto LABEL_52;
                    }

LABEL_51:
                    v76 = [v26 bundleIdentifier];
                    MOLogWrite();

                    goto LABEL_52;
                  }

                  if (v36 == 2)
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
                  v32 = [v26 bundleIdentifier];
                  v76 = v32;
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

          v76 = [v26 bundleIdentifier];
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
  v40 = v13;
  v41 = [v40 countByEnumeratingWithState:&v101 objects:v111 count:16];
  v15 = v87;
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
        if (v15)
        {
          v46 = [v45 bundleIdentifier];
          v47 = [v15 containsObject:v46];
        }

        else
        {
          v47 = 0;
        }

        if (([v45 isCompatibleWithOSVersion:v92] & 1) == 0)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
LABEL_82:
            v76 = [v45 bundleIdentifier];
            MOLogWrite();
          }

LABEL_83:
          v48 = [v45 companionAppBundleID];
          v49 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v48];
          v50 = [v45 bundleIdentifier];
          [v90 setObject:v49 forKeyedSubscript:v50];

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

        if ([v45 autoInstallOverride] == 1 && -[ACXGizmoState gizmoIsActivePairedDevice](v91, "gizmoIsActivePairedDevice"))
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (!v89 || [v45 applicationMode] == 1 || ((objc_msgSend(v45, "isProfileValidated") | v47) & 1) != 0)
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v76 = [v45 bundleIdentifier];
              MOLogWrite();
            }

            v51 = [v45 companionAppBundleID];
            v48 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:v51];

            v52 = [v45 watchKitAppExecutableHash];
            [v48 setWatchAppExecutableHash:v52];

            v53 = [v45 bundleIdentifier];
            [v90 setObject:v48 forKeyedSubscript:v53];

            v15 = v87;
            goto LABEL_84;
          }

          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
LABEL_96:
            v48 = [v45 bundleIdentifier];
            v76 = v48;
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
  v55 = v14;
  v56 = [v55 countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (!v56)
  {
    goto LABEL_115;
  }

  v57 = v56;
  v84 = v14;
  v58 = v13;
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
        if (!v89 || [v61 applicationMode] == 1)
        {
          v62 = [v61 companionAppBundleID];
          v63 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v62];
          v64 = [v61 bundleIdentifier];
          [v86 setObject:v63 forKeyedSubscript:v64];

          v15 = v87;
          v65 = [v61 companionAppBundleID];
          [(ACXGizmoState *)v91 cancelUpdatePendingForCompanionApp:v65];
          goto LABEL_107;
        }

        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v65 = [v61 bundleIdentifier];
          v76 = v65;
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

  v13 = v58;
  v14 = v84;
LABEL_115:
  v16 = v78;
  v12 = v80;
LABEL_129:

  [(ACXGizmoState *)v91 processNewStatusUpdates:v88 updatedStatusUpdates:v90 removedStatusUpdates:v86 completion:v16];
}

- (BOOL)_onQueue_pendingInstallStateShouldBeIgnoredForApp:(id)a3 existingState:(id)a4 newState:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 watchAppExecutableHash];
  v11 = [v8 watchAppExecutableHash];
  v12 = [v8 installStatus];

  v13 = [v9 installStatus];
  if (v12 == 1 && v13 == 2 && v10 && v11 && [v10 isEqualToString:v11])
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

- (void)processNewStatusUpdates:(id)a3 updatedStatusUpdates:(id)a4 removedStatusUpdates:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count] || objc_msgSend(v11, "count") || objc_msgSend(v12, "count"))
  {
    v14 = [(ACXGizmoState *)self stateQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100048FE0;
    v15[3] = &unk_10008DFC8;
    v15[4] = self;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    sub_100005828(v14, v15);
  }
}

- (void)noteTrustAddedApps:(id)a3 trustRemovedApps:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v42 = v9;
  v43 = a5;
  v11 = [(ACXGizmoState *)self alwaysInstallApps];
  v12 = objc_opt_new();
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v13 = [(ACXGizmoState *)self device];
    v38 = [v13 idsDeviceIdentifier];
    v39 = sub_100006DA8([(ACXGizmoState *)v10 gizmoIsActivePairedDevice]);
    MOLogWrite();
  }

  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v52 = 0u;
  obj = v8;
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
        if (!v11)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v38 = [*(*(&v52 + 1) + 8 * v17) bundleIdentifier];
            MOLogWrite();
          }

          v20 = [v18 companionAppBundleID];
          v24 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:5 companionBundleID:v20];
          goto LABEL_22;
        }

        v19 = [(ACXGizmoState *)v10 device];
        v20 = [v19 osVersion];

        if ([v18 isCompatibleWithOSVersion:v20])
        {
          if ([v18 isRuntimeCompatibleWithOSVersion:v20])
          {
            v21 = [(ACXGizmoState *)v10 device];
            v22 = [v18 isCompatibleWithDevice:v21];

            if (v22)
            {
              if ([v18 isEligibleForWatchAppInstall])
              {
                if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                {
                  v38 = [v18 bundleIdentifier];
                  MOLogWrite();
                }

                v23 = [v18 companionAppBundleID];
                v24 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:v23];

                v25 = [v18 watchKitAppExecutableHash];
                [v24 setWatchAppExecutableHash:v25];

LABEL_22:
                v26 = [v18 bundleIdentifier];
                [v12 setObject:v24 forKeyedSubscript:v26];
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
            v24 = [v18 bundleIdentifier];
            v26 = [v18 watchKitVersion];
            v39 = v26;
            v40 = v20;
            v38 = v24;
            MOLogWrite();
            goto LABEL_23;
          }
        }

        else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
LABEL_26:
          v24 = [v18 bundleIdentifier];
          v38 = v24;
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

  v41 = v10;

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
          v38 = [*(*(&v48 + 1) + 8 * i) bundleIdentifier];
          MOLogWrite();
        }

        v34 = [v33 companionAppBundleID];
        v35 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v34];
        v36 = [v33 bundleIdentifier];
        [v12 setObject:v35 forKeyedSubscript:v36];
      }

      v30 = [v28 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v30);
  }

  if ([v12 count])
  {
    v37 = [(ACXGizmoState *)v41 stateQueue];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100049B88;
    v45[3] = &unk_10008CA98;
    v45[4] = v41;
    v46 = v12;
    v47 = v43;
    sub_100005828(v37, v45);
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
    v5 = [v3 synchronize];
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

      v14 = [(ACXGizmoState *)self npsDomain];
      [v14 setBool:v13 forKey:@"AlwaysInstall"];

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
        v15 = [(ACXGizmoState *)self stateQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10004A460;
        block[3] = &unk_10008CD40;
        block[4] = self;
        dispatch_sync(v15, block);
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
    v4 = [v5 synchronize];
LABEL_9:
    v3 = v5;
    goto LABEL_10;
  }

  v4 = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v5 = 0;
    v4 = MOLogWrite();
    goto LABEL_9;
  }

LABEL_10:

  _objc_release_x1(v4, v3);
}

- (void)initialPairedSyncComplete
{
  self->_hasCompletedInitialPairedSync = 1;
  v3 = [(ACXGizmoState *)self npsDomain];
  [v3 setBool:1 forKey:@"CompletedInitialPairedSync"];

  v4 = [(ACXGizmoState *)self npsDomain];
  v7 = [v4 synchronize];

  v6 = v7;
  if (v7)
  {
    v5 = qword_1000A4878;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v5 = MOLogWrite();
      v6 = v7;
    }
  }

  _objc_release_x1(v5, v6);
}

@end