@interface BuddyTargetDeviceMigrationManager
+ (id)createDeviceTransferTask:(id)task;
- (BOOL)hasVersionIncompatibility;
- (BOOL)migrationInProgressOrCompleted;
- (BOOL)requiresUpdateToMigrate;
- (BuddyTargetDeviceMigrationManager)initWithFileTranferSession:(id)session proximitySetupController:(id)controller prepareForMigrationRebootBlock:(id)block passcodeCacheManager:(id)manager buddyPreferencesExcludedFromBackup:(id)backup analyticsManager:(id)analyticsManager lockdownModeProvider:(id)provider;
- (__MKBAssertion)acquireDeviceLockAssertion;
- (void)_rebootDevice;
- (void)_stageReboot;
- (void)cancelDeviceTransferTask;
- (void)connectionTerminated;
- (void)didCancel;
- (void)didCompleteWithError:(id)error;
- (void)reset;
- (void)start;
- (void)startDataTransfer;
- (void)startDeviceTransferTask;
- (void)startKeychainDataImport;
- (void)startKeychainDataTransferWithCompletionHandler:(id)handler;
- (void)startPreflight;
- (void)waitForKeychain:(id)keychain;
- (void)waitForKeychainDataImport:(id)import;
- (void)waitForKeychainDataTransfer:(id)transfer;
- (void)waitForPreflight:(id)preflight;
@end

@implementation BuddyTargetDeviceMigrationManager

- (BuddyTargetDeviceMigrationManager)initWithFileTranferSession:(id)session proximitySetupController:(id)controller prepareForMigrationRebootBlock:(id)block passcodeCacheManager:(id)manager buddyPreferencesExcludedFromBackup:(id)backup analyticsManager:(id)analyticsManager lockdownModeProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  obj = 0;
  objc_storeStrong(&obj, controller);
  v26 = 0;
  objc_storeStrong(&v26, block);
  v25 = 0;
  objc_storeStrong(&v25, manager);
  v24 = 0;
  objc_storeStrong(&v24, backup);
  v23 = 0;
  objc_storeStrong(&v23, analyticsManager);
  v22 = 0;
  objc_storeStrong(&v22, provider);
  v14 = selfCopy;
  selfCopy = 0;
  v21.receiver = v14;
  v21.super_class = BuddyTargetDeviceMigrationManager;
  selfCopy = [(BuddyTargetDeviceMigrationManager *)&v21 initWithFileTranferSession:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 4, obj);
    v15 = objc_retainBlock(v26);
    v16 = *(selfCopy + 5);
    *(selfCopy + 5) = v15;

    objc_storeStrong(selfCopy + 15, v25);
    objc_storeStrong(selfCopy + 16, v24);
    objc_storeStrong(selfCopy + 17, v23);
    v17 = +[BYPreferencesController buddyPreferencesInternal];
    v18 = [v17 BOOLForKey:@"RequireSoftwareUpdateForMigration"];
    *(selfCopy + 9) = v18 & 1;

    objc_storeStrong(selfCopy + 19, v22);
  }

  v19 = selfCopy;
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (void)start
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyTargetDeviceMigrationManager;
  [(BuddyTargetDeviceMigrationManager *)&v6 start];
  v2 = dispatch_queue_create("Keychain Data Transfer Completion Queue", 0);
  [(BuddyTargetDeviceMigrationManager *)selfCopy setKeychainDataTransferCompletionQueue:v2];

  keychainDataTransferCompletionQueue = [(BuddyTargetDeviceMigrationManager *)selfCopy keychainDataTransferCompletionQueue];
  dispatch_suspend(keychainDataTransferCompletionQueue);

  networkProvider = [(BuddyTargetDeviceMigrationManager *)selfCopy networkProvider];
  inAppleStore = [(BuddyNetworkProvider *)networkProvider inAppleStore];
  [(BuddyTargetDeviceMigrationManager *)selfCopy setInAppleStore:inAppleStore & 1];
}

