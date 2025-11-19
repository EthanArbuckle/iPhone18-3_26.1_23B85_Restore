@interface PDDaemon
- (BOOL)canEnableNoUserMode;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSDictionary)statusReport;
- (PDDaemon)initWithMachServiceName:(id)a3;
- (PDDatabase)studentDevDatabase;
- (PDDatabase)teacherDevDatabase;
- (id)_databaseInstance;
- (id)appIdentifierForConnection:(id)a3 withEntitlements:(id)a4;
- (id)miniStatusReport;
- (id)setupSignal:(int)a3 handler:(id)a4;
- (id)statusReportCurrentUser;
- (void)_cleanupSavedResponseDirectory;
- (void)_initializeSubsystemsIfNeeded;
- (void)_invalidateAndDeleteManagers;
- (void)_reinitializeManagers;
- (void)_updateBiomeClientWithDatabase:(id)a3;
- (void)dealloc;
- (void)exitClean:(BOOL)a3 reason:(id)a4;
- (void)handleAccountChange;
- (void)handleSignal:(int)a3;
- (void)iCloudDriveInitialSyncStatusDidChange:(id)a3;
- (void)invalidateServer:(id)a3;
- (void)loadConfig;
- (void)memoryPressureStatusChanged;
- (void)recreateDatabaseAndReinitialize:(BOOL)a3;
- (void)recreateDevelopmentDatabases;
- (void)registerDashboardAppIfNeeded:(id)a3;
- (void)saveUpdatedConfig;
- (void)serverInitialSyncStatusDidChange:(id)a3;
- (void)setMode:(int)a3;
- (void)setupLocaleChangeHandler;
- (void)setupMemoryPressureHandlers;
- (void)setupSignalHandlers;
- (void)start;
- (void)terminateClean:(BOOL)a3 reason:(id)a4;
- (void)terminateCleanAfterRecreatingDatabase:(BOOL)a3;
@end

@implementation PDDaemon

- (PDDaemon)initWithMachServiceName:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = PDDaemon;
  v5 = [(PDDaemon *)&v47 init];
  if (v5)
  {
    CLSInitLog();
    v6 = CLSPersonalPersonaUniqueIdentifier();
    v7 = CLSProgressClasses();
    v8 = CLSDashboardClasses();
    v9 = CLSReportClasses();
    v10 = CLSHandoutClasses();
    v11 = CLSArchivedHandoutClasses();
    v12 = CLSRosterClasses();
    v13 = CLSSearchClasses();
    v14 = CLSCollaborationStateClasses();
    v15 = CLSOnboardingClasses();
    v16 = CLSQueriableWithoutValidUserClasses();
    v17 = CLSSurveyClasses();
    v18 = CLSObjectsClasses();
    v19 = CLSEndpointServerInterface();
    v20 = CLSClientRemoteObjectInterface();
    v21 = CLSQueryInterface();
    v22 = ManagedOrganizationContactsQueryResponse();
    v23 = ManagedOrganizationContactsQueryRequest();
    v24 = CLSSaveResponseInterface();
    v25 = CLSAssetUploadProgressNotifiableInterface();
    v26 = CLSAssetDownloadProgressNotifiableInterface();
    +[PDDatabase registerEntities];
    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_get_global_queue(25, 0);
    v29 = dispatch_queue_create_with_target_V2("com.apple.progressd.daemon", v27, v28);
    queue = v5->_queue;
    v5->_queue = v29;

    if ([v4 length])
    {
      v31 = [[NSXPCListener alloc] initWithMachServiceName:v4];
      listener = v5->_listener;
      v5->_listener = v31;

      [(NSXPCListener *)v5->_listener setDelegate:v5];
    }

    v33 = objc_alloc_init(NSMutableSet);
    servers = v5->_servers;
    v5->_servers = v33;

    v5->_lock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v5);
    v41 = _NSConcreteStackBlock;
    v42 = 3221225472;
    v43 = sub_1000D8A08;
    v44 = &unk_100204A00;
    objc_copyWeak(&v45, &location);
    v35 = objc_retainBlock(&v41);
    v36 = dispatch_get_global_queue(0, 0);
    v5->_stateHandle = os_state_add_handler();

    [(PDDaemon *)v5 loadConfig:v41];
    v37 = objc_alloc_init(PDBiomeClient);
    biomeClient = v5->_biomeClient;
    v5->_biomeClient = v37;

    objc_storeStrong(&qword_10024DD18, v5);
    v39 = +[NSNotificationCenter defaultCenter];
    [v39 addObserver:v5 selector:"iCloudDriveInitialSyncStatusDidChange:" name:CLSInitialiCloudDriveSyncCompleteNotificationName object:0];

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  v3 = qword_10024DD18;
  qword_10024DD18 = 0;

  if (self->_stateHandle)
  {
    os_state_remove_handler();
  }

  v4.receiver = self;
  v4.super_class = PDDaemon;
  [(PDDaemon *)&v4 dealloc];
}

- (void)iCloudDriveInitialSyncStatusDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:CLSiCloudDriveInitialSyncStatusKey];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKey:CLSiCloudDriveInitialSyncErrorKey];
  CLSInitLog();
  v8 = CLSLogNotifications;
  if (v7)
  {
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
    {
      v9 = "NO";
      if (v6)
      {
        v9 = "YES";
      }

      v13 = 136315394;
      v14 = v9;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Received iCloud Drive initial sync state changed notification. iCloudDrive initial sync done: %s. Error: %{public}@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    v10 = "NO";
    if (v6)
    {
      v10 = "YES";
    }

    v13 = 136315138;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received iCloud Drive initial sync state changed notification. iCloudDrive initial sync done: %s", &v13, 0xCu);
  }

  v11 = [(PDDaemon *)self database];
  if (v6 != sub_1000508B0(v11))
  {
    sub_100169F38(v11, v6, @"initialiCloudDriveSyncComplete");
    CLSInitLog();
    v12 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Posted 'CLSiCloudDriveInitialSyncCompleteDarwinNotificationName' notification", &v13, 2u);
    }

    [CLSUtil postNotificationAsync:CLSiCloudDriveInitialSyncCompleteDarwinNotificationName];
  }
}

- (void)serverInitialSyncStatusDidChange:(id)a3
{
  CLSInitLog();
  v4 = CLSLogNotifications;
  if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received notification for server sync status change", buf, 2u);
  }

  if (sub_1000507D8(self->_database) && (sub_100050844(self->_database) & 1) != 0)
  {
    initial_sync_transaction = self->_initial_sync_transaction;
    if (initial_sync_transaction)
    {
      sub_10010AB34(initial_sync_transaction);
      v6 = self->_initial_sync_transaction;
      self->_initial_sync_transaction = 0;
    }

    [CLSUtil postNotificationAsync:CLSInitialSyncCompleteDarwinNotificationName];
  }

  else
  {
    CLSInitLog();
    v7 = CLSLogNotifications;
    if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Sync not completed yet according to database", v8, 2u);
    }
  }
}

- (void)loadConfig
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1000E0594();
  v5 = sub_1000E0A78(v4);

  v15 = 0;
  v6 = [[NSDictionary alloc] initWithContentsOfURL:v5 error:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v9 = [v6 objectForKeyedSubscript:@"mode"];
    v10 = [v9 integerValue];

    if (v10 == 2)
    {
      v11 = 2;
      goto LABEL_10;
    }

    if (v10 == 1)
    {
      v11 = 1;
LABEL_10:
      self->_mode = v11;
      goto LABEL_11;
    }
  }

  else if ([v7 code] != 260)
  {
    CLSInitLog();
    v12 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = [v5 path];
      *buf = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v8;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to init config dictionary from file at '%@'. Error: '%@'.", buf, 0x16u);
    }
  }

  self->_mode = 0;
LABEL_11:

  objc_autoreleasePoolPop(v3);
}

- (void)saveUpdatedConfig
{
  v3 = objc_autoreleasePoolPush();
  v9 = @"mode";
  v4 = [NSNumber numberWithInt:self->_mode];
  v10 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  v6 = sub_10010A850(@"Update Config");
  v7 = sub_1000E0594();
  v8 = sub_1000E0A78(v7);
  [v5 writeToURL:v8 atomically:1];

  sub_10010AB34(v6);
  objc_autoreleasePoolPop(v3);
}

- (void)setMode:(int)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(PDDaemon *)self saveUpdatedConfig];
    [CLSUtil postNotification:"com.apple.progressd.devModeChanged"];
    v5 = sub_1000B51E4();
    if (v5)
    {
      v5[8] = a3 != 0;
    }
  }
}

- (void)start
{
  [(PDDaemon *)self setupMemoryPressureHandlers];
  [(PDDaemon *)self setupSignalHandlers];
  v3 = sub_10010A850(@"DaemonInitTransaction");
  sub_1000D9310(self);
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1000D9368;
  v8 = &unk_100203000;
  objc_copyWeak(&v9, &location);
  dispatch_async(queue, &v5);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  sub_10010AB34(v3);
  [(PDDaemon *)self setupLocaleChangeHandler:v5];
  [CLSUtil postNotification:"com.apple.progressd.available"];
}

