@interface _InstallationService_XDC
- (_InstallationService_XDC)init;
- (void)_handleDevicesDidChangeNotification:(id)notification;
- (void)_handleInstallMessage:(id)message fromDevice:(id)device;
- (void)_handleProgressMessage:(id)message fromDevice:(id)device;
- (void)_handleRegisterAppMessage:(id)message fromDevice:(id)device;
- (void)dealloc;
- (void)installEnterpriseApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler;
- (void)installSystemApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler;
- (void)installTestFlightApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler;
- (void)installWatchApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler;
@end

@implementation _InstallationService_XDC

- (_InstallationService_XDC)init
{
  v7.receiver = self;
  v7.super_class = _InstallationService_XDC;
  _init = [(InstallationService *)&v7 _init];
  if (_init)
  {
    v3 = sub_1002EB36C();
    v4 = *(_init + 7);
    *(_init + 7) = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:_init selector:"_handleDevicesDidChangeNotification:" name:@"XDCServiceDevicesDidChangeNotification" object:*(_init + 7)];
    sub_1002EB6D8(*(_init + 7), _init, "_handleInstallMessage:fromDevice:", 2);
    sub_1002EB6D8(*(_init + 7), _init, "_handleProgressMessage:fromDevice:", 4);
    sub_1002EB6D8(*(_init + 7), _init, "_handleRegisterAppMessage:fromDevice:", 5);
  }

  return _init;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"XDCServiceDevicesDidChangeNotification" object:self->_service];

  v4.receiver = self;
  v4.super_class = _InstallationService_XDC;
  [(InstallationService *)&v4 dealloc];
}

- (void)installEnterpriseApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler
{
  appsCopy = apps;
  deviceCopy = device;
  handlerCopy = handler;
  v11 = sub_100003B90();
  dispatchQueue = self->super._dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001F8114;
  v17[3] = &unk_10051C9C0;
  v18 = deviceCopy;
  v19 = appsCopy;
  v21 = v11;
  v22 = handlerCopy;
  selfCopy = self;
  v13 = v11;
  v14 = handlerCopy;
  v15 = appsCopy;
  v16 = deviceCopy;
  sub_100005D90(dispatchQueue, v17);
}

- (void)installSystemApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler
{
  appsCopy = apps;
  deviceCopy = device;
  handlerCopy = handler;
  v11 = sub_100003B90();
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = sub_1003FA4F0(XPCRequestToken, 0);
  }

  v14 = v13;

  if (deviceCopy)
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        Property = objc_getProperty(v14, v16, 32, 1);
      }

      else
      {
        Property = 0;
      }

      v18 = Property;
      processInfo = [v14 processInfo];
      bundleIdentifier = [processInfo bundleIdentifier];
      *buf = 138412802;
      v38 = v18;
      v39 = 2114;
      v40 = bundleIdentifier;
      v41 = 2114;
      v42 = deviceCopy;
      v21 = "[%@] Received system app install request for clientID: %{public}@ paringID: %{public}@";
      v22 = v15;
      v23 = 32;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }
  }

  else
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v25 = objc_getProperty(v14, v24, 32, 1);
      }

      else
      {
        v25 = 0;
      }

      v18 = v25;
      processInfo = [v14 processInfo];
      bundleIdentifier = [processInfo bundleIdentifier];
      *buf = 138543618;
      v38 = v18;
      v39 = 2114;
      v40 = bundleIdentifier;
      v21 = "[InstallationService][%{public}@] Received request to install system apps for clientID: %{public}@";
      v22 = v15;
      v23 = 22;
      goto LABEL_13;
    }
  }

  dispatchQueue = self->super._dispatchQueue;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001F87F0;
  v31[3] = &unk_10051C9E8;
  v32 = deviceCopy;
  v33 = appsCopy;
  selfCopy = self;
  v35 = v14;
  v36 = handlerCopy;
  v27 = handlerCopy;
  v28 = v14;
  v29 = appsCopy;
  v30 = deviceCopy;
  sub_100005D90(dispatchQueue, v31);
}

