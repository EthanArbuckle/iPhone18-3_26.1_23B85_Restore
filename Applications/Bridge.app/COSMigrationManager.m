@interface COSMigrationManager
- (BOOL)isDeviceMigrating:(id)a3;
- (BOOL)isDeviceWaitingToMigrate:(id)a3;
- (COSMigrationManager)init;
- (COSMigrationProgressDelegate)delegate;
- (NSArray)migratableDevices;
- (id)_deviceWatingToSync;
- (id)_getMigratingDevice;
- (id)_syncingDevice;
- (void)_configureCurrentState;
- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5;
- (void)startMigration;
- (void)syncSessionObserver:(id)a3 didReceiveUpdate:(id)a4;
- (void)tinkerMigrationStarted:(id)a3;
- (void)updateMigrationState;
@end

@implementation COSMigrationManager

- (COSMigrationManager)init
{
  v8.receiver = self;
  v8.super_class = COSMigrationManager;
  v2 = [(COSMigrationManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(COSMigrationManager *)v2 _configureCurrentState];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];

    if ([(COSMigrationManager *)v3 currentState]== 1)
    {
      migratingDevice = v3->_migratingDevice;
      v9 = _NRDevicePropertyStatusCode;
      v6 = [NSArray arrayWithObjects:&v9 count:1];
      [(NRDevice *)migratingDevice addPropertyObserver:v3 forPropertyChanges:v6];

      *&v3->_enableReportFailure = 257;
    }
  }

  return v3;
}

- (NSArray)migratableDevices
{
  v2 = +[NRMigrator sharedMigrator];
  v3 = [v2 migratableDevices];

  v4 = +[NRMigrator sharedMigrator];
  v5 = [v4 migratableDevicesRequiringConsent];

  if (v3)
  {
    v6 = [v3 arrayByAddingObjectsFromArray:v5];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (void)_configureCurrentState
{
  v3 = [(COSMigrationManager *)self _getMigratingDevice];
  migratingDevice = self->_migratingDevice;
  self->_migratingDevice = v3;

  if (self->_migratingDevice)
  {
    self->_currentState = 1;
    goto LABEL_14;
  }

  v5 = [(COSMigrationManager *)self _deviceWatingToSync];
  if (v5)
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 pairingID];
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device: %@ waiting to sync", buf, 0xCu);
    }

    if (self->_progressObserver)
    {
      v8 = [(COSMigrationManager *)self currentSession];
      [v8 sessionProgress];
      v10 = v9 < 1.0;

      if (v10)
      {
LABEL_12:
        objc_storeStrong(&self->_migratingDevice, v5);
        goto LABEL_13;
      }

      v11 = 0;
    }

    else
    {
      v11 = 3;
    }

    self->_currentState = v11;
    goto LABEL_12;
  }

  self->_currentState = 0;
  [(COSMigrationManager *)self setDiscoveredWatch:0];
LABEL_13:

LABEL_14:
  if (!self->_progressObserver)
  {
    v12 = objc_alloc_init(PSYSyncSessionObserver);
    progressObserver = self->_progressObserver;
    self->_progressObserver = v12;

    [(PSYSyncSessionObserver *)self->_progressObserver setDelegate:self];
    objc_initWeak(buf, self);
    v14 = self->_progressObserver;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100105188;
    v18[3] = &unk_10026B4C0;
    objc_copyWeak(&v19, buf);
    [(PSYSyncSessionObserver *)v14 startObservingSyncSessionsWithCompletion:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  v15 = [(COSMigrationManager *)self delegate];
  v16 = [(COSMigrationManager *)self currentState];
  v17 = [(COSMigrationManager *)self currentSession];
  [v17 sessionProgress];
  [v15 migrationProgressUpdate:v16 percentageComplete:self->_migratingDevice migratingDevice:?];
}

- (id)_deviceWatingToSync
{
  v19 = +[NRPairedDeviceRegistry sharedInstance];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = sub_100009350();
  v2 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    v5 = NRDevicePropertyIsActive;
    v6 = _NRDevicePropertyMigrationCount;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 valueForProperty:v5];
        v10 = [v9 BOOLValue];

        v11 = [v8 pairingID];
        v12 = [v19 migrationCountForPairingID:v11];

        v13 = [v8 valueForProperty:v6];
        v14 = [v13 integerValue];

        if (v12 != v14 && v10 != 0)
        {
          v16 = v8;
          goto LABEL_14;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (id)_syncingDevice
{
  v2 = [(COSMigrationManager *)self currentSession];
  v3 = [v2 pairingIdentifier];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = sub_100005F18();
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 pairingID];
        v10 = [v9 isEqual:v3];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)_getMigratingDevice
{
  BPSArchivedDevices();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v2 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = 0;
    v6 = *v22;
    v7 = _NRDevicePropertyStatusCode;
    v8 = NRDevicePropertyIsActive;
    *&v3 = 138412290;
    v19 = v3;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 valueForProperty:{v7, v19}];
        v12 = [v10 valueForProperty:v8];
        v13 = [v12 BOOLValue];

        if ([v11 integerValue] == 4 && v13 != 0)
        {
          v15 = v10;

          v16 = pbb_setupflow_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v15 pairingID];
            *buf = v19;
            v26 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found migrating device - %@", buf, 0xCu);
          }

          v5 = v15;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tinkerMigrationStarted:(id)a3
{
  self->_currentState = 1;
  objc_storeStrong(&self->_migratingDevice, a3);
  v5 = a3;
  self->_discoveredWatch = 1;
  v7 = _NRDevicePropertyStatusCode;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v5 addPropertyObserver:self forPropertyChanges:v6];
}