- (void)setupSignalHandlers
{
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D962C;
  v17[3] = &unk_100203000;
  objc_copyWeak(&v18, &location);
  v3 = [(PDDaemon *)self setupSignal:3 handler:v17];
  v4 = qword_10024DA08;
  qword_10024DA08 = v3;

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D9670;
  v15[3] = &unk_100203000;
  objc_copyWeak(&v16, &location);
  v5 = [(PDDaemon *)self setupSignal:6 handler:v15];
  v6 = qword_10024DA10;
  qword_10024DA10 = v5;

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D96B4;
  v13[3] = &unk_100203000;
  objc_copyWeak(&v14, &location);
  v7 = [(PDDaemon *)self setupSignal:15 handler:v13];
  v8 = qword_10024DA18;
  qword_10024DA18 = v7;

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D96F8;
  v11[3] = &unk_100203000;
  objc_copyWeak(&v12, &location);
  v9 = [(PDDaemon *)self setupSignal:29 handler:v11];
  v10 = qword_10024DA20;
  qword_10024DA20 = v9;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (id)setupSignal:(int)a3 handler:(id)a4
{
  v6 = a4;
  v7 = dispatch_source_create(&_dispatch_source_type_signal, a3, 0, self->_queue);
  if (v7)
  {
    signal(a3, 1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000D98C8;
    handler[3] = &unk_100204A28;
    v13 = v6;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(v7);
  }

  else
  {
    CLSInitLog();
    v8 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = sub_1000D98D8(a3);
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Could not set up signal handler for '%@'", buf, 0xCu);
    }
  }

  return v7;
}

- (void)handleSignal:(int)a3
{
  v5 = sub_1000D98D8(a3);
  if (a3 != 29)
  {
    v8 = [NSString stringWithFormat:@"Received signal '%@'", v5];
    [(PDDaemon *)self exitClean:0 reason:v8];
    goto LABEL_7;
  }

  CLSInitLog();
  v6 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received signal '%@'", buf, 0xCu);
  }

  CLSInitLog();
  v7 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(PDDaemon *)self miniStatusReport];
    *buf = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Mini Status Report: %@", buf, 0xCu);

LABEL_7:
  }
}

- (void)setupMemoryPressureHandlers
{
  objc_initWeak(&location, self);
  self->_memoryPressureStatus = 1;
  v3 = dispatch_get_global_queue(2, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 1uLL, v3);
  v5 = qword_10024DA28;
  qword_10024DA28 = v4;

  v6 = qword_10024DA28;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000D9D08;
  handler[3] = &unk_100203000;
  objc_copyWeak(&v18, &location);
  dispatch_source_set_event_handler(v6, handler);
  dispatch_activate(qword_10024DA28);
  v7 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 2uLL, v3);
  v8 = qword_10024DA30;
  qword_10024DA30 = v7;

  v9 = qword_10024DA30;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D9D54;
  v15[3] = &unk_100203000;
  objc_copyWeak(&v16, &location);
  dispatch_source_set_event_handler(v9, v15);
  dispatch_activate(qword_10024DA30);
  v10 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 4uLL, v3);
  v11 = qword_10024DA38;
  qword_10024DA38 = v10;

  v12 = qword_10024DA38;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000D9DA0;
  v13[3] = &unk_100203000;
  objc_copyWeak(&v14, &location);
  dispatch_source_set_event_handler(v12, v13);
  dispatch_activate(qword_10024DA38);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)memoryPressureStatusChanged
{
  memoryPressureStatus = self->_memoryPressureStatus;
  if (memoryPressureStatus == 4)
  {
    v3 = &unk_10024DA50;
    v4 = "Memory Pressure Status: Critical";
    v5 = 1;
  }

  else
  {
    if (memoryPressureStatus == 2)
    {
      v3 = &unk_10024DA48;
      v4 = "Memory Pressure Status: Warning";
    }

    else if (memoryPressureStatus == 1)
    {
      v3 = &unk_10024DA40;
      v4 = "Memory Pressure Status: Normal";
    }

    else
    {
      v3 = &unk_10024DA58;
      v4 = "Memory Pressure Status: Unknown - we should not get here!!!";
    }

    v5 = 0;
  }

  sub_1000D9E60(v5, v3, v4);
}

- (void)setupLocaleChangeHandler
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleLocaleChange" name:NSCurrentLocaleDidChangeNotification object:0];
}

- (void)exitClean:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v6 = a4;
  CLSInitLog();
  v7 = CLSLogDefault;
  if (v4)
  {
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Clean exit with reason: %{public}@", &v11, 0xCu);
    }

    v8 = sub_1000B51E4();
    sub_1000B61E0(v8);
  }

  else if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Dirty exit with reason: %{public}@", &v11, 0xCu);
  }

  v9 = [(PDDaemon *)self operationsManager];
  sub_100121140(v9);

  [(PDBiomeClient *)self->_biomeClient cancelSubscription];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];

  if (!v4)
  {
    exit(0);
  }

  xpc_transaction_exit_clean();
}

- (void)terminateClean:(BOOL)a3 reason:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DA23C;
  block[3] = &unk_100203028;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  sub_1000D9310(self);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DA858;
  block[3] = &unk_100203410;
  block[4] = self;
  v9 = v7;
  v12 = v9;
  v13 = &v14;
  dispatch_sync(queue, block);
  [v9 resume];
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (id)appIdentifierForConnection:(id)a3 withEntitlements:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 cls_signingIdentifier];
  if (![v7 length])
  {
    v8 = [v6 applicationBundleIdentifier];

    v7 = v8;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [LSBundleRecord bundleRecordWithBundleIdentifier:v7 allowPlaceholder:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 containingBundleRecord];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 bundleIdentifier];

      v7 = v13;
    }
  }

  objc_autoreleasePoolPop(v9);

  return v7;
}