- (void)installTestFlightApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler
{
  appsCopy = apps;
  deviceCopy = device;
  handlerCopy = handler;
  v11 = sub_100003B90();
  dispatchQueue = self->super._dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001F8DE8;
  v17[3] = &unk_10051C9C0;
  v18 = deviceCopy;
  v19 = appsCopy;
  v21 = v11;
  v22 = handlerCopy;
  selfCopy = self;
  v13 = v11;
  v14 = handlerCopy;
  v15 = appsCopy;
  v16 = deviceCopy;
  sub_100005D90(dispatchQueue, v17);
}

- (void)installWatchApps:(id)apps onPairedDevice:(id)device withReplyHandler:(id)handler
{
  appsCopy = apps;
  deviceCopy = device;
  handlerCopy = handler;
  v11 = sub_100003B90();
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    processInfo = [v11 processInfo];
    bundleIdentifier = [processInfo bundleIdentifier];
    *buf = 138543874;
    v27 = v11;
    v28 = 2114;
    v29 = bundleIdentifier;
    v30 = 2114;
    v31 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received request from %{public}@ to install watch apps on %{public}@", buf, 0x20u);
  }

  dispatchQueue = self->super._dispatchQueue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001F91D4;
  v20[3] = &unk_10051C9C0;
  v21 = deviceCopy;
  v22 = appsCopy;
  v24 = v11;
  v25 = handlerCopy;
  selfCopy = self;
  v16 = v11;
  v17 = handlerCopy;
  v18 = appsCopy;
  v19 = deviceCopy;
  sub_100005D90(dispatchQueue, v20);
}

- (void)_handleDevicesDidChangeNotification:(id)notification
{
  v4 = +[NSMutableDictionary dictionary];
  databaseStore = self->super._databaseStore;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001F9800;
  v12[3] = &unk_10051CA88;
  v6 = v4;
  v13 = v6;
  v7 = objc_retainBlock(v12);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F9BBC;
  v9[3] = &unk_10051B768;
  v10 = v6;
  selfCopy = self;
  v8 = v6;
  [(AppInstallsDatabaseStore *)databaseStore asyncReadUsingSession:v7 completion:v9];
}

