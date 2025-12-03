@interface ACXLocalAppStoreInstallQueue
- (ACXLocalAppStoreInstallQueue)initWithDevice:(id)device;
- (BOOL)_cancelCoordinatorForInstallWithWatchBundleID:(id)d;
- (BOOL)_cancelCoordinatorForInstallWithWatchBundleID:(id)d withReason:(id)reason;
- (BOOL)_onQueue_installIsPendingForWatchApp:(id)app;
- (BOOL)_onQueue_removeInstallOperationWithWatchBundleID:(id)d fromQueue:(id)queue;
- (BOOL)_onQueue_reportExternalInstallFailureForWatchAppBundleID:(id)d failureReason:(id)reason;
- (BOOL)cancelInstallForWatchAppBundleID:(id)d;
- (BOOL)installIsPendingForWatchApp:(id)app;
- (BOOL)reportExternalInstallFailureForWatchAppBundleID:(id)d failureReason:(id)reason;
- (id)_installationSentinelFileURL;
- (id)_onQueue_queueElementForApp:(id)app isCurrentInstall:(BOOL *)install;
- (unint64_t)_onQueue_countPending;
- (unint64_t)_onQueue_indexOfInstallOperationWithWatchBundleID:(id)d inQueue:(id)queue;
- (void)_createInstallationSentinel;
- (void)_onQueue_clearCurrentInstallCoordinator;
- (void)_onQueue_deQueueNextOperation;
- (void)_onQueue_startQueue;
- (void)_onQueue_stopQueue;
- (void)_removeInstallationSentinel;
- (void)acknowledgeInstallationStartedForWatchApp:(id)app;
- (void)cancelAllPendingInstalls;
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)dealloc;
- (void)installWatchApp:(id)app userInitiated:(BOOL)initiated completion:(id)completion;
- (void)reachabilityChangedForDevice:(id)device;
@end

@implementation ACXLocalAppStoreInstallQueue

- (ACXLocalAppStoreInstallQueue)initWithDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = ACXLocalAppStoreInstallQueue;
  v6 = [(ACXLocalAppStoreInstallQueue *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    device = [(ACXLocalAppStoreInstallQueue *)v7 device];
    [device addObserver:v7];

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.appconduit.LocalAppStoreInstallQueue", v9);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v10;

    v12 = objc_opt_new();
    installQueue = v7->_installQueue;
    v7->_installQueue = v12;
  }

  return v7;
}

- (void)dealloc
{
  device = [(ACXLocalAppStoreInstallQueue *)self device];
  [device removeObserver:self];

  v4.receiver = self;
  v4.super_class = ACXLocalAppStoreInstallQueue;
  [(ACXLocalAppStoreInstallQueue *)&v4 dealloc];
}

- (void)installWatchApp:(id)app userInitiated:(BOOL)initiated completion:(id)completion
{
  appCopy = app;
  completionCopy = completion;
  internalQueue = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001B510;
  v13[3] = &unk_10008D510;
  v14 = appCopy;
  selfCopy = self;
  initiatedCopy = initiated;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = appCopy;
  sub_100005828(internalQueue, v13);
}