- (void)invalidateServer:(id)a3
{
  v4 = a3;
  [v4 invalidate];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB67C;
  block[3] = &unk_1002029C0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)handleAccountChange
{
  CLSInitLog();
  v3 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling AppleAccount change notification.", buf, 2u);
  }

  v4 = +[PDUserDefaults sharedDefaults];
  v5 = [v4 enableVerboseLogging];

  if (v5)
  {
    CLSLogDebugCurrentPersona();
  }

  database = self->_database;
  if (database)
  {
    sub_1000EAE50(database, 0);
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = sub_1000DBBF4;
  v29 = sub_1000DBC04;
  v30 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_1000DBBF4;
  v23[4] = sub_1000DBC04;
  v24 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000DBC0C;
  v22[3] = &unk_100204AA0;
  v22[4] = &v35;
  v22[5] = &v31;
  v22[6] = buf;
  v22[7] = v23;
  sub_10003E328(PDAccountInfo, v22);
  if (v36[3])
  {
    CLSInitLog();
    v7 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User DSID changed; re-initializing subsystems.", v21, 2u);
    }

    [(PDDaemon *)self lock];
    [(PDDaemon *)self _invalidateAndDeleteManagers];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_servers;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v17 objects:v39 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v17 + 1) + 8 * v11) invalidate];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v17 objects:v39 count:16];
      }

      while (v9);
    }

    v12 = self->_servers;
    [(NSMutableSet *)v12 removeAllObjects];

    self->_systemsInitialized = 0;
    v13 = objc_autoreleasePoolPush();
    [(PDDaemon *)self _initializeSubsystemsIfNeeded];
    objc_autoreleasePoolPop(v13);
    [(PDDaemon *)self unlock];
    CLSInitLog();
    v14 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Posting notification 'CLSAccountChangedDarwinNotificationName'", v21, 2u);
    }

    [CLSUtil postNotification:"com.apple.progressd.accountChanged", v17];
  }

  else
  {
    CLSInitLog();
    v15 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "User DSID did not change; subsystem not re-initialized.", v21, 2u);
    }

    if (*(v32 + 24) == 1)
    {
      CLSInitLog();
      v16 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Authentication state changed, posting notification 'CLSAccountChangedDarwinNotificationName'", v21, 2u);
      }

      [CLSUtil postNotification:"com.apple.progressd.accountChanged"];
      sub_10012175C(self->_operationsManager, 0);
    }

    [(PDDaemon *)self _setSettingsVisibilityFlagMacOS];
  }

  _Block_object_dispose(v23, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
}

- (void)_initializeSubsystemsIfNeeded
{
  if (!self->_systemsInitialized && sub_100140F84())
  {
    v3 = sub_10010A850(@"DaemonInitializeSubsystems");
    CLSInitLog();
    v4 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "initializing account dependant subsystems", buf, 2u);
    }

    CLSInitLog();
    v5 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEBUG))
    {
      v27 = v5;
      v28 = +[NSThread currentThread];
      *buf = 138412290;
      v39 = v28;
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Current thread: %@", buf, 0xCu);
    }

    [(PDDaemon *)self _cleanupSavedResponseDirectory];
    [(PDDaemon *)self _invalidateAndDeleteManagers];
    database = self->_database;
    if (database)
    {
      sub_10010B5B8(database);
      v7 = self->_database;
      self->_database = 0;
    }

    v8 = [(PDDaemon *)self _databaseInstance];
    v9 = self->_database;
    self->_database = v8;

    if ((sub_10010B858(self->_database) & 1) == 0)
    {
      [(PDDatabase *)self->_database lock];
      if ((sub_10010B658(self->_database) & 1) == 0)
      {
        [(PDDatabase *)self->_database unlock];
        sub_10010B5B8(self->_database);
        v10 = self->_database;
        self->_database = 0;

        CLSInitLog();
        v11 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to truncate database. Delete database files and terminate", buf, 2u);
        }

        v12 = sub_1000E0594();
        v37 = 0;
        v13 = sub_1000E1674(v12, &v37);
        v14 = v37;

        if ((v13 & 1) == 0)
        {
          CLSInitLog();
          v15 = CLSLogDatabase;
          if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v39 = v14;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to delete database files. Error: %{public}@", buf, 0xCu);
          }
        }

        v16 = [(PDDaemon *)self listener];
        [v16 invalidate];

        [(PDDaemon *)self exitClean:0 reason:@"Terminating..."];
      }

      [(PDDatabase *)self->_database unlock];
    }

    if (!self->_database)
    {
      goto LABEL_47;
    }

    v17 = sub_10003E1B4();
    [(PDDatabase *)self->_database lock];
    v18 = sub_10016A49C(self->_database, @"currentAccountInfoID");
    CLSInitLog();
    v19 = CLSLogAuthorization;
    if (os_log_type_enabled(CLSLogAuthorization, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558274;
      v39 = 1752392040;
      v40 = 2112;
      v41 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "CurrentUserID: %{mask.hash}@", buf, 0x16u);
    }

    if (v17)
    {
      v20 = v17[4];
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = (v21 | v18) != 0;
    if (v21 | v18)
    {
      v23 = v21;
      if (v17)
      {
        v24 = v17[4];
        if (v24 && v18)
        {
          v25 = v17[4];
          v26 = [v25 isEqualToString:v18];

          if (v26)
          {
            goto LABEL_45;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v24 = 0;
      }
    }

LABEL_32:
    v29 = v22 | sub_10005091C(self->_database) ^ 1;
    CLSInitLog();
    v30 = CLSLogDatabase;
    if (v29)
    {
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEFAULT))
      {
        v31 = @"NO";
        if (v22)
        {
          v31 = @"YES";
        }

        *buf = 138412290;
        v39 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "About to call truncate: accountChanged: %@", buf, 0xCu);
      }

      if ((sub_10010B658(self->_database) & 1) == 0)
      {
        sub_10010B5B8(self->_database);
        [(PDDatabase *)self->_database unlock];
        v32 = self->_database;
        self->_database = 0;

        CLSInitLog();
        v33 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to truncate database", buf, 2u);
        }

        goto LABEL_46;
      }
    }

    else if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "User Onboarding in progress.", buf, 2u);
    }

    v34 = self->_database;
    if (v17)
    {
      v35 = v17[4];
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    sub_10016A3F0(v34, v36, @"currentAccountInfoID");

LABEL_45:
    [(PDDatabase *)self->_database unlock];
    [(PDDaemon *)self _reinitializeManagers];
    self->_systemsInitialized = 1;
    [(PDDaemon *)self _setSettingsVisibilityFlagMacOS];
    sub_10010AB34(v3);
LABEL_46:

LABEL_47:
  }
}