- (void)_handleInstallMessage:(id)message fromDevice:(id)device
{
  selfa = message;
  deviceCopy = device;
  v42 = sub_1003FA4F0(XPCRequestToken, 0);
  v7 = [XDCInstallRequest alloc];
  Property = selfa;
  if (selfa)
  {
    Property = objc_getProperty(selfa, v6, 16, 1);
  }

  v9 = Property;
  v10 = [(XDCInstallRequest *)v7 initWithData:v9];

  if (v10)
  {
    metadatas = v10->_metadatas;
  }

  else
  {
    metadatas = 0;
  }

  v12 = metadatas;
  v13 = sub_10036F9FC(v12, &stru_10051CB10);

  v40 = [v13 objectForKeyedSubscript:&off_1005470B0];
  if ([v40 count])
  {
    v14 = sub_1003BA348(InstallEnterpriseAppsTask, v40, v42);
    taskQueue = self->super._taskQueue;
    v61 = v14;
    v16 = [NSArray arrayWithObjects:&v61 count:1];
    if (taskQueue)
    {
      [(NSOperationQueue *)taskQueue->_operationQueue addOperations:v16 waitUntilFinished:1];
    }
  }

  v17 = [v13 objectForKeyedSubscript:&off_100547068];
  if ([v17 count])
  {
    v18 = sub_1003470A8(InstallSystemAppsTask, v17);
    v19 = self->super._taskQueue;
    v60 = v18;
    v20 = [NSArray arrayWithObjects:&v60 count:1];
    if (v19)
    {
      [(NSOperationQueue *)v19->_operationQueue addOperations:v20 waitUntilFinished:1];
    }
  }

  v21 = [v13 objectForKeyedSubscript:&off_100547080];
  if ([v21 count])
  {
    v22 = sub_1002D8BB4(InstallTestFlightAppsTask, v21);
    v23 = self->super._taskQueue;
    v59 = v22;
    v24 = [NSArray arrayWithObjects:&v59 count:1];
    if (v23)
    {
      [(NSOperationQueue *)v23->_operationQueue addOperations:v24 waitUntilFinished:1];
    }
  }

  v25 = [v13 objectForKeyedSubscript:&off_100547098];
  if ([v25 count])
  {
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = sub_1001F9A38;
    v56[4] = sub_1001F9A48;
    v57 = 0;
    dispatchQueue = self->super._dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001FA588;
    block[3] = &unk_10051B638;
    block[4] = self;
    block[5] = v56;
    dispatch_sync(dispatchQueue, block);
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = sub_1001F9A38;
    v53 = sub_1001F9A48;
    v54 = 0;
    v27 = dispatch_semaphore_create(0);
    v28 = +[BagService appstoredService];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001FA5D4;
    v43[3] = &unk_10051CB38;
    v47 = &v49;
    v44 = v25;
    v45 = v42;
    v48 = v56;
    v29 = v27;
    v46 = v29;
    [v28 upToDateBagWithCompletionHandler:v43];

    dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
    if (v50[5])
    {
      v30 = self->super._taskQueue;
      v58 = v50[5];
      v31 = [NSArray arrayWithObjects:&v58 count:1];
      if (v30)
      {
        [(NSOperationQueue *)v30->_operationQueue addOperations:v31 waitUntilFinished:1];
      }
    }

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(v56, 8);
  }

  if (v10)
  {
    v32 = v10->_metadatas;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  v34 = sub_10036FDEC(v33, &stru_10051CB78);

  v35 = sub_1003862F8(XDCInstallResponse, v34);
  v36 = sub_100342264(selfa, v35, 6);
  v37 = sub_1002EB36C();
  v38 = v37;
  if (v37)
  {
    sub_1002EB834(v37, v36, deviceCopy, 0, 0);
  }
}

- (void)_handleProgressMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  v24 = sub_1003FA4F0(XPCRequestToken, 0);
  v6 = [XDCProgressMessage alloc];
  if (messageCopy)
  {
    Property = objc_getProperty(messageCopy, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = Property;
  v9 = [(XDCProgressMessage *)v6 initWithData:v8];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = v9;
  v23 = messageCopy;
  if (v9)
  {
    progress = v9->_progress;
  }

  else
  {
    progress = 0;
  }

  v11 = progress;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        if (v16)
        {
          v17 = *(v16 + 24);
          if (v17)
          {
            v18 = objc_opt_new();
            [v18 setBundleID:{v17, v22, v23}];
            [v18 setCompletedUnitCount:*(v16 + 8)];
            [v18 setTotalUnitCount:*(v16 + 16)];
            [v18 setReportRemotely:1];
            v19 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v30 = v24;
              v31 = 2114;
              v32 = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Received remote progress: %{public}@", buf, 0x16u);
            }

            v20 = sub_100003984();
            sub_1003B8364(v20, v18);
          }
        }

        else
        {
          v17 = 0;
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v21 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
      v13 = v21;
    }

    while (v21);
  }
}

- (void)_handleRegisterAppMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  v5 = sub_1003FA4F0(XPCRequestToken, 0);
  v7 = [XDCRegisterAppMessage alloc];
  if (messageCopy)
  {
    Property = objc_getProperty(messageCopy, v6, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;
  v10 = [(XDCRegisterAppMessage *)v7 initWithData:v9];

  v11 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = v10;
  v25 = messageCopy;
  if (v10)
  {
    metadatas = v10->_metadatas;
  }

  else
  {
    metadatas = 0;
  }

  v13 = metadatas;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = sub_100283A8C(*(*(&v26 + 1) + 8 * i));
        v19 = objc_alloc_init(ASDProgress);
        bundleID = [v18 bundleID];
        [v19 setBundleID:bundleID];

        [v19 setCompletedUnitCount:-1];
        [v19 setTotalUnitCount:1000];
        [v19 setReportRemotely:1];
        [v18 setRemoteProgress:v19];
        v21 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v31 = v5;
          v32 = 2114;
          v33 = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Received remote register: %{public}@", buf, 0x16u);
        }

        [v11 addObject:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  if ([v11 count])
  {
    v22 = sub_1002A24AC(ASDNotification, v11);
    v23 = sub_100003984();
    sub_1003B8178(v23, v22);
  }
}

@end