- (void)reachabilityChangedForDevice:(id)device
{
  internalQueue = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B93C;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (BOOL)_cancelCoordinatorForInstallWithWatchBundleID:(id)d
{
  v8 = NSLocalizedDescriptionKey;
  v9 = @"Canceled by user";
  dCopy = d;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [NSError errorWithDomain:@"ACXErrorDomain" code:6 userInfo:v5];

  LOBYTE(self) = [(ACXLocalAppStoreInstallQueue *)self _cancelCoordinatorForInstallWithWatchBundleID:dCopy withReason:v6];
  return self;
}

- (BOOL)_cancelCoordinatorForInstallWithWatchBundleID:(id)d withReason:(id)reason
{
  dCopy = d;
  v9 = 0;
  v6 = [IXAppInstallCoordinator cancelCoordinatorForAppWithBundleID:dCopy withReason:reason client:4 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    MOLogWrite();
  }

  return v6;
}

- (BOOL)cancelInstallForWatchAppBundleID:(id)d
{
  dCopy = d;
  v8 = sub_100001B04("[ACXLocalAppStoreInstallQueue cancelInstallForWatchAppBundleID:]", 160, @"ACXErrorDomain", 6, @"Cancelled", v5, v6, v7, v10);
  LOBYTE(self) = [(ACXLocalAppStoreInstallQueue *)self reportExternalInstallFailureForWatchAppBundleID:dCopy failureReason:v8];

  return self;
}

- (BOOL)_onQueue_reportExternalInstallFailureForWatchAppBundleID:(id)d failureReason:(id)reason
{
  dCopy = d;
  reasonCopy = reason;
  internalQueue = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  currentInstall = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
  v10 = [currentInstall app];
  bundleIdentifier = [v10 bundleIdentifier];

  if (bundleIdentifier && [bundleIdentifier isEqualToString:dCopy])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v26 = dCopy;
      v27 = reasonCopy;
      MOLogWrite();
    }

    v12 = [(ACXLocalAppStoreInstallQueue *)self currentCompletionBlock:v26];
    if (v12)
    {
      v13 = qos_class_self();
      v14 = dispatch_get_global_queue(v13, 0);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10001C06C;
      v31[3] = &unk_10008CCD8;
      v33 = v12;
      v32 = reasonCopy;
      sub_100005828(v14, v31);

      [(ACXLocalAppStoreInstallQueue *)self setCurrentCompletionBlock:0];
    }

    [(ACXLocalAppStoreInstallQueue *)self _cancelCoordinatorForInstallWithWatchBundleID:dCopy withReason:reasonCopy];
    currentInstallCoordinator = [(ACXLocalAppStoreInstallQueue *)self currentInstallCoordinator];

    if (currentInstallCoordinator)
    {
      [(ACXLocalAppStoreInstallQueue *)self _onQueue_clearCurrentInstallCoordinator];
      [(ACXLocalAppStoreInstallQueue *)self _onQueue_deQueueNextOperation];
    }

    else
    {
      [(ACXLocalAppStoreInstallQueue *)self setCancelCurrentOperation:1];
    }

LABEL_17:

    v18 = 1;
    goto LABEL_18;
  }

  installQueue = [(ACXLocalAppStoreInstallQueue *)self installQueue];
  v17 = [(ACXLocalAppStoreInstallQueue *)self _onQueue_indexOfInstallOperationWithWatchBundleID:dCopy inQueue:installQueue];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    installQueue2 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
    v12 = [installQueue2 objectAtIndexedSubscript:v17];

    completion = [v12 completion];
    v21 = qos_class_self();
    v22 = dispatch_get_global_queue(v21, 0);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10001C080;
    v28[3] = &unk_10008CCD8;
    v23 = completion;
    v30 = v23;
    v29 = reasonCopy;
    sub_100005828(v22, v28);

    installQueue3 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
    [installQueue3 removeObjectAtIndex:v17];

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    goto LABEL_17;
  }

  v18 = 0;
LABEL_18:

  return v18;
}

- (BOOL)reportExternalInstallFailureForWatchAppBundleID:(id)d failureReason:(id)reason
{
  dCopy = d;
  reasonCopy = reason;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001C1BC;
  v12[3] = &unk_10008D4E8;
  v12[4] = self;
  v13 = dCopy;
  v14 = reasonCopy;
  v15 = &v16;
  v9 = reasonCopy;
  v10 = dCopy;
  dispatch_sync(internalQueue, v12);

  LOBYTE(reasonCopy) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return reasonCopy;
}

- (void)cancelAllPendingInstalls
{
  internalQueue = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C27C;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_onQueue_clearCurrentInstallCoordinator
{
  internalQueue = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  currentInstallCoordinator = [(ACXLocalAppStoreInstallQueue *)self currentInstallCoordinator];
  [currentInstallCoordinator setObserver:0];

  [(ACXLocalAppStoreInstallQueue *)self setCurrentInstallCoordinator:0];
}

- (unint64_t)_onQueue_countPending
{
  installQueue = [(ACXLocalAppStoreInstallQueue *)self installQueue];
  v3 = [installQueue count];

  return v3;
}

- (void)_onQueue_startQueue
{
  if ([(ACXLocalAppStoreInstallQueue *)self isSuspended])
  {
    sub_100059D7C();
  }

  [(ACXLocalAppStoreInstallQueue *)self activeTransaction];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_100059D50();
  }

  v3 = os_transaction_create();
  [(ACXLocalAppStoreInstallQueue *)self setActiveTransaction:v3];

  [(ACXLocalAppStoreInstallQueue *)self _createInstallationSentinel];

  [(ACXLocalAppStoreInstallQueue *)self _onQueue_deQueueNextOperation];
}

