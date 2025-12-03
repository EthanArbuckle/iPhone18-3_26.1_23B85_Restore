@interface COSBackupManager
+ (id)sharedBackupManager;
- (COSBackupManager)init;
- (COSBuddyManagerBackupsChanged)delegate;
- (NSArray)pairedDevices;
- (NSString)deviceNameToRestore;
- (id)compatiblePairedDevices;
- (id)removeIncompatibleBackups:(id)backups;
- (id)sortBackups:(id)backups;
- (id)sortDevices:(id)devices;
- (unint64_t)shouldOfferToRestore;
- (void)loadBackups;
- (void)loadiCloudBackups;
- (void)reloadBackups;
- (void)reset;
- (void)restoreFromBackup:(id)backup toDevice:(id)device completionHandler:(id)handler;
- (void)restoreFromDevice:(id)device toDevice:(id)toDevice completionHandler:(id)handler;
- (void)setMinWatchOSVersion:(id)version;
- (void)updateCompatiblePairedOrArchivedDeviceListIfNeeded;
@end

@implementation COSBackupManager

+ (id)sharedBackupManager
{
  if (qword_1002BD570 != -1)
  {
    sub_100009F1C();
  }

  v3 = qword_1002BD568;

  return v3;
}

- (COSBackupManager)init
{
  v12.receiver = self;
  v12.super_class = COSBackupManager;
  v2 = [(COSBackupManager *)&v12 init];
  if (v2)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v3 = qword_1002BD578;
    v17 = qword_1002BD578;
    if (!qword_1002BD578)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000A118;
      v13[3] = &unk_1002680D0;
      v13[4] = &v14;
      sub_10000A118(v13);
      v3 = v15[3];
    }

    v4 = v3;
    _Block_object_dispose(&v14, 8);
    v5 = [v3 alloc];
    v6 = dispatch_get_global_queue(2, 0);
    v7 = [v5 initWithQueue:v6];
    backupController = v2->_backupController;
    v2->_backupController = v7;

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000A50C;
    v10[3] = &unk_1002682F0;
    v11 = v2;
    if (qword_1002BD560 != -1)
    {
      dispatch_once(&qword_1002BD560, v10);
    }
  }

  return v2;
}

- (void)loadiCloudBackups
{
  backupController = self->_backupController;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000AB88;
  v3[3] = &unk_10026AE80;
  v3[4] = self;
  [(NBManager *)backupController listBackupsOfType:2 timeout:60 completionHandler:v3];
}

- (void)loadBackups
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  v5 = objc_opt_new();
  localBackups = self->_localBackups;
  self->_localBackups = v5;

  self->_loadBackupsStarted = 1;
  if (isTinkerPairing)
  {
    if (PBLogPerformanceMetrics())
    {
      v7 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v7 beginMacroActivity:PBBridgeTinkerBackupActivityName beginTime:CFAbsoluteTimeGetCurrent()];
    }

    backupController = self->_backupController;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000BB0D8;
    v11[3] = &unk_10026AE80;
    v11[4] = self;
    [(NBManager *)backupController listBackupsOfType:3 timeout:180 completionHandler:v11];
  }

  else
  {
    v9 = self->_backupController;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000BB250;
    v10[3] = &unk_10026AE80;
    v10[4] = self;
    [(NBManager *)v9 listBackupsOfType:1 timeout:20 completionHandler:v10];
    [(COSBackupManager *)self loadiCloudBackups];
  }
}

- (void)setMinWatchOSVersion:(id)version
{
  versionCopy = version;
  objc_storeStrong(&self->_minWatchOSVersion, version);
  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = versionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setMinWatchOSVersion to: %@", &v7, 0xCu);
  }

  *&self->_isCompatibleBackupListCurrent = 0;
}

- (void)reset
{
  minWatchOSVersion = self->_minWatchOSVersion;
  self->_minWatchOSVersion = 0;

  localBackups = self->_localBackups;
  self->_localBackups = 0;

  *&self->_isCompatibleBackupListCurrent = 0;
  backupRestoredFrom = self->_backupRestoredFrom;
  self->_backupRestoredFrom = 0;

  deviceRestoredFrom = self->_deviceRestoredFrom;
  self->_deviceRestoredFrom = 0;

  targetDevice = self->_targetDevice;
  self->_targetDevice = 0;

  *&self->_foundBackup = 0;
  *&self->_localBackupsLoaded = 0;
}

