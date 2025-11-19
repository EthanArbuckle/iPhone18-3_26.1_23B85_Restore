@interface ACXLocalAppStoreInstallQueue
- (ACXLocalAppStoreInstallQueue)initWithDevice:(id)a3;
- (BOOL)_cancelCoordinatorForInstallWithWatchBundleID:(id)a3;
- (BOOL)_cancelCoordinatorForInstallWithWatchBundleID:(id)a3 withReason:(id)a4;
- (BOOL)_onQueue_installIsPendingForWatchApp:(id)a3;
- (BOOL)_onQueue_removeInstallOperationWithWatchBundleID:(id)a3 fromQueue:(id)a4;
- (BOOL)_onQueue_reportExternalInstallFailureForWatchAppBundleID:(id)a3 failureReason:(id)a4;
- (BOOL)cancelInstallForWatchAppBundleID:(id)a3;
- (BOOL)installIsPendingForWatchApp:(id)a3;
- (BOOL)reportExternalInstallFailureForWatchAppBundleID:(id)a3 failureReason:(id)a4;
- (id)_installationSentinelFileURL;
- (id)_onQueue_queueElementForApp:(id)a3 isCurrentInstall:(BOOL *)a4;
- (unint64_t)_onQueue_countPending;
- (unint64_t)_onQueue_indexOfInstallOperationWithWatchBundleID:(id)a3 inQueue:(id)a4;
- (void)_createInstallationSentinel;
- (void)_onQueue_clearCurrentInstallCoordinator;
- (void)_onQueue_deQueueNextOperation;
- (void)_onQueue_startQueue;
- (void)_onQueue_stopQueue;
- (void)_removeInstallationSentinel;
- (void)acknowledgeInstallationStartedForWatchApp:(id)a3;
- (void)cancelAllPendingInstalls;
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)dealloc;
- (void)installWatchApp:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5;
- (void)reachabilityChangedForDevice:(id)a3;
@end

@implementation ACXLocalAppStoreInstallQueue

- (ACXLocalAppStoreInstallQueue)initWithDevice:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ACXLocalAppStoreInstallQueue;
  v6 = [(ACXLocalAppStoreInstallQueue *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [(ACXLocalAppStoreInstallQueue *)v7 device];
    [v8 addObserver:v7];

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
  v3 = [(ACXLocalAppStoreInstallQueue *)self device];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ACXLocalAppStoreInstallQueue;
  [(ACXLocalAppStoreInstallQueue *)&v4 dealloc];
}

- (void)installWatchApp:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001B510;
  v13[3] = &unk_10008D510;
  v14 = v8;
  v15 = self;
  v17 = a4;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  sub_100005828(v10, v13);
}

- (void)reachabilityChangedForDevice:(id)a3
{
  v4 = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B93C;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (BOOL)_cancelCoordinatorForInstallWithWatchBundleID:(id)a3
{
  v8 = NSLocalizedDescriptionKey;
  v9 = @"Canceled by user";
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [NSError errorWithDomain:@"ACXErrorDomain" code:6 userInfo:v5];

  LOBYTE(self) = [(ACXLocalAppStoreInstallQueue *)self _cancelCoordinatorForInstallWithWatchBundleID:v4 withReason:v6];
  return self;
}

- (BOOL)_cancelCoordinatorForInstallWithWatchBundleID:(id)a3 withReason:(id)a4
{
  v5 = a3;
  v9 = 0;
  v6 = [IXAppInstallCoordinator cancelCoordinatorForAppWithBundleID:v5 withReason:a4 client:4 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    MOLogWrite();
  }

  return v6;
}

- (BOOL)cancelInstallForWatchAppBundleID:(id)a3
{
  v4 = a3;
  v8 = sub_100001B04("[ACXLocalAppStoreInstallQueue cancelInstallForWatchAppBundleID:]", 160, @"ACXErrorDomain", 6, @"Cancelled", v5, v6, v7, v10);
  LOBYTE(self) = [(ACXLocalAppStoreInstallQueue *)self reportExternalInstallFailureForWatchAppBundleID:v4 failureReason:v8];

  return self;
}

- (BOOL)_onQueue_reportExternalInstallFailureForWatchAppBundleID:(id)a3 failureReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
  v10 = [v9 app];
  v11 = [v10 bundleIdentifier];

  if (v11 && [v11 isEqualToString:v6])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v26 = v6;
      v27 = v7;
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
      v32 = v7;
      sub_100005828(v14, v31);

      [(ACXLocalAppStoreInstallQueue *)self setCurrentCompletionBlock:0];
    }

    [(ACXLocalAppStoreInstallQueue *)self _cancelCoordinatorForInstallWithWatchBundleID:v6 withReason:v7];
    v15 = [(ACXLocalAppStoreInstallQueue *)self currentInstallCoordinator];

    if (v15)
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

  v16 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
  v17 = [(ACXLocalAppStoreInstallQueue *)self _onQueue_indexOfInstallOperationWithWatchBundleID:v6 inQueue:v16];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
    v12 = [v19 objectAtIndexedSubscript:v17];

    v20 = [v12 completion];
    v21 = qos_class_self();
    v22 = dispatch_get_global_queue(v21, 0);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10001C080;
    v28[3] = &unk_10008CCD8;
    v23 = v20;
    v30 = v23;
    v29 = v7;
    sub_100005828(v22, v28);

    v24 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
    [v24 removeObjectAtIndex:v17];

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