- (void)_onQueue_stopQueue
{
  activeTransaction = [(ACXLocalAppStoreInstallQueue *)self activeTransaction];
  if (!activeTransaction)
  {
    sub_100059DD4();
  }

  [(ACXLocalAppStoreInstallQueue *)self setActiveTransaction:0];
  [(ACXLocalAppStoreInstallQueue *)self _removeInstallationSentinel];
  currentInstall = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
  if (!currentInstall)
  {
    sub_100059DA8();
  }

  [(ACXLocalAppStoreInstallQueue *)self setCurrentInstall:0];
  [(ACXLocalAppStoreInstallQueue *)self _onQueue_clearCurrentInstallCoordinator];

  [(ACXLocalAppStoreInstallQueue *)self setCancelCurrentOperation:0];
}

- (void)_onQueue_deQueueNextOperation
{
  installQueue = [(ACXLocalAppStoreInstallQueue *)self installQueue];
  v4 = [installQueue count];

  if (!v4)
  {
    [(ACXLocalAppStoreInstallQueue *)self isSuspended];
    goto LABEL_19;
  }

  installQueue2 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
  if (![(ACXLocalAppStoreInstallQueue *)self isSuspended]|| !installQueue2)
  {
    if (installQueue2)
    {
      v5 = [installQueue2 objectAtIndex:0];
      [installQueue2 removeObjectAtIndex:0];
      v6 = [v5 app];
      bundleIdentifier = [v6 bundleIdentifier];

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v25 = bundleIdentifier;
        _onQueue_countPending = [(ACXLocalAppStoreInstallQueue *)self _onQueue_countPending];
        MOLogWrite();
      }

      [(ACXLocalAppStoreInstallQueue *)self setCancelCurrentOperation:0, v25, _onQueue_countPending];
      [(ACXLocalAppStoreInstallQueue *)self setCurrentInstall:v5];
      [(ACXLocalAppStoreInstallQueue *)self _onQueue_clearCurrentInstallCoordinator];
      currentInstall = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
      completion = [currentInstall completion];
      [(ACXLocalAppStoreInstallQueue *)self setCurrentCompletionBlock:completion];

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v26 = bundleIdentifier;
        MOLogWrite();
      }

      v10 = [v5 app];
      storeMetadata = [v10 storeMetadata];

      if (storeMetadata)
      {
        [storeMetadata setSoftwareVersionBundleID:bundleIdentifier];
        v13 = [ASDWatchAppMetadata metadataFromStoreMetadata:storeMetadata];
        if (v13)
        {
          v15 = v13;
          [v13 setUserInitiated:{objc_msgSend(v5, "isUserInitiated")}];
          v16 = os_transaction_create();
          device = [(ACXLocalAppStoreInstallQueue *)self device];
          nrDevice = [device nrDevice];
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_10001CB48;
          v32[3] = &unk_10008D578;
          v33 = v16;
          selfCopy = self;
          v35 = bundleIdentifier;
          v36 = v5;
          v19 = v16;
          [ASDInstallApps installApp:v15 onPairedDevice:nrDevice withCompletionHandler:v32];

LABEL_29:
          return;
        }

        sub_1000061DC("[ACXLocalAppStoreInstallQueue _onQueue_deQueueNextOperation]", 318, @"ACXErrorDomain", 1, 0, 0, @"Failed to instantiate ASDWatchAppMetadata with MIStoreMetadata %@ for %@", v14, storeMetadata);
      }

      else
      {
        sub_1000061DC("[ACXLocalAppStoreInstallQueue _onQueue_deQueueNextOperation]", 309, @"ACXErrorDomain", 51, 0, 0, @"Failed to load metadata for app %@", v12, bundleIdentifier);
      }
      v20 = ;
      currentCompletionBlock = [(ACXLocalAppStoreInstallQueue *)self currentCompletionBlock];
      [(ACXLocalAppStoreInstallQueue *)self setCurrentCompletionBlock:0];
      v22 = qos_class_self();
      v23 = dispatch_get_global_queue(v22, 0);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10001CFC0;
      v29[3] = &unk_10008CCD8;
      v30 = v20;
      v31 = currentCompletionBlock;
      v15 = v20;
      v24 = currentCompletionBlock;
      sub_100005828(v23, v29);

      [(ACXLocalAppStoreInstallQueue *)self _onQueue_deQueueNextOperation];
      goto LABEL_29;
    }