- (BOOL)canEnableNoUserMode
{
  if (sub_1000B280C())
  {
    return 1;
  }

  return sub_1000B2988();
}

- (void)_updateBiomeClientWithDatabase:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(33, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DC6EC;
  v7[3] = &unk_1002029E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_reinitializeManagers
{
  [(PDDaemon *)self _cleanupSavedResponseDirectory];
  v3 = sub_1000DC5E0(self);
  v4 = [(PDDaemon *)self canEnableNoUserMode];
  v5 = +[PDUserDefaults sharedDefaults];
  v6 = [v5 enableVerboseLogging];

  if (v6)
  {
    CLSInitLog();
    v7 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      if ((v4 & v3) != 0)
      {
        v8 = @"no user";
      }

      else
      {
        v8 = @"normal";
      }

      v24 = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reinitializing daemon (%@ mode).", &v24, 0xCu);
    }
  }

  [(PDUserNotificationManager *)self->_userNotificationManager invalidate];
  v9 = sub_1001212BC([PDOperationsManager alloc], self->_database);
  operationsManager = self->_operationsManager;
  self->_operationsManager = v9;

  sub_100121684(self->_operationsManager, self->_queue);
  v11 = [(PDDaemon *)self database];
  sub_1000F5988(v11);

  if (!v3)
  {
    if (!sub_1000507D8(self->_database) || (sub_100050844(self->_database) & 1) == 0)
    {
      initial_sync_transaction = self->_initial_sync_transaction;
      if (initial_sync_transaction)
      {
        sub_10010AB34(initial_sync_transaction);
      }

      v13 = +[NSNotificationCenter defaultCenter];
      [v13 addObserver:self selector:"serverInitialSyncStatusDidChange:" name:CLSInitialServerSyncCompleteNotificationName object:0];

      v14 = sub_10010A850(@"Initial Server Sync");
      v15 = self->_initial_sync_transaction;
      self->_initial_sync_transaction = v14;
    }

    v16 = [[PDUserNotificationManager alloc] initWithDatabase:self->_database];
    userNotificationManager = self->_userNotificationManager;
    self->_userNotificationManager = v16;

    [(PDUserNotificationManager *)self->_userNotificationManager registerForNotifications];
    v18 = [(PDDaemon *)self mode];
    if (v18 == 2)
    {
      v19 = [(PDDaemon *)self teacherDevDatabase];
    }

    else if (v18 == 1)
    {
      v19 = [(PDDaemon *)self studentDevDatabase];
    }

    else
    {
      if (v18)
      {
        v20 = 0;
LABEL_21:
        v21 = sub_1000DA28C(self, v20);

        v22 = [v21 isStudent];
        if (v22)
        {
          [(PDDaemon *)self _updateBiomeClientWithDatabase:self->_database];
        }

        goto LABEL_23;
      }

      v19 = [(PDDaemon *)self database];
    }

    v20 = v19;
    goto LABEL_21;
  }

LABEL_23:
  v23 = sub_10003E1B4();
  sub_1000E13B8(PDFileManager, v23);
}

- (void)_cleanupSavedResponseDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = sub_1000E0594();
  v4 = sub_1000E0C78(v3);
  v8 = 0;
  v5 = [v2 removeItemAtURL:v4 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    CLSInitLog();
    v7 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to cleanup response file directory. Error %@", buf, 0xCu);
    }
  }
}

