@interface ATDeviceSettings
+ (ATDeviceSettings)sharedInstance;
- (ATDeviceSettings)init;
- (BOOL)fairPlayEnabled;
- (BOOL)grappaEnabled;
- (BOOL)isSyncPendingForDataClass:(id)class;
- (BOOL)restoreBatchingEnabled;
- (BOOL)useNewDownloadService;
- (BOOL)watchProxyDownloadsDisabled;
- (NSString)libraryIdentifier;
- (NSString)serviceDomain;
- (NSString)serviceName;
- (NSString)serviceType;
- (double)lastAuthenticationDialogResponseTime;
- (double)pairingSyncCompletionTime;
- (id)_endpointInfoForLibrary:(id)library;
- (id)getCurrentInstallDisposition;
- (id)getPreExistingStoreIdentifiers;
- (id)hostInfoForLibrary:(id)library;
- (id)lastSyncTimeForLibrary:(id)library dataClass:(id)class;
- (id)syncStateForLibrary:(id)library dataClass:(id)class;
- (unint64_t)restoreBatchSize;
- (unint64_t)versionForDataclass:(id)dataclass;
- (void)_setEndpointInfo:(id)info forLibrary:(id)library;
- (void)removeEndpointInfoForLibrary:(id)library;
- (void)removePendingSyncSettingForDataClass:(id)class;
- (void)setActiveRestoreType:(int)type;
- (void)setCurrentInstallDisposition:(id)disposition;
- (void)setEndpointInfo:(id)info;
- (void)setHasCompletedDataMigration:(BOOL)migration;
- (void)setHostInfo:(id)info forLibrary:(id)library;
- (void)setLastAuthenticationDialogResponseTime:(double)time;
- (void)setPairingSyncCompletionTime:(double)time;
- (void)setPreExistingStoreIdentifiers:(id)identifiers;
- (void)setSyncPending:(BOOL)pending forDataClass:(id)class;
- (void)setSyncState:(id)state forLibrary:(id)library dataClass:(id)class;
- (void)setVersion:(unint64_t)version forDataclass:(id)dataclass;
- (void)updateLastSyncTimeForLibrary:(id)library dataClass:(id)class;
@end

@implementation ATDeviceSettings

- (void)_setEndpointInfo:(id)info forLibrary:(id)library
{
  infoCopy = info;
  libraryCopy = library;
  endpointInfo = [(ATDeviceSettings *)self endpointInfo];
  v8 = [endpointInfo mutableCopy];

  if (!v8)
  {
    v8 = objc_opt_new();
  }

  [v8 setValue:infoCopy forKey:libraryCopy];
  [(ATDeviceSettings *)self setEndpointInfo:v8];
}

- (id)_endpointInfoForLibrary:(id)library
{
  libraryCopy = library;
  endpointInfo = [(ATDeviceSettings *)self endpointInfo];
  v6 = [endpointInfo objectForKey:libraryCopy];

  return v6;
}

- (unint64_t)versionForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ATDeviceSettings_versionForDataclass___block_invoke;
  block[3] = &unk_2784E5988;
  v10 = dataclassCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dataclassCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __40__ATDeviceSettings_versionForDataclass___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:@"DataclassVersion"];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 objectForKey:a1[5]];
    *(*(a1[6] + 8) + 24) = [v3 unsignedIntegerValue];

    v2 = v4;
  }
}

- (void)setVersion:(unint64_t)version forDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ATDeviceSettings_setVersion_forDataclass___block_invoke;
  block[3] = &unk_2784E5520;
  v10 = dataclassCopy;
  versionCopy = version;
  block[4] = self;
  v8 = dataclassCopy;
  dispatch_sync(queue, block);
}

void __44__ATDeviceSettings_setVersion_forDataclass___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:@"DataclassVersion"];
  v4 = [v2 mutableCopy];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  }

  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  [v4 setObject:v3 forKey:a1[5]];

  [*(a1[4] + 8) setObject:v4 forKey:@"DataclassVersion"];
}

- (void)setPairingSyncCompletionTime:(double)time
{
  userDefaults = self->_userDefaults;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  [(NSUserDefaults *)userDefaults setObject:v4 forKey:@"PairingSyncCompletionTime"];
}