- (void)startMigration
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 activeWatchAssertion];

  v24 = v4;
  if (v4)
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found active watch assertion, invalidate so migration can proceed", buf, 2u);
    }

    v6 = +[UIApplication sharedApplication];
    [v6 cancelTinkerSwitch:0];
  }

  [(COSMigrationManager *)self setEnableReportFailure:1, v24];
  [(COSMigrationManager *)self setDiscoveredWatch:0];
  [(COSMigrationManager *)self setCurrentState:1];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [(COSMigrationManager *)self migratableDevices];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    v11 = _NRDevicePropertyStatusCode;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v37 = v11;
        v14 = [NSArray arrayWithObjects:&v37 count:1];
        [v13 addPropertyObserver:self forPropertyChanges:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v9);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100105C24, NRMigrationDevicesCannotBeDiscoveredDarwinNotification, 0, 1024);
  v16 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v16, self, sub_100105D1C, NRMigrationDeviceFoundBeginningMigrationDarwinNotification, 0, 1024);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [(COSMigrationManager *)self migratableDevices];
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        v23 = +[NRMigrator sharedMigrator];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100105D28;
        v26[3] = &unk_1002684A8;
        v26[4] = v22;
        [v23 setMigrationConsented:0 forDevice:v22 withBlock:v26];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v19);
  }
}

- (void)updateMigrationState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  currentState = self->_currentState;
  [(PSYSyncSession *)self->_currentSession sessionProgress];
  [WeakRetained migrationProgressUpdate:currentState percentageComplete:self->_migratingDevice migratingDevice:?];
}

- (void)syncSessionObserver:(id)a3 didReceiveUpdate:(id)a4
{
  v11 = a4;
  v5 = [v11 updatedSession];
  if ([v5 syncSessionType] == 2)
  {
    v6 = [v11 updatedSession];
    v7 = [v6 syncSessionState];

    if (v7 == 1)
    {
      v8 = [v11 updatedSession];
      currentSession = self->_currentSession;
      self->_currentSession = v8;

      [(COSMigrationManager *)self setCurrentState:2];
      v10 = [(COSMigrationManager *)self _syncingDevice];
      [(COSMigrationManager *)self setMigratingDevice:v10];

      [(COSMigrationManager *)self updateMigrationState];
    }
  }

  else
  {
  }
}

- (BOOL)isDeviceWaitingToMigrate:(id)a3
{
  v3 = [a3 valueForProperty:NRDevicePropertyIsArchived];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isDeviceMigrating:(id)a3
{
  v4 = a3;
  v5 = [(COSMigrationManager *)self _getMigratingDevice];
  v6 = [v5 pairingID];
  v7 = [v4 pairingID];

  if (self->_currentState == 2)
  {
    v8 = [(PSYSyncSession *)self->_currentSession pairingIdentifier];

    v6 = v8;
  }

  v9 = [v7 isEqual:v6];

  return v9;
}

- (void)device:(id)a3 propertyDidChange:(id)a4 fromValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pbb_bridge_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 pairingID];
    *buf = 134218754;
    v29 = self;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "propertyDidChange: self: (%p); device: (%@); property: (%@); fromValue: (%@)", buf, 0x2Au);
  }

  v13 = _NRDevicePropertyStatusCode;
  if ([v9 isEqualToString:_NRDevicePropertyStatusCode] && self->_discoveredWatch)
  {
    objc_initWeak(buf, self);
    v14 = [v8 valueForProperty:v13];
    v15 = [v8 valueForProperty:NRDevicePropertyIsArchived];
    v16 = [v8 valueForProperty:NRDevicePropertyIsActive];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001063A0;
    v21[3] = &unk_10026A518;
    objc_copyWeak(&v27, buf);
    v22 = v15;
    v23 = v14;
    v24 = v10;
    v25 = v16;
    v26 = self;
    v17 = v16;
    v18 = v14;
    v19 = v15;
    dispatch_async(&_dispatch_main_q, v21);

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v20 = pbb_bridge_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "status changed, watch undiscovered, ignoring", buf, 2u);
    }
  }
}

- (COSMigrationProgressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end