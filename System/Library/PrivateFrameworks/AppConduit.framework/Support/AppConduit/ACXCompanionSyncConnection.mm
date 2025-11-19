@interface ACXCompanionSyncConnection
- (ACXCompanionSyncConnection)initWithDevice:(id)a3;
- (BOOL)_onQueue_appNeedsInstall:(id)a3;
- (BOOL)_onQueue_installFailedForWatchAppBundleID:(id)a3 companionBundleID:(id)a4 withError:(id)a5 appName:(id)a6 userInitiated:(BOOL)a7 userPresentableError:(id *)a8;
- (BOOL)needsAvailableSystemAppFetch;
- (BOOL)supportsRemoteAppList;
- (NSDictionary)removabilityForRemoteApps;
- (id)_appBundleFromURL:(id)a3;
- (id)_onQueue_applicationForWatchAppWithBundleID:(id)a3;
- (id)_onQueue_availableCompanionAppBundleIDForWatchApp:(id)a3;
- (id)messager;
- (id)remoteAppWithBundleID:(id)a3;
- (void)_installQueuedOrCompletedForWatchBundleID:(id)a3 companionAppBundleID:(id)a4 withName:(id)a5 userInitiated:(BOOL)a6 withError:(id)a7 withCompletion:(id)a8;
- (void)_installWatchAppWithBundleID:(id)a3 withProvisioningProfileInfo:(id)a4 installationPendingBlock:(id)a5 completionWithError:(id)a6;
- (void)_onQueue_beginReunionSync;
- (void)_onQueue_beginReunionSyncWithRetryCount:(unint64_t)a3;
- (void)_onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded;
- (void)_onQueue_configureRemoteRemovabilityManagerAndFetchRemoteRemovabilityStatus;
- (void)_onQueue_fetchAvailableSystemApps;
- (void)_onQueue_fetchAvailableSystemAppsWithRetryCount:(unint64_t)a3;
- (void)_onQueue_fetchRemovabilityForRemoteApps;
- (void)_onQueue_fetchRemovabilityForRemoteAppsWithRetryCount:(unint64_t)a3;
- (void)_onQueue_handleAppDeleteMessage:(id)a3;
- (void)_onQueue_handleAppInstallFailureMessage:(id)a3;
- (void)_onQueue_handleAppInstallMessage:(id)a3;
- (void)_onQueue_handleAppInstallMessage:(id)a3 withAppManager:(id)a4;
- (void)_onQueue_handleAppRemovabilityUpdatedMessage:(id)a3;
- (void)_onQueue_handleCompatibleWatchAppsOnCompanionMessage:(id)a3;
- (void)_onQueue_handleIconForWatchAppMessage:(id)a3;
- (void)_onQueue_handleInstallAppMessage:(id)a3;
- (void)_onQueue_handleRemoteRemovabilityFetchResponse:(id)a3;
- (void)_onQueue_handleSADAppInfoResponse:(id)a3;
- (void)_onQueue_processPendingGizmoState;
- (void)_onQueue_processReunionSyncMessage:(id)a3;
- (void)_onQueue_processReunionSyncMessage:(id)a3 withAppManager:(id)a4;
- (void)_onQueue_sendRemoveMessageForBundleIDs:(id)a3 isUserInitiated:(BOOL)a4 withCompletion:(id)a5;
- (void)_processSystemAppChangesForNewApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5;
- (void)_setLocallyAvailableForRemoteApplicationInstances:(id)a3;
- (void)acknowledgeAppEventsForDBUUID:(id)a3 throughSequenceNumber:(unint64_t)a4;
- (void)acknowledgeTestFlightInstallBegunForWatchApp:(id)a3;
- (void)applicationsAdded:(id)a3;
- (void)applicationsRemovabilityUpdated:(id)a3;
- (void)applicationsRemoved:(id)a3;
- (void)applicationsUpdated:(id)a3;
- (void)cancelPendingInstallations;
- (void)dealloc;
- (void)fetchAppInfoForBundleIDs:(id)a3;
- (void)fetchBundleIDList;
- (void)fetchOutstandingAppEvents;
- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)a3 completion:(id)a4;
- (void)fetchRemovabilityForRemoteApps;
- (void)handleIncomingMessage:(id)a3;
- (void)installAllApplications;
- (void)installProvisioningProfileWithData:(id)a3 completion:(id)a4;
- (void)installSystemApplicationsWithBundleIDs:(id)a3 withCompletion:(id)a4;
- (void)installWatchAppAtURL:(id)a3 installOptions:(id)a4 size:(int64_t)a5 completionWithError:(id)a6;
- (void)markAllApplicationsAsRemoved;
- (void)noteCompanionAppDatabaseRebuild;
- (void)noteInstallFailure:(id)a3 forWatchAppWithBundleID:(id)a4 wasUserInitiated:(BOOL)a5;
- (void)noteNewCompanionApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5 forDBUUID:(id)a6 endingSequenceNumber:(unint64_t)a7;
- (void)performReunionSyncWithReason:(id)a3;
- (void)processPendingStateWithReason:(id)a3;
- (void)reachabilityChangedForDevice:(id)a3;
- (void)removeProvisioningProfileWithID:(id)a3 completion:(id)a4;
- (void)removeWatchAppWithBundleID:(id)a3 completion:(id)a4;
- (void)resyncCompleted;
- (void)updatePreferencesForApplicationWithIdentifier:(id)a3 preferences:(id)a4 writingToPreferencesLocation:(unint64_t)a5 options:(unint64_t)a6 completion:(id)a7;
@end

@implementation ACXCompanionSyncConnection