- (void)startPreflight
{
  selfCopy = self;
  v8[1] = a2;
  migrationQueue = [(BuddyTargetDeviceMigrationManager *)self migrationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000C74B0;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(migrationQueue, &block);

  objc_storeStrong(v8, 0);
}

- (void)waitForPreflight:(id)preflight
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preflight);
  migrationQueue = [(BuddyTargetDeviceMigrationManager *)selfCopy migrationQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C79C0;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(migrationQueue, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)startKeychainDataTransferWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  migrationQueue = [(BuddyTargetDeviceMigrationManager *)selfCopy migrationQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C7BD0;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(migrationQueue, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)waitForKeychainDataTransfer:(id)transfer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, transfer);
  keychainDataTransferCompletionQueue = [(BuddyTargetDeviceMigrationManager *)selfCopy keychainDataTransferCompletionQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C80EC;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(keychainDataTransferCompletionQueue, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)startKeychainDataImport
{
  selfCopy = self;
  v8[1] = a2;
  migrationQueue = [(BuddyTargetDeviceMigrationManager *)self migrationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000C83C4;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(migrationQueue, &block);

  objc_storeStrong(v8, 0);
}

- (void)waitForKeychainDataImport:(id)import
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, import);
  migrationQueue = [(BuddyTargetDeviceMigrationManager *)selfCopy migrationQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C88E0;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(migrationQueue, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)waitForKeychain:(id)keychain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, keychain);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C8A5C;
  v8 = &unk_10032C4C0;
  v10 = location[0];
  v9 = selfCopy;
  [(BuddyTargetDeviceMigrationManager *)v3 waitForKeychainDataTransfer:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)startDataTransfer
{
  selfCopy = self;
  v9[1] = a2;
  passcodeCacheManager = [(BuddyTargetDeviceMigrationManager *)self passcodeCacheManager];
  [(BYPasscodeCacheManager *)passcodeCacheManager persistPasscodeStash];

  migrationQueue = [(BuddyTargetDeviceMigrationManager *)selfCopy migrationQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C8BBC;
  v8 = &unk_10032B0D0;
  v9[0] = selfCopy;
  dispatch_async(migrationQueue, &block);

  objc_storeStrong(v9, 0);
}

- (void)reset
{
  [(BuddyTargetDeviceMigrationManager *)self cancelWithCause:2, a2];
  [(BuddyTargetDeviceMigrationManager *)self setUserChoseMigration:0];
  [(BuddyTargetDeviceMigrationManager *)self setDidComplete:0];
}

- (BOOL)requiresUpdateToMigrate
{
  requiresUpdateToMigrate = self->_requiresUpdateToMigrate;
  forceUpdateToMigrate = 1;
  if (!requiresUpdateToMigrate)
  {
    forceUpdateToMigrate = [(BuddyTargetDeviceMigrationManager *)self forceUpdateToMigrate];
  }

  return forceUpdateToMigrate & 1;
}

- (BOOL)hasVersionIncompatibility
{
  error = [(BuddyTargetDeviceMigrationManager *)self error];
  domain = [error domain];
  v4 = [domain isEqualToString:@"MBErrorDomain"];
  v7 = 0;
  v5 = 0;
  if (v4)
  {
    error2 = [(BuddyTargetDeviceMigrationManager *)self error];
    v7 = 1;
    v5 = [error2 code] == 203;
  }

  v10 = v5;
  if (v7)
  {
  }

  return v10;
}

- (BOOL)migrationInProgressOrCompleted
{
  v5 = 0;
  if ([(BuddyTargetDeviceMigrationManager *)self userChoseMigration])
  {
    willMigrate = [(BuddyTargetDeviceMigrationManager *)self willMigrate];
    didComplete = 1;
    if ((willMigrate & 1) == 0)
    {
      didComplete = [(BuddyTargetDeviceMigrationManager *)self didComplete];
    }

    return didComplete & 1;
  }

  return v5;
}

- (void)startDeviceTransferTask
{
  proximitySetupController = [(BuddyTargetDeviceMigrationManager *)self proximitySetupController];
  model = [(ProximitySetupController *)proximitySetupController model];
  [(BuddyTargetDeviceMigrationManager *)self setSourceDeviceModel:model];

  proximitySetupController2 = [(BuddyTargetDeviceMigrationManager *)self proximitySetupController];
  productVersion = [(ProximitySetupController *)proximitySetupController2 productVersion];
  [(BuddyTargetDeviceMigrationManager *)self setSourceDeviceProductVersion:productVersion];

  _targetDeviceTransferTask = [(BuddyTargetDeviceMigrationManager *)self _targetDeviceTransferTask];
  [_targetDeviceTransferTask start];
}

- (void)cancelDeviceTransferTask
{
  v2 = [(BuddyTargetDeviceMigrationManager *)self _targetDeviceTransferTask:a2];
  [v2 cancel];
}

- (void)didCancel
{
  selfCopy = self;
  v8[1] = a2;
  [(BuddyTargetDeviceMigrationManager *)self setWillMigrate:0];
  migrationQueue = [(BuddyTargetDeviceMigrationManager *)selfCopy migrationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000C92A4;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(migrationQueue, &block);

  objc_storeStrong(v8, 0);
}

- (void)didCompleteWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  [(BuddyTargetDeviceMigrationManager *)selfCopy setDidComplete:1];
  domain = [location[0] domain];
  v4 = 0;
  if ([domain isEqualToString:@"MBErrorDomain"])
  {
    v4 = [location[0] code] == 202;
  }

  if (v4)
  {
    v5 = BYDeviceMigrationManagerErrorDomain;
    v6 = [(BuddyTargetDeviceMigrationManager *)selfCopy cancellationCause]+ 1000;
    v33 = NSUnderlyingErrorKey;
    v34 = location[0];
    v7 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v8 = [NSError errorWithDomain:v5 code:v6 userInfo:v7];
    v9 = location[0];
    location[0] = v8;
  }

  if ([(BuddyTargetDeviceMigrationManager *)selfCopy userChoseMigration])
  {
    v31[0] = @"success";
    v26 = [NSNumber numberWithInt:location[0] == 0];
    v32[0] = v26;
    v31[1] = @"connectionType";
    connectionInfo = [(BuddyTargetDeviceMigrationManager *)selfCopy connectionInfo];
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [connectionInfo connectionType]);
    v32[1] = v11;
    v31[2] = @"sourceDeviceModel";
    sourceDeviceModel = [(BuddyTargetDeviceMigrationManager *)selfCopy sourceDeviceModel];
    v32[2] = sourceDeviceModel;
    v31[3] = @"sourceDeviceProductVersion";
    sourceDeviceProductVersion = [(BuddyTargetDeviceMigrationManager *)selfCopy sourceDeviceProductVersion];
    v32[3] = sourceDeviceProductVersion;
    v31[4] = @"inAppleStore";
    v14 = [NSNumber numberWithBool:[(BuddyTargetDeviceMigrationManager *)selfCopy inAppleStore]];
    v32[4] = v14;
    v31[5] = @"transferSize";
    v15 = [NSNumber numberWithUnsignedLongLong:[(BuddyTargetDeviceMigrationManager *)selfCopy bytesTransferred]];
    v32[5] = v15;
    v31[6] = @"numberOfFilesTransferred";
    v16 = [NSNumber numberWithUnsignedLongLong:[(BuddyTargetDeviceMigrationManager *)selfCopy filesTransferred]];
    v32[6] = v16;
    v31[7] = @"transferDuration";
    [(BuddyTargetDeviceMigrationManager *)selfCopy durationOfTransfer];
    v17 = [NSNumber numberWithDouble:?];
    v32[7] = v17;
    v31[8] = @"restoreDuration";
    [(BuddyTargetDeviceMigrationManager *)selfCopy durationOfRestore];
    v18 = [NSNumber numberWithDouble:?];
    v32[8] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:9];
    v28 = [NSMutableDictionary dictionaryWithDictionary:v19];

    if (location[0])
    {
      domain2 = [location[0] domain];
      v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%ld)", domain2, [location[0] code]);
      [v28 setObject:v21 forKeyedSubscript:@"error"];

      userInfo = [location[0] userInfo];
      v27 = [userInfo objectForKey:NSUnderlyingErrorKey];

      if (v27)
      {
        domain3 = [location[0] domain];
        v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%ld)", domain3, [location[0] code]);
        [v28 setObject:v24 forKeyedSubscript:@"underlyingError"];
      }

      objc_storeStrong(&v27, 0);
    }

    analyticsManager = [(BuddyTargetDeviceMigrationManager *)selfCopy analyticsManager];
    [(BYAnalyticsManager *)analyticsManager addEvent:@"com.apple.setupassistant.ios.migration" withPayload:v28 persist:1];

    objc_storeStrong(&v28, 0);
  }

  if (!location[0])
  {
    [(BuddyTargetDeviceMigrationManager *)selfCopy _stageReboot];
  }

  objc_storeStrong(location, 0);
}

