@interface AMSDDaemonRunLoop
- (AMSDDaemonRunLoop)init;
- (BOOL)_performStartup;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_previousBuildVersion;
- (void)_clearDanglingCookieDatabasesWithCompletion:(id)completion;
- (void)_handleAccountChange;
- (void)_handleBiometricsProvisioningNotification;
- (void)_handleCachedDataUpdate;
- (void)_handleDeviceLanguageChangeNotification:(id)notification;
- (void)_handleNFCAccessoryNotification:(id)notification;
- (void)_setupAccountDataSync;
- (void)_setupMultiUser;
- (void)_setupNotifications;
- (void)_setupPollJobs;
- (void)_setupSignalHandlers;
- (void)_setupTSDataSync;
- (void)_startXPC;
- (void)_tearDownMultiUser;
- (void)_updateRegulatoryEligibility;
- (void)dealloc;
- (void)runUntilIdleExit;
@end

@implementation AMSDDaemonRunLoop

- (void)runUntilIdleExit
{
  if ([(AMSDDaemonRunLoop *)self _performStartup])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = AMSSetLogKey();
    if ((CFRunLoopRunInMode(kCFRunLoopDefaultMode, 15.0, 0) - 1) >= 2)
    {
      do
      {
        objc_autoreleasePoolPop(v2);
        v2 = objc_autoreleasePoolPush();
        v4 = AMSSetLogKey();
      }

      while ((CFRunLoopRunInMode(kCFRunLoopDefaultMode, 15.0, 0) - 1) > 1);
    }

    v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Idle-exit", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (AMSDDaemonRunLoop)init
{
  v6.receiver = self;
  v6.super_class = AMSDDaemonRunLoop;
  v2 = [(AMSDDaemonRunLoop *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    connections = v2->_connections;
    v2->_connections = v3;

    v2->_connectionsLock._os_unfair_lock_opaque = 0;
    [(AMSDDaemonRunLoop *)v2 _setupSignalHandlers];
  }

  return v2;
}

- (void)dealloc
{
  sigTermSource = self->_sigTermSource;
  if (sigTermSource)
  {
    dispatch_source_cancel(sigTermSource);
    v4 = self->_sigTermSource;
    self->_sigTermSource = 0;
  }

  v5.receiver = self;
  v5.super_class = AMSDDaemonRunLoop;
  [(AMSDDaemonRunLoop *)&v5 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = AMSSetLogKey();
  v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    processIdentifier = [connectionCopy processIdentifier];
    amsd_processName = [connectionCopy amsd_processName];
    *buf = 138544386;
    v41 = v9;
    v42 = 2114;
    v43 = v10;
    v44 = 1024;
    v45 = processIdentifier;
    v46 = 2114;
    v47 = amsd_processName;
    v48 = 2114;
    v49 = connectionCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received a new XPC connection. processID = %d | processName = %{public}@ | connection = %{public}@", buf, 0x30u);
  }

  serviceName = [connectionCopy serviceName];
  v14 = +[AMSDServiceConnection machServiceName];
  v15 = [serviceName isEqualToString:v14];

  if (!v15)
  {
    serviceName2 = [connectionCopy serviceName];
    v23 = +[AMSMultiUserService machServiceName];
    v24 = [serviceName2 isEqualToString:v23];

    if (v24)
    {
      if (([AMSMultiUserService isConnectionEntitled:connectionCopy]& 1) != 0)
      {
        v25 = +[AMSMultiUserService serviceInterface];
        [connectionCopy setExportedInterface:v25];

        v26 = +[AMSDMultiUserService sharedService];
        [connectionCopy setExportedObject:v26];

        [connectionCopy resume];
        goto LABEL_7;
      }

      v27 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v27)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v27 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = AMSLogKey();
        *buf = 138543618;
        v41 = v29;
        v42 = 2114;
        v43 = v30;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Connection interrupted (entitlements)", buf, 0x16u);
      }
    }

    v21 = 0;
    goto LABEL_17;
  }

  v16 = [[AMSDServiceConnection alloc] initWithConnection:connectionCopy];
  v17 = AMSLogKey();
  [(AMSDServiceConnection *)v16 setLogKey:v17];

  os_unfair_lock_lock_with_options();
  connections = [(AMSDDaemonRunLoop *)self connections];
  [connections addObject:v16];

  os_unfair_lock_unlock(&self->_connectionsLock);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100051514;
  v38[3] = &unk_1002B00E8;
  v38[4] = self;
  v19 = v16;
  v39 = v19;
  [connectionCopy setInterruptionHandler:v38];
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_100051578;
  v35 = &unk_1002B00E8;
  selfCopy = self;
  v37 = v19;
  v20 = v19;
  [connectionCopy setInvalidationHandler:&v32];
  [connectionCopy resume];

LABEL_7:
  v21 = 1;
LABEL_17:

  return v21;
}

- (void)_clearDanglingCookieDatabasesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = objc_opt_class();
    v10 = v9;
    if (v8)
    {
      v3 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v10, v3];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    *buf = 138543362;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Clearing dangling cookie databases", buf, 0xCu);
    if (v8)
    {

      v11 = v3;
    }
  }

  v12 = +[AMSCookieService sharedService];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000517D0;
  v14[3] = &unk_1002B0498;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [v12 clearDanglingCookieDatabasesWithCompletion:v14];
}

- (BOOL)_performStartup
{
  v3 = AMSSetLogKey();
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting daemon", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100051BE8;
  v9[3] = &unk_1002B04C0;
  v9[4] = self;
  [AMSDTransactionStore takeKeepAliveTransaction:@"com.apple.amsaccountsd.performStartup" whilePerformingBlock:v9];
  return 1;
}

- (void)_handleBiometricsProvisioningNotification
{
  v2 = AMSAccountMediaTypeProduction;
  v5 = [ACAccountStore ams_sharedAccountStoreForMediaType:v2];
  v3 = [v5 ams_activeiTunesAccountForMediaType:v2];

  v4 = [v3 thenWithBlock:&stru_1002B0500];
  [v3 waitUntilFinished];
}

- (void)_handleNFCAccessoryNotification:(id)notification
{
  notificationCopy = notification;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = AMSLogKey();
      v13 = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = notificationCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] NFC URL tag URL detected. Notification = %{public}@", &v13, 0x20u);
    }

    object = [notificationCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      object2 = [notificationCopy object];
      v11 = [NSURL URLWithString:object2];

      if (v11)
      {
        v12 = objc_alloc_init(AMSDNFCAccessory);
        [(AMSDNFCAccessory *)v12 handleInboundURL:v11];
      }
    }
  }
}

- (void)_handleDeviceLanguageChangeNotification:(id)notification
{
  v4 = objc_alloc_init(AMSDUpdateDeviceLanguageTask);
  perform = [(AMSDUpdateDeviceLanguageTask *)v4 perform];
}

- (id)_previousBuildVersion
{
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v2 = CFPreferencesCopyAppValue(@"SBLastSystemVersion", @"com.apple.springboard");
  if (!v2)
  {
    CFPreferencesAppSynchronize(@"com.apple.migration");
    v2 = CFPreferencesCopyAppValue(@"LastSystemVersion", @"com.apple.migration");
  }

  return v2;
}

- (void)_tearDownMultiUser
{
  v2 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Multi-User is shutting down", &v5, 0xCu);
  }

  v4 = +[AMSDMultiUserController sharedController];
  [v4 teardownMultiUser];
}