- (ACXCompanionSyncConnection)initWithDevice:(id)a3
{
  v5 = a3;
  v36.receiver = self;
  v36.super_class = ACXCompanionSyncConnection;
  v6 = [(ACXCompanionSyncConnection *)&v36 init];
  if (!v6)
  {
LABEL_8:
    v30 = v6;
    goto LABEL_13;
  }

  if (v5)
  {
    v7 = +[ACXGizmoStateManager sharedStateManager];
    v8 = [v7 stateForDevice:v5];
    gizmoState = v6->_gizmoState;
    v6->_gizmoState = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.AppConduit.CompanionSyncConnection", v10);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v11;

    objc_storeStrong(&v6->_device, a3);
    v13 = [(ACXCompanionSyncConnection *)v6 device];
    [v13 addObserver:v6];

    v14 = +[ACXAvailableApplicationManager sharedApplicationManager];
    applicationManager = v6->_applicationManager;
    v6->_applicationManager = v14;

    v16 = [ACXInstallQueue alloc];
    v17 = [(ACXCompanionSyncConnection *)v6 device];
    v18 = [(ACXInstallQueue *)v16 initWithDevice:v17];
    installQueue = v6->_installQueue;
    v6->_installQueue = v18;

    v20 = [ACXLocalAppStoreInstallQueue alloc];
    v21 = [(ACXCompanionSyncConnection *)v6 device];
    v22 = [(ACXLocalAppStoreInstallQueue *)v20 initWithDevice:v21];
    appStoreLocalQueue = v6->_appStoreLocalQueue;
    v6->_appStoreLocalQueue = v22;

    [(ACXCompanionSyncConnection *)v6 _onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded];
    if ([v5 isReachable])
    {
      v24 = [(ACXCompanionSyncConnection *)v6 remoteAppList];
      [v24 remoteDeviceConnected];
    }

    v25 = [(ACXCompanionSyncConnection *)v6 internalQueue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10001DEEC;
    v34[3] = &unk_10008CD40;
    v26 = v6;
    v35 = v26;
    sub_100005828(v25, v34);

    v27 = [(ACXCompanionSyncConnection *)v26 gizmoState];
    v28 = [v27 needsReunionSync];

    if (v28)
    {
      v29 = [(ACXCompanionSyncConnection *)v26 internalQueue];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10001DEF4;
      v32[3] = &unk_10008CD40;
      v33 = v26;
      sub_100005828(v29, v32);
    }

    goto LABEL_8;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  v30 = 0;
LABEL_13:

  return v30;
}

- (void)dealloc
{
  v3 = [(ACXCompanionSyncConnection *)self device];
  [v3 removeObserver:self];

  v4 = [(ACXCompanionSyncConnection *)self remoteRemovabilityManager];
  [v4 removeDelegate:self];

  v5.receiver = self;
  v5.super_class = ACXCompanionSyncConnection;
  [(ACXCompanionSyncConnection *)&v5 dealloc];
}

- (id)messager
{
  v2 = [(ACXCompanionSyncConnection *)self device];
  v3 = [v2 messager];

  return v3;
}

- (void)_onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded
{
  v3 = [(ACXCompanionSyncConnection *)self remoteAppList];

  if (v3)
  {
    goto LABEL_17;
  }

  v4 = [(ACXCompanionSyncConnection *)self device];
  if ([v4 supportsRemoteAppList])
  {
    v5 = [v4 pairingStoreURL];
    v6 = sub_100006830(v5);

    v7 = [(ACXCompanionSyncConnection *)self internalQueue];
    v8 = [ACXRemoteAppList remoteAppListForStorageBaseURL:v6 delegate:self queue:v7];
    remoteAppList = self->_remoteAppList;
    self->_remoteAppList = v8;

    if (!self->_remoteAppList && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
    {
      v16 = [v6 path];
      MOLogWrite();
    }

    v10 = [(ACXCompanionSyncConnection *)self remoteAppList];
    v11 = [(ACXCompanionSyncConnection *)self internalQueue];
    [v10 addObserver:self queue:v11];

    v12 = [ACXRemoteSystemAppList availableSystemAppListForStorageBaseURL:v6];
    availableSystemAppList = self->_availableSystemAppList;
    self->_availableSystemAppList = v12;

    if (self->_availableSystemAppList || qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_15;
    }

    v14 = [v6 path];
    v16 = v14;
  }

  else
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_16;
    }

    v6 = [v4 idsDeviceIdentifier];
    v14 = [v4 pairingID];
    v16 = v6;
    v17 = v14;
  }

  MOLogWrite();

LABEL_15:
LABEL_16:

LABEL_17:
  if ([(ACXCompanionSyncConnection *)self needsAvailableSystemAppFetch:v16])
  {
    v15 = [(ACXCompanionSyncConnection *)self internalQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001E258;
    v18[3] = &unk_10008CD40;
    v18[4] = self;
    sub_100005828(v15, v18);
  }
}

- (void)_onQueue_configureRemoteRemovabilityManagerAndFetchRemoteRemovabilityStatus
{
  v3 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v11 = [(ACXCompanionSyncConnection *)self device];
  if ([v11 supportsTrackingAppRemovability])
  {
    v4 = [(ACXCompanionSyncConnection *)self remoteRemovabilityManager];

    if (v4)
    {
LABEL_5:
      [(ACXCompanionSyncConnection *)self _onQueue_fetchRemovabilityForRemoteApps];
      goto LABEL_9;
    }

    v5 = [v11 pairingStoreURL];
    v6 = sub_100006830(v5);

    v7 = [(ACXCompanionSyncConnection *)self internalQueue];
    v8 = [ACXRemoteAppRemovabilityManager remoteRemovabilityManagerForStorageBaseURL:v6 delegate:self queue:v7];
    remoteRemovabilityManager = self->_remoteRemovabilityManager;
    self->_remoteRemovabilityManager = v8;

    if (self->_remoteRemovabilityManager)
    {

      goto LABEL_5;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v10 = [v6 path];
      MOLogWrite();
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

LABEL_9:
}

- (void)reachabilityChangedForDevice:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self device];
  v6 = [v5 isReachable];

  if (v6)
  {
    v7 = [v4 idsDeviceIdentifier];
    v8 = [NSString stringWithFormat:@"device %@ became reachable", v7];

    [(ACXCompanionSyncConnection *)self performReunionSyncWithReason:v8];
    v9 = [(ACXCompanionSyncConnection *)self internalQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001E560;
    v11[3] = &unk_10008CD40;
    v11[4] = self;
    sub_100005828(v9, v11);
  }

  else
  {
    v8 = [(ACXCompanionSyncConnection *)self internalQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001E5B4;
    v10[3] = &unk_10008CD40;
    v10[4] = self;
    sub_100005828(v8, v10);
  }
}

- (void)installAllApplications
{
  v3 = [(ACXCompanionSyncConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E680;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (BOOL)needsAvailableSystemAppFetch
{
  v3 = [(ACXCompanionSyncConnection *)self device];
  v4 = [v3 supportsRemoteAppList];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ACXCompanionSyncConnection *)self availableSystemAppList];
  v6 = [(ACXCompanionSyncConnection *)self device];
  v7 = [v6 osBuildVersion];
  v8 = [v5 needsSyncForCurrentOSBuildVersion:v7];

  return v8;
}

- (void)markAllApplicationsAsRemoved
{
  v3 = [(ACXCompanionSyncConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EA58;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)cancelPendingInstallations
{
  v3 = [(ACXCompanionSyncConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ECB0;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (BOOL)_onQueue_installFailedForWatchAppBundleID:(id)a3 companionBundleID:(id)a4 withError:(id)a5 appName:(id)a6 userInitiated:(BOOL)a7 userPresentableError:(id *)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a4;
  v18 = [(ACXCompanionSyncConnection *)self gizmoState];
  [v18 setInstallStatus:7 forApp:v14 companionBundleID:v17];

  v19 = sub_10004F750(v15, v16, 1);
  v20 = v19;
  if (v9)
  {
    v21 = [v19 domain];
    if ([v21 isEqualToString:@"ACXUserPresentableErrorDomain"] && objc_msgSend(v20, "code") == 9)
    {
      v22 = v15;
      v23 = [v22 domain];
      if (![v23 isEqualToString:@"ACXErrorDomain"] || objc_msgSend(v22, "code") != 52)
      {
        v24 = [v22 domain];
        if (![v24 isEqualToString:IXErrorDomain] || objc_msgSend(v22, "code") != 24)
        {
          v69 = v21;
          v25 = v23;
          v26 = [v22 domain];
          if ([v26 isEqualToString:AMSErrorDomain])
          {
            v71 = v25;
            v27 = [v22 code];

            if (v27 == 100)
            {
              goto LABEL_27;
            }
          }

          else
          {
          }

          v21 = [(ACXCompanionSyncConnection *)self device];
          v28 = v16;
          v72 = v14;
          v29 = v22;
          v22 = v28;
          v24 = v29;
          v30 = v20;
          if (sub_100006760())
          {
            v31 = +[NSDate date];
            v65 = sub_10002D2FC(v31);

            v64 = MGCopyAnswer();
            v63 = MGCopyAnswer();
            v68 = MGCopyAnswer();
            v62 = [v21 productType];
            v61 = [v21 osVersion];
            v67 = [v21 osBuildVersion];
            v60 = [v21 watchSize];
            v59 = [v21 idsDeviceIdentifier];
            v58 = [v21 pairingID];
            v32 = [v24 userInfo];
            v57 = [v32 objectForKeyedSubscript:@"ConnectionIdentifier"];

            v33 = [v24 userInfo];
            v56 = [v33 objectForKeyedSubscript:@"ConnectionCreationDate"];

            v34 = [v24 userInfo];
            v51 = [v34 objectForKeyedSubscript:@"WifiAsserted"];

            v70 = v24;
            v35 = [v24 userInfo];
            v55 = [v35 objectForKeyedSubscript:@"IDSMessageID"];

            v50 = [NSString stringWithFormat:@"Installation of %@ failed", v22];
            v54 = [NSString stringWithFormat:@"%@ failed to install on your Apple Watch.\n\nPlease file a bug!", v22];
            v36 = [v30 userInfo];
            v37 = [v36 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];

            v38 = [v30 userInfo];
            v53 = [v38 objectForKeyedSubscript:NSLocalizedDescriptionKey];

            v66 = v22;
            v49 = v37;
            if (v37)
            {
              [NSString stringWithFormat:@"INTERNAL-ONLY MESSAGE: (%@) %@", v22, v37];
            }

            else
            {
              [NSString stringWithFormat:@"INTERNAL-ONLY MESSAGE: %@", v50, v46];
            }
            v52 = ;
            v39 = v54;
            if (v53)
            {
              v39 = v53;
            }

            v48 = v39;
            v40 = [v70 domain];
            v47 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[%@/%@] [%@:%ld]: Failed to install %@ on Apple Watch", v68, v67, v40, [v70 code], v72);

            v41 = objc_opt_new();
            [v41 appendFormat:@"Steps to reproduce:\n\n\n\nAuto-Gathered Info:\n"];
            [v41 appendFormat:@"Time: %@\n", v65];
            [v41 appendFormat:@"IDS Device ID: %@\n", v59];
            [v41 appendFormat:@"Pairing ID: %@\n", v58];
            if (v55)
            {
              [v41 appendFormat:@"Failing IDS Message ID: %@\n", v55];
            }

            if (v57)
            {
              [v41 appendFormat:@"Failing Stream Name: %@\n", v57];
              v42 = sub_10002D2FC(v56);
              [v41 appendFormat:@"Connection Start Date: %@\n", v42];
              [v41 appendFormat:@"WiFi Asserted: %c\n", sub_100006DA8(objc_msgSend(v51, "BOOLValue"))];
            }

            [v41 appendFormat:@"Error: %@\n", v70];
            [v41 appendFormat:@"Companion: %@ %@ (%@)\n", v64, v63, v68];
            [v41 appendFormat:@"Watch: %@ (%@) %@ (%@)\n", v62, v60, v61, v67];
            [v41 appendFormat:@"App Name: %@\n", v66];
            [v41 appendFormat:@"Bundle ID: %@\n", v72];
            v43 = [v41 copy];
            sub_100005728(v52, v48, v47, v43);

            v24 = v70;
            v22 = v66;
          }

          v23 = v72;
        }
      }
    }
  }

LABEL_27:
  if (a8)
  {
    v44 = v20;
    *a8 = v20;
  }

  return a8 != 0;
}

- (void)installSystemApplicationsWithBundleIDs:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXCompanionSyncConnection *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001F574;
  v11[3] = &unk_10008CA98;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  sub_100005828(v8, v11);
}

- (void)_installWatchAppWithBundleID:(id)a3 withProvisioningProfileInfo:(id)a4 installationPendingBlock:(id)a5 completionWithError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ACXCompanionSyncConnection *)self internalQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001F754;
  v19[3] = &unk_10008D608;
  v19[4] = self;
  v20 = v10;
  v22 = v13;
  v23 = v12;
  v21 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v10;
  sub_100005828(v14, v19);
}

- (id)_appBundleFromURL:(id)a3
{
  v3 = a3;
  v4 = [v3 URLByAppendingPathComponent:@"Payload" isDirectory:1];
  v5 = +[NSFileManager defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:1 errorHandler:&stru_10008D648];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 pathExtension];
          v17 = [v16 isEqualToString:@"app"];

          if (v17)
          {
            v18 = v15;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_13:
  }

  else
  {
    v18 = v3;
  }

  return v18;
}

- (void)installWatchAppAtURL:(id)a3 installOptions:(id)a4 size:(int64_t)a5 completionWithError:(id)a6
{
  v9 = a3;
  v77 = a4;
  v10 = a6;
  v11 = _kCFBundleDisplayNameKey;
  v12 = [NSSet setWithObjects:kCFBundleExecutableKey, kCFBundleIdentifierKey, _kCFBundleDisplayNameKey, kCFBundleNameKey, @"UIRequiredDeviceCapabilities", @"WKCompanionAppBundleIdentifier", 0];
  v75 = self;
  v13 = [(ACXCompanionSyncConnection *)self _appBundleFromURL:v9];
  v14 = v13;
  if (v13)
  {
    v76 = v12;
    v78 = sub_100006A94(v13, v12);
    if (!v78)
    {
      v24 = [v14 path];
      v21 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 688, @"ACXErrorDomain", 40, 0, 0, @"Failed to load Info.plist from app at URL %@", v25, v24);

      if (v10)
      {
        v10[2](v10, 8, v21);
      }

      v23 = v12;
      v22 = v77;
      goto LABEL_59;
    }

    v15 = v10;
    v73 = v9;
    v16 = [v78 objectForKeyedSubscript:kCFBundleExecutableKey];
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

    v72 = v18;
    if (!v18)
    {
      v29 = [v14 path];
      v21 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 697, @"ACXErrorDomain", 47, 0, 0, @"Failed to get bundle executable name from Info.plist at %@", v30, v29);

      v10 = v15;
      if (v15)
      {
        v15[2](v15, 8, v21);
      }

      v23 = v76;
      v22 = v77;
      v31 = 0;
      goto LABEL_58;
    }

    v71 = v14;
    v26 = [v78 objectForKeyedSubscript:v11];
    objc_opt_class();
    v27 = v26;
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v22 = v77;

    v10 = v15;
    if (!v28)
    {
      v32 = [v78 objectForKeyedSubscript:kCFBundleNameKey];
      objc_opt_class();
      v33 = v32;
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      if (v34)
      {
        v28 = v34;
      }

      else
      {
        v28 = @"Unknown Name";
      }
    }

    v35 = [v78 objectForKeyedSubscript:kCFBundleIdentifierKey];
    objc_opt_class();
    v36 = v35;
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    if (!v37)
    {
      v45 = [v71 path];
      v21 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 714, @"ACXErrorDomain", 47, 0, 0, @"Failed to get watch bundle ID from Info.plist at %@", v46, v45);

      if (v10)
      {
        v10[2](v10, 8, v21);
      }

      v23 = v76;
      v31 = v72;
      goto LABEL_57;
    }

    v38 = [v77 installTargetType];
    if (v38 != 2)
    {
      v39 = [(ACXCompanionSyncConnection *)v75 appStoreLocalQueue];
      [v39 acknowledgeInstallationStartedForWatchApp:v37];
    }

    v40 = [v78 objectForKeyedSubscript:@"WKCompanionAppBundleIdentifier"];
    if (!v40)
    {
      v47 = [v71 path];
      v21 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 728, @"ACXErrorDomain", 47, 0, 0, @"Failed to get companion app bundle ID from Info.plist at %@", v48, v47);

      if (v10)
      {
        v10[2](v10, 8, v21);
      }

      v23 = v76;
      v31 = v72;
      goto LABEL_56;
    }

    v69 = [v78 objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];
    v41 = [v77 sinfData];

    v70 = v40;
    if (v41)
    {
      v42 = [v77 sinfData];
      getuid();
      getgid();
      v85[1] = 0;
      v43 = MIUpdateSinfWithData();
      v21 = 0;

      if ((v43 & 1) == 0)
      {
        v64 = [v9 path];
        v55 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 739, @"ACXErrorDomain", 41, 0, 0, @"Failed to create sinf for app %@ at URL %@: %@", v54, v37);

        if (v10)
        {
          v10[2](v10, 8, v55);
        }

        goto LABEL_54;
      }

      v44 = v21;
    }

    else
    {
      v44 = 0;
    }

    v49 = [v77 iTunesMetadata];

    if (!v49)
    {
      v21 = v44;
      goto LABEL_50;
    }

    v50 = [v77 iTunesMetadata];
    v51 = [v50 dictionaryRepresentation];
    v52 = [v9 URLByAppendingPathComponent:@"iTunesMetadata.plist"];
    v85[0] = v44;
    v53 = [v51 ACX_writeToURL:v52 format:200 options:268435457 error:v85];
    v21 = v85[0];

    if (v53)
    {
      v22 = v77;
LABEL_50:
      v68 = v38 == 2;
      v56 = [(ACXCompanionSyncConnection *)v75 gizmoState];
      [v56 setInstallStatus:1 forApp:v37 companionBundleID:v70];

      v57 = [v22 isUserInitiated];
      v58 = [(ACXCompanionSyncConnection *)v75 installQueue];
      v67 = [(ACXCompanionSyncConnection *)v75 gizmoState];
      v59 = [v67 preferencesForApplicationWithIdentifier:v37];
      v66 = [v77 isUserInitiated];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_100020C38;
      v79[3] = &unk_10008D670;
      v79[4] = v75;
      v80 = v37;
      v81 = v70;
      v82 = v28;
      v84 = v57;
      v83 = v10;
      v60 = v69;
      v9 = v73;
      LOBYTE(v63) = v66;
      [v58 installWatchAppAtURL:v73 watchBundleID:v80 companionAppBundleID:v81 withPriority:2 appSettings:v59 isPlaceholder:v68 isUserInitiated:v63 size:a5 requiredCapabilities:v69 completion:v79];

      v40 = v70;
      v22 = v77;

      v31 = v72;
LABEL_55:

      v23 = v76;
LABEL_56:

LABEL_57:
      v14 = v71;
LABEL_58:

LABEL_59:
      goto LABEL_60;
    }

    v9 = v73;
    v65 = [v73 path];
    v62 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 749, @"ACXErrorDomain", 42, 0, 0, @"Failed to create iTunesMetadata.plist for app %@ at URL %@: %@", v61, v37);

    v40 = v70;
    if (v10)
    {
      v10[2](v10, 8, v62);
    }

    v22 = v77;
LABEL_54:
    v31 = v72;
    v60 = v69;
    goto LABEL_55;
  }

  v19 = [v9 path];
  v21 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 679, @"ACXErrorDomain", 46, 0, 0, @"Failed to locate app bundle from root URL %@", v20, v19);

  if (v10)
  {
    v10[2](v10, 8, v21);
  }

  v22 = v77;
  v23 = v12;