- (void)updateLastSyncTimeForLibrary:(id)library dataClass:(id)class
{
  libraryCopy = library;
  classCopy = class;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ATDeviceSettings_updateLastSyncTimeForLibrary_dataClass___block_invoke;
  block[3] = &unk_2784E59B0;
  block[4] = self;
  v12 = libraryCopy;
  v13 = classCopy;
  v9 = classCopy;
  v10 = libraryCopy;
  dispatch_sync(queue, block);
}

void __59__ATDeviceSettings_updateLastSyncTimeForLibrary_dataClass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _endpointInfoForLibrary:*(a1 + 40)];
  v6 = [v2 mutableCopy];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
  }

  v3 = [v6 objectForKey:@"LastSyncTimes"];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:v4 forKey:@"LastSyncTimes"];
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  [v4 setValue:v5 forKey:*(a1 + 48)];

  [*(a1 + 32) _setEndpointInfo:v6 forLibrary:*(a1 + 40)];
}

- (id)lastSyncTimeForLibrary:(id)library dataClass:(id)class
{
  libraryCopy = library;
  classCopy = class;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3365;
  v21 = __Block_byref_object_dispose__3366;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__ATDeviceSettings_lastSyncTimeForLibrary_dataClass___block_invoke;
  v13[3] = &unk_2784E5030;
  v13[4] = self;
  v14 = libraryCopy;
  v15 = classCopy;
  v16 = &v17;
  v9 = classCopy;
  v10 = libraryCopy;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __53__ATDeviceSettings_lastSyncTimeForLibrary_dataClass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _endpointInfoForLibrary:*(a1 + 40)];
  v9 = [v2 mutableCopy];

  v3 = v9;
  if (v9)
  {
    v4 = [v9 objectForKey:@"LastSyncTimes"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 valueForKey:*(a1 + 48)];
      v7 = *(*(a1 + 56) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v3 = v9;
  }
}

- (void)setHostInfo:(id)info forLibrary:(id)library
{
  infoCopy = info;
  libraryCopy = library;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ATDeviceSettings_setHostInfo_forLibrary___block_invoke;
  block[3] = &unk_2784E59B0;
  block[4] = self;
  v12 = libraryCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = libraryCopy;
  dispatch_sync(queue, block);
}

void __43__ATDeviceSettings_setHostInfo_forLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _endpointInfoForLibrary:*(a1 + 40)];
  v5 = [v2 mutableCopy];

  v3 = v5;
  if (!v5)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
  }

  v4 = *(a1 + 48);
  v6 = v3;
  if (v4)
  {
    [v3 setObject:v4 forKey:@"HostInfo"];
  }

  else
  {
    [v3 removeObjectForKey:@"HostInfo"];
  }

  [*(a1 + 32) _setEndpointInfo:v6 forLibrary:*(a1 + 40)];
}

- (id)hostInfoForLibrary:(id)library
{
  libraryCopy = library;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3365;
  v16 = __Block_byref_object_dispose__3366;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ATDeviceSettings_hostInfoForLibrary___block_invoke;
  block[3] = &unk_2784E5988;
  block[4] = self;
  v10 = libraryCopy;
  v11 = &v12;
  v6 = libraryCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __39__ATDeviceSettings_hostInfoForLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _endpointInfoForLibrary:*(a1 + 40)];
  v11 = [v2 mutableCopy];

  v3 = v11;
  if (!v11)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
  }

  v12 = v3;
  v4 = [v3 objectForKey:@"HostInfo"];
  v5 = [v4 mutableCopy];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)setSyncState:(id)state forLibrary:(id)library dataClass:(id)class
{
  stateCopy = state;
  libraryCopy = library;
  classCopy = class;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__ATDeviceSettings_setSyncState_forLibrary_dataClass___block_invoke;
  v15[3] = &unk_2784E5100;
  v16 = stateCopy;
  v17 = libraryCopy;
  v18 = classCopy;
  selfCopy = self;
  v12 = classCopy;
  v13 = libraryCopy;
  v14 = stateCopy;
  dispatch_sync(queue, v15);
}