- (unint64_t)shouldOfferToRestore
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  loadBackupsStarted = self->_loadBackupsStarted;
  v6 = pbb_setupflow_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!loadBackupsStarted)
  {
    if (v7)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Backups not loaded, loading...", &v19, 2u);
    }

    [(COSBackupManager *)self loadBackups];
    return 0;
  }

  if (isTinkerPairing)
  {
    if (v7)
    {
      v8 = self->_loadBackupsStarted;
      foundBackup = self->_foundBackup;
      tinkerBackupsLoaded = self->_tinkerBackupsLoaded;
      v19 = 67109632;
      v20 = v8;
      v21 = 1024;
      v22 = foundBackup;
      v23 = 1024;
      v24 = tinkerBackupsLoaded;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "tinker pairing: loadStarted: %d foundBackup: %d tinkerBackupsLoaded: %d", &v19, 0x14u);
    }

    if (!self->_foundBackup)
    {
      v11 = self->_tinkerBackupsLoaded;
      goto LABEL_7;
    }

    return 1;
  }

  if (v7)
  {
    v13 = self->_loadBackupsStarted;
    v14 = self->_foundBackup;
    localBackupsLoaded = self->_localBackupsLoaded;
    iCloudBackupsLoaded = self->_iCloudBackupsLoaded;
    v19 = 67109888;
    v20 = v13;
    v21 = 1024;
    v22 = v14;
    v23 = 1024;
    v24 = localBackupsLoaded;
    v25 = 1024;
    v26 = iCloudBackupsLoaded;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "shouldOfferToRestore: loadStarted: %d foundBackup: %d localBackupsLoaded: %d iCloudBackupsLoaded: %d", &v19, 0x1Au);
  }

  if (self->_foundBackup)
  {
    return 1;
  }

  pairedDevices = [(COSBackupManager *)self pairedDevices];
  v18 = [pairedDevices count];

  if (v18)
  {
    return 1;
  }

  if (!self->_localBackupsLoaded)
  {
    return 0;
  }

  v11 = self->_iCloudBackupsLoaded;
LABEL_7:
  if (v11)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (NSArray)pairedDevices
{
  [(COSBackupManager *)self updateCompatiblePairedOrArchivedDeviceListIfNeeded];
  compatiblePairedOrArchivedDevices = self->_compatiblePairedOrArchivedDevices;

  return compatiblePairedOrArchivedDevices;
}

- (void)restoreFromBackup:(id)backup toDevice:(id)device completionHandler:(id)handler
{
  backupCopy = backup;
  deviceCopy = device;
  handlerCopy = handler;
  backupController = self->_backupController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000BB8A0;
  v15[3] = &unk_10026AFC0;
  v15[4] = self;
  v16 = backupCopy;
  v17 = deviceCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = deviceCopy;
  v14 = backupCopy;
  [(NBManager *)backupController restoreFromBackup:v14 forDevice:v13 completionHandler:v15];
}

- (void)restoreFromDevice:(id)device toDevice:(id)toDevice completionHandler:(id)handler
{
  deviceCopy = device;
  toDeviceCopy = toDevice;
  handlerCopy = handler;
  backupController = self->_backupController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000BBA34;
  v15[3] = &unk_10026AFC0;
  v15[4] = self;
  v16 = deviceCopy;
  v17 = toDeviceCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = toDeviceCopy;
  v14 = deviceCopy;
  [(NBManager *)backupController restoreFromDevice:v14 forDevice:v13 completionHandler:v15];
}

- (NSString)deviceNameToRestore
{
  backupRestoredFrom = self->_backupRestoredFrom;
  if (backupRestoredFrom)
  {
    backupRestoredFrom = [backupRestoredFrom name];
    v2 = vars8;
  }

  return backupRestoredFrom;
}

- (void)reloadBackups
{
  v3 = self->_minWatchOSVersion;
  [(COSBackupManager *)self reset];
  minWatchOSVersion = self->_minWatchOSVersion;
  self->_minWatchOSVersion = v3;
  v5 = v3;

  [(COSBackupManager *)self loadBackups];
}