LABEL_60:
}

- (void)_installQueuedOrCompletedForWatchBundleID:(id)a3 companionAppBundleID:(id)a4 withName:(id)a5 userInitiated:(BOOL)a6 withError:(id)a7 withCompletion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = v18;
  if (v17)
  {
    v20 = [(ACXCompanionSyncConnection *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100020DC4;
    block[3] = &unk_10008D698;
    block[4] = self;
    v22 = v14;
    v23 = v17;
    v24 = v15;
    v26 = v19;
    v25 = v16;
    v27 = a6;
    dispatch_sync(v20, block);
  }

  else if (v18)
  {
    (*(v18 + 2))(v18, 1, 0);
  }
}

- (id)remoteAppWithBundleID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10002112C;
  v17 = sub_10002113C;
  v5 = [(ACXCompanionSyncConnection *)self applicationManager];
  v18 = [v5 gizmoAppWithBundleID:v4];

  v6 = v14[5];
  if (!v6)
  {
    v7 = [(ACXCompanionSyncConnection *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021144;
    block[3] = &unk_10008CA20;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(v7, block);

    v6 = v14[5];
  }

  v8 = v6;
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)removeWatchAppWithBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXCompanionSyncConnection *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002128C;
  v11[3] = &unk_10008CA98;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  sub_100005828(v8, v11);
}

- (void)_onQueue_fetchRemovabilityForRemoteApps
{
  v3 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v5 = [(ACXCompanionSyncConnection *)self device];
  if ([v5 isReachable])
  {
    if ([(ACXCompanionSyncConnection *)self remoteRemovabilityFetchRunning])
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
LABEL_8:
        v4 = [v5 idsDeviceIdentifier];
        MOLogWrite();
      }
    }

    else
    {
      [(ACXCompanionSyncConnection *)self setRemoteRemovabilityFetchRunning:1];
      [(ACXCompanionSyncConnection *)self _onQueue_fetchRemovabilityForRemoteAppsWithRetryCount:0];
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    goto LABEL_8;
  }
}

- (void)_onQueue_fetchRemovabilityForRemoteAppsWithRetryCount:(unint64_t)a3
{
  v5 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ACXCompanionSyncConnection *)self messager];
  v7 = [(ACXCompanionSyncConnection *)self device];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000217FC;
  v8[3] = &unk_10008D6E8;
  v8[4] = self;
  v8[5] = a3;
  [v6 sendMessage:&off_100097AD0 toDevice:v7 withPriority:200 timeout:@"remote removability fetch" logDescription:v8 handleReply:120.0];
}

- (void)_onQueue_handleRemoteRemovabilityFetchResponse:(id)a3
{
  v22 = a3;
  v4 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v22 message];
  v6 = [v5 objectForKeyedSubscript:@"RA"];
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

  v9 = [v22 message];
  v10 = [v9 objectForKeyedSubscript:@"RU"];
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

  v13 = [v22 message];
  v14 = [v13 objectForKeyedSubscript:@"RS"];
  objc_opt_class();
  v15 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v20 = v12;
    v21 = v16;
    v19 = v8;
    MOLogWrite();
  }

  if (v8)
  {
    v17 = [(ACXCompanionSyncConnection *)self remoteRemovabilityManager];
    v18 = [[NSUUID alloc] initWithUUIDString:v12];
    [v17 setRemoteRemovabilityData:v8 withDBUUID:v18 sequenceNumber:{objc_msgSend(v16, "unsignedIntegerValue")}];

LABEL_18:
    goto LABEL_19;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v17 = [v22 message];
    v19 = v17;
    MOLogWrite();
    goto LABEL_18;
  }

LABEL_19:
  [(ACXCompanionSyncConnection *)self setRemoteRemovabilityFetchRunning:0, v19];
}

- (void)_onQueue_fetchAvailableSystemApps
{
  v3 = [(ACXCompanionSyncConnection *)self device];
  v4 = [v3 isReachable];

  if (v4)
  {

    [(ACXCompanionSyncConnection *)self _onQueue_fetchAvailableSystemAppsWithRetryCount:0];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v6 = [(ACXCompanionSyncConnection *)self device];
    v5 = [v6 idsDeviceIdentifier];
    MOLogWrite();
  }
}

- (void)_onQueue_fetchAvailableSystemAppsWithRetryCount:(unint64_t)a3
{
  if ([(ACXCompanionSyncConnection *)self availableSystemAppFetchRunning])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {

      MOLogWrite();
    }
  }

  else
  {
    [(ACXCompanionSyncConnection *)self setAvailableSystemAppFetchRunning:1];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v11 = a3;
      MOLogWrite();
    }

    v5 = [(ACXCompanionSyncConnection *)self applicationManager];
    v6 = [v5 bundleIDsOfLocallyAvailableSystemApps];

    v13[0] = @"T";
    v13[1] = @"BL";
    v14[0] = &off_100097680;
    v7 = [v6 allObjects];
    v14[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

    v9 = [(ACXCompanionSyncConnection *)self messager];
    v10 = [(ACXCompanionSyncConnection *)self device];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000220A8;
    v12[3] = &unk_10008D6E8;
    v12[4] = self;
    v12[5] = a3;
    [v9 sendMessage:v8 toDevice:v10 withPriority:200 timeout:@"system app fetch" logDescription:v12 handleReply:120.0];
  }
}

- (void)_onQueue_handleSADAppInfoResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 message];
  v6 = [v5 objectForKeyedSubscript:@"IL"];
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

  v9 = [v4 message];
  v10 = [v9 objectForKeyedSubscript:@"BL"];
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

  if (!v8 || (objc_opt_class(), (sub_100005D2C(v8) & 1) == 0))
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_33;
    }

LABEL_32:
    v28 = [v4 message];
    MOLogWrite();

    goto LABEL_33;
  }

  if (!v12 || (objc_opt_class(), (sub_100005D2C(v12) & 1) == 0))
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v32 = self;
  v13 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = v8;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        v20 = [[ACXRemoteApplication alloc] initWithSerializedDictionary:v19];
        if (v20)
        {
          [v13 addObject:v20];
        }

        else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v28 = v19;
          MOLogWrite();
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v16);
  }

  self = v32;
  v21 = [(ACXCompanionSyncConnection *)v32 device];
  v22 = [v21 osBuildVersion];

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v23 = [v13 count];
    v24 = [(ACXCompanionSyncConnection *)v32 device];
    v29 = [v24 pairingID];
    v30 = v22;
    v28 = v23;
    MOLogWrite();
  }

  v25 = [(ACXCompanionSyncConnection *)v32 availableSystemAppList:v28];
  [v25 setAvailableSystemApps:v13 bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability:v12 forRemoteOSBuildVersion:v22];

  v8 = v31;
LABEL_33:
  [(ACXCompanionSyncConnection *)self setAvailableSystemAppFetchRunning:0, v28];
  v26 = [(ACXCompanionSyncConnection *)self gizmoState];
  v27 = [v26 needsReunionSync];

  if (v27)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [(ACXCompanionSyncConnection *)self _onQueue_beginReunionSync];
  }
}

- (void)_onQueue_processReunionSyncMessage:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self applicationManager];
  [(ACXCompanionSyncConnection *)self _onQueue_processReunionSyncMessage:v4 withAppManager:v5];
}

- (void)_onQueue_processReunionSyncMessage:(id)a3 withAppManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(ACXCompanionSyncConnection *)self device];
  v10 = [v9 osVersion];

  v11 = [(ACXCompanionSyncConnection *)self device];
  v192 = [v11 supportsStandaloneApps];

  v12 = [(ACXCompanionSyncConnection *)self device];
  v13 = [v12 supportsRemoteAppList];

  v14 = [(ACXCompanionSyncConnection *)self device];
  v15 = [v14 deletableSystemAppStateIsMirrored];

  v16 = [(ACXCompanionSyncConnection *)self gizmoState];
  v17 = [v16 alwaysInstallApps];

  v18 = [v6 message];
  if ([(ACXCompanionSyncConnection *)self needsAvailableSystemAppFetch])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v19 = [(ACXCompanionSyncConnection *)self gizmoState];
    [v19 setNeedsReunionSync:1];

    [(ACXCompanionSyncConnection *)self setReunionSyncRunning:0];
    [(ACXCompanionSyncConnection *)self _onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded];
    goto LABEL_272;
  }

  v179 = v15;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v20 = [v18 objectForKeyedSubscript:@"T"];
  if ([v20 unsignedCharValue] != 2)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v154 = [v20 unsignedCharValue];
      MOLogWrite();
    }

    [(ACXCompanionSyncConnection *)self setReunionSyncRunning:0, v154];
    goto LABEL_271;
  }

  v171 = v17;
  v190 = self;
  v21 = [v18 objectForKeyedSubscript:@"IA"];
  objc_opt_class();
  v22 = v21;
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (!v23)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_27;
    }

LABEL_26:
    MOLogWrite();
LABEL_27:
    [(ACXCompanionSyncConnection *)v190 setReunionSyncRunning:0];
    goto LABEL_270;
  }

  objc_opt_class();
  if ((sub_100005D2C(v23) & 1) == 0)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v168 = v23;
  v24 = [v18 objectForKeyedSubscript:@"IP"];
  objc_opt_class();
  v25 = v24;
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v169 = v26;
  if (v26 && [v26 count])
  {
    objc_opt_class();
    if ((sub_100005D2C(v26) & 1) == 0)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      [(ACXCompanionSyncConnection *)v190 setReunionSyncRunning:0];
      goto LABEL_269;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v154 = v26;
      MOLogWrite();
    }
  }

  v27 = [v18 objectForKeyedSubscript:{@"DBU", v154}];
  objc_opt_class();
  v28 = v27;
  v161 = v20;
  if (objc_opt_isKindOfClass())
  {
    v160 = v28;
  }

  else
  {
    v160 = 0;
  }

  v29 = [v18 objectForKeyedSubscript:@"DBS"];
  objc_opt_class();
  v30 = v29;
  if (objc_opt_isKindOfClass())
  {
    v166 = v30;
  }

  else
  {
    v166 = 0;
  }

  v31 = [(ACXCompanionSyncConnection *)v190 device];
  v32 = [v31 supportsTrackingAppRemovability];

  if (v32)
  {
    v33 = [v18 objectForKeyedSubscript:@"RU"];
    objc_opt_class();
    v34 = v33;
    if (objc_opt_isKindOfClass())
    {
      v167 = v34;
    }

    else
    {
      v167 = 0;
    }

    v35 = [v18 objectForKeyedSubscript:@"RS"];
    objc_opt_class();
    v36 = v35;
    if (objc_opt_isKindOfClass())
    {
      v165 = v36;
    }

    else
    {
      v165 = 0;
    }
  }

  else
  {
    v165 = 0;
    v167 = 0;
  }

  v37 = [v18 objectForKeyedSubscript:@"BL"];
  objc_opt_class();
  v38 = v37;
  if (objc_opt_isKindOfClass())
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    objc_opt_class();
    if (sub_100005D2C(v39))
    {
      v40 = [(ACXCompanionSyncConnection *)v190 availableSystemAppList];
      [v40 setInstallableSystemAppBundleIDsExcludingCompanionState:v39];
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  v194 = [v7 allAvailableApps];
  v188 = [v7 allAvailablePlaceholders];
  if (v13)
  {
    v41 = [(ACXCompanionSyncConnection *)v190 availableSystemAppList];
    v42 = [v41 installableSystemAppToCompanionAppIdentifierMap];

    v196 = v42;
    if (v42)
    {
      goto LABEL_66;
    }

    v43 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059E2C();
    }

    v44 = [v7 locallyAvailableSystemAppBundleIDToCompanionBundleIDMapping];
  }

  else
  {
    v44 = [v7 locallyAvailableSystemAppBundleIDToCompanionBundleIDMappingForPreWatchOSSix];
  }

  v196 = v44;