void __54__ATDeviceSettings_setSyncState_forLibrary_dataClass___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11 = 138543874;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "setSyncState: %{public}@, forLibrary: %{public}@ dataClass: %{public}@", &v11, 0x20u);
  }

  v6 = [*(a1 + 56) _endpointInfoForLibrary:*(a1 + 40)];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = [v7 objectForKey:@"SyncState"];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    [v9 setObject:v10 forKey:*(a1 + 48)];
  }

  else
  {
    [v9 removeObjectForKey:*(a1 + 48)];
  }

  [v7 setObject:v9 forKey:@"SyncState"];
  [*(a1 + 56) _setEndpointInfo:v7 forLibrary:*(a1 + 40)];
}

- (id)syncStateForLibrary:(id)library dataClass:(id)class
{
  libraryCopy = library;
  classCopy = class;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3365;
  v21 = __Block_byref_object_dispose__3366;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__ATDeviceSettings_syncStateForLibrary_dataClass___block_invoke;
  v13[3] = &unk_2784E5030;
  v13[4] = self;
  v14 = libraryCopy;
  v15 = classCopy;
  v16 = &v17;
  v9 = classCopy;
  v10 = libraryCopy;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __50__ATDeviceSettings_syncStateForLibrary_dataClass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _endpointInfoForLibrary:*(a1 + 40)];
  if (v2)
  {
    v8 = v2;
    v3 = [v2 objectForKey:@"SyncState"];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKey:*(a1 + 48)];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    v2 = v8;
  }
}

- (id)getPreExistingStoreIdentifiers
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ATDeviceSettingPreExistingStoreAccountIDs"];
  if (v3)
  {
    if (_NSIsNSData())
    {
      v4 = MEMORY[0x277CCAAC8];
      v5 = MEMORY[0x277CBEB98];
      v6 = objc_opt_class();
      v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
      v8 = [v4 unarchivedObjectOfClasses:v7 fromData:v3 error:0];

      goto LABEL_8;
    }

    v9 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "removing invalid current preExistingStoreIdentifiers", buf, 2u);
    }

    [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"ATDeviceSettingPreExistingStoreAccountIDs"];
  }

  v8 = 0;
LABEL_8:
  v10 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_DEBUG, "preExistingStoreIdentifiers=%{public}@", buf, 0xCu);
  }

  return v8;
}

- (void)setPreExistingStoreIdentifiers:(id)identifiers
{
  v13 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v10 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:identifiersCopy requiringSecureCoding:1 error:&v10];
    v6 = v10;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      [(NSUserDefaults *)self->_userDefaults setObject:v5 forKey:@"ATDeviceSettingPreExistingStoreAccountIDs"];
    }

    else
    {
      v9 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "Could not serialize known store identifiers. error=%{public}@", buf, 0xCu);
      }
    }
  }
}

- (id)getCurrentInstallDisposition
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ATDeviceSettingCurrentInstallDisposition"];
  if (v3)
  {
    v4 = _NSIsNSDictionary();
    v5 = _ATLogCategoryFramework();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v8 = 138543362;
        v9 = v3;
        _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEBUG, "returning current installConfig=%{public}@", &v8, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "removing invalid current installConfig info", &v8, 2u);
      }

      [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"ATDeviceSettingCurrentInstallDisposition"];
      v6 = v3;
      v3 = 0;
    }
  }

  return v3;
}

- (void)setCurrentInstallDisposition:(id)disposition
{
  v8 = *MEMORY[0x277D85DE8];
  dispositionCopy = disposition;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = dispositionCopy;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "setting current installConfig info to %{public}@", &v6, 0xCu);
  }

  [(NSUserDefaults *)self->_userDefaults setObject:dispositionCopy forKey:@"ATDeviceSettingCurrentInstallDisposition"];
}

- (void)setActiveRestoreType:(int)type
{
  CFPreferencesSetAppValue(@"RestoreType", [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&type], @"com.apple.atc");
  v3 = *MEMORY[0x277CBF020];
  v4 = *MEMORY[0x277CBF010];

  CFPreferencesSynchronize(@"com.apple.atc", v3, v4);
}