- (void)_invalidateAndDeleteManagers
{
  sub_100121110();
  userNotificationManager = self->_userNotificationManager;
  if (userNotificationManager)
  {
    [(PDUserNotificationManager *)userNotificationManager invalidate];
    v4 = self->_userNotificationManager;
    self->_userNotificationManager = 0;
  }

  operationsManager = self->_operationsManager;
  if (operationsManager)
  {
    sub_100121140(operationsManager);
    v6 = self->_operationsManager;
    self->_operationsManager = 0;
  }
}

- (void)registerDashboardAppIfNeeded:(id)a3
{
  v4 = a3;
  if (sub_100145440(self->_database, v4))
  {
    CLSInitLog();
    v5 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Queue register operation for dashboard app: %@.", &v8, 0xCu);
    }

    v6 = [(PDURLRequestOperation *)[PDDashboardAppRegisterOperation alloc] initWithDatabase:self->_database];
    v7 = [(PDDaemon *)self operationsManager];
    sub_100123A84(v7, v6);
  }
}

- (id)_databaseInstance
{
  v2 = sub_1000E0594();
  v3 = sub_1000E0B4C(v2);

  v4 = sub_10010B23C([PDDatabase alloc], v3);

  return v4;
}

- (PDDatabase)teacherDevDatabase
{
  teacherDevDatabase = self->_teacherDevDatabase;
  if (!teacherDevDatabase)
  {
    v4 = sub_1000E0594();
    v5 = sub_1000E0BB0(v4);

    v6 = sub_10010B23C([PDDatabase alloc], v5);
    v7 = self->_teacherDevDatabase;
    self->_teacherDevDatabase = v6;

    if ((sub_10010B858(self->_teacherDevDatabase) & 1) == 0)
    {
      v8 = self->_teacherDevDatabase;
      self->_teacherDevDatabase = 0;
    }

    teacherDevDatabase = self->_teacherDevDatabase;
  }

  return teacherDevDatabase;
}

- (PDDatabase)studentDevDatabase
{
  studentDevDatabase = self->_studentDevDatabase;
  if (!studentDevDatabase)
  {
    v4 = sub_1000E0594();
    v5 = sub_1000E0C14(v4);

    v6 = sub_10010B23C([PDDatabase alloc], v5);
    v7 = self->_studentDevDatabase;
    self->_studentDevDatabase = v6;

    if ((sub_10010B858(self->_studentDevDatabase) & 1) == 0)
    {
      v8 = self->_studentDevDatabase;
      self->_studentDevDatabase = 0;
    }

    studentDevDatabase = self->_studentDevDatabase;
  }

  return studentDevDatabase;
}

- (id)statusReportCurrentUser
{
  v3 = sub_10003E1B4();
  v4 = [(PDDaemon *)self database];
  v5 = sub_1000711FC(v4);
  v6 = sub_1000717E8(v4);
  v46 = sub_100071704(v4);
  if (v3)
  {
    if ([*(v3 + 24) aa_isManagedAppleID])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }
  }

  else
  {
    v7 = @"NO";
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_1000DBBF4;
  v54 = sub_1000DBC04;
  v55 = objc_opt_new();
  if (v5)
  {
    v8 = objc_opt_class();
    v9 = [v5 objectID];
    v79 = v9;
    v10 = [NSArray arrayWithObjects:&v79 count:1];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000DD488;
    v47[3] = &unk_100204AC8;
    v48 = v4;
    v49 = &v50;
    [v48 selectAll:v8 where:@"personID = ?" bindings:v10 block:v47];

    v60[0] = @"orgID";
    v45 = [v5 orgID];
    v11 = v45;
    v12 = v46;
    if (!v45)
    {
      v11 = &stru_100206880;
    }

    if (!v46)
    {
      v12 = &stru_100206880;
    }

    v69[0] = v11;
    v69[1] = v12;
    v60[1] = @"organizationName";
    v60[2] = @"objectID";
    v44 = [v5 objectID];
    v13 = v44;
    if (!v44)
    {
      v13 = &stru_100206880;
    }

    v69[2] = v13;
    v60[3] = @"name";
    v43 = [v5 displayName];
    v14 = v43;
    if (!v43)
    {
      v14 = &stru_100206880;
    }

    v69[3] = v14;
    v60[4] = @"progressTrackingAllowed";
    if ([v5 isProgressTrackingAllowed])
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v69[4] = v15;
    v69[5] = v7;
    v60[5] = @"hasManagedAccount";
    v60[6] = @"isSearchable";
    if ([v5 isSearchable])
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v69[6] = v16;
    v60[7] = @"role (orion)";
    v41 = [CLSPerson stringForRole:v6];
    v69[7] = v41;
    v60[8] = @"roles (asm)";
    v17 = v51[5];
    if (!v17)
    {
      v17 = &stru_100206880;
    }

    v69[8] = v17;
    v60[9] = @"data-separated";
    if (v3)
    {
      if (*(v3 + 8))
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v70 = v18;
      v61 = @"openFromManagedToUnmanaged";
      if (*(v3 + 10))
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v71 = v19;
      v62 = @"openFromUnmanagedToManaged";
      if (*(v3 + 11))
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v72 = v20;
      v63 = @"hasUbiquityEnabled";
      if (*(v3 + 9))
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v73 = v21;
      v64 = @"rosterServiceAuthenticationState";
      v22 = *(v3 + 12);
    }

    else
    {
      v70 = @"NO";
      v71 = @"NO";
      v61 = @"openFromManagedToUnmanaged";
      v62 = @"openFromUnmanagedToManaged";
      v72 = @"NO";
      v73 = @"NO";
      v63 = @"hasUbiquityEnabled";
      v64 = @"rosterServiceAuthenticationState";
    }

    v23 = NSStringFromCLSAuthenticationState();
    v74 = v23;
    v65 = @"handoutServiceAuthenticationState";
    if (v3)
    {
      v24 = *(v3 + 16);
    }

    v25 = NSStringFromCLSAuthenticationState();
    v75 = v25;
    v66 = @"iCloudDriveAuthenticationState";
    if (v3)
    {
      v26 = *(v3 + 20);
    }

    v27 = NSStringFromCLSAuthenticationState();
    v76 = v27;
    v67 = @"schoolworkUbiquitousContainerURL";
    if (v3)
    {
      v28 = *(v3 + 80);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v30 = [v29 absoluteString];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = &stru_100206880;
    }

    v77 = v32;
    v68 = @"schoolworkUbiquitousContainerError";
    if (v3)
    {
      v33 = *(v3 + 88);
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = &stru_100206880;
    }

    v78 = v36;
    v37 = [NSDictionary dictionaryWithObjects:v69 forKeys:v60 count:18, v41];
  }

  else
  {
    if (sub_1000DC5E0(self))
    {
      v58 = @"none";
      v59 = @"(No User Mode)";
      v38 = &v58;
      v39 = &v59;
    }

    else
    {
      v56 = @"none";
      v57 = &stru_100206880;
      v38 = &v56;
      v39 = &v57;
    }

    v38[1] = @"hasManagedAccount";
    v39[1] = v7;
    v37 = [NSDictionary dictionaryWithObjects:"dictionaryWithObjects:forKeys:count:" forKeys:? count:?];
  }

  _Block_object_dispose(&v50, 8);

  return v37;
}