LABEL_66:
  v159 = v39;
  v162 = v18;
  v163 = v7;
  v181 = v10;
  v164 = v6;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v155 = v196;
    MOLogWrite();
  }

  v45 = objc_opt_new();
  v170 = objc_opt_new();
  v182 = objc_opt_new();
  v186 = objc_opt_new();
  v157 = objc_opt_new();
  v158 = objc_opt_new();
  v184 = objc_opt_new();
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  obj = v168;
  v46 = [obj countByEnumeratingWithState:&v240 objects:v246 count:16];
  v47 = &MISCopyErrorStringForErrorCode_ptr;
  if (v46)
  {
    v48 = v46;
    v49 = *v241;
    do
    {
      v50 = 0;
      do
      {
        if (*v241 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v51 = *(*(&v240 + 1) + 8 * v50);
        v52 = [v51 objectForKeyedSubscript:{@"B", v155}];
        v53 = v47[255];
        objc_opt_class();
        v54 = v52;
        if (objc_opt_isKindOfClass())
        {
          v55 = v54;
        }

        else
        {
          v55 = 0;
        }

        v56 = [v51 objectForKeyedSubscript:@"C"];
        v57 = v47[255];
        objc_opt_class();
        v58 = v56;
        if (objc_opt_isKindOfClass())
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        if (v55)
        {
          if (v59)
          {
            [v45 addObject:v55];
            if (![v188 containsObject:v59])
            {
              v60 = [v196 objectForKeyedSubscript:v55];

              v61 = [v194 objectForKeyedSubscript:v55];
              v62 = v61;
              if (v61)
              {
                if (![v61 isSystemApp] || v60)
                {
                  if (!v60)
                  {
                    if ([v62 isTrusted])
                    {
                      if ([v62 isEligibleForWatchAppInstall])
                      {
                        v63 = [v51 objectForKeyedSubscript:@"RI"];
                        if (v63)
                        {
                          v64 = [v62 applicationMode];
                          if ((v64 == 2) != sub_100005E38(v63, 0))
                          {
                            v65 = v63;
                            v47 = &MISCopyErrorStringForErrorCode_ptr;
                            if (v64 == 2)
                            {
                              if (!qword_1000A4878 || *(qword_1000A4878 + 44) > 4)
                              {
                                goto LABEL_153;
                              }
                            }

                            else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
LABEL_153:
                              v155 = v55;
                              MOLogWrite();
                            }

LABEL_154:
                            [v170 addObject:{v55, v155}];
LABEL_159:

LABEL_117:
                            goto LABEL_118;
                          }
                        }

                        v173 = v63;
                        v175 = [v62 isProfileValidated];
                        v74 = [v51 objectForKeyedSubscript:@"P"];
                        v75 = sub_100005E38(v74, 0);

                        if (v175 != v75)
                        {
                          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                          {
                            v156 = sub_100006DA8(v175);
                            sub_100006DA8(v75);
                            v155 = v55;
                            goto LABEL_136;
                          }

LABEL_137:
                          [v170 addObject:{v55, v155}];
LABEL_138:
                          v47 = &MISCopyErrorStringForErrorCode_ptr;
LABEL_139:
                          v65 = v173;
                          goto LABEL_159;
                        }

                        v47 = &MISCopyErrorStringForErrorCode_ptr;
                        if (!v192 || [v62 applicationMode] == 1 || (objc_msgSend(v62, "isProfileValidated") & 1) != 0)
                        {
                          if (([v62 isCompatibleWithOSVersion:v181] & 1) == 0)
                          {
                            v65 = v173;
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v155 = v181;
                              v156 = v55;
                              MOLogWrite();
                            }

                            v81 = [v62 companionAppBundleID];
                            v82 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v81];
                            [v184 setObject:v82 forKeyedSubscript:v55];

                            v47 = &MISCopyErrorStringForErrorCode_ptr;
                            goto LABEL_159;
                          }

                          v76 = [(ACXCompanionSyncConnection *)v190 device];
                          v77 = [v62 isCompatibleWithDevice:v76];

                          if ((v77 & 1) == 0)
                          {
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v155 = v55;
                              MOLogWrite();
                            }

                            v83 = [v62 companionAppBundleID];
                            v84 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v83];
                            [v184 setObject:v84 forKeyedSubscript:v55];

                            goto LABEL_138;
                          }

                          v78 = [v51 objectForKeyedSubscript:@"BE"];

                          if (v78)
                          {
                            v176 = [v62 isBetaApp];
                            v79 = [v51 objectForKeyedSubscript:@"BE"];
                            v80 = sub_100005E38(v79, 0);

                            if (v80 && (v176 & 1) == 0)
                            {
                              if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                              {
                                goto LABEL_137;
                              }

                              v155 = v55;
                              goto LABEL_136;
                            }

                            if (!(v80 & 1 | ((v176 & 1) == 0)))
                            {
                              if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                              {
                                goto LABEL_137;
                              }

                              v155 = v55;
LABEL_136:
                              MOLogWrite();
                              goto LABEL_137;
                            }
                          }

                          v177 = [v62 bundleVersion];
                          v85 = [v51 objectForKeyedSubscript:@"W"];
                          objc_opt_class();
                          v86 = sub_100020BDC(v85);

                          if ([(ACXCompanionSyncConnection *)v190 _value:v177 isDifferentFrom:v86])
                          {
                            v87 = v86;
                            v65 = v173;
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v156 = v177;
                              v155 = v55;
                              MOLogWrite();
                            }

                            v47 = &MISCopyErrorStringForErrorCode_ptr;
                            goto LABEL_184;
                          }

                          v177 = [v62 bundleShortVersion];
                          v88 = [v51 objectForKeyedSubscript:@"V"];
                          objc_opt_class();
                          v89 = sub_100020BDC(v88);

                          if ([(ACXCompanionSyncConnection *)v190 _value:v177 isDifferentFrom:v89])
                          {
                            v87 = v89;
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v156 = v177;
                              v155 = v55;
                              MOLogWrite();
                            }

                            goto LABEL_182;
                          }

                          v177 = [v62 watchKitVersion];
                          v90 = [v51 objectForKeyedSubscript:@"K"];
                          objc_opt_class();
                          v91 = sub_100020BDC(v90);

                          if ([(ACXCompanionSyncConnection *)v190 _value:v177 isDifferentFrom:v91])
                          {
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v156 = v177;
                              v155 = v55;
                              MOLogWrite();
                            }

                            v87 = v91;
LABEL_182:
                            v47 = &MISCopyErrorStringForErrorCode_ptr;
LABEL_183:
                            v65 = v173;
LABEL_184:

                            goto LABEL_154;
                          }

                          v177 = [v62 watchKitAppExecutableHash];
                          v92 = [v51 objectForKeyedSubscript:@"EH"];
                          objc_opt_class();
                          v93 = sub_100020BDC(v92);

                          v87 = v93;
                          v47 = &MISCopyErrorStringForErrorCode_ptr;
                          if (v177 && v87 && ([v177 isEqualToString:v87] & 1) == 0)
                          {
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v155 = v55;
                              MOLogWrite();
                            }

                            goto LABEL_183;
                          }

                          v177 = [v62 companionAppBundleID];
                          v94 = [v51 objectForKeyedSubscript:@"C"];
                          objc_opt_class();
                          v95 = sub_100020BDC(v94);

                          if ([(ACXCompanionSyncConnection *)v190 _value:v177 isDifferentFrom:v95])
                          {
                            v87 = v95;
                            v65 = v173;
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v156 = v177;
                              v155 = v55;
                              MOLogWrite();
                            }

                            goto LABEL_184;
                          }
                        }

                        [v186 addObject:v55];
                        goto LABEL_139;
                      }

                      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                      {
                        v155 = v55;
LABEL_130:
                        MOLogWrite();
                      }
                    }

                    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                    {
                      v155 = v55;
                      goto LABEL_130;
                    }

                    v72 = [v62 companionAppBundleID];
                    v73 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v72];
                    [v184 setObject:v73 forKeyedSubscript:v55];

                    v47 = &MISCopyErrorStringForErrorCode_ptr;
                    goto LABEL_117;
                  }

                  goto LABEL_116;
                }
              }

              else if (v60)
              {
                goto LABEL_116;
              }

              v66 = [v51 objectForKeyedSubscript:@"RI"];
              v67 = sub_100005E38(v66, 0);

              v68 = [v51 objectForKeyedSubscript:@"LD"];
              v69 = sub_100005E38(v68, 0);

              v70 = v192 & v67;
              v47 = &MISCopyErrorStringForErrorCode_ptr;
              if (v70 == 1)
              {
                if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                {
                  goto LABEL_116;
                }

                v155 = v55;
              }

              else
              {
                if (!v69)
                {
                  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                  {
                    v155 = v55;
                    MOLogWrite();
                  }

                  v71 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v59, v155];
                  [v184 setObject:v71 forKeyedSubscript:v55];

                  goto LABEL_117;
                }

                if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                {
                  goto LABEL_116;
                }

                v155 = v55;
              }

              MOLogWrite();
LABEL_116:
              [v186 addObject:{v55, v155}];
              goto LABEL_117;
            }

            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v155 = v55;
              v156 = v59;
              MOLogWrite();
            }

            [v186 addObject:{v55, v155, v156}];
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v155 = v51;
            goto LABEL_93;
          }
        }

        else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v155 = v51;
LABEL_93:
          MOLogWrite();
        }

LABEL_118:

        v50 = v50 + 1;
      }

      while (v48 != v50);
      v96 = [obj countByEnumeratingWithState:&v240 objects:v246 count:16];
      v48 = v96;
    }

    while (v96);
  }

  if (!v169)
  {
    goto LABEL_240;
  }

  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v97 = v169;
  v98 = [v97 countByEnumeratingWithState:&v236 objects:v245 count:16];
  if (!v98)
  {
    goto LABEL_239;
  }

  v99 = v98;
  v100 = *v237;
  do
  {
    v101 = 0;
    do
    {
      if (*v237 != v100)
      {
        objc_enumerationMutation(v97);
      }

      v102 = *(*(&v236 + 1) + 8 * v101);
      [v45 addObject:{v102, v155}];
      v103 = [v194 objectForKeyedSubscript:v102];
      v104 = [v196 objectForKeyedSubscript:v102];

      if (((v104 != 0) & v192) == 1)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v155 = v102;
          MOLogWrite();
        }
      }

      else
      {
        if (!v103)
        {
          if (v104)
          {
LABEL_221:
            [v182 addObject:v102];
            goto LABEL_227;
          }

LABEL_222:
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v155 = v102;
            MOLogWrite();
          }

          v107 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:0, v155];
          [v184 setObject:v107 forKeyedSubscript:v102];
          goto LABEL_226;
        }

        v105 = [v103 isSystemApp];
        if (v105)
        {
          v106 = v104 == 0;
        }

        else
        {
          v106 = 0;
        }

        if (v106)
        {
          goto LABEL_222;
        }

        if (v105)
        {
          goto LABEL_221;
        }

        if ([v103 isTrusted])
        {
          if ([v103 isCompatibleWithOSVersion:v181])
          {
            if ([v103 isEligibleForWatchAppInstall])
            {
              goto LABEL_221;
            }

            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v155 = v102;
              goto LABEL_236;
            }
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v155 = v102;
LABEL_236:
            MOLogWrite();
          }

          v107 = [v103 companionAppBundleID];
          v110 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v107];
          [v184 setObject:v110 forKeyedSubscript:v102];

LABEL_226:
          goto LABEL_227;
        }

        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v155 = v102;
          MOLogWrite();
        }

        v108 = [v103 companionAppBundleID];
        v109 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v108];
        [v184 setObject:v109 forKeyedSubscript:v102];
      }

LABEL_227:

      v101 = v101 + 1;
    }

    while (v99 != v101);
    v111 = [v97 countByEnumeratingWithState:&v236 objects:v245 count:16];
    v99 = v111;
  }

  while (v111);
LABEL_239:

LABEL_240:
  v230[0] = _NSConcreteStackBlock;
  v230[1] = 3221225472;
  v230[2] = sub_1000245A0;
  v230[3] = &unk_10008D710;
  v112 = v45;
  v231 = v112;
  v232 = v181;
  v233 = v190;
  v113 = v157;
  v234 = v113;
  v114 = v184;
  v235 = v114;
  [v194 enumerateKeysAndObjectsUsingBlock:v230];
  v225[0] = _NSConcreteStackBlock;
  v225[1] = 3221225472;
  v225[2] = sub_100024710;
  v225[3] = &unk_10008D738;
  v115 = v112;
  v226 = v115;
  v229 = v179;
  v116 = v158;
  v227 = v116;
  v117 = v113;
  v228 = v117;
  [v196 enumerateKeysAndObjectsUsingBlock:v225];
  v213[0] = _NSConcreteStackBlock;
  v213[1] = 3221225472;
  v213[2] = sub_100024784;
  v213[3] = &unk_10008D760;
  v193 = v188;
  v214 = v193;
  v224 = v179;
  v118 = v116;
  v215 = v118;
  v119 = v114;
  v216 = v119;
  v189 = v115;
  v217 = v189;
  v120 = v196;
  v218 = v120;
  v121 = v194;
  v219 = v121;
  v122 = v182;
  v220 = v122;
  v123 = v170;
  v221 = v123;
  v124 = v186;
  v222 = v124;
  v125 = v117;
  v223 = v125;
  v126 = objc_retainBlock(v213);
  v127 = [(ACXCompanionSyncConnection *)v190 gizmoState];
  v202[0] = _NSConcreteStackBlock;
  v202[1] = 3221225472;
  v202[2] = sub_100024B4C;
  v202[3] = &unk_10008D788;
  v211 = v179;
  v187 = v118;
  v203 = v187;
  v195 = v120;
  v204 = v195;
  v180 = v119;
  v205 = v180;
  v185 = v122;
  v206 = v185;
  v197 = v121;
  v207 = v197;
  v183 = v123;
  v208 = v183;
  v178 = v125;
  v209 = v178;
  v212 = v171;
  v172 = v126;
  v174 = v124;
  v210 = v174;
  [v127 iterateInstallStatusAndClearNeedsReunionSyncWithIterator:v126 completion:v202];

  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v128 = obj;
  v129 = [v128 countByEnumeratingWithState:&v198 objects:v244 count:16];
  if (v129)
  {
    v130 = v129;
    v131 = *v199;
    do
    {
      for (i = 0; i != v130; i = i + 1)
      {
        if (*v199 != v131)
        {
          objc_enumerationMutation(v128);
        }

        v133 = *(*(&v198 + 1) + 8 * i);
        v134 = [v133 objectForKeyedSubscript:{@"B", v155}];
        objc_opt_class();
        v135 = v134;
        if (objc_opt_isKindOfClass())
        {
          v136 = v135;
        }

        else
        {
          v136 = 0;
        }

        v137 = [v133 objectForKeyedSubscript:@"EH"];
        objc_opt_class();
        v138 = v137;
        if (objc_opt_isKindOfClass())
        {
          v139 = v138;
        }

        else
        {
          v139 = 0;
        }

        v140 = [v197 objectForKeyedSubscript:v136];
        if (([v140 isSystemApp] & 1) == 0 && v139)
        {
          v141 = [(ACXCompanionSyncConnection *)v190 gizmoState];
          [v141 setWatchKitAppExecutableHash:v139 forApp:v136];
        }
      }

      v130 = [v128 countByEnumeratingWithState:&v198 objects:v244 count:16];
    }

    while (v130);
  }

  v142 = v190;
  v143 = [(ACXCompanionSyncConnection *)v190 remoteAppList];
  v144 = v143;
  if (!v143)
  {
    v7 = v163;
    v6 = v164;
    v10 = v181;
    v20 = v161;
    v18 = v162;
    v145 = v160;
LABEL_261:
    v146 = v166;
    goto LABEL_262;
  }

  v7 = v163;
  v6 = v164;
  v10 = v181;
  v20 = v161;
  v18 = v162;
  v145 = v160;
  v146 = v166;
  if (!v160)
  {
LABEL_262:

    goto LABEL_263;
  }

  if (v166)
  {
    v144 = [[NSUUID alloc] initWithUUIDString:v160];
    v147 = [v166 unsignedIntegerValue];
    v148 = [(ACXCompanionSyncConnection *)v190 remoteAppList];
    v149 = v147;
    v142 = v190;
    [v148 reportCurrentDBUUID:v144 lastSequenceNumber:v149];

    v20 = v161;
    goto LABEL_261;
  }

LABEL_263:
  v150 = [(ACXCompanionSyncConnection *)v142 remoteRemovabilityManager];
  v151 = v150;
  if (v150 && v167)
  {

    v152 = v165;
    if (v165)
    {
      v151 = [(ACXCompanionSyncConnection *)v142 remoteRemovabilityManager];
      v153 = [[NSUUID alloc] initWithUUIDString:v167];
      [v151 reportRemoteRemovabilityDBUUID:v153 sequenceNumber:{objc_msgSend(v165, "unsignedIntegerValue")}];

      v142 = v190;
      goto LABEL_267;
    }
  }

  else
  {
LABEL_267:

    v152 = v165;
  }

  [(ACXCompanionSyncConnection *)v142 setReunionSyncRunning:0];
  [(ACXCompanionSyncConnection *)v142 _onQueue_processPendingGizmoState];

LABEL_269:
  v23 = v168;

LABEL_270:
LABEL_271:

LABEL_272:
}

- (void)_onQueue_beginReunionSync
{
  v3 = [(ACXCompanionSyncConnection *)self device];
  v4 = [v3 syncingIsRestricted];

  if (v4)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {

      MOLogWrite();
    }
  }

  else
  {
    v5 = [(ACXCompanionSyncConnection *)self device];
    v6 = [v5 isReachable];

    if (v6)
    {
      if ([(ACXCompanionSyncConnection *)self needsAvailableSystemAppFetch])
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          MOLogWrite();
        }

        v7 = [(ACXCompanionSyncConnection *)self gizmoState];
        [v7 setNeedsReunionSync:1];

        [(ACXCompanionSyncConnection *)self _onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded];
      }

      else
      {

        [(ACXCompanionSyncConnection *)self _onQueue_beginReunionSyncWithRetryCount:0];
      }
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v9 = [(ACXCompanionSyncConnection *)self device];
      v8 = [v9 idsDeviceIdentifier];
      MOLogWrite();
    }
  }
}

- (void)_onQueue_beginReunionSyncWithRetryCount:(unint64_t)a3
{
  if ([(ACXCompanionSyncConnection *)self reunionSyncRunning])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {

      MOLogWrite();
    }
  }

  else
  {
    [(ACXCompanionSyncConnection *)self setReunionSyncRunning:1];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v19 = a3;
      MOLogWrite();
    }

    v24 = 0;
    v5 = +[ACXLaunchServicesWatcher sharedWatcher];
    v23 = 0;
    [v5 fetchDatabaseUUID:&v23 andCurrentLastSequenceNumber:&v24];
    v6 = v23;

    v26[0] = &off_100097698;
    v25[0] = @"T";
    v25[1] = @"DBU";
    v7 = [v6 UUIDString];
    v26[1] = v7;
    v25[2] = @"DBS";
    v8 = [NSNumber numberWithUnsignedInteger:v24];
    v26[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];

    v10 = [(ACXCompanionSyncConnection *)self device];
    LODWORD(v8) = [v10 supportsTrackingAppRemovability];

    if (v8)
    {
      v22 = 0;
      v11 = +[ACXLocalAppRemovabilityManager sharedInstance];
      v21 = 0;
      [v11 fetchCurrentRemovabilityStoreUUID:&v21 sequenceNumber:&v22];
      v12 = v21;

      if (v12 && v22)
      {
        v13 = [v9 mutableCopy];
        v14 = [v12 UUIDString];
        [v13 setObject:v14 forKeyedSubscript:@"RU"];

        v15 = [NSNumber numberWithUnsignedInteger:v22];
        [v13 setObject:v15 forKeyedSubscript:@"RS"];

        v16 = [v13 copy];
        v9 = v16;
      }

      else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    v17 = [(ACXCompanionSyncConnection *)self messager];
    v18 = [(ACXCompanionSyncConnection *)self device];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100025758;
    v20[3] = &unk_10008D6E8;
    v20[4] = self;
    v20[5] = a3;
    [v17 sendMessage:v9 toDevice:v18 withPriority:200 timeout:@"reunion sync" logDescription:v20 handleReply:120.0];
  }
}

- (void)_onQueue_sendRemoveMessageForBundleIDs:(id)a3 isUserInitiated:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v18[0] = @"T";
  v18[1] = @"BL";
  v19[0] = &off_1000976C8;
  v19[1] = v8;
  v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  if (v9)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000260B4;
    v16[3] = &unk_10008D7D8;
    v17 = v9;
    v11 = objc_retainBlock(v16);
  }

  else
  {
    v11 = 0;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v15 = v8;
    MOLogWrite();
  }

  if (v6)
  {
    v12 = 300;
  }

  else
  {
    v12 = 200;
  }

  v13 = [(ACXCompanionSyncConnection *)self messager];
  v14 = [(ACXCompanionSyncConnection *)self device];
  [v13 sendMessage:v10 toDevice:v14 withPriority:v12 timeout:@"deletion list" logDescription:v11 handleReply:120.0];
}

- (BOOL)_onQueue_appNeedsInstall:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [(ACXCompanionSyncConnection *)self remoteAppList];
  v13 = 0;
  v7 = [v6 applicationForBundleID:v5 error:&v13];
  v8 = v13;

  if (!v7)
  {
    v10 = [v8 domain];
    if ([v10 isEqualToString:@"ACXErrorDomain"])
    {
      v11 = [v8 code];

      if (v11 == 19)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    goto LABEL_14;
  }

  if (![v7 isTheSameAppAs:v4])
  {
LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (void)_onQueue_processPendingGizmoState
{
  v3 = [(ACXCompanionSyncConnection *)self device];
  if ([v3 syncingIsRestricted])
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      goto LABEL_163;
    }

    goto LABEL_4;
  }

  if (([v3 isReachable] & 1) == 0)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v68 = [v3 idsDeviceIdentifier];
      MOLogWrite();
    }

    goto LABEL_163;
  }

  if ([(ACXCompanionSyncConnection *)self reunionSyncRunning])
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      goto LABEL_163;
    }

LABEL_4:
    MOLogWrite();
    goto LABEL_163;
  }

  v4 = [(ACXCompanionSyncConnection *)self gizmoState];
  v5 = [v4 needsReunionSync];

  if (v5)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [(ACXCompanionSyncConnection *)self _onQueue_beginReunionSync];
    goto LABEL_163;
  }

  if ([(ACXCompanionSyncConnection *)self needsAvailableSystemAppFetch])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [(ACXCompanionSyncConnection *)self _onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded];
    goto LABEL_163;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v6 = qos_class_self();
  v7 = dispatch_get_global_queue(v6, 0);
  sub_100005828(v7, &stru_10008D7F8);

  v8 = [v3 nrDevice];
  v80 = sub_10004FF78(v8);

  v9 = objc_opt_new();
  v88 = objc_opt_new();
  v74 = [v3 supportsStandaloneApps];
  LODWORD(v8) = [v3 supportsRemoteAppList];
  v10 = [(ACXCompanionSyncConnection *)self applicationManager];
  v84 = v10;
  v83 = v8;
  if (!v8)
  {
    v13 = [v10 bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix];
LABEL_32:
    v90 = v13;
    goto LABEL_33;
  }

  v11 = [(ACXCompanionSyncConnection *)self availableSystemAppList];
  v12 = [v11 bundleIDsOfInstallableSystemApps];

  v90 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059E74();
    }

    v13 = [v84 bundleIDsOfLocallyAvailableSystemApps];
    goto LABEL_32;
  }

LABEL_33:
  v77 = v3;
  v14 = [(ACXCompanionSyncConnection *)self gizmoState];
  v15 = [v14 pendingApps];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (!v17)
  {
    goto LABEL_45;
  }

  v18 = v17;
  v19 = *v106;
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v106 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v105 + 1) + 8 * i);
      v22 = [v16 objectForKeyedSubscript:v21];
      v23 = [v22 installStatus];
      if (v23 == 4)
      {
        v24 = v9;
        v25 = v21;
      }

      else
      {
        if (v23 != 1)
        {
          goto LABEL_43;
        }

        v24 = v88;
        v25 = v22;
      }

      [v24 addObject:v25];
LABEL_43:
    }

    v18 = [v16 countByEnumeratingWithState:&v105 objects:v112 count:16];
  }

  while (v18);