- (id)compatiblePairedDevices
{
  v3 = +[COSBackupManager sharedBackupManager];
  minWatchOSVersion = [v3 minWatchOSVersion];
  v5 = NRWatchOSVersion();

  v6 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  pairedDevices = [(COSBackupManager *)self pairedDevices];
  v8 = [pairedDevices countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = NRDevicePropertyPairingID;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(pairedDevices);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = NRWatchOSVersionForRemoteDevice();
        v15 = pbb_setupflow_log();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v5 >= v14)
        {
          if (v16)
          {
            v18 = [v13 valueForProperty:v11];
            *buf = 138412290;
            v25 = v18;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found paired watch: %@ version allowed", buf, 0xCu);
          }

          [v6 addObject:v13];
        }

        else
        {
          if (v16)
          {
            v17 = [v13 valueForProperty:v11];
            *buf = 138412290;
            v25 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found paired watch: %@ version not allowed (skipping)", buf, 0xCu);
          }
        }
      }

      v9 = [pairedDevices countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)removeIncompatibleBackups:(id)backups
{
  backupsCopy = backups;
  v5 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v6 = [v5 valueForProperty:NRDevicePropertyChipID];
  v7 = [(NSDictionary *)self->_chipIDToLastSupportedPrefix objectForKeyedSubscript:v6];
  integerValue = [v7 integerValue];

  v9 = pbb_setupflow_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Looking at chipid: %@", buf, 0xCu);
  }

  v10 = [(NSDictionary *)self->_chipIDToLastSupportedPrefix objectForKeyedSubscript:v6];

  if (v10)
  {
    v27 = v6;
    v28 = v5;
    v30 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = backupsCopy;
    obj = backupsCopy;
    v11 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          systemVersion = [v15 systemVersion];
          v17 = [systemVersion componentsSeparatedByString:@"."];
          v18 = [v17 objectAtIndexedSubscript:0];
          integerValue2 = [v18 integerValue];

          v20 = pbb_setupflow_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v37 = integerValue2;
            v38 = 2048;
            v39 = integerValue;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "comparing %ld to %ld", buf, 0x16u);
          }

          v21 = pbb_setupflow_log();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (integerValue2 <= integerValue)
          {
            if (v22)
            {
              uuid = [v15 uuid];
              uUIDString = [uuid UUIDString];
              backupType = [v15 backupType];
              *buf = 138412546;
              v37 = uUIDString;
              v38 = 1024;
              LODWORD(v39) = backupType == 1;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Adding backup with id: %@ fromCloud: %{BOOL}d", buf, 0x12u);
            }

            [v30 addObject:v15];
          }

          else
          {
            if (v22)
            {
              *buf = 138412290;
              v37 = v15;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Skipping backup that is beyond a version this watch can be updated to: %@", buf, 0xCu);
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v12);
    }

    v5 = v28;
    backupsCopy = v29;
    v6 = v27;
  }

  else
  {
    v30 = backupsCopy;
  }

  return v30;
}

- (id)sortBackups:(id)backups
{
  v3 = [NSMutableArray arrayWithArray:backups];
  [v3 sortUsingComparator:&stru_10026B000];
  v4 = [NSArray arrayWithArray:v3];

  return v4;
}

- (id)sortDevices:(id)devices
{
  v3 = [NSMutableArray arrayWithArray:devices];
  [v3 sortUsingComparator:&stru_10026B020];

  return v3;
}

- (void)updateCompatiblePairedOrArchivedDeviceListIfNeeded
{
  if (!self->_isCompatiblePairedDeviceListCurrent)
  {
    selfCopy = self;
    self->_isCompatiblePairedDeviceListCurrent = 1;
    bridgeController = [UIApp bridgeController];
    isTinkerPairing = [bridgeController isTinkerPairing];

    if (isTinkerPairing)
    {
      compatiblePairedOrArchivedDevices = selfCopy->_compatiblePairedOrArchivedDevices;
      selfCopy->_compatiblePairedOrArchivedDevices = 0;
    }

    else
    {
      v6 = objc_opt_new();
      v32 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
      v37 = [v32 valueForProperty:NRDevicePropertyChipID];
      v7 = [(NSDictionary *)selfCopy->_chipIDToLastSupportedPrefix objectForKeyedSubscript:?];
      integerValue = [v7 integerValue];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v8 = sub_100009AB4();
      v9 = [v8 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v43;
        v12 = NRDevicePropertyIsAltAccount;
        v33 = NRDevicePropertySystemVersion;
        v34 = v8;
        v35 = v6;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v43 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v42 + 1) + 8 * i);
            v15 = [v14 valueForProperty:v12];

            if (!v15)
            {
              v16 = [(NSDictionary *)selfCopy->_chipIDToLastSupportedPrefix objectForKeyedSubscript:v37];

              if (!v16)
              {
                goto LABEL_16;
              }

              v17 = selfCopy;
              v18 = [v14 valueForProperty:v33];
              v19 = [v18 componentsSeparatedByString:@"."];
              v20 = [v19 objectAtIndexedSubscript:0];
              integerValue2 = [v20 integerValue];

              v22 = pbb_setupflow_log();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                v48 = integerValue2;
                v49 = 2048;
                v50 = integerValue;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "comparing(device) %ld to %ld", buf, 0x16u);
              }

              selfCopy = v17;
              v8 = v34;
              v6 = v35;
              if (integerValue2 <= integerValue)
              {
LABEL_16:
                [v6 addObject:v14];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v10);
      }

      v23 = +[NRPairedDeviceRegistry sharedInstance];
      v24 = [v23 getAllDevicesWithArchivedDevicesMatching:&stru_10026B040];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v39;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v39 != v28)
            {
              objc_enumerationMutation(v25);
            }

            [v6 addObject:*(*(&v38 + 1) + 8 * j)];
          }

          v27 = [v25 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v27);
      }

      v30 = [(COSBackupManager *)selfCopy sortDevices:v6];
      v31 = selfCopy->_compatiblePairedOrArchivedDevices;
      selfCopy->_compatiblePairedOrArchivedDevices = v30;
    }
  }
}

- (COSBuddyManagerBackupsChanged)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end