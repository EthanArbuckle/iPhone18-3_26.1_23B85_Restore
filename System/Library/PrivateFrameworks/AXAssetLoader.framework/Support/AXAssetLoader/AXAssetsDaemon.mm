@interface AXAssetsDaemon
+ (id)sharedInstance;
- (id)_init;
- (id)_managedAssetForAssetType:(id)a3;
- (void)_handleDarwinNotification:(id)a3;
- (void)_updateAssetForAssetType:(id)a3;
- (void)registerManagedAsset:(id)a3;
- (void)registerManagedAssets:(id)a3;
- (void)run;
- (void)willBecomeIdle:(id)a3 completion:(id)a4;
@end

@implementation AXAssetsDaemon

+ (id)sharedInstance
{
  if (qword_10001E028 != -1)
  {
    sub_10000DCE0();
  }

  v3 = qword_10001E020;

  return v3;
}

- (id)_init
{
  v16.receiver = self;
  v16.super_class = AXAssetsDaemon;
  v2 = [(AXAssetsDaemon *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(AXAssetsActivityTransactionManager);
    [(AXAssetsDaemon *)v2 setActivityTransactionManager:v3];

    v4 = [(AXAssetsDaemon *)v2 activityTransactionManager];
    [v4 setDelegate:v2];

    v5 = objc_alloc_init(NSMutableArray);
    [(AXAssetsDaemon *)v2 setManagedAssets:v5];

    v6 = objc_alloc_init(AXAssetsXPCServer);
    [(AXAssetsDaemon *)v2 setXpcServer:v6];

    v7 = objc_alloc_init(_TtC9axassetsd19VoiceManagerWrapper);
    [(AXAssetsDaemon *)v2 setVoiceManager:v7];

    objc_initWeak(&location, v2);
    xpcServer = v2->_xpcServer;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000058E8;
    v13[3] = &unk_100018878;
    objc_copyWeak(&v14, &location);
    [(AXAssetsXPCServer *)xpcServer setRefreshAssetCatalogForAssetTypeHandler:v13];
    v9 = v2->_xpcServer;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005968;
    v11[3] = &unk_1000188A0;
    objc_copyWeak(&v12, &location);
    [(AXAssetsXPCServer *)v9 setUpdateAssetForAssetTypeHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)registerManagedAsset:(id)a3
{
  v4 = a3;
  v5 = [(AXAssetsDaemon *)self managedAssets];
  [v5 addObject:v4];
}

- (void)registerManagedAssets:(id)a3
{
  v4 = a3;
  v5 = [(AXAssetsDaemon *)self managedAssets];
  [v5 addObjectsFromArray:v4];
}

- (void)run
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100005D24;
  v24 = sub_100005D34;
  v25 = dispatch_semaphore_create(0);
  v3 = [(AXAssetsDaemon *)self voiceManager];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005D3C;
  v19[3] = &unk_100018728;
  v19[4] = &v20;
  [v3 run:v19];

  dispatch_semaphore_wait(v21[5], 0xFFFFFFFFFFFFFFFFLL);
  objc_initWeak(&location, self);
  notificationQueue = self->_notificationQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100005D4C;
  handler[3] = &unk_1000188C8;
  objc_copyWeak(&v17, &location);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", notificationQueue, handler);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(AXAssetsDaemon *)self managedAssets];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v26 count:16];
  if (v6)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * i) checkInAssetUpdateXPCActivity];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v26 count:16];
    }

    while (v6);
  }

  v7 = [(AXAssetsDaemon *)self xpcServer];
  [v7 startServer];

  v8 = AXLogAssetDaemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Bootstrap complete. Will enter event loop.", v11, 2u);
  }

  dispatch_main();
}

- (void)_handleDarwinNotification:(id)a3
{
  v4 = a3;
  v5 = [(AXAssetsDaemon *)self voiceManager];
  [v5 handleDarwinNotification:v4 completion:&stru_1000188E8];
}

- (id)_managedAssetForAssetType:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(AXAssetsDaemon *)self managedAssets];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 policy];
        v11 = [v10 assetType];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_updateAssetForAssetType:(id)a3
{
  v4 = [(AXAssetsDaemon *)self _managedAssetForAssetType:a3];
  v3 = +[AXManagedAssetTaskContext contextWithXPCClient];
  [v4 enqueueAssetUpdateTaskWithContext:v3];
}

- (void)willBecomeIdle:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000061C4;
  block[3] = &unk_100018910;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

@end