- (void)setHasCompletedDataMigration:(BOOL)migration
{
  migrationCopy = migration;
  v7 = *MEMORY[0x277D85DE8];
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = migrationCopy;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "setting setHasCompletedDataMigration to %d", v6, 8u);
  }

  CFPreferencesSetAppValue(@"DataMigrated", [MEMORY[0x277CCABB0] numberWithBool:migrationCopy], @"com.apple.atc");
  CFPreferencesSynchronize(@"com.apple.atc", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"ATHasCompletedMigrationNotificationName", 0, 0, 1u);
}

- (BOOL)watchProxyDownloadsDisabled
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"WatchProxyDownloadsDisabled"];

  if (!v3)
  {
    return 0;
  }

  userDefaults = self->_userDefaults;

  return [(NSUserDefaults *)userDefaults BOOLForKey:@"WatchProxyDownloadsDisabled"];
}

- (BOOL)useNewDownloadService
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"UseNewDownloadService"];

  if (!v3)
  {
    return 1;
  }

  userDefaults = self->_userDefaults;

  return [(NSUserDefaults *)userDefaults BOOLForKey:@"UseNewDownloadService"];
}

- (unint64_t)restoreBatchSize
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"RestoreBatchSize"];

  if (!v3)
  {
    return 20;
  }

  userDefaults = self->_userDefaults;

  return [(NSUserDefaults *)userDefaults integerForKey:@"RestoreBatchSize"];
}

- (BOOL)restoreBatchingEnabled
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"RestoreBatchingEnabled"];

  if (!v3)
  {
    return 1;
  }

  userDefaults = self->_userDefaults;

  return [(NSUserDefaults *)userDefaults BOOLForKey:@"RestoreBatchingEnabled"];
}

- (BOOL)grappaEnabled
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"GrappaEnabled"];

  if (!v3)
  {
    return 1;
  }

  userDefaults = self->_userDefaults;

  return [(NSUserDefaults *)userDefaults BOOLForKey:@"GrappaEnabled"];
}

- (BOOL)fairPlayEnabled
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"FairPlayEnabled"];

  if (!v3)
  {
    return 1;
  }

  userDefaults = self->_userDefaults;

  return [(NSUserDefaults *)userDefaults BOOLForKey:@"FairPlayEnabled"];
}

- (void)setLastAuthenticationDialogResponseTime:(double)time
{
  userDefaults = self->_userDefaults;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  [(NSUserDefaults *)userDefaults setObject:v4 forKey:@"ATDeviceSettingLastAuthenticationDialogResponseTime"];
}

- (double)lastAuthenticationDialogResponseTime
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ATDeviceSettingLastAuthenticationDialogResponseTime"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)pairingSyncCompletionTime
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"PairingSyncCompletionTime"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (BOOL)isSyncPendingForDataClass:(id)class
{
  classCopy = class;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ATDeviceSettings_isSyncPendingForDataClass___block_invoke;
  block[3] = &unk_2784E5988;
  v9 = classCopy;
  v10 = &v11;
  block[4] = self;
  v6 = classCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

uint64_t __46__ATDeviceSettings_isSyncPendingForDataClass___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:@"DataClassesNeedingSync"];
  if (v2)
  {
    LOBYTE(v2) = [v2 containsObject:a1[5]];
  }

  *(*(a1[6] + 8) + 24) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)removePendingSyncSettingForDataClass:(id)class
{
  classCopy = class;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ATDeviceSettings_removePendingSyncSettingForDataClass___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = classCopy;
  selfCopy = self;
  v6 = classCopy;
  dispatch_sync(queue, v7);
}

void __57__ATDeviceSettings_removePendingSyncSettingForDataClass___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "removing sync pending setting for dataclass %{public}@", &v8, 0xCu);
  }

  if (*(a1 + 32))
  {
    v4 = [*(*(a1 + 40) + 8) objectForKey:@"DataClassesNeedingSync"];
    if ([v4 containsObject:*(a1 + 32)])
    {
      v5 = [v4 mutableCopy];
      [v5 removeObject:*(a1 + 32)];
      v6 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543362;
        v9 = v5;
        _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "updating sync pending for %{public}@", &v8, 0xCu);
      }

      [*(*(a1 + 40) + 8) setObject:v5 forKey:@"DataClassesNeedingSync"];
    }

    else
    {
      v5 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = 138543362;
        v9 = v7;
        _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "dataclass: %{public}@ is not pending sync", &v8, 0xCu);
      }
    }
  }
}