- (void)_setupMultiUser
{
  v4 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  v6 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = objc_opt_class();
    v9 = v8;
    if (v7)
    {
      v2 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    *buf = 138543362;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Setting up multi-user.", buf, 0xCu);
    if (v7)
    {

      v10 = v2;
    }

    v6 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
  }

  v11 = +[AMSDMultiUserController sharedController];
  cloudContainer = [v11 cloudContainer];

  if (cloudContainer)
  {
    v13 = +[AMSDMultiUserController sharedController];
    homeManager = [v13 homeManager];
    v34 = cloudContainer;
    v15 = [NSArray arrayWithObjects:&v34 count:1];
    [homeManager registerToAcceptCloudSharesForContainers:v15];
  }

  v16 = +[AMSDMultiUserService sharedService];
  v17 = +[AMSLogConfig sharedAccountsMultiUserConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v17 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = AMSLogKey();
    v20 = objc_opt_class();
    v21 = v20;
    if (v19)
    {
      v6 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v21, v6];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v20];
    }
    v22 = ;
    v23 = +[AMSMultiUserService machServiceName];
    *buf = 138543618;
    v31 = v22;
    v32 = 2114;
    v33 = v23;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Registering service for name: %{public}@", buf, 0x16u);

    if (v19)
    {

      v22 = v6;
    }
  }

  v24 = [NSXPCListener alloc];
  v25 = +[AMSMultiUserService machServiceName];
  v26 = [v24 initWithMachServiceName:v25];

  [v26 setDelegate:self];
  [v26 resume];
  if (+[AMSDMultiUserController deviceSupportsMultipleUsers])
  {
    v27 = +[AMSDMultiUserController sharedController];
    v28 = [v27 performRefreshMultiUserDatabaseNotificationSubscriptionsForceRefresh:0];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100052C0C;
    v29[3] = &unk_1002B0568;
    v29[4] = self;
    [v28 addFinishBlock:v29];
  }
}

- (void)_setupNotifications
{
  v3 = dispatch_get_global_queue(17, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100014BA4;
  handler[3] = &unk_1002B0590;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v3, handler);

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_handleNFCAccessoryNotification:" name:@"com.apple.nfcd.ams.accessory" object:0 suspensionBehavior:2];
  }
}

- (void)_setupPollJobs
{
  v3 = objc_alloc_init(AMSDXPCActivityScheduler);
  v2 = objc_alloc_init(AMSDCarrierOfferRegistrationActivity);
  [(AMSDXPCActivityScheduler *)v3 scheduleIfNeededActivity:v2];
}

- (void)_setupAccountDataSync
{
  v2 = +[_TtC12amsaccountsd23CachedServerDataService sharedService];
  [v2 performOnStartup];
}

- (void)_setupTSDataSync
{
  v3 = +[_TtC12amsaccountsd17TSDataSyncService sharedService];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100053108;
  v4[3] = &unk_1002AFDD8;
  v4[4] = self;
  [v3 handleDaemonStartupWithCompletionHandler:v4];
}

- (void)_setupSignalHandlers
{
  signal(15, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  sigTermSource = self->_sigTermSource;
  self->_sigTermSource = v3;

  v5 = self->_sigTermSource;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000532F0;
  handler[3] = &unk_1002B04C0;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(self->_sigTermSource);
}

- (void)_handleCachedDataUpdate
{
  v2 = +[AMSRegulatoryEligibilityTask sharedInstance];
  [v2 handleCachedDataUpdate];
}

- (void)_updateRegulatoryEligibility
{
  v3 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = objc_opt_class();
    v7 = v6;
    if (v5)
    {
      self = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v7, self];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v6];
    }
    selfCopy = ;
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating regulatory eligibility", buf, 0xCu);
    if (v5)
    {

      selfCopy = self;
    }
  }

  v9 = +[AMSRegulatoryEligibilityTask sharedInstance];
  update = [v9 update];
}

- (void)_startXPC
{
  v3 = [NSXPCListener alloc];
  v4 = +[AMSDServiceConnection machServiceName];
  v5 = [v3 initWithMachServiceName:v4];

  [v5 setDelegate:self];
  [v5 resume];
  [(AMSDDaemonRunLoop *)self setListener:v5];
}

- (void)_handleAccountChange
{
  v3 = +[AMSRegulatoryEligibilityTask sharedInstance];
  [v3 setOverride:0];

  [(AMSDDaemonRunLoop *)self _updateRegulatoryEligibility];
}

@end