@interface ACXInstallQueue
- (ACXInstallQueue)initWithDevice:(id)a3;
- (BOOL)_onQueue_installIsPendingForWatchApp:(id)a3;
- (BOOL)_onQueue_removeInstallOperationWithWatchBundleID:(id)a3 fromQueue:(id)a4;
- (BOOL)cancelInstallForWatchAppBundleID:(id)a3;
- (BOOL)installIsPendingForWatchApp:(id)a3;
- (id)_installationSentinelFileURL;
- (id)_queueForPriority:(unint64_t)a3;
- (unint64_t)_onQueue_countPending;
- (unint64_t)_onQueue_indexOfInstallOperationWithWatchBundleID:(id)a3 inQueue:(id)a4;
- (unint64_t)_onQueue_queuePriorityForBundleID:(id)a3;
- (void)_createInstallationSentinel;
- (void)_onQueue_cancelAllPendingInstalls;
- (void)_onQueue_deQueueNextOperation;
- (void)_onQueue_removeBundleID:(id)a3 fromQueueWithPriority:(unint64_t)a4;
- (void)_onQueue_startQueue;
- (void)_onQueue_stopQueue;
- (void)_removeInstallationSentinel;
- (void)acknowledgeInstallationForWatchApp:(id)a3;
- (void)cancelAllPendingInstalls;
- (void)dealloc;
- (void)installWatchApp:(id)a3 withPriority:(unint64_t)a4 appSettings:(id)a5 provisioningProfileInfo:(id)a6 isUserInitiated:(BOOL)a7 completion:(id)a8;
- (void)installWatchAppAtURL:(id)a3 watchBundleID:(id)a4 companionAppBundleID:(id)a5 withPriority:(unint64_t)a6 appSettings:(id)a7 isPlaceholder:(BOOL)a8 isUserInitiated:(BOOL)a9 size:(int64_t)a10 requiredCapabilities:(id)a11 completion:(id)a12;
- (void)reachabilityChangedForDevice:(id)a3;
@end

@implementation ACXInstallQueue

- (ACXInstallQueue)initWithDevice:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = ACXInstallQueue;
  v6 = [(ACXInstallQueue *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [(ACXInstallQueue *)v7 device];
    [v8 addObserver:v7];

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

    v24 = [(ACXInstallQueue *)v7 recentlyCompletedWatchAppInstalls];
    [v24 setTimeoutHandler:&stru_10008DA58];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(ACXInstallQueue *)self device];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ACXInstallQueue;
  [(ACXInstallQueue *)&v4 dealloc];
}

- (void)installWatchApp:(id)a3 withPriority:(unint64_t)a4 appSettings:(id)a5 provisioningProfileInfo:(id)a6 isUserInitiated:(BOOL)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = [(ACXInstallQueue *)self internalQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100035040;
  v23[3] = &unk_10008DA80;
  v24 = v14;
  v25 = self;
  v28 = v17;
  v29 = a4;
  v26 = v15;
  v27 = v16;
  v30 = a7;
  v19 = v16;
  v20 = v15;
  v21 = v17;
  v22 = v14;
  sub_100005828(v18, v23);
}

- (void)installWatchAppAtURL:(id)a3 watchBundleID:(id)a4 companionAppBundleID:(id)a5 withPriority:(unint64_t)a6 appSettings:(id)a7 isPlaceholder:(BOOL)a8 isUserInitiated:(BOOL)a9 size:(int64_t)a10 requiredCapabilities:(id)a11 completion:(id)a12
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a11;
  v21 = a12;
  v22 = [(ACXInstallQueue *)self internalQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000354BC;
  v31[3] = &unk_10008DAA8;
  v32 = v17;
  v33 = v18;
  v34 = self;
  v35 = v16;
  v38 = v21;
  v39 = a6;
  v41 = a9;
  v36 = v19;
  v37 = v20;
  v42 = a8;
  v40 = a10;
  v23 = v20;
  v24 = v19;
  v25 = v16;
  v26 = v21;
  v27 = v18;
  v28 = v17;
  sub_100005828(v22, v31);
}