LABEL_19:
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [(ACXLocalAppStoreInstallQueue *)self _onQueue_stopQueue];
    installQueue2 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
    if ([installQueue2 count])
    {
      sub_100059E00();
    }

    goto LABEL_23;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  [(ACXLocalAppStoreInstallQueue *)self _onQueue_stopQueue];
LABEL_23:
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
      v9 = [v8 app];
      bundleIdentifier = [v9 bundleIdentifier];
      v11 = [bundleIdentifier isEqualToString:dCopy];

      if (v11)
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
  v7 = [(ACXLocalAppStoreInstallQueue *)self _onQueue_indexOfInstallOperationWithWatchBundleID:d inQueue:queueCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [queueCopy removeObjectAtIndex:v7];
  }

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_createInstallationSentinel
{
  _installationSentinelFileURL = [(ACXLocalAppStoreInstallQueue *)self _installationSentinelFileURL];
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
  _installationSentinelFileURL = [(ACXLocalAppStoreInstallQueue *)self _installationSentinelFileURL];
  [v4 removeItemAtURL:_installationSentinelFileURL error:0];
}

- (id)_installationSentinelFileURL
{
  v2 = sub_100006798();
  v3 = [v2 URLByAppendingPathComponent:@"local_appstore_install_in_progress" isDirectory:0];

  return v3;
}

- (id)_onQueue_queueElementForApp:(id)app isCurrentInstall:(BOOL *)install
{
  appCopy = app;
  currentInstall = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
  v8 = [currentInstall app];
  bundleIdentifier = [v8 bundleIdentifier];
  v10 = [bundleIdentifier isEqualToString:appCopy];

  if (v10)
  {
    if (install)
    {
      *install = 1;
    }

    currentInstall2 = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    installQueue = [(ACXLocalAppStoreInstallQueue *)self installQueue];
    v13 = [installQueue countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(installQueue);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v17 app];
          bundleIdentifier2 = [v18 bundleIdentifier];
          v20 = [bundleIdentifier2 isEqualToString:appCopy];

          if (v20)
          {
            if (install)
            {
              *install = 0;
            }

            currentInstall2 = v17;

            goto LABEL_17;
          }
        }

        v14 = [installQueue countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    currentInstall2 = 0;
  }

LABEL_17:

  return currentInstall2;
}

- (BOOL)_onQueue_installIsPendingForWatchApp:(id)app
{
  appCopy = app;
  currentInstall = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
  v6 = [currentInstall app];
  bundleIdentifier = [v6 bundleIdentifier];
  v8 = [bundleIdentifier isEqualToString:appCopy];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    installQueue = [(ACXLocalAppStoreInstallQueue *)self installQueue];
    v9 = [(ACXLocalAppStoreInstallQueue *)self _onQueue_indexOfInstallOperationWithWatchBundleID:appCopy inQueue:installQueue]!= 0x7FFFFFFFFFFFFFFFLL;
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
  internalQueue = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D660;
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

- (void)acknowledgeInstallationStartedForWatchApp:(id)app
{
  appCopy = app;
  internalQueue = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D74C;
  v7[3] = &unk_10008CC38;
  v8 = appCopy;
  selfCopy = self;
  v6 = appCopy;
  sub_100005828(internalQueue, v7);
}

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  coordinatorCopy = coordinator;
  reasonCopy = reason;
  internalQueue = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001D97C;
  v13[3] = &unk_10008CF40;
  v13[4] = self;
  v14 = coordinatorCopy;
  v15 = reasonCopy;
  clientCopy = client;
  v11 = reasonCopy;
  v12 = coordinatorCopy;
  dispatch_sync(internalQueue, v13);
}

@end