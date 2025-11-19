@interface BuddyTargetDeviceMigrationManager
+ (id)createDeviceTransferTask:(id)a3;
- (BOOL)hasVersionIncompatibility;
- (BOOL)migrationInProgressOrCompleted;
- (BOOL)requiresUpdateToMigrate;
- (BuddyTargetDeviceMigrationManager)initWithFileTranferSession:(id)a3 proximitySetupController:(id)a4 prepareForMigrationRebootBlock:(id)a5 passcodeCacheManager:(id)a6 buddyPreferencesExcludedFromBackup:(id)a7 analyticsManager:(id)a8 lockdownModeProvider:(id)a9;
- (__MKBAssertion)acquireDeviceLockAssertion;
- (void)_rebootDevice;
- (void)_stageReboot;
- (void)cancelDeviceTransferTask;
- (void)connectionTerminated;
- (void)didCancel;
- (void)didCompleteWithError:(id)a3;
- (void)reset;
- (void)start;
- (void)startDataTransfer;
- (void)startDeviceTransferTask;
- (void)startKeychainDataImport;
- (void)startKeychainDataTransferWithCompletionHandler:(id)a3;
- (void)startPreflight;
- (void)waitForKeychain:(id)a3;
- (void)waitForKeychainDataImport:(id)a3;
- (void)waitForKeychainDataTransfer:(id)a3;
- (void)waitForPreflight:(id)a3;
@end

@implementation BuddyTargetDeviceMigrationManager

- (BuddyTargetDeviceMigrationManager)initWithFileTranferSession:(id)a3 proximitySetupController:(id)a4 prepareForMigrationRebootBlock:(id)a5 passcodeCacheManager:(id)a6 buddyPreferencesExcludedFromBackup:(id)a7 analyticsManager:(id)a8 lockdownModeProvider:(id)a9
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v25 = 0;
  objc_storeStrong(&v25, a6);
  v24 = 0;
  objc_storeStrong(&v24, a7);
  v23 = 0;
  objc_storeStrong(&v23, a8);
  v22 = 0;
  objc_storeStrong(&v22, a9);
  v14 = v29;
  v29 = 0;
  v21.receiver = v14;
  v21.super_class = BuddyTargetDeviceMigrationManager;
  v29 = [(BuddyTargetDeviceMigrationManager *)&v21 initWithFileTranferSession:location[0]];
  objc_storeStrong(&v29, v29);
  if (v29)
  {
    objc_storeStrong(v29 + 4, obj);
    v15 = objc_retainBlock(v26);
    v16 = *(v29 + 5);
    *(v29 + 5) = v15;

    objc_storeStrong(v29 + 15, v25);
    objc_storeStrong(v29 + 16, v24);
    objc_storeStrong(v29 + 17, v23);
    v17 = +[BYPreferencesController buddyPreferencesInternal];
    v18 = [v17 BOOLForKey:@"RequireSoftwareUpdateForMigration"];
    *(v29 + 9) = v18 & 1;

    objc_storeStrong(v29 + 19, v22);
  }

  v19 = v29;
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v29, 0);
  return v19;
}

- (void)start
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyTargetDeviceMigrationManager;
  [(BuddyTargetDeviceMigrationManager *)&v6 start];
  v2 = dispatch_queue_create("Keychain Data Transfer Completion Queue", 0);
  [(BuddyTargetDeviceMigrationManager *)v8 setKeychainDataTransferCompletionQueue:v2];

  v3 = [(BuddyTargetDeviceMigrationManager *)v8 keychainDataTransferCompletionQueue];
  dispatch_suspend(v3);

  v4 = [(BuddyTargetDeviceMigrationManager *)v8 networkProvider];
  v5 = [(BuddyNetworkProvider *)v4 inAppleStore];
  [(BuddyTargetDeviceMigrationManager *)v8 setInAppleStore:v5 & 1];
}