- (BOOL)reportExternalInstallFailureForWatchAppBundleID:(id)a3 failureReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001C1BC;
  v12[3] = &unk_10008D4E8;
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

- (void)cancelAllPendingInstalls
{
  v3 = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C27C;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_onQueue_clearCurrentInstallCoordinator
{
  v3 = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ACXLocalAppStoreInstallQueue *)self currentInstallCoordinator];
  [v4 setObserver:0];

  [(ACXLocalAppStoreInstallQueue *)self setCurrentInstallCoordinator:0];
}

- (unint64_t)_onQueue_countPending
{
  v2 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
  v3 = [v2 count];

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
  v3 = [(ACXLocalAppStoreInstallQueue *)self activeTransaction];
  if (!v3)
  {
    sub_100059DD4();
  }

  [(ACXLocalAppStoreInstallQueue *)self setActiveTransaction:0];
  [(ACXLocalAppStoreInstallQueue *)self _removeInstallationSentinel];
  v4 = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
  if (!v4)
  {
    sub_100059DA8();
  }

  [(ACXLocalAppStoreInstallQueue *)self setCurrentInstall:0];
  [(ACXLocalAppStoreInstallQueue *)self _onQueue_clearCurrentInstallCoordinator];

  [(ACXLocalAppStoreInstallQueue *)self setCancelCurrentOperation:0];
}