LABEL_45:

  v79 = v9;
  if ([v9 count])
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v26 = v9;
    v27 = [v26 countByEnumeratingWithState:&v101 objects:v111 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v102;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v102 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v101 + 1) + 8 * j);
          v32 = [(ACXCompanionSyncConnection *)self installQueue];
          [v32 cancelInstallForWatchAppBundleID:v31];

          v33 = [(ACXCompanionSyncConnection *)self appStoreLocalQueue];
          [v33 cancelInstallForWatchAppBundleID:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v101 objects:v111 count:16];
      }

      while (v28);
    }

    [(ACXCompanionSyncConnection *)self _onQueue_sendRemoveMessageForBundleIDs:v26 isUserInitiated:0 withCompletion:0];
    v9 = v79;
  }

  if (![v88 count])
  {
    goto LABEL_162;
  }

  v89 = +[NSMutableSet set];
  v70 = objc_opt_new();
  v71 = objc_opt_new();
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v88;
  v34 = [obj countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (!v34)
  {
    v85 = 0;
    goto LABEL_158;
  }

  v35 = v34;
  v85 = 0;
  v36 = *v98;
  v78 = kACXSourceAppWatchApplicationStore;
  v37 = v84;
  while (2)
  {
    v38 = 0;
    v86 = v35;
    while (2)
    {
      if (*v98 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v97 + 1) + 8 * v38);
      v40 = [v39 watchAppBundleID];
      if ([v90 containsObject:v40])
      {
        [v89 addObject:v40];
        goto LABEL_154;
      }

      v41 = [v37 gizmoAppWithBundleID:v40];
      v42 = v41;
      if (!v41)
      {
        if (!v85)
        {
          v85 = [v37 allAvailablePlaceholders];
        }

        v43 = [v39 companionAppBundleID];
        if (v43)
        {
          if ([v85 containsObject:v43])
          {
            if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
            {
              goto LABEL_148;
            }

            v67 = v43;
            v69 = v40;
            goto LABEL_90;
          }
        }

        else if ([v85 count])
        {
          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
          {
            goto LABEL_148;
          }

          v67 = v40;
          v69 = [v85 count];
LABEL_90:
          MOLogWrite();
LABEL_148:

          v37 = v84;
          goto LABEL_153;
        }

        if (!v83)
        {
LABEL_144:
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v67 = v40;
            MOLogWrite();
          }

          v109 = v40;
          v62 = [NSArray arrayWithObjects:&v109 count:1, v67];
          [(ACXCompanionSyncConnection *)self _onQueue_sendRemoveMessageForBundleIDs:v62 isUserInitiated:0 withCompletion:0];

          goto LABEL_148;
        }

        v45 = [(ACXCompanionSyncConnection *)self remoteAppList];
        v96 = 0;
        v46 = [v45 applicationForBundleID:v40 error:&v96];
        v47 = v96;

        v82 = v47;
        if (v46)
        {
          if ([v46 applicationMode] == 2)
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v67 = v40;
              MOLogWrite();
            }

            v48 = [(ACXCompanionSyncConnection *)self gizmoState];
            v49 = [v46 companionAppBundleID];
            [v48 setInstallStatus:2 forApp:v40 companionBundleID:v49];

            v9 = v79;
LABEL_98:

            goto LABEL_148;
          }

          v60 = [v46 applicationMode];
          v61 = qword_1000A4878;
          if (v60 == 3)
          {
            v9 = v79;
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v67 = v40;
              MOLogWrite();
            }

            [v70 addObject:{v40, v67}];
            goto LABEL_143;
          }

          v9 = v79;
          if (!qword_1000A4878)
          {
            goto LABEL_142;
          }
        }

        else
        {
          v53 = [v47 domain];
          if ([v53 isEqualToString:@"ACXErrorDomain"])
          {
            v54 = [v47 code];

            v55 = v54 == 43;
            v9 = v79;
            if (v55)
            {
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                v67 = v40;
                MOLogWrite();
              }

              goto LABEL_98;
            }
          }

          else
          {

            v9 = v79;
          }

          v61 = qword_1000A4878;
          if (!qword_1000A4878)
          {
            goto LABEL_142;
          }
        }

        if (*(v61 + 44) < 5)
        {
LABEL_143:

          goto LABEL_144;
        }

LABEL_142:
        v67 = v40;
        MOLogWrite();
        goto LABEL_143;
      }

      if ([v41 isSystemApp])
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v67 = v40;
          v69 = v90;
          MOLogWrite();
        }

        [v89 addObject:{v40, v67, v69}];
        goto LABEL_153;
      }

      if (![v42 isBetaApp])
      {
        if (v83 && ![(ACXCompanionSyncConnection *)self _onQueue_appNeedsInstall:v42])
        {
          v50 = [(ACXCompanionSyncConnection *)self gizmoState];
          v52 = [v42 companionAppBundleID];
          [v50 setInstallStatus:2 forApp:v40 companionBundleID:v52];

          v37 = v84;
          goto LABEL_107;
        }

        v81 = [v42 companionAppBundleID];
        v44 = [v42 sourceAppIdentifier];
        if ([v44 isEqualToString:v78])
        {
          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_105;
          }

          v67 = v40;
          v69 = v44;
        }

        else
        {
          if ([v42 autoInstallOverride] != 2)
          {
            v51 = 0;
LABEL_115:
            if ([v42 isEmbeddedPlaceholder])
            {
              if (!v74)
              {
                if (v80)
                {
                  v37 = v84;
                  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
                  {
                    v67 = v40;
                    MOLogWrite();
                  }
                }

                else
                {
                  [(ACXCompanionSyncConnection *)self _onQueue_triggerLocalAppStoreInstallForWatchApp:v42 userInitiated:v51 completion:0];
                  v37 = v84;
                }

                goto LABEL_152;
              }

              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                v67 = v40;
                MOLogWrite();
              }

              v57 = [v42 storeMetadata];
              if (v57)
              {
                [v71 setObject:v57 forKeyedSubscript:v40];
              }

              else
              {
                v76 = sub_1000061DC("[ACXCompanionSyncConnection _onQueue_processPendingGizmoState]", 1999, @"ACXErrorDomain", 51, 0, 0, @"Failed to load metadata for app %@", v56, v40);
                v73 = [v42 companionAppBundleID];
                v63 = [v42 applicationName];
                [ACXCompanionSyncConnection _onQueue_installFailedForWatchAppBundleID:"_onQueue_installFailedForWatchAppBundleID:companionBundleID:withError:appName:userInitiated:userPresentableError:" companionBundleID:v40 withError:v73 appName:v76 userInitiated:? userPresentableError:?];

                v9 = v79;
              }
            }

            else
            {
              v57 = [v42 applicationName];
              if (v80)
              {
                v37 = v84;
                if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
                {
                  v67 = v40;
                  MOLogWrite();
                  v9 = v79;
                }

                goto LABEL_151;
              }

              v75 = v57;
              v58 = [(ACXCompanionSyncConnection *)self installQueue];
              v72 = [(ACXCompanionSyncConnection *)self gizmoState];
              v59 = [v72 preferencesForApplicationWithIdentifier:v40];
              v91[0] = _NSConcreteStackBlock;
              v91[1] = 3221225472;
              v91[2] = sub_10002794C;
              v91[3] = &unk_10008D820;
              v91[4] = self;
              v92 = v40;
              v93 = v81;
              v94 = v75;
              v95 = v51;
              [v58 installWatchApp:v42 withPriority:2 appSettings:v59 provisioningProfileInfo:0 isUserInitiated:v51 completion:v91];

              v9 = v79;
              v57 = v75;
            }

            v37 = v84;
LABEL_151:

LABEL_152:
            goto LABEL_153;
          }

          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
LABEL_105:
            v51 = 1;
            goto LABEL_115;
          }

          v67 = v40;
        }

        MOLogWrite();
        goto LABEL_105;
      }

      if (v80)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v67 = v40;
          MOLogWrite();
        }

        goto LABEL_153;
      }

      v50 = +[ACXTestFlightInstallQueue sharedInstaller];
      [v50 installWatchApp:v42 targetDevice:v77];
LABEL_107:

LABEL_153:
      v35 = v86;
LABEL_154:

      if (v35 != ++v38)
      {
        continue;
      }

      break;
    }

    v35 = [obj countByEnumeratingWithState:&v97 objects:v110 count:16];
    if (v35)
    {
      continue;
    }

    break;
  }

LABEL_158:

  v64 = [(ACXCompanionSyncConnection *)self gizmoState];
  [v64 purgeInstallStatusForApps:v70];

  if ([v89 count])
  {
    v65 = v71;
    if (!v80)
    {
      goto LABEL_160;
    }
  }

  else
  {
    v65 = v71;
    if ([v71 count] != 0 && !v80)
    {
LABEL_160:
      v66 = [v89 allObjects];
      [(ACXCompanionSyncConnection *)self _onQueue_sendInstallOnGizmoMessageForSystemAppBundleIDs:v66 appsWithStoreMetadata:v65 isUserInitiated:0 exclusiveInstall:0 withCompletion:0];
    }
  }

LABEL_162:
  v3 = v77;
LABEL_163:
}

- (void)_onQueue_handleAppInstallMessage:(id)a3 withAppManager:(id)a4
{
  v6 = a3;
  v38 = self;
  v39 = a4;
  v7 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 message];
  v9 = [v8 objectForKeyedSubscript:@"IA"];
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && (objc_opt_class(), (sub_100005D2C(v11) & 1) != 0))
  {
    v36 = v6;
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      v32 = v8;
      MOLogWrite();
    }

    v35 = v8;
    v37 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = v11;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v41;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v40 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:{@"B", v32}];
          objc_opt_class();
          v19 = v18;
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          if (v20)
          {
            v21 = [v17 objectForKeyedSubscript:@"EH"];
            objc_opt_class();
            v22 = v21;
            if (objc_opt_isKindOfClass())
            {
              v23 = v22;
            }

            else
            {
              v23 = 0;
            }

            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v32 = v20;
              v33 = v23;
              MOLogWrite();
            }

            v24 = [v39 gizmoAppWithBundleID:{v20, v32, v33}];
            v25 = [v24 companionAppBundleID];
            v26 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:2 companionBundleID:v25];

            [v26 setWatchAppExecutableHash:v23];
            [v37 setObject:v26 forKeyedSubscript:v20];
            v27 = [(ACXCompanionSyncConnection *)v38 installQueue];
            [v27 acknowledgeInstallationForWatchApp:v20];
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v32 = v17;
            MOLogWrite();
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v14);
    }

    v28 = [(ACXCompanionSyncConnection *)v38 gizmoState];
    [v28 setInstallStatusForApps:v37 sendNotification:1 withUpdatePredicate:&stru_10008D840];

    v29 = [(ACXCompanionSyncConnection *)v38 remoteAppList];

    v8 = v35;
    v6 = v36;
    v11 = v34;
    if (v29)
    {
      v30 = [v35 objectForKeyedSubscript:@"IL"];

      if (v30)
      {
        v31 = [(ACXCompanionSyncConnection *)v38 remoteAppList];
        sub_10004B96C(v36, v31);
      }

      else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)_onQueue_handleAppInstallMessage:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self applicationManager];
  [(ACXCompanionSyncConnection *)self _onQueue_handleAppInstallMessage:v4 withAppManager:v5];
}

- (id)_onQueue_applicationForWatchAppWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ACXCompanionSyncConnection *)self applicationManager];
  v7 = [v6 gizmoAppWithBundleID:v4];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(ACXCompanionSyncConnection *)self applicationManager];
    v8 = [v9 availableSystemAppWithBundleID:v4 error:0];
  }

  return v8;
}

- (id)_onQueue_availableCompanionAppBundleIDForWatchApp:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self applicationManager];
  v6 = [v5 gizmoAppWithBundleID:v4];

  if (v6)
  {
    v7 = [v6 companionAppBundleID];
  }

  else
  {
    v8 = [(ACXCompanionSyncConnection *)self applicationManager];
    v7 = [v8 companionBundleIDForLocallyAvailableSystemApp:v4 error:0];
  }

  return v7;
}

