@interface ACXInstallQueue
- (ACXInstallQueue)initWithDevice:(id)device;
- (BOOL)_onQueue_installIsPendingForWatchApp:(id)app;
- (BOOL)_onQueue_removeInstallOperationWithWatchBundleID:(id)d fromQueue:(id)queue;
- (BOOL)cancelInstallForWatchAppBundleID:(id)d;
- (BOOL)installIsPendingForWatchApp:(id)app;
- (id)_installationSentinelFileURL;
- (id)_queueForPriority:(unint64_t)priority;
- (unint64_t)_onQueue_countPending;
- (unint64_t)_onQueue_indexOfInstallOperationWithWatchBundleID:(id)d inQueue:(id)queue;
- (unint64_t)_onQueue_queuePriorityForBundleID:(id)d;
- (void)_createInstallationSentinel;
- (void)_onQueue_cancelAllPendingInstalls;
- (void)_onQueue_deQueueNextOperation;
- (void)_onQueue_removeBundleID:(id)d fromQueueWithPriority:(unint64_t)priority;
- (void)_onQueue_startQueue;
- (void)_onQueue_stopQueue;
- (void)_removeInstallationSentinel;
- (void)acknowledgeInstallationForWatchApp:(id)app;
- (void)cancelAllPendingInstalls;
- (void)dealloc;
- (void)installWatchApp:(id)app withPriority:(unint64_t)priority appSettings:(id)settings provisioningProfileInfo:(id)info isUserInitiated:(BOOL)initiated completion:(id)completion;
- (void)installWatchAppAtURL:(id)l watchBundleID:(id)d companionAppBundleID:(id)iD withPriority:(unint64_t)priority appSettings:(id)settings isPlaceholder:(BOOL)placeholder isUserInitiated:(BOOL)initiated size:(int64_t)self0 requiredCapabilities:(id)self1 completion:(id)self2;
- (void)reachabilityChangedForDevice:(id)device;
@end

@implementation ACXInstallQueue