- (__MKBAssertion)acquireDeviceLockAssertion
{
  selfCopy = self;
  v14 = a2;
  if ([(BuddyTargetDeviceMigrationManager *)self softwareUpdateDidOccur])
  {
    location = objc_alloc_init(BYBuddyDaemonGeneralClient);
    [location cancelDataMigratorDeferredExit];
    cf = 0;
    v10 = MKBDeviceLockAssertionConsume();
    if (v10)
    {
      oslog = _BYLoggingFacility();
      v8 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v2 = oslog;
        v3 = v8;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v2, v3, "Device lock assertion consumed during migration", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    else
    {
      v6 = _BYLoggingFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        if (_BYIsInternalInstall())
        {
          v4 = cf;
        }

        else
        {
          v4 = 0;
        }

        sub_100071CBC(v17, v4);
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to consume device lock assertion during migration - %{public}@", v17, 0xCu);
      }

      objc_storeStrong(&v6, 0);
      CFRelease(cf);
    }

    v16 = v10;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v13.receiver = selfCopy;
    v13.super_class = BuddyTargetDeviceMigrationManager;
    return [(BuddyTargetDeviceMigrationManager *)&v13 acquireDeviceLockAssertion];
  }

  return v16;
}

+ (id)createDeviceTransferTask:(id)task
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  v3 = [MBTargetDeviceTransferTask alloc];
  v4 = [v3 initWithFileTransferSession:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_stageReboot
{
  selfCopy = self;
  location[1] = a2;
  buddyPreferencesExcludedFromBackup = [(BuddyTargetDeviceMigrationManager *)self buddyPreferencesExcludedFromBackup];
  v3 = [BuddyMigrationState hasStateFromPreferences:buddyPreferencesExcludedFromBackup];

  if (v3)
  {
    location[0] = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = location[0];
      v5 = v20;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Promoting device lock assertion...", buf, 2u);
    }

    objc_storeStrong(location, 0);
    [(BuddyTargetDeviceMigrationManager *)selfCopy deviceLockAssertion];
    v18 = MKBDeviceLockAssertionPromote();
    if (v18)
    {
      oslog = _BYLoggingFacility();
      v16 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100082D54(v23, v18);
        _os_log_error_impl(&_mh_execute_header, oslog, v16, "Failed to promote device lock assertion: %d", v23, 8u);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  buddyPreferencesExcludedFromBackup2 = [(BuddyTargetDeviceMigrationManager *)selfCopy buddyPreferencesExcludedFromBackup];
  v7 = [NSNumber numberWithBool:[(BuddyTargetDeviceMigrationManager *)selfCopy softwareUpdateDidOccur]];
  [(BYPreferencesController *)buddyPreferencesExcludedFromBackup2 setObject:v7 forKey:BYBuddySoftwareUpdateMigration persistImmediately:1];

  prepareForMigrationRebootBlock = [(BuddyTargetDeviceMigrationManager *)selfCopy prepareForMigrationRebootBlock];
  prepareForMigrationRebootBlock[2](prepareForMigrationRebootBlock);

  v9 = &_dispatch_main_q;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000CA014;
  v14 = &unk_10032B0D0;
  v15 = selfCopy;
  dispatch_async(v9, &v10);

  objc_storeStrong(&v15, 0);
}

- (void)_rebootDevice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v27;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Rebooting...", buf, 2u);
  }

  objc_storeStrong(location, 0);
  v25 = objc_alloc_init(MBManager);
  lockdownModeProvider = [(BuddyTargetDeviceMigrationManager *)selfCopy lockdownModeProvider];
  hasStagedEnablement = [(LockdownModeProvider *)lockdownModeProvider hasStagedEnablement];

  if (hasStagedEnablement)
  {
    v24 = _BYLoggingFacility();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v24;
      v7 = v23;
      sub_10006AA68(v22);
      _os_log_impl(&_mh_execute_header, v6, v7, "Enabling lockdown...", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    lockdownModeProvider2 = [(BuddyTargetDeviceMigrationManager *)selfCopy lockdownModeProvider];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1000CA3D0;
    v20 = &unk_10032B6F0;
    v21 = v25;
    [(LockdownModeProvider *)lockdownModeProvider2 enableWithStrategy:1 completionHandler:&v16];

    objc_storeStrong(&v21, 0);
  }

  else
  {
    [v25 rebootDevice:0];
  }

  migrationQueue = [(BuddyTargetDeviceMigrationManager *)selfCopy migrationQueue];
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000CA544;
  v14 = &unk_10032B0D0;
  v15 = selfCopy;
  dispatch_async(migrationQueue, &v10);

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v25, 0);
}

- (void)connectionTerminated
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(BuddyTargetDeviceMigrationManager *)self ignoreProximityDisconnections])
  {
    oslog[0] = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v10;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Ignoring loss of proximity connection; will not cancel migration", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Cancelling migration in response to loss of proximity connection...", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
    [(BuddyTargetDeviceMigrationManager *)selfCopy cancelWithCause:4];
  }
}

@end