- (void)_onQueue_handleAppDeleteMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 message];
  v28 = [v5 objectForKey:@"EO"];

  v6 = [v5 objectForKeyedSubscript:@"BL"];
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

  if (v8 && (objc_opt_class(), (sub_100005D2C(v8) & 1) != 0))
  {
    v25 = v5;
    if (!v28)
    {
      v9 = [(ACXCompanionSyncConnection *)self remoteAppList];

      if (v9)
      {
        v10 = [(ACXCompanionSyncConnection *)self remoteAppList];
        sub_10004BD9C(v4, v10);
      }
    }

    v26 = v4;
    v11 = objc_opt_new();
    v27 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [(ACXCompanionSyncConnection *)self _onQueue_availableCompanionAppBundleIDForWatchApp:v17];
          if (v18)
          {
            if (v28)
            {
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                v23 = v17;
                MOLogWrite();
              }

              v19 = 2;
            }

            else
            {
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                v23 = v17;
                MOLogWrite();
              }

              v19 = 5;
            }

            v20 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:v19 companionBundleID:v18, v23];
            [v11 setObject:v20 forKeyedSubscript:v17];
          }

          else
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v23 = v17;
              MOLogWrite();
            }

            [v27 addObject:{v17, v23}];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    v21 = [(ACXCompanionSyncConnection *)self gizmoState];
    [v21 setInstallStatusForApps:v11];

    v22 = [(ACXCompanionSyncConnection *)self gizmoState];
    [v22 purgeInstallStatusForApps:v27];

    v5 = v25;
    v4 = v26;
    v8 = v24;
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)_onQueue_handleInstallAppMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 message];
  v6 = [v5 objectForKeyedSubscript:@"BL"];
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

  if (v8 && (objc_opt_class(), (sub_100005D2C(v8) & 1) != 0))
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      MOLogWrite();
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v8;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_1000286CC;
          v16[3] = &unk_10008CA48;
          v16[4] = v14;
          v16[5] = self;
          v17 = v4;
          [(ACXCompanionSyncConnection *)self _installWatchAppWithBundleID:v14 withProvisioningProfileInfo:0 installationPendingBlock:v16 completionWithError:0];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v8 = v15;
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)_onQueue_handleCompatibleWatchAppsOnCompanionMessage:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self applicationManager];
  v6 = [v5 allAvailableApps];

  v7 = objc_opt_new();
  v8 = [(ACXCompanionSyncConnection *)self device];
  v9 = [v8 osVersion];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100028B48;
  v16[3] = &unk_10008CD90;
  v10 = v9;
  v17 = v10;
  v11 = v7;
  v18 = v11;
  [v6 enumerateKeysAndObjectsUsingBlock:v16];
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    MOLogWrite();
  }

  v12 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v12 encodeObject:v11 forKey:NSKeyedArchiveRootObjectKey];
  v13 = [v12 encodedData];

  v19[0] = @"T";
  v19[1] = @"IO";
  v20[0] = &off_1000976F8;
  v20[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v15 = [(ACXCompanionSyncConnection *)self messager];
  [v15 sendResponse:v14 toMessage:v4 withPriority:200 timeout:@"the list of available and compatible applications" logDescription:120.0];
}

- (void)_onQueue_handleIconForWatchAppMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 message];
  v6 = [v5 objectForKeyedSubscript:@"BI"];
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

  if (!v8)
  {
    v14 = sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", 2239, @"ACXErrorDomain", 34, 0, 0, @"No watch application bundleID provided, ignoring request.", v9, v34);
    v13 = 0;
LABEL_19:
    v19 = 0;
LABEL_20:
    Unique = 0;
LABEL_21:
    v26 = 0;
    goto LABEL_22;
  }

  v10 = [v4 message];
  v11 = [v10 objectForKeyedSubscript:@"IV"];
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

  if (!v13)
  {
    v31 = @"No icon variant provided, ignoring request.";
    v32 = 2245;
LABEL_18:
    v14 = sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", v32, @"ACXErrorDomain", 34, 0, 0, v31, v15, v34);
    goto LABEL_19;
  }

  v16 = [v13 unsignedIntegerValue];
  v17 = v16;
  if ((v16 - 1) >= 0xF)
  {
    v34 = v16;
    v31 = @"The requested icon variant is invalid (%lu)";
    v32 = 2251;
    goto LABEL_18;
  }

  v18 = [(ACXCompanionSyncConnection *)self applicationManager];
  v19 = [v18 gizmoAppWithBundleID:v8];

  if (!v19)
  {
    v14 = sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", 2259, @"ACXErrorDomain", 34, 0, 0, @"The watch application %@ does not appear to be installed in the system.", v20, v8);
    goto LABEL_20;
  }

  v21 = [v19 watchAppURL];
  Unique = _CFBundleCreateUnique();

  if (!Unique)
  {
    v14 = sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", 2265, @"ACXErrorDomain", 34, 0, 0, @"Failed to find a bundle for the watch application %@", v23, v8);
    goto LABEL_21;
  }

  v24 = (v17 + 37);
  v26 = LICreateIconForBundle();
  if (!v26)
  {
    sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", 2271, @"ACXErrorDomain", 34, 0, 0, @"Failed to find an icon with variant %lu for the watch application %@", v25, v24);
    v14 = LABEL_31:;
LABEL_22:
    v35[0] = @"T";
    v35[1] = @"E";
    v36[0] = &off_100097710;
    v36[1] = v14;
    v30 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
    if (!v26)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v27 = LICreateUncompressedBitmapDataFromImage();
  if (!v27)
  {
    sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", 2277, @"ACXErrorDomain", 34, 0, 0, @"Failed to create data for icon variant %lu for the watch application %@", v28, v24);
    goto LABEL_31;
  }

  v29 = v27;
  v37[0] = @"T";
  v37[1] = @"ID";
  v38[0] = &off_100097710;
  v38[1] = v27;
  v30 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];

  v14 = 0;
LABEL_23:
  CFRelease(v26);
LABEL_24:
  if (Unique)
  {
    CFRelease(Unique);
  }

  v33 = [(ACXCompanionSyncConnection *)self messager];
  [v33 sendResponse:v30 toMessage:v4 withPriority:300 timeout:@"icon for a watchkit app" logDescription:120.0];
}

- (void)_onQueue_handleAppRemovabilityUpdatedMessage:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v19 = [v4 message];

  v6 = [v19 objectForKeyedSubscript:@"BI"];
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
    v9 = [v19 objectForKeyedSubscript:@"R"];
    if (v9)
    {
      v10 = [v19 objectForKeyedSubscript:@"RU"];
      if (v10)
      {
        v11 = [v19 objectForKeyedSubscript:@"RS"];
        if (v11)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v17 = v10;
            v18 = v11;
            v15 = v8;
            v16 = v9;
            MOLogWrite();
          }

          v12 = [(ACXCompanionSyncConnection *)self remoteRemovabilityManager:v15];
          v13 = [v9 unsignedIntegerValue];
          v14 = [[NSUUID alloc] initWithUUIDString:v10];
          [v12 removabilityUpdatedForApp:v8 removability:v13 dbUUID:v14 sequenceNumber:{objc_msgSend(v11, "unsignedIntegerValue")}];
        }

        else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          MOLogWrite();
        }
      }

      else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)_onQueue_handleAppInstallFailureMessage:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v24 = [v4 message];

  v6 = [v24 objectForKeyedSubscript:@"UI"];
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

  v9 = [v8 BOOLValue];
  v10 = [v24 objectForKeyedSubscript:@"BI"];
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

  if (v12)
  {
    v13 = sub_10002620C(v24);
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v22 = sub_100006DA8(v9);
      v23 = v13;
      v21 = v12;
      MOLogWrite();
    }

    v14 = [(ACXCompanionSyncConnection *)self availableSystemAppList:v21];
    v15 = [v14 systemAppIsInstallableWithBundleID:v12 error:0];

    if (v15)
    {
      v16 = +[ACXPairedSyncDelegate sharedSyncDelegate];
      [v16 reportSystemAppInstallFailureForBundleID:v12];
    }

    v17 = [(ACXCompanionSyncConnection *)self _onQueue_applicationForWatchAppWithBundleID:v12];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 companionAppBundleID];
      v20 = [v18 applicationName];
      [(ACXCompanionSyncConnection *)self _onQueue_installFailedForWatchAppBundleID:v12 companionBundleID:v19 withError:v13 appName:v20 userInitiated:v9 userPresentableError:0];
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)handleIncomingMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 message];
  v6 = [v5 objectForKey:@"T"];
  v7 = [v6 unsignedCharValue];

  switch(v7)
  {
    case 2u:
      v8 = [(ACXCompanionSyncConnection *)self internalQueue];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100029CE8;
      v46[3] = &unk_10008CC38;
      v46[4] = self;
      v47 = v4;
      sub_100005828(v8, v46);

      v9 = v47;
      goto LABEL_16;
    case 4u:
      v18 = [(ACXCompanionSyncConnection *)self internalQueue];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100029CD0;
      v50[3] = &unk_10008CC38;
      v50[4] = self;
      v51 = v4;
      sub_100005828(v18, v50);

      v9 = v51;
      goto LABEL_16;
    case 5u:
      v17 = [(ACXCompanionSyncConnection *)self internalQueue];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100029CDC;
      v48[3] = &unk_10008CC38;
      v48[4] = self;
      v49 = v4;
      sub_100005828(v17, v48);

      v9 = v49;
      goto LABEL_16;
    case 0xEu:
      v16 = [(ACXCompanionSyncConnection *)self internalQueue];
      sub_100005828(v16, &stru_10008D860);

      break;
    case 0xFu:
      v12 = [(ACXCompanionSyncConnection *)self internalQueue];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100029E48;
      v44[3] = &unk_10008CC38;
      v44[4] = self;
      v45 = v4;
      sub_100005828(v12, v44);

      v9 = v45;
      goto LABEL_16;
    case 0x11u:
      v14 = [(ACXCompanionSyncConnection *)self internalQueue];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100029E54;
      v42[3] = &unk_10008CC38;
      v42[4] = self;
      v43 = v4;
      sub_100005828(v14, v42);

      v9 = v43;
      goto LABEL_16;
    case 0x13u:
      v19 = [(ACXCompanionSyncConnection *)self internalQueue];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100029E60;
      v40[3] = &unk_10008CC38;
      v40[4] = self;
      v41 = v4;
      sub_100005828(v19, v40);

      v9 = v41;
      goto LABEL_16;
    case 0x17u:
      v20 = [(ACXCompanionSyncConnection *)self internalQueue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100029E6C;
      v37[3] = &unk_10008CC38;
      v38 = v4;
      v39 = self;
      sub_100005828(v20, v37);

      v9 = v38;
      goto LABEL_16;
    case 0x19u:
      v22 = [(ACXCompanionSyncConnection *)self internalQueue];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100029EC0;
      v34[3] = &unk_10008CC38;
      v35 = v4;
      v36 = self;
      sub_100005828(v22, v34);

      v9 = v35;
      goto LABEL_16;
    case 0x1Bu:
      v21 = [(ACXCompanionSyncConnection *)self internalQueue];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100029F14;
      v32[3] = &unk_10008CD40;
      v33 = v4;
      sub_100005828(v21, v32);

      v9 = v33;
      goto LABEL_16;
    case 0x1Cu:
      v11 = [(ACXCompanionSyncConnection *)self internalQueue];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100029F1C;
      v29[3] = &unk_10008CC38;
      v30 = v4;
      v31 = self;
      sub_100005828(v11, v29);

      v9 = v30;
      goto LABEL_16;
    case 0x1Fu:
      v15 = [(ACXCompanionSyncConnection *)self internalQueue];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100029F70;
      v27[3] = &unk_10008CC38;
      v27[4] = self;
      v28 = v4;
      sub_100005828(v15, v27);

      v9 = v28;
      goto LABEL_16;
    case 0x20u:
      v13 = [(ACXCompanionSyncConnection *)self internalQueue];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100029F7C;
      v25[3] = &unk_10008CC38;
      v25[4] = self;
      v26 = v4;
      sub_100005828(v13, v25);

      v9 = v26;
      goto LABEL_16;
    case 0x21u:
      v10 = [(ACXCompanionSyncConnection *)self internalQueue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100029F88;
      v23[3] = &unk_10008CC38;
      v23[4] = self;
      v24 = v4;
      sub_100005828(v10, v23);

      v9 = v24;
LABEL_16:

      break;
    default:
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      break;
  }
}

- (void)processPendingStateWithReason:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A048;
  v7[3] = &unk_10008CC38;
  v8 = v4;
  v9 = self;
  v6 = v4;
  sub_100005828(v5, v7);
}

- (void)performReunionSyncWithReason:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A174;
  v7[3] = &unk_10008CC38;
  v8 = v4;
  v9 = self;
  v6 = v4;
  sub_100005828(v5, v7);
}

- (void)noteInstallFailure:(id)a3 forWatchAppWithBundleID:(id)a4 wasUserInitiated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACXCompanionSyncConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A2E0;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_sync(v9, block);
}

- (void)acknowledgeTestFlightInstallBegunForWatchApp:(id)a3
{
  v3 = a3;
  v4 = +[ACXTestFlightInstallQueue sharedInstaller];
  [v4 removePendingInstallForAppWithBundleID:v3];
}

- (void)installProvisioningProfileWithData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXCompanionSyncConnection *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002A470;
  v11[3] = &unk_10008CA98;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  sub_100005828(v8, v11);
}

- (void)removeProvisioningProfileWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXCompanionSyncConnection *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002A958;
  v11[3] = &unk_10008CA98;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  sub_100005828(v8, v11);
}

- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXCompanionSyncConnection *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002AE4C;
  v11[3] = &unk_10008CA98;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  sub_100005828(v8, v11);
}

- (NSDictionary)removabilityForRemoteApps
{
  v2 = [(ACXCompanionSyncConnection *)self remoteRemovabilityManager];
  v3 = [v2 appRemovabilityMap];

  return v3;
}

- (void)updatePreferencesForApplicationWithIdentifier:(id)a3 preferences:(id)a4 writingToPreferencesLocation:(unint64_t)a5 options:(unint64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [(ACXCompanionSyncConnection *)self device];
  v16 = [v15 supportsStandaloneApps];

  if (!a5 || (v16 & 1) != 0)
  {
    v19 = [(ACXCompanionSyncConnection *)self internalQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002B438;
    v20[3] = &unk_10008D888;
    v21 = v12;
    v25 = a5;
    v26 = a6;
    v22 = v13;
    v23 = self;
    v24 = v14;
    sub_100005828(v19, v20);
  }

  else
  {
    v18 = sub_1000061DC("[ACXCompanionSyncConnection updatePreferencesForApplicationWithIdentifier:preferences:writingToPreferencesLocation:options:completion:]", 2647, @"ACXErrorDomain", 50, 0, 0, @"Watch device does not support writing to preferences location %lu", v17, a5);
    (*(v14 + 2))(v14, v18);
  }
}

- (BOOL)supportsRemoteAppList
{
  v2 = [(ACXCompanionSyncConnection *)self remoteAppList];
  v3 = v2 != 0;

  return v3;
}

- (void)fetchAppInfoForBundleIDs:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v9 = [(ACXCompanionSyncConnection *)self internalQueue];
  v6 = [(ACXCompanionSyncConnection *)self messager];
  v7 = [(ACXCompanionSyncConnection *)self device];
  v8 = [(ACXCompanionSyncConnection *)self remoteAppList];
  sub_10004BEF0(v4, v9, v6, v7, v8);
}

- (void)fetchBundleIDList
{
  v3 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v7 = [(ACXCompanionSyncConnection *)self internalQueue];
  v4 = [(ACXCompanionSyncConnection *)self messager];
  v5 = [(ACXCompanionSyncConnection *)self device];
  v6 = [(ACXCompanionSyncConnection *)self remoteAppList];
  sub_10004C17C(v7, v4, v5, v6);
}

- (void)fetchOutstandingAppEvents
{
  v3 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v7 = [(ACXCompanionSyncConnection *)self internalQueue];
  v4 = [(ACXCompanionSyncConnection *)self messager];
  v5 = [(ACXCompanionSyncConnection *)self device];
  v6 = [(ACXCompanionSyncConnection *)self remoteAppList];
  sub_10004C348(v7, v4, v5, v6);
}

- (void)acknowledgeAppEventsForDBUUID:(id)a3 throughSequenceNumber:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  v10 = [(ACXCompanionSyncConnection *)self internalQueue];
  v8 = [(ACXCompanionSyncConnection *)self messager];
  v9 = [(ACXCompanionSyncConnection *)self device];
  sub_10004C514(v6, a4, v10, v8, v9);
}

- (void)_setLocallyAvailableForRemoteApplicationInstances:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self applicationManager];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 applicationMode] != 3)
        {
          v12 = [v11 bundleIdentifier];
          v13 = [v5 gizmoAppIsLocallyAvailableWithBundleID:v12];

          if (v13)
          {
            [v11 setIsLocallyAvailable:1];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)applicationsAdded:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self device];
  v6 = [v5 pairingID];

  [(ACXCompanionSyncConnection *)self _setLocallyAvailableForRemoteApplicationInstances:v4];
  [ACXDeviceConnectionClient messageAllObserversForApplicationsInstalled:v4 onDeviceWithPairingID:v6];
  v7 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) bundleIdentifier];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  sub_10002BE2C(@"com.apple.appconduit.remote_applications_installed", v7, v6);
}

- (void)applicationsUpdated:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self device];
  v6 = [v5 pairingID];

  [(ACXCompanionSyncConnection *)self _setLocallyAvailableForRemoteApplicationInstances:v4];
  [ACXDeviceConnectionClient messageAllObserversForApplicationsUpdated:v4 onDeviceWithPairingID:v6];
  v7 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) bundleIdentifier];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  sub_10002BE2C(@"com.apple.appconduit.remote_applications_updated", v7, v6);
}

- (void)applicationsRemoved:(id)a3
{
  v4 = a3;
  v5 = [(ACXCompanionSyncConnection *)self device];
  v6 = [v5 pairingID];

  v7 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) bundleIdentifier];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [ACXDeviceConnectionClient messageAllObserversForApplicationsUninstalled:v7 onDeviceWithPairingID:v6];
  sub_10002BE2C(@"com.apple.appconduit.remote_applications_uninstalled", v7, v6);
}

- (void)resyncCompleted
{
  v3 = [(ACXCompanionSyncConnection *)self device];
  v6 = [v3 pairingID];

  v4 = [(ACXCompanionSyncConnection *)self device];
  v5 = [v4 pairingID];
  [ACXDeviceConnectionClient messageAllObserversForApplicationDatabaseResyncedForDeviceWithPairingID:v5];

  sub_10002BE2C(@"com.apple.appconduit.remote_application_db_resynced", 0, v6);
}

- (void)_processSystemAppChangesForNewApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACXCompanionSyncConnection *)self device];
  LODWORD(a4) = [v11 isActivePairedDevice];

  if (a4)
  {
    v41 = v10;
    v12 = [(ACXCompanionSyncConnection *)self device];
    v13 = [v12 deletableSystemAppStateIsMirrored];

    v14 = [(ACXCompanionSyncConnection *)self device];
    v39 = [v14 supportsRemoteAppList];

    v38 = self;
    v15 = [(ACXCompanionSyncConnection *)self gizmoState];
    v16 = [v15 alwaysInstallApps];

    v42 = v9;
    v17 = [v8 arrayByAddingObjectsFromArray:v9];
    v18 = objc_opt_new();
    v40 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v57;
      v23 = v13 | v16;
      v44 = *v57;
      v45 = v19;
      v43 = v13 | v16;
      do
      {
        v24 = 0;
        v46 = v21;
        do
        {
          if (*v57 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v56 + 1) + 8 * v24);
          if ([v25 isDeletable] && (objc_msgSend(v25, "isSystemApp") & v23) == 1)
          {
            v26 = [v25 counterpartIdentifiers];
            v27 = v26;
            if (v26 && [v26 count])
            {
              v48 = v24;
              v28 = [v25 bundleIdentifier];
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              v47 = v27;
              v29 = v27;
              v30 = [v29 countByEnumeratingWithState:&v52 objects:v60 count:16];
              if (!v30)
              {
                goto LABEL_25;
              }

              v31 = v30;
              v32 = *v53;
              while (1)
              {
                for (i = 0; i != v31; i = i + 1)
                {
                  if (*v53 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = *(*(&v52 + 1) + 8 * i);
                  if (v13)
                  {
                    if (!qword_1000A4878 || *(qword_1000A4878 + 44) > 4)
                    {
                      goto LABEL_22;
                    }
                  }

                  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                  {
LABEL_22:
                    v37 = *(*(&v52 + 1) + 8 * i);
                    MOLogWrite();
                  }

                  v35 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:v28, v37];
                  [v18 setObject:v35 forKeyedSubscript:v34];
                }

                v31 = [v29 countByEnumeratingWithState:&v52 objects:v60 count:16];
                if (!v31)
                {
LABEL_25:

                  v19 = v45;
                  v21 = v46;
                  v22 = v44;
                  v23 = v43;
                  v27 = v47;
                  v24 = v48;
                  break;
                }
              }
            }
          }

          v24 = v24 + 1;
        }

        while (v24 != v21);
        v21 = [v19 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v21);
    }

    v10 = v41;
    if (!(v39 & 1 | ((v13 & 1) == 0)))
    {
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10002C7D8;
      v50[3] = &unk_10008D8B0;
      v51 = v40;
      [v41 enumerateKeysAndObjectsUsingBlock:v50];
    }

    if ([v18 count] || objc_msgSend(v40, "count"))
    {
      v36 = [(ACXCompanionSyncConnection *)v38 gizmoState];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10002C910;
      v49[3] = &unk_10008CD40;
      v49[4] = v38;
      [v36 processNewStatusUpdates:v18 updatedStatusUpdates:0 removedStatusUpdates:v40 completion:v49];
    }

    v9 = v42;
  }
}

- (void)noteNewCompanionApps:(id)a3 updatedApps:(id)a4 removedApps:(id)a5 forDBUUID:(id)a6 endingSequenceNumber:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(ACXCompanionSyncConnection *)self device];
  v17 = [v16 supportsRemoteAppList];

  if (v17)
  {
    if ([v12 count] || objc_msgSend(v13, "count"))
    {
      v49 = a7;
      v50 = v15;
      v52 = v13;
      v18 = objc_opt_new();
      v19 = objc_opt_new();
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v51 = v12;
      v20 = v12;
      v21 = [v20 countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v66;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v66 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v65 + 1) + 8 * i);
            v26 = [v25 serializeAsRemoteApplication];
            [v18 addObject:v26];

            v27 = [v25 bundleIdentifier];
            [v19 addObject:v27];
          }

          v22 = [v20 countByEnumeratingWithState:&v65 objects:v74 count:16];
        }

        while (v22);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v28 = v52;
      v29 = [v28 countByEnumeratingWithState:&v61 objects:v73 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v62;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v62 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v61 + 1) + 8 * j);
            v34 = [v33 serializeAsRemoteApplication];
            [v18 addObject:v34];

            v35 = [v33 bundleIdentifier];
            [v19 addObject:v35];
          }

          v30 = [v28 countByEnumeratingWithState:&v61 objects:v73 count:16];
        }

        while (v30);
      }

      v71[0] = @"T";
      v71[1] = @"IL";
      v72[0] = &off_100097788;
      v72[1] = v18;
      v71[2] = @"DBU";
      v15 = v50;
      v36 = [v50 UUIDString];
      v72[2] = v36;
      v71[3] = @"DBS";
      a7 = v49;
      v37 = [NSNumber numberWithUnsignedInteger:v49];
      v72[3] = v37;
      v38 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:4];

      v39 = [(ACXCompanionSyncConnection *)self internalQueue];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_10002CE48;
      v57[3] = &unk_10008CA48;
      v58 = v19;
      v59 = self;
      v60 = v38;
      v40 = v38;
      v41 = v19;
      sub_100005828(v39, v57);

      v12 = v51;
      v13 = v52;
    }

    if ([v14 count])
    {
      v42 = [v14 allKeys];
      v69[0] = @"T";
      v69[1] = @"BL";
      v70[0] = &off_1000977A0;
      v70[1] = v42;
      v69[2] = @"DBU";
      v43 = [v15 UUIDString];
      v70[2] = v43;
      v69[3] = @"DBS";
      v44 = [NSNumber numberWithUnsignedInteger:a7];
      v70[3] = v44;
      v45 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:4];

      v46 = [(ACXCompanionSyncConnection *)self internalQueue];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10002CF0C;
      v53[3] = &unk_10008CA48;
      v54 = v42;
      v55 = self;
      v56 = v45;
      v47 = v45;
      v48 = v42;
      sub_100005828(v46, v53);
    }
  }

  [(ACXCompanionSyncConnection *)self _processSystemAppChangesForNewApps:v12 updatedApps:v13 removedApps:v14];
}

- (void)noteCompanionAppDatabaseRebuild
{
  v3 = [(ACXCompanionSyncConnection *)self device];
  v4 = [v3 supportsRemoteAppList];

  if (v4)
  {

    [(ACXCompanionSyncConnection *)self performReunionSyncWithReason:@"companion app database rebuilt"];
  }
}

- (void)fetchRemovabilityForRemoteApps
{
  v3 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ACXCompanionSyncConnection *)self device];
  v5 = [v4 supportsTrackingAppRemovability];

  if (v5)
  {

    [(ACXCompanionSyncConnection *)self _onQueue_fetchRemovabilityForRemoteApps];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {

    MOLogWrite();
  }
}

- (void)applicationsRemovabilityUpdated:(id)a3
{
  v7 = a3;
  v4 = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(ACXCompanionSyncConnection *)self device];
  v6 = [v5 pairingID];

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  [ACXDeviceConnectionClient messageAllObserversForApplicationsRemovabilityChanged:v7 onDeviceWithPairingID:v6];
}

@end