- (id)miniStatusReport
{
  v3 = objc_opt_new();
  v4 = [(PDDaemon *)self statusReportCurrentUser];
  [v3 setObject:v4 forKeyedSubscript:@"current user"];

  v5 = +[PDUserDefaults sharedDefaults];
  v6 = [v5 dictionaryRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"userDefaults"];

  return v3;
}

- (NSDictionary)statusReport
{
  v3 = objc_opt_new();
  v4 = sub_10003E1B4();
  v64 = v4;
  if (v4)
  {
    v5 = *(v4 + 48);
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"GSTokenSchoolwork"];
    }

    v6 = v64[7];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"GSTokenAXM"];
  }

  v58 = v7;
  v8 = v64;
  if (v64)
  {
    v8 = v64[3];
  }

  v9 = v8;

  if (v9)
  {
    v79 = 0;
    v80 = &v79;
    v81 = 0x3032000000;
    v82 = sub_1000DBBF4;
    v83 = sub_1000DBC04;
    v84 = 0;
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_1000DE084;
    v76[3] = &unk_100204B10;
    v78 = &v79;
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &stru_100204AE8);
    v77 = v10;
    sub_10004010C(PDAccountInfo, v76);
    v11 = dispatch_time(0, 60000000000);
    if (dispatch_block_wait(v10, v11))
    {
      CLSInitLog();
      v12 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Timed out when getting iCloud quota info!", buf, 2u);
      }
    }

    v13 = v80[5];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"iCloud Quota Info"];
    }

    _Block_object_dispose(&v79, 8);
  }

  v14 = +[NSBundle mainBundle];
  v63 = [v14 infoDictionary];

  v15 = [v63 objectForKeyedSubscript:@"CFBundleShortVersionString"];
  v16 = [v63 objectForKeyedSubscript:@"CFBundleVersion"];
  v17 = [NSString stringWithFormat:@"%@ (%@)", v15, v16];
  [v3 setObject:v17 forKeyedSubscript:@"version"];

  mode = self->_mode;
  v19 = NSStringFromDevMode();
  [v3 setObject:v19 forKeyedSubscript:@"Dev Mode"];

  v20 = [(PDDaemon *)self database];
  v21 = [(PDDaemon *)self statusReportCurrentUser];
  [v3 setObject:v21 forKeyedSubscript:@"current user"];

  v22 = sub_100043B24(v20);
  v23 = [v22 dictionaryRepresentation];
  [v3 setObject:v23 forKeyedSubscript:@"service config (orion)"];

  v24 = sub_1000BA854(v20);
  v25 = [v24 dictionaryRepresentation];
  [v3 setObject:v25 forKeyedSubscript:@"service config (asm)"];

  v26 = objc_opt_new();
  v27 = objc_opt_class();
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_1000DE218;
  v73[3] = &unk_100204B38;
  v61 = v26;
  v74 = v61;
  [v20 selectAll:v27 block:v73];
  [v3 setObject:v61 forKeyedSubscript:@"blocked apps"];
  v28 = objc_opt_new();
  [(PDDaemon *)self lock];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v29 = self->_servers;
  v30 = [(NSMutableSet *)v29 countByEnumeratingWithState:&v69 objects:v87 count:16];
  if (v30)
  {
    v31 = *v70;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v70 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = [*(*(&v69 + 1) + 8 * i) statusReport];
        [v28 addObject:v33];
      }

      v30 = [(NSMutableSet *)v29 countByEnumeratingWithState:&v69 objects:v87 count:16];
    }

    while (v30);
  }

  [(PDDaemon *)self unlock];
  v60 = [[NSString alloc] initWithFormat:@"%ld connected clients", objc_msgSend(v28, "count")];
  [v3 setObject:v28 forKeyedSubscript:v60];
  v34 = +[PDUserDefaults sharedDefaults];
  v35 = [v34 dictionaryRepresentation];
  [v3 setObject:v35 forKeyedSubscript:@"userDefaults"];

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1000DE278;
  v67[3] = &unk_100204B60;
  v59 = objc_opt_new();
  v68 = v59;
  v62 = objc_retainBlock(v67);
  [v20 selectAll:objc_opt_class() block:v62];
  [v20 selectAll:objc_opt_class() block:v62];
  [v3 setObject:v59 forKeyedSubscript:@"Pending sync items"];
  v36 = [(PDDaemon *)self operationsManager];
  v37 = sub_100126240(v36);
  [v3 setObject:v37 forKeyedSubscript:@"Operations report"];

  v38 = objc_opt_new();
  v39 = objc_opt_class();
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1000DE2EC;
  v65[3] = &unk_100204B88;
  v40 = v38;
  v66 = v40;
  [v20 selectAll:v39 block:v65];
  [v3 setObject:v40 forKeyedSubscript:@"endpoints"];
  v41 = objc_opt_new();
  v42 = [PDURLRequestOperation setAppleInternalHeadersForRequest:v41];
  if (!v42)
  {
    v43 = [v41 allHTTPHeaderFields];
    [v3 setObject:v43 forKeyedSubscript:@"anisetteHeader"];
  }

  v44 = [(PDDaemon *)self operationsManager];
  v45 = sub_100125AF0(v44);
  v46 = @"opportunistic";
  if (v45)
  {
    v46 = @"enabled";
  }

  v47 = v46;

  [v3 setObject:v47 forKeyedSubscript:@"Push Type"];
  v48 = +[PDUserDefaults sharedDefaults];
  v49 = [v48 dictionaryRepresentation];
  [v3 setObject:v49 forKeyedSubscript:@"userDefaults"];

  v85[0] = @"ASM sync";
  if (sub_1000507D8(v20))
  {
    v50 = @"YES";
  }

  else
  {
    v50 = @"NO";
  }

  v86[0] = v50;
  v85[1] = @"Orion sync";
  if (sub_100050844(v20))
  {
    v51 = @"YES";
  }

  else
  {
    v51 = @"NO";
  }

  v86[1] = v51;
  v85[2] = @"iCloud Drive initial sync";
  if (sub_1000508B0(v20))
  {
    v52 = @"YES";
  }

  else
  {
    v52 = @"NO";
  }

  v86[2] = v52;
  v53 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:3];
  [v3 setObject:v53 forKeyedSubscript:@"Server sync status"];
  v54 = sub_10012EC1C();
  if ([v54 count])
  {
    [v3 setObject:v54 forKeyedSubscript:@"Cached PDFileSyncAgent Info"];
  }

  v55 = [(PDBiomeClient *)self->_biomeClient biomeSubscriptionStatus]- 1;
  if (v55 > 2)
  {
    v56 = @"Unknown";
  }

  else
  {
    v56 = *(&off_100204BA8 + v55);
  }

  [v3 setObject:v56 forKeyedSubscript:@"biomeSubscriptionStatus"];

  return v3;
}

- (void)recreateDevelopmentDatabases
{
  CLSInitLog();
  v3 = CLSLogDatabase;
  if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "recreating dev databases", v6, 2u);
  }

  v4 = [(PDDaemon *)self teacherDevDatabase];
  sub_10010B658(v4);

  v5 = [(PDDaemon *)self studentDevDatabase];
  sub_10010B658(v5);
}

- (void)recreateDatabaseAndReinitialize:(BOOL)a3
{
  v3 = a3;
  v5 = +[PDUserDefaults sharedDefaults];
  [v5 resetUserDefaultsIfAllowed];

  CLSInitLog();
  v6 = CLSLogDatabase;
  if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "recreating database", v7, 2u);
  }

  sub_10010B658(self->_database);
  if (v3)
  {
    [(PDDaemon *)self _invalidateAndDeleteManagers];
    [(PDDaemon *)self _reinitializeManagers];
  }
}

- (void)terminateCleanAfterRecreatingDatabase:(BOOL)a3
{
  if (a3)
  {
    [(PDDaemon *)self recreateDatabaseAndReinitialize:0];
  }

  v4 = dispatch_get_global_queue(33, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE548;
  block[3] = &unk_100202D40;
  block[4] = self;
  dispatch_async(v4, block);
}

@end