- (void)reachabilityChangedForDevice:(id)a3
{
  v4 = [(ACXInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003582C;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (BOOL)cancelInstallForWatchAppBundleID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(ACXInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035AD0;
  block[3] = &unk_10008CA70;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)_onQueue_cancelAllPendingInstalls
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v10 = [(ACXInstallQueue *)self _onQueue_countPending];
    MOLogWrite();
  }

  v3 = [(ACXInstallQueue *)self currentInstallOperation];

  if (v3)
  {
    v4 = [(ACXInstallQueue *)self currentInstallOperation];
    [v4 cancel];

    [(ACXInstallQueue *)self setCancelCurrentOperation:1];
  }

  v5 = [(ACXInstallQueue *)self placeholderInstallQueue];
  [v5 removeAllObjects];

  v6 = [(ACXInstallQueue *)self highPriorityUpdateQueue];
  [v6 removeAllObjects];

  v7 = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
  [v7 removeAllObjects];

  v8 = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
  [v8 removeAllObjects];

  v9 = [(ACXInstallQueue *)self completions];
  [v9 enumerateKeysAndObjectsUsingBlock:&stru_10008DAE8];

  v11 = [(ACXInstallQueue *)self completions];
  [v11 removeAllObjects];
}

- (void)cancelAllPendingInstalls
{
  v3 = [(ACXInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100036134;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (unint64_t)_onQueue_countPending
{
  v3 = [(ACXInstallQueue *)self placeholderInstallQueue];
  v4 = [v3 count];
  v5 = [(ACXInstallQueue *)self highPriorityUpdateQueue];
  v6 = &v4[[v5 count]];
  v7 = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
  v8 = [v7 count];
  v9 = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
  v10 = [v9 count] + v8;

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
  v3 = [(ACXInstallQueue *)self activeTransaction];
  if (!v3)
  {
    sub_10005A05C();
  }

  [(ACXInstallQueue *)self setActiveTransaction:0];
  [(ACXInstallQueue *)self _removeInstallationSentinel];
  v4 = [(ACXInstallQueue *)self currentInstallOperation];
  if (!v4)
  {
    sub_10005A030();
  }

  [(ACXInstallQueue *)self setCurrentInstallOperation:0];
  [(ACXInstallQueue *)self setCurrentInstallOperationWatchBundleID:0];

  [(ACXInstallQueue *)self setCancelCurrentOperation:0];
}

- (void)_onQueue_deQueueNextOperation
{
  v3 = [(ACXInstallQueue *)self placeholderInstallQueue];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ACXInstallQueue *)self placeholderInstallQueue];
  }

  else
  {
    v6 = [(ACXInstallQueue *)self highPriorityUpdateQueue];
    v7 = [v6 count];

    if (v7)
    {
      v5 = [(ACXInstallQueue *)self highPriorityUpdateQueue];
    }

    else
    {
      v8 = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
      v9 = [v8 count];

      if (v9)
      {
        v5 = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
      }

      else
      {
        v10 = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
        v11 = [v10 count];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_10;
        }

        v5 = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
      }
    }
  }

  v12 = v5;
LABEL_10:
  v13 = [(ACXInstallQueue *)self device];
  v14 = [v13 nrDevice];
  v15 = sub_10004FF78(v14);

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
      v50 = [v16 bundleID];
      v51 = [(ACXInstallQueue *)self _onQueue_countPending];
      MOLogWrite();
    }

    [(ACXInstallQueue *)self setCancelCurrentOperation:0, v50, v51];
    v17 = [v16 bundleID];
    [(ACXInstallQueue *)self setCurrentInstallOperationWatchBundleID:v17];

    v18 = [v16 installType];
    if (v18 == 2)
    {
      v19 = [v16 appURL];
      v20 = [v16 bundleID];
      v21 = [v16 companionBundleID];
      v24 = [v16 appSize];
      v22 = [(ACXInstallQueue *)self device];
      v25 = [v22 usesLegacySocketService];
      v26 = v19;
      v27 = v20;
      v28 = v21;
      v29 = 0;
    }

    else
    {
      if (v18 != 1)
      {
        if (v18)
        {
LABEL_39:
          v31 = [v16 provisioningProfileInfo];
          v32 = [(ACXInstallQueue *)self currentInstallOperation];
          [v32 setProvisioningProfiles:v31];

          v33 = [v16 appPreferences];
          v34 = [(ACXInstallQueue *)self currentInstallOperation];
          [v34 setAppSettingsDict:v33];

          v35 = [v16 isUserInitiated];
          v36 = [(ACXInstallQueue *)self currentInstallOperation];
          [v36 setIsUserInitiated:v35];

          v37 = [v16 requiredCapabilities];
          v38 = [(ACXInstallQueue *)self currentInstallOperation];
          [v38 setRequiredDeviceCapabilities:v37];

          v39 = [(ACXInstallQueue *)self currentInstallOperation];
          [v39 setInstallPlaceholder:v4 != 0];

          if (!v4)
          {
            objc_initWeak(&location, self);
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_1000369F0;
            v56[3] = &unk_10008DB10;
            v57 = v16;
            objc_copyWeak(&v58, &location);
            v40 = [(ACXInstallQueue *)self currentInstallOperation];
            [v40 setProgressBlock:v56];

            objc_destroyWeak(&v58);
            objc_destroyWeak(&location);
          }

          v41 = v4 != 0;
          v42 = [(ACXInstallQueue *)self completions];
          v43 = [v16 bundleID];
          v44 = [v42 objectForKeyedSubscript:v43];

          v45 = [(ACXInstallQueue *)self completions];
          v46 = [v16 bundleID];
          [v45 removeObjectForKey:v46];

          v47 = [(ACXInstallQueue *)self currentInstallOperation];
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
          [v47 beginWithCompletionBlock:v52];

          goto LABEL_42;
        }

        v19 = [v16 companionBundleID];
        v20 = [v16 bundleID];
        v21 = [(ACXInstallQueue *)self device];
        v22 = +[ACXServerInstallOperation installOperationForCompanionAppBundleIdentifier:watchAppBundleIdentifier:targetUsesLegacySocketService:](ACXServerInstallOperation, "installOperationForCompanionAppBundleIdentifier:watchAppBundleIdentifier:targetUsesLegacySocketService:", v19, v20, [v21 usesLegacySocketService]);
        [(ACXInstallQueue *)self setCurrentInstallOperation:v22];
LABEL_38:

        goto LABEL_39;
      }

      v19 = [v16 appURL];
      v20 = [v16 bundleID];
      v21 = [v16 companionBundleID];
      v24 = [v16 appSize];
      v22 = [(ACXInstallQueue *)self device];
      v25 = [v22 usesLegacySocketService];
      v26 = v19;
      v27 = v20;
      v28 = v21;
      v29 = 1;
    }

    v30 = [ACXServerInstallOperation installOperationForURL:v26 watchAppBundleIdentifier:v27 companionAppBundleID:v28 isPlaceholder:v29 size:v24 targetUsesLegacySocketService:v25];
    [(ACXInstallQueue *)self setCurrentInstallOperation:v30];

    goto LABEL_38;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  [(ACXInstallQueue *)self _onQueue_stopQueue];
  v23 = [(ACXInstallQueue *)self completions];
  if ([v23 count])
  {
    sub_10005A088();
  }