- (void)setSyncPending:(BOOL)pending forDataClass:(id)class
{
  classCopy = class;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ATDeviceSettings_setSyncPending_forDataClass___block_invoke;
  block[3] = &unk_2784E5480;
  pendingCopy = pending;
  block[4] = self;
  v10 = classCopy;
  v8 = classCopy;
  dispatch_sync(queue, block);
}

void __48__ATDeviceSettings_setSyncPending_forDataClass___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:@"DataClassesNeedingSync"];
  v6 = v2;
  if (v2)
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  }

  v4 = v3;
  v5 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    if (([v3 containsObject:v5] & 1) == 0)
    {
      [v4 addObject:*(a1 + 40)];
    }
  }

  else
  {
    [v3 removeObject:v5];
  }

  [*(*(a1 + 32) + 8) setObject:v4 forKey:@"DataClassesNeedingSync"];
}

- (void)removeEndpointInfoForLibrary:(id)library
{
  libraryCopy = library;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__ATDeviceSettings_removeEndpointInfoForLibrary___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = libraryCopy;
  selfCopy = self;
  v6 = libraryCopy;
  dispatch_sync(queue, v7);
}

void __49__ATDeviceSettings_removeEndpointInfoForLibrary___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 endpointInfo];
    v5 = [v4 mutableCopy];

    [v5 removeObjectForKey:*(a1 + 32)];
    [*(a1 + 40) setEndpointInfo:v5];
  }

  else
  {

    [v2 setEndpointInfo:0];
  }
}

- (void)setEndpointInfo:(id)info
{
  userDefaults = self->_userDefaults;
  if (info)
  {
    [(NSUserDefaults *)userDefaults setObject:info forKey:@"EndpointInfo"];
  }

  else
  {
    [(NSUserDefaults *)userDefaults removeObjectForKey:@"EndpointInfo"];
  }
}

- (NSString)serviceType
{
  v2 = [(NSUserDefaults *)self->_userDefaults stringForKey:@"ServiceType"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"_atc2._tcp";
  }

  return v4;
}

- (NSString)serviceDomain
{
  v2 = [(NSUserDefaults *)self->_userDefaults stringForKey:@"ServiceDomain"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"local";
  }

  return v4;
}

- (NSString)serviceName
{
  v2 = [(NSUserDefaults *)self->_userDefaults stringForKey:@"ServiceName"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"com.apple.private.alloy.airtraffic";
  }

  return v4;
}

- (NSString)libraryIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3365;
  v10 = __Block_byref_object_dispose__3366;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ATDeviceSettings_libraryIdentifier__block_invoke;
  v5[3] = &unk_2784E5008;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__ATDeviceSettings_libraryIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) stringForKey:@"LibraryIdentifier"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!v2)
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(a1 + 32) + 8);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v9 setObject:v10 forKey:@"LibraryIdentifier"];
  }
}

- (ATDeviceSettings)init
{
  v13.receiver = self;
  v13.super_class = ATDeviceSettings;
  v2 = [(ATDeviceSettings *)&v13 init];
  if (v2)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v5 = [bundleIdentifier isEqual:@"com.apple.atc"];

    if (v5)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    }

    else
    {
      standardUserDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.atc"];
    }

    userDefaults = v2->_userDefaults;
    v2->_userDefaults = standardUserDefaults;

    v8 = objc_opt_class();
    Name = class_getName(v8);
    v10 = dispatch_queue_create(Name, 0);
    queue = v2->_queue;
    v2->_queue = v10;
  }

  return v2;
}

+ (ATDeviceSettings)sharedInstance
{
  if (sharedInstance_onceToken_3383 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3383, &__block_literal_global_3384);
  }

  v3 = __sharedInstance_3385;

  return v3;
}

uint64_t __34__ATDeviceSettings_sharedInstance__block_invoke()
{
  __sharedInstance_3385 = objc_alloc_init(ATDeviceSettings);

  return MEMORY[0x2821F96F8]();
}

@end