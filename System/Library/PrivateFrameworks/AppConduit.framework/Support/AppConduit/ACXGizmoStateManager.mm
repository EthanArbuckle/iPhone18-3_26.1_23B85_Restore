@interface ACXGizmoStateManager
+ (id)sharedStateManager;
- (ACXGizmoStateManager)init;
- (id)stateForActivePairedDevice;
- (id)stateForDevice:(id)a3;
- (id)stateForPairingID:(id)a3;
- (void)noteDatabaseRebuild;
- (void)noteNewApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5 transitioningAppBundleIDs:(id)a6;
- (void)noteTrustObtainedForApps:(id)a3 trustRemovedForApps:(id)a4;
@end

@implementation ACXGizmoStateManager

+ (id)sharedStateManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A6B8;
  block[3] = &unk_10008CBE8;
  block[4] = a1;
  if (qword_1000A4800 != -1)
  {
    dispatch_once(&qword_1000A4800, block);
  }

  v2 = qword_1000A47F8;

  return v2;
}

- (ACXGizmoStateManager)init
{
  v9.receiver = self;
  v9.super_class = ACXGizmoStateManager;
  v2 = [(ACXGizmoStateManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appconduit.GizmoStateManager", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = objc_opt_new();
    stateMap = v2->_stateMap;
    v2->_stateMap = v6;
  }

  return v2;
}

- (id)stateForDevice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_10001A904;
    v19 = sub_10001A914;
    v20 = 0;
    v6 = [v4 pairingID];
    v7 = [(ACXGizmoStateManager *)self internalQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001A91C;
    v11[3] = &unk_10008D4E8;
    v14 = &v15;
    v11[4] = self;
    v12 = v6;
    v13 = v5;
    v8 = v6;
    dispatch_sync(v7, v11);

    v9 = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)stateForPairingID:(id)a3
{
  v4 = a3;
  v5 = +[ACXDeviceManager sharedManager];
  v6 = [v5 deviceForPairingID:v4];

  v7 = [(ACXGizmoStateManager *)self stateForDevice:v6];

  return v7;
}

- (id)stateForActivePairedDevice
{
  v3 = +[ACXDeviceManager sharedManager];
  v4 = [v3 currentActivePairedDevice];
  v5 = [(ACXGizmoStateManager *)self stateForDevice:v4];

  return v5;
}

- (void)noteNewApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5 transitioningAppBundleIDs:(id)a6
{
  v46 = a3;
  v52 = a4;
  v45 = a5;
  v49 = a6;
  v10 = +[ACXDeviceManager sharedManager];
  v11 = [v10 allDevices];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v65;
    v42 = v55;
    v43 = *v65;
    v44 = self;
    do
    {
      v15 = 0;
      v47 = v13;
      do
      {
        if (*v65 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v64 + 1) + 8 * v15);
        v17 = [(ACXGizmoStateManager *)self stateForDevice:v16, v41, v42];
        if ([v16 isActivePairedDevice])
        {
          v50 = v16;
          v51 = v15;
          v53 = objc_opt_new();
          v18 = objc_opt_new();
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v19 = v46;
          v20 = [v19 countByEnumeratingWithState:&v60 objects:v69 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v61;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v61 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v60 + 1) + 8 * i);
                v25 = [v24 bundleIdentifier];
                v26 = [v17 watchKitAppExecutableHashForBundleID:v25];

                v27 = [v24 watchKitAppExecutableHash];
                v28 = v27;
                if (v26)
                {
                  v29 = v27 == 0;
                }

                else
                {
                  v29 = 1;
                }

                if (v29 || ![v26 isEqualToString:v27])
                {
                  [v53 addObject:v24];
                }

                else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                {
                  v41 = [v24 bundleIdentifier];
                  MOLogWrite();
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v60 objects:v69 count:16];
            }

            while (v21);
          }

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v30 = v52;
          v31 = [v30 countByEnumeratingWithState:&v56 objects:v68 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v57;
            do
            {
              for (j = 0; j != v32; j = j + 1)
              {
                if (*v57 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v56 + 1) + 8 * j);
                v36 = [v35 bundleIdentifier];
                v37 = [v17 watchKitAppExecutableHashForBundleID:v36];

                v38 = [v35 watchKitAppExecutableHash];
                v39 = v38;
                if (v37)
                {
                  v40 = v38 == 0;
                }

                else
                {
                  v40 = 1;
                }

                if (v40 || ![v37 isEqualToString:v38])
                {
                  [v18 addObject:v35];
                }

                else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                {
                  v41 = [v35 bundleIdentifier];
                  MOLogWrite();
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v56 objects:v68 count:16];
            }

            while (v32);
          }

          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v55[0] = sub_10001B00C;
          v55[1] = &unk_10008CD40;
          v55[2] = v50;
          [v17 noteNewApps:v53 updatedApps:v18 removedApps:v45 transitioningAppBundleIDs:v49 completion:v54];

          v14 = v43;
          self = v44;
          v13 = v47;
          v15 = v51;
        }

        else if ([v52 count])
        {
          [v17 noteNewApps:0 updatedApps:v52 removedApps:0 transitioningAppBundleIDs:v49 completion:0];
        }

        v15 = v15 + 1;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v13);
  }
}

- (void)noteTrustObtainedForApps:(id)a3 trustRemovedForApps:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ACXDeviceManager sharedManager];
  v9 = [v8 currentActivePairedDevice];

  v10 = [(ACXGizmoStateManager *)self stateForDevice:v9];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B184;
  v12[3] = &unk_10008CD40;
  v13 = v9;
  v11 = v9;
  [v10 noteTrustAddedApps:v7 trustRemovedApps:v6 completion:v12];
}

- (void)noteDatabaseRebuild
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  notify_post([@"com.apple.sockpuppet.applications.updated" UTF8String]);
  v2 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  v3 = [v2 connectionForActivePairedDevice];

  [v3 performReunionSyncWithReason:@"database updated"];
}

@end