LABEL_42:
}

- (unint64_t)_onQueue_indexOfInstallOperationWithWatchBundleID:(id)a3 inQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [v8 bundleID];
      v10 = [v9 isEqualToString:v5];

      if (v10)
      {
        break;
      }

      if (++v7 >= [v6 count])
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

- (BOOL)_onQueue_removeInstallOperationWithWatchBundleID:(id)a3 fromQueue:(id)a4
{
  v6 = a4;
  v7 = [(ACXInstallQueue *)self _onQueue_indexOfInstallOperationWithWatchBundleID:a3 inQueue:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 removeObjectAtIndex:v7];
  }

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)_onQueue_queuePriorityForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(ACXInstallQueue *)self highPriorityUpdateQueue];
  v6 = [(ACXInstallQueue *)self _onQueue_installQueue:v5 hasInstallOperationForBundleID:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
    v9 = [(ACXInstallQueue *)self _onQueue_installQueue:v8 hasInstallOperationForBundleID:v4];

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      v10 = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
      v11 = [(ACXInstallQueue *)self _onQueue_installQueue:v10 hasInstallOperationForBundleID:v4];

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

- (id)_queueForPriority:(unint64_t)a3
{
  switch(a3)
  {
    case 3uLL:
      v3 = [(ACXInstallQueue *)self normalPriorityNewAppUpdateQueue];
      break;
    case 2uLL:
      v3 = [(ACXInstallQueue *)self normalPriorityUpdateQueue];
      break;
    case 1uLL:
      v3 = [(ACXInstallQueue *)self highPriorityUpdateQueue];
      break;
    default:
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      v3 = 0;
      break;
  }

  return v3;
}

- (void)_onQueue_removeBundleID:(id)a3 fromQueueWithPriority:(unint64_t)a4
{
  v7 = a3;
  v6 = [(ACXInstallQueue *)self _queueForPriority:a4];
  if (v6)
  {
    [(ACXInstallQueue *)self _onQueue_removeInstallOperationWithWatchBundleID:v7 fromQueue:v6];
  }
}

- (void)_createInstallationSentinel
{
  v2 = [(ACXInstallQueue *)self _installationSentinelFileURL];
  v4 = 0;
  [&stru_10008F378 writeToURL:v2 atomically:1 encoding:4 error:&v4];
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
  v3 = [(ACXInstallQueue *)self _installationSentinelFileURL];
  [v4 removeItemAtURL:v3 error:0];
}

- (id)_installationSentinelFileURL
{
  v2 = sub_100006798();
  v3 = [v2 URLByAppendingPathComponent:@"install_in_progress" isDirectory:0];

  return v3;
}

- (BOOL)_onQueue_installIsPendingForWatchApp:(id)a3
{
  v4 = a3;
  v5 = [(ACXInstallQueue *)self currentInstallOperationWatchBundleID];
  v6 = [v5 isEqualToString:v4];

  if ((v6 & 1) != 0 || (-[ACXInstallQueue completions](self, "completions"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:v4], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = 1;
  }

  else
  {
    v11 = [(ACXInstallQueue *)self recentlyCompletedWatchAppInstalls];
    v9 = [v11 containsIdentifier:v4];
  }

  return v9;
}

- (BOOL)installIsPendingForWatchApp:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(ACXInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000375EC;
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

- (void)acknowledgeInstallationForWatchApp:(id)a3
{
  v6 = a3;
  v4 = [(ACXInstallQueue *)self recentlyCompletedWatchAppInstalls];
  v5 = [v4 removeIdentifier:v6];

  if (v5 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5))
  {
    MOLogWrite();
  }
}

@end