- (void)_onQueue_deQueueNextOperation
{
  v3 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
  v4 = [v3 count];

  if (!v4)
  {
    [(ACXLocalAppStoreInstallQueue *)self isSuspended];
    goto LABEL_19;
  }

  v28 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
  if (![(ACXLocalAppStoreInstallQueue *)self isSuspended]|| !v28)
  {
    if (v28)
    {
      v5 = [v28 objectAtIndex:0];
      [v28 removeObjectAtIndex:0];
      v6 = [v5 app];
      v7 = [v6 bundleIdentifier];

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v25 = v7;
        v27 = [(ACXLocalAppStoreInstallQueue *)self _onQueue_countPending];
        MOLogWrite();
      }

      [(ACXLocalAppStoreInstallQueue *)self setCancelCurrentOperation:0, v25, v27];
      [(ACXLocalAppStoreInstallQueue *)self setCurrentInstall:v5];
      [(ACXLocalAppStoreInstallQueue *)self _onQueue_clearCurrentInstallCoordinator];
      v8 = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
      v9 = [v8 completion];
      [(ACXLocalAppStoreInstallQueue *)self setCurrentCompletionBlock:v9];

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v26 = v7;
        MOLogWrite();
      }

      v10 = [v5 app];
      v11 = [v10 storeMetadata];

      if (v11)
      {
        [v11 setSoftwareVersionBundleID:v7];
        v13 = [ASDWatchAppMetadata metadataFromStoreMetadata:v11];
        if (v13)
        {
          v15 = v13;
          [v13 setUserInitiated:{objc_msgSend(v5, "isUserInitiated")}];
          v16 = os_transaction_create();
          v17 = [(ACXLocalAppStoreInstallQueue *)self device];
          v18 = [v17 nrDevice];
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_10001CB48;
          v32[3] = &unk_10008D578;
          v33 = v16;
          v34 = self;
          v35 = v7;
          v36 = v5;
          v19 = v16;
          [ASDInstallApps installApp:v15 onPairedDevice:v18 withCompletionHandler:v32];

LABEL_29:
          return;
        }

        sub_1000061DC("[ACXLocalAppStoreInstallQueue _onQueue_deQueueNextOperation]", 318, @"ACXErrorDomain", 1, 0, 0, @"Failed to instantiate ASDWatchAppMetadata with MIStoreMetadata %@ for %@", v14, v11);
      }

      else
      {
        sub_1000061DC("[ACXLocalAppStoreInstallQueue _onQueue_deQueueNextOperation]", 309, @"ACXErrorDomain", 51, 0, 0, @"Failed to load metadata for app %@", v12, v7);
      }
      v20 = ;
      v21 = [(ACXLocalAppStoreInstallQueue *)self currentCompletionBlock];
      [(ACXLocalAppStoreInstallQueue *)self setCurrentCompletionBlock:0];
      v22 = qos_class_self();
      v23 = dispatch_get_global_queue(v22, 0);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10001CFC0;
      v29[3] = &unk_10008CCD8;
      v30 = v20;
      v31 = v21;
      v15 = v20;
      v24 = v21;
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
    v28 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
    if ([v28 count])
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
      v9 = [v8 app];
      v10 = [v9 bundleIdentifier];
      v11 = [v10 isEqualToString:v5];

      if (v11)
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
  v7 = [(ACXLocalAppStoreInstallQueue *)self _onQueue_indexOfInstallOperationWithWatchBundleID:a3 inQueue:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 removeObjectAtIndex:v7];
  }

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_createInstallationSentinel
{
  v2 = [(ACXLocalAppStoreInstallQueue *)self _installationSentinelFileURL];
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
  v3 = [(ACXLocalAppStoreInstallQueue *)self _installationSentinelFileURL];
  [v4 removeItemAtURL:v3 error:0];
}

- (id)_installationSentinelFileURL
{
  v2 = sub_100006798();
  v3 = [v2 URLByAppendingPathComponent:@"local_appstore_install_in_progress" isDirectory:0];

  return v3;
}

- (id)_onQueue_queueElementForApp:(id)a3 isCurrentInstall:(BOOL *)a4
{
  v6 = a3;
  v7 = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
  v8 = [v7 app];
  v9 = [v8 bundleIdentifier];
  v10 = [v9 isEqualToString:v6];

  if (v10)
  {
    if (a4)
    {
      *a4 = 1;
    }

    v11 = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v17 app];
          v19 = [v18 bundleIdentifier];
          v20 = [v19 isEqualToString:v6];

          if (v20)
          {
            if (a4)
            {
              *a4 = 0;
            }

            v11 = v17;

            goto LABEL_17;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
  }

LABEL_17:

  return v11;
}

- (BOOL)_onQueue_installIsPendingForWatchApp:(id)a3
{
  v4 = a3;
  v5 = [(ACXLocalAppStoreInstallQueue *)self currentInstall];
  v6 = [v5 app];
  v7 = [v6 bundleIdentifier];
  v8 = [v7 isEqualToString:v4];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = [(ACXLocalAppStoreInstallQueue *)self installQueue];
    v9 = [(ACXLocalAppStoreInstallQueue *)self _onQueue_indexOfInstallOperationWithWatchBundleID:v4 inQueue:v10]!= 0x7FFFFFFFFFFFFFFFLL;
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
  v5 = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D660;
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

- (void)acknowledgeInstallationStartedForWatchApp:(id)a3
{
  v4 = a3;
  v5 = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D74C;
  v7[3] = &unk_10008CC38;
  v8 = v4;
  v9 = self;
  v6 = v4;
  sub_100005828(v5, v7);
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ACXLocalAppStoreInstallQueue *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001D97C;
  v13[3] = &unk_10008CF40;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, v13);
}

@end