- (ACXInstallQueue)initWithDevice:(id)device
{
  deviceCopy = device;
  v26.receiver = self;
  v26.super_class = ACXInstallQueue;
  v6 = [(ACXInstallQueue *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    device = [(ACXInstallQueue *)v7 device];
    [device addObserver:v7];

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.appconduit.InstallQueue", v9);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v10;

    v12 = objc_opt_new();
    placeholderInstallQueue = v7->_placeholderInstallQueue;
    v7->_placeholderInstallQueue = v12;

    v14 = objc_opt_new();
    highPriorityUpdateQueue = v7->_highPriorityUpdateQueue;
    v7->_highPriorityUpdateQueue = v14;

    v16 = objc_opt_new();
    normalPriorityUpdateQueue = v7->_normalPriorityUpdateQueue;
    v7->_normalPriorityUpdateQueue = v16;

    v18 = objc_opt_new();
    normalPriorityNewAppUpdateQueue = v7->_normalPriorityNewAppUpdateQueue;
    v7->_normalPriorityNewAppUpdateQueue = v18;

    v20 = objc_opt_new();
    completions = v7->_completions;
    v7->_completions = v20;

    v22 = [[ACXTimedIdentifierList alloc] initWithTimeout:60.0];
    recentlyCompletedWatchAppInstalls = v7->_recentlyCompletedWatchAppInstalls;
    v7->_recentlyCompletedWatchAppInstalls = v22;

    recentlyCompletedWatchAppInstalls = [(ACXInstallQueue *)v7 recentlyCompletedWatchAppInstalls];
    [recentlyCompletedWatchAppInstalls setTimeoutHandler:&stru_10008DA58];
  }

  return v7;
}

- (void)dealloc
{
  device = [(ACXInstallQueue *)self device];
  [device removeObserver:self];

  v4.receiver = self;
  v4.super_class = ACXInstallQueue;
  [(ACXInstallQueue *)&v4 dealloc];
}

- (void)installWatchApp:(id)app withPriority:(unint64_t)priority appSettings:(id)settings provisioningProfileInfo:(id)info isUserInitiated:(BOOL)initiated completion:(id)completion
{
  appCopy = app;
  settingsCopy = settings;
  infoCopy = info;
  completionCopy = completion;
  internalQueue = [(ACXInstallQueue *)self internalQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100035040;
  v23[3] = &unk_10008DA80;
  v24 = appCopy;
  selfCopy = self;
  v28 = completionCopy;
  priorityCopy = priority;
  v26 = settingsCopy;
  v27 = infoCopy;
  initiatedCopy = initiated;
  v19 = infoCopy;
  v20 = settingsCopy;
  v21 = completionCopy;
  v22 = appCopy;
  sub_100005828(internalQueue, v23);
}

- (void)installWatchAppAtURL:(id)l watchBundleID:(id)d companionAppBundleID:(id)iD withPriority:(unint64_t)priority appSettings:(id)settings isPlaceholder:(BOOL)placeholder isUserInitiated:(BOOL)initiated size:(int64_t)self0 requiredCapabilities:(id)self1 completion:(id)self2
{
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  settingsCopy = settings;
  capabilitiesCopy = capabilities;
  completionCopy = completion;
  internalQueue = [(ACXInstallQueue *)self internalQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000354BC;
  v31[3] = &unk_10008DAA8;
  v32 = dCopy;
  v33 = iDCopy;
  selfCopy = self;
  v35 = lCopy;
  v38 = completionCopy;
  priorityCopy = priority;
  initiatedCopy = initiated;
  v36 = settingsCopy;
  v37 = capabilitiesCopy;
  placeholderCopy = placeholder;
  sizeCopy = size;
  v23 = capabilitiesCopy;
  v24 = settingsCopy;
  v25 = lCopy;
  v26 = completionCopy;
  v27 = iDCopy;
  v28 = dCopy;
  sub_100005828(internalQueue, v31);
}

- (void)reachabilityChangedForDevice:(id)device
{
  internalQueue = [(ACXInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003582C;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (BOOL)cancelInstallForWatchAppBundleID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = [(ACXInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035AD0;
  block[3] = &unk_10008CA70;
  block[4] = self;
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(internalQueue, block);

  LOBYTE(dCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

- (void)_onQueue_cancelAllPendingInstalls
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    _onQueue_countPending = [(ACXInstallQueue *)self _onQueue_countPending];
    MOLogWrite();
  }

  currentInstallOperation = [(ACXInstallQueue *)self currentInstallOperation];

  if (currentInstallOperation)
  {
    currentInstallOperation2 = [(ACXInstallQueue *)self currentInstallOperation];
    [currentInstallOperation2 cancel];

    [(ACXInstallQueue *)self setCancelCurrentOperation:1];
  }

  placeholderInstallQueue = [(ACXInstallQueue *)self placeholderInstallQueue];
  [placeholderInstallQueue removeAllObjects];

  highPriorityUpdateQueue = [(ACXInstallQueue *)self highPriorityUpdateQueue];
  [highPriorityUpdateQueue removeAllObjects];

  normalPriorityUpdateQueue = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
  [normalPriorityUpdateQueue removeAllObjects];

  normalPriorityNewAppUpdateQueue = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
  [normalPriorityNewAppUpdateQueue removeAllObjects];

  completions = [(ACXInstallQueue *)self completions];
  [completions enumerateKeysAndObjectsUsingBlock:&stru_10008DAE8];

  completions2 = [(ACXInstallQueue *)self completions];
  [completions2 removeAllObjects];
}

- (void)cancelAllPendingInstalls
{
  internalQueue = [(ACXInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036134;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (unint64_t)_onQueue_countPending
{
  placeholderInstallQueue = [(ACXInstallQueue *)self placeholderInstallQueue];
  v4 = [placeholderInstallQueue count];
  highPriorityUpdateQueue = [(ACXInstallQueue *)self highPriorityUpdateQueue];
  v6 = &v4[[highPriorityUpdateQueue count]];
  normalPriorityUpdateQueue = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
  v8 = [normalPriorityUpdateQueue count];
  normalPriorityNewAppUpdateQueue = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
  v10 = [normalPriorityNewAppUpdateQueue count] + v8;

  return &v10[v6];
}

- (void)_onQueue_startQueue
{
  if ([(ACXInstallQueue *)self isSuspended])
  {
    sub_10005A004();
  }

  [(ACXInstallQueue *)self activeTransaction];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_100059FD8();
  }

  v3 = os_transaction_create();
  [(ACXInstallQueue *)self setActiveTransaction:v3];

  [(ACXInstallQueue *)self _createInstallationSentinel];

  [(ACXInstallQueue *)self _onQueue_deQueueNextOperation];
}

- (void)_onQueue_stopQueue
{
  activeTransaction = [(ACXInstallQueue *)self activeTransaction];
  if (!activeTransaction)
  {
    sub_10005A05C();
  }

  [(ACXInstallQueue *)self setActiveTransaction:0];
  [(ACXInstallQueue *)self _removeInstallationSentinel];
  currentInstallOperation = [(ACXInstallQueue *)self currentInstallOperation];
  if (!currentInstallOperation)
  {
    sub_10005A030();
  }

  [(ACXInstallQueue *)self setCurrentInstallOperation:0];
  [(ACXInstallQueue *)self setCurrentInstallOperationWatchBundleID:0];

  [(ACXInstallQueue *)self setCancelCurrentOperation:0];
}

- (void)_onQueue_deQueueNextOperation
{
  placeholderInstallQueue = [(ACXInstallQueue *)self placeholderInstallQueue];
  v4 = [placeholderInstallQueue count];

  if (v4)
  {
    placeholderInstallQueue2 = [(ACXInstallQueue *)self placeholderInstallQueue];
  }

  else
  {
    highPriorityUpdateQueue = [(ACXInstallQueue *)self highPriorityUpdateQueue];
    v7 = [highPriorityUpdateQueue count];

    if (v7)
    {
      placeholderInstallQueue2 = [(ACXInstallQueue *)self highPriorityUpdateQueue];
    }

    else
    {
      normalPriorityUpdateQueue = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
      v9 = [normalPriorityUpdateQueue count];

      if (v9)
      {
        placeholderInstallQueue2 = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
      }

      else
      {
        normalPriorityNewAppUpdateQueue = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
        v11 = [normalPriorityNewAppUpdateQueue count];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_10;
        }

        placeholderInstallQueue2 = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
      }
    }
  }

  v12 = placeholderInstallQueue2;
LABEL_10:
  device = [(ACXInstallQueue *)self device];
  nrDevice = [device nrDevice];
  v15 = sub_10004FF78(nrDevice);

  if (v15 && v12)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [(ACXInstallQueue *)self _onQueue_cancelAllPendingInstalls];
    goto LABEL_42;
  }

  if ([(ACXInstallQueue *)self isSuspended]&& v12)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [(ACXInstallQueue *)self _onQueue_stopQueue];
    goto LABEL_42;
  }

  if (v12)
  {
    v16 = [v12 objectAtIndex:0];
    [v12 removeObjectAtIndex:0];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      bundleID = [v16 bundleID];
      _onQueue_countPending = [(ACXInstallQueue *)self _onQueue_countPending];
      MOLogWrite();
    }

    [(ACXInstallQueue *)self setCancelCurrentOperation:0, bundleID, _onQueue_countPending];
    bundleID2 = [v16 bundleID];
    [(ACXInstallQueue *)self setCurrentInstallOperationWatchBundleID:bundleID2];

    installType = [v16 installType];
    if (installType == 2)
    {
      appURL = [v16 appURL];
      bundleID3 = [v16 bundleID];
      companionBundleID = [v16 companionBundleID];
      appSize = [v16 appSize];
      device2 = [(ACXInstallQueue *)self device];
      usesLegacySocketService = [device2 usesLegacySocketService];
      v26 = appURL;
      v27 = bundleID3;
      v28 = companionBundleID;
      v29 = 0;
    }

    else
    {
      if (installType != 1)
      {
        if (installType)
        {
LABEL_39:
          provisioningProfileInfo = [v16 provisioningProfileInfo];
          currentInstallOperation = [(ACXInstallQueue *)self currentInstallOperation];
          [currentInstallOperation setProvisioningProfiles:provisioningProfileInfo];

          appPreferences = [v16 appPreferences];
          currentInstallOperation2 = [(ACXInstallQueue *)self currentInstallOperation];
          [currentInstallOperation2 setAppSettingsDict:appPreferences];

          isUserInitiated = [v16 isUserInitiated];
          currentInstallOperation3 = [(ACXInstallQueue *)self currentInstallOperation];
          [currentInstallOperation3 setIsUserInitiated:isUserInitiated];

          requiredCapabilities = [v16 requiredCapabilities];
          currentInstallOperation4 = [(ACXInstallQueue *)self currentInstallOperation];
          [currentInstallOperation4 setRequiredDeviceCapabilities:requiredCapabilities];

          currentInstallOperation5 = [(ACXInstallQueue *)self currentInstallOperation];
          [currentInstallOperation5 setInstallPlaceholder:v4 != 0];

          if (!v4)
          {
            objc_initWeak(&location, self);
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_1000369F0;
            v56[3] = &unk_10008DB10;
            v57 = v16;
            objc_copyWeak(&v58, &location);
            currentInstallOperation6 = [(ACXInstallQueue *)self currentInstallOperation];
            [currentInstallOperation6 setProgressBlock:v56];

            objc_destroyWeak(&v58);
            objc_destroyWeak(&location);
          }

          v41 = v4 != 0;
          completions = [(ACXInstallQueue *)self completions];
          bundleID4 = [v16 bundleID];
          v44 = [completions objectForKeyedSubscript:bundleID4];

          completions2 = [(ACXInstallQueue *)self completions];
          bundleID5 = [v16 bundleID];
          [completions2 removeObjectForKey:bundleID5];

          currentInstallOperation7 = [(ACXInstallQueue *)self currentInstallOperation];
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 3221225472;
          v52[2] = sub_100036B9C;
          v52[3] = &unk_10008DB60;
          v55 = v41;
          v52[4] = self;
          v53 = v16;
          v54 = v44;
          v48 = v44;
          v49 = v16;
          [currentInstallOperation7 beginWithCompletionBlock:v52];

          goto LABEL_42;
        }

        appURL = [v16 companionBundleID];
        bundleID3 = [v16 bundleID];
        companionBundleID = [(ACXInstallQueue *)self device];
        device2 = +[ACXServerInstallOperation installOperationForCompanionAppBundleIdentifier:watchAppBundleIdentifier:targetUsesLegacySocketService:](ACXServerInstallOperation, "installOperationForCompanionAppBundleIdentifier:watchAppBundleIdentifier:targetUsesLegacySocketService:", appURL, bundleID3, [companionBundleID usesLegacySocketService]);
        [(ACXInstallQueue *)self setCurrentInstallOperation:device2];
LABEL_38:

        goto LABEL_39;
      }

      appURL = [v16 appURL];
      bundleID3 = [v16 bundleID];
      companionBundleID = [v16 companionBundleID];
      appSize = [v16 appSize];
      device2 = [(ACXInstallQueue *)self device];
      usesLegacySocketService = [device2 usesLegacySocketService];
      v26 = appURL;
      v27 = bundleID3;
      v28 = companionBundleID;
      v29 = 1;
    }

    v30 = [ACXServerInstallOperation installOperationForURL:v26 watchAppBundleIdentifier:v27 companionAppBundleID:v28 isPlaceholder:v29 size:appSize targetUsesLegacySocketService:usesLegacySocketService];
    [(ACXInstallQueue *)self setCurrentInstallOperation:v30];

    goto LABEL_38;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  [(ACXInstallQueue *)self _onQueue_stopQueue];
  completions3 = [(ACXInstallQueue *)self completions];
  if ([completions3 count])
  {
    sub_10005A088();
  }

LABEL_42:
}

- (unint64_t)_onQueue_indexOfInstallOperationWithWatchBundleID:(id)d inQueue:(id)queue
{
  dCopy = d;
  queueCopy = queue;
  if ([queueCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [queueCopy objectAtIndexedSubscript:v7];
      bundleID = [v8 bundleID];
      v10 = [bundleID isEqualToString:dCopy];

      if (v10)
      {
        break;
      }

      if (++v7 >= [queueCopy count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (BOOL)_onQueue_removeInstallOperationWithWatchBundleID:(id)d fromQueue:(id)queue
{
  queueCopy = queue;
  v7 = [(ACXInstallQueue *)self _onQueue_indexOfInstallOperationWithWatchBundleID:d inQueue:queueCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [queueCopy removeObjectAtIndex:v7];
  }

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)_onQueue_queuePriorityForBundleID:(id)d
{
  dCopy = d;
  highPriorityUpdateQueue = [(ACXInstallQueue *)self highPriorityUpdateQueue];
  v6 = [(ACXInstallQueue *)self _onQueue_installQueue:highPriorityUpdateQueue hasInstallOperationForBundleID:dCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    normalPriorityUpdateQueue = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
    v9 = [(ACXInstallQueue *)self _onQueue_installQueue:normalPriorityUpdateQueue hasInstallOperationForBundleID:dCopy];

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      normalPriorityNewAppUpdateQueue = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
      v11 = [(ACXInstallQueue *)self _onQueue_installQueue:normalPriorityNewAppUpdateQueue hasInstallOperationForBundleID:dCopy];

      if (v11)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (id)_queueForPriority:(unint64_t)priority
{
  switch(priority)
  {
    case 3uLL:
      normalPriorityNewAppUpdateQueue = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
      break;
    case 2uLL:
      normalPriorityNewAppUpdateQueue = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
      break;
    case 1uLL:
      normalPriorityNewAppUpdateQueue = [(ACXInstallQueue *)self highPriorityUpdateQueue];
      break;
    default:
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      normalPriorityNewAppUpdateQueue = 0;
      break;
  }

  return normalPriorityNewAppUpdateQueue;
}

- (void)_onQueue_removeBundleID:(id)d fromQueueWithPriority:(unint64_t)priority
{
  dCopy = d;
  v6 = [(ACXInstallQueue *)self _queueForPriority:priority];
  if (v6)
  {
    [(ACXInstallQueue *)self _onQueue_removeInstallOperationWithWatchBundleID:dCopy fromQueue:v6];
  }
}

- (void)_createInstallationSentinel
{
  _installationSentinelFileURL = [(ACXInstallQueue *)self _installationSentinelFileURL];
  v4 = 0;
  [&stru_10008F378 writeToURL:_installationSentinelFileURL atomically:1 encoding:4 error:&v4];
  v3 = v4;
  if (v3)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
LABEL_7:
      MOLogWrite();
    }
  }

  else if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    goto LABEL_7;
  }
}

- (void)_removeInstallationSentinel
{
  v4 = +[NSFileManager defaultManager];
  _installationSentinelFileURL = [(ACXInstallQueue *)self _installationSentinelFileURL];
  [v4 removeItemAtURL:_installationSentinelFileURL error:0];
}

- (id)_installationSentinelFileURL
{
  v2 = sub_100006798();
  v3 = [v2 URLByAppendingPathComponent:@"install_in_progress" isDirectory:0];

  return v3;
}

- (BOOL)_onQueue_installIsPendingForWatchApp:(id)app
{
  appCopy = app;
  currentInstallOperationWatchBundleID = [(ACXInstallQueue *)self currentInstallOperationWatchBundleID];
  v6 = [currentInstallOperationWatchBundleID isEqualToString:appCopy];

  if ((v6 & 1) != 0 || (-[ACXInstallQueue completions](self, "completions"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:appCopy], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = 1;
  }

  else
  {
    recentlyCompletedWatchAppInstalls = [(ACXInstallQueue *)self recentlyCompletedWatchAppInstalls];
    v9 = [recentlyCompletedWatchAppInstalls containsIdentifier:appCopy];
  }

  return v9;
}

- (BOOL)installIsPendingForWatchApp:(id)app
{
  appCopy = app;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = [(ACXInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000375EC;
  block[3] = &unk_10008CA20;
  v9 = appCopy;
  v10 = &v11;
  block[4] = self;
  v6 = appCopy;
  dispatch_sync(internalQueue, block);

  LOBYTE(appCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return appCopy;
}

- (void)acknowledgeInstallationForWatchApp:(id)app
{
  appCopy = app;
  recentlyCompletedWatchAppInstalls = [(ACXInstallQueue *)self recentlyCompletedWatchAppInstalls];
  v5 = [recentlyCompletedWatchAppInstalls removeIdentifier:appCopy];

  if (v5 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5))
  {
    MOLogWrite();
  }
}

@end