- (void)startPreflight
{
  v9 = self;
  v8[1] = a2;
  v2 = [(BuddyTargetDeviceMigrationManager *)self migrationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000C74B0;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)waitForPreflight:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyTargetDeviceMigrationManager *)v12 migrationQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C79C0;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)startKeychainDataTransferWithCompletionHandler:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyTargetDeviceMigrationManager *)v12 migrationQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C7BD0;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)waitForKeychainDataTransfer:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyTargetDeviceMigrationManager *)v12 keychainDataTransferCompletionQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C80EC;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)startKeychainDataImport
{
  v9 = self;
  v8[1] = a2;
  v2 = [(BuddyTargetDeviceMigrationManager *)self migrationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000C83C4;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)waitForKeychainDataImport:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyTargetDeviceMigrationManager *)v12 migrationQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C88E0;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)waitForKeychain:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C8A5C;
  v8 = &unk_10032C4C0;
  v10 = location[0];
  v9 = v12;
  [(BuddyTargetDeviceMigrationManager *)v3 waitForKeychainDataTransfer:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)startDataTransfer
{
  v10 = self;
  v9[1] = a2;
  v2 = [(BuddyTargetDeviceMigrationManager *)self passcodeCacheManager];
  [(BYPasscodeCacheManager *)v2 persistPasscodeStash];

  v3 = [(BuddyTargetDeviceMigrationManager *)v10 migrationQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000C8BBC;
  v8 = &unk_10032B0D0;
  v9[0] = v10;
  dispatch_async(v3, &block);

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
  v3 = 1;
  if (!requiresUpdateToMigrate)
  {
    v3 = [(BuddyTargetDeviceMigrationManager *)self forceUpdateToMigrate];
  }

  return v3 & 1;
}

- (BOOL)hasVersionIncompatibility
{
  v2 = [(BuddyTargetDeviceMigrationManager *)self error];
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:@"MBErrorDomain"];
  v7 = 0;
  v5 = 0;
  if (v4)
  {
    v8 = [(BuddyTargetDeviceMigrationManager *)self error];
    v7 = 1;
    v5 = [v8 code] == 203;
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
    v2 = [(BuddyTargetDeviceMigrationManager *)self willMigrate];
    v3 = 1;
    if ((v2 & 1) == 0)
    {
      v3 = [(BuddyTargetDeviceMigrationManager *)self didComplete];
    }

    return v3 & 1;
  }

  return v5;
}

- (void)startDeviceTransferTask
{
  v2 = [(BuddyTargetDeviceMigrationManager *)self proximitySetupController];
  v3 = [(ProximitySetupController *)v2 model];
  [(BuddyTargetDeviceMigrationManager *)self setSourceDeviceModel:v3];

  v4 = [(BuddyTargetDeviceMigrationManager *)self proximitySetupController];
  v5 = [(ProximitySetupController *)v4 productVersion];
  [(BuddyTargetDeviceMigrationManager *)self setSourceDeviceProductVersion:v5];

  v6 = [(BuddyTargetDeviceMigrationManager *)self _targetDeviceTransferTask];
  [v6 start];
}

- (void)cancelDeviceTransferTask
{
  v2 = [(BuddyTargetDeviceMigrationManager *)self _targetDeviceTransferTask:a2];
  [v2 cancel];
}

- (void)didCancel
{
  v9 = self;
  v8[1] = a2;
  [(BuddyTargetDeviceMigrationManager *)self setWillMigrate:0];
  v2 = [(BuddyTargetDeviceMigrationManager *)v9 migrationQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000C92A4;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)didCompleteWithError:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyTargetDeviceMigrationManager *)v30 setDidComplete:1];
  v3 = [location[0] domain];
  v4 = 0;
  if ([v3 isEqualToString:@"MBErrorDomain"])
  {
    v4 = [location[0] code] == 202;
  }

  if (v4)
  {
    v5 = BYDeviceMigrationManagerErrorDomain;
    v6 = [(BuddyTargetDeviceMigrationManager *)v30 cancellationCause]+ 1000;
    v33 = NSUnderlyingErrorKey;
    v34 = location[0];
    v7 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v8 = [NSError errorWithDomain:v5 code:v6 userInfo:v7];
    v9 = location[0];
    location[0] = v8;
  }

  if ([(BuddyTargetDeviceMigrationManager *)v30 userChoseMigration])
  {
    v31[0] = @"success";
    v26 = [NSNumber numberWithInt:location[0] == 0];
    v32[0] = v26;
    v31[1] = @"connectionType";
    v10 = [(BuddyTargetDeviceMigrationManager *)v30 connectionInfo];
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 connectionType]);
    v32[1] = v11;
    v31[2] = @"sourceDeviceModel";
    v12 = [(BuddyTargetDeviceMigrationManager *)v30 sourceDeviceModel];
    v32[2] = v12;
    v31[3] = @"sourceDeviceProductVersion";
    v13 = [(BuddyTargetDeviceMigrationManager *)v30 sourceDeviceProductVersion];
    v32[3] = v13;
    v31[4] = @"inAppleStore";
    v14 = [NSNumber numberWithBool:[(BuddyTargetDeviceMigrationManager *)v30 inAppleStore]];
    v32[4] = v14;
    v31[5] = @"transferSize";
    v15 = [NSNumber numberWithUnsignedLongLong:[(BuddyTargetDeviceMigrationManager *)v30 bytesTransferred]];
    v32[5] = v15;
    v31[6] = @"numberOfFilesTransferred";
    v16 = [NSNumber numberWithUnsignedLongLong:[(BuddyTargetDeviceMigrationManager *)v30 filesTransferred]];
    v32[6] = v16;
    v31[7] = @"transferDuration";
    [(BuddyTargetDeviceMigrationManager *)v30 durationOfTransfer];
    v17 = [NSNumber numberWithDouble:?];
    v32[7] = v17;
    v31[8] = @"restoreDuration";
    [(BuddyTargetDeviceMigrationManager *)v30 durationOfRestore];
    v18 = [NSNumber numberWithDouble:?];
    v32[8] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:9];
    v28 = [NSMutableDictionary dictionaryWithDictionary:v19];

    if (location[0])
    {
      v20 = [location[0] domain];
      v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%ld)", v20, [location[0] code]);
      [v28 setObject:v21 forKeyedSubscript:@"error"];

      v22 = [location[0] userInfo];
      v27 = [v22 objectForKey:NSUnderlyingErrorKey];

      if (v27)
      {
        v23 = [location[0] domain];
        v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%ld)", v23, [location[0] code]);
        [v28 setObject:v24 forKeyedSubscript:@"underlyingError"];
      }

      objc_storeStrong(&v27, 0);
    }

    v25 = [(BuddyTargetDeviceMigrationManager *)v30 analyticsManager];
    [(BYAnalyticsManager *)v25 addEvent:@"com.apple.setupassistant.ios.migration" withPayload:v28 persist:1];

    objc_storeStrong(&v28, 0);
  }

  if (!location[0])
  {
    [(BuddyTargetDeviceMigrationManager *)v30 _stageReboot];
  }

  objc_storeStrong(location, 0);
}

- (__MKBAssertion)acquireDeviceLockAssertion
{
  v15 = self;
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
    v13.receiver = v15;
    v13.super_class = BuddyTargetDeviceMigrationManager;
    return [(BuddyTargetDeviceMigrationManager *)&v13 acquireDeviceLockAssertion];
  }

  return v16;
}

+ (id)createDeviceTransferTask:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MBTargetDeviceTransferTask alloc];
  v4 = [v3 initWithFileTransferSession:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_stageReboot
{
  v22 = self;
  location[1] = a2;
  v2 = [(BuddyTargetDeviceMigrationManager *)self buddyPreferencesExcludedFromBackup];
  v3 = [BuddyMigrationState hasStateFromPreferences:v2];

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
    [(BuddyTargetDeviceMigrationManager *)v22 deviceLockAssertion];
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

  v6 = [(BuddyTargetDeviceMigrationManager *)v22 buddyPreferencesExcludedFromBackup];
  v7 = [NSNumber numberWithBool:[(BuddyTargetDeviceMigrationManager *)v22 softwareUpdateDidOccur]];
  [(BYPreferencesController *)v6 setObject:v7 forKey:BYBuddySoftwareUpdateMigration persistImmediately:1];

  v8 = [(BuddyTargetDeviceMigrationManager *)v22 prepareForMigrationRebootBlock];
  v8[2](v8);

  v9 = &_dispatch_main_q;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000CA014;
  v14 = &unk_10032B0D0;
  v15 = v22;
  dispatch_async(v9, &v10);

  objc_storeStrong(&v15, 0);
}

- (void)_rebootDevice
{
  v29 = self;
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
  v4 = [(BuddyTargetDeviceMigrationManager *)v29 lockdownModeProvider];
  v5 = [(LockdownModeProvider *)v4 hasStagedEnablement];

  if (v5)
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
    v8 = [(BuddyTargetDeviceMigrationManager *)v29 lockdownModeProvider];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1000CA3D0;
    v20 = &unk_10032B6F0;
    v21 = v25;
    [(LockdownModeProvider *)v8 enableWithStrategy:1 completionHandler:&v16];

    objc_storeStrong(&v21, 0);
  }

  else
  {
    [v25 rebootDevice:0];
  }

  v9 = [(BuddyTargetDeviceMigrationManager *)v29 migrationQueue];
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000CA544;
  v14 = &unk_10032B0D0;
  v15 = v29;
  dispatch_async(v9, &v10);

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v25, 0);
}

- (void)connectionTerminated
{
  v12 = self;
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
    [(BuddyTargetDeviceMigrationManager *)v12 cancelWithCause:4];
  }
}

@end