@interface LSDatabaseBuilder
- (LSDatabaseBuilder)initWithIOQueue:(id)a3;
- (void)createAndSeedLocalDatabase:(BOOL *)a3;
- (void)seedCryptexContentIfNeeded:(BOOL *)a3;
- (void)setSeedingComplete:(BOOL)a3;
- (void)syncWithMI:(void *)a3;
@end

@implementation LSDatabaseBuilder

- (LSDatabaseBuilder)initWithIOQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LSDatabaseBuilder;
  v6 = [(LSDatabaseBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ioQueue, a3);
  }

  return v7;
}

- (void)seedCryptexContentIfNeeded:(BOOL *)a3
{
  MEMORY[0x1865D7C40](self, a2);
  v5 = objc_autoreleasePoolPush();
  v7 = 0;
  if (!_LSContextInit(&v7))
  {
    if ([(_LSDatabase *)v7 cryptexContentChanged])
    {
      *a3 = 1;
      v6 = _LSDatabaseGetSeedingGroup();
      dispatch_group_enter(v6);

      dispatch_async(self->_ioQueue, &__block_literal_global_24);
    }

    else
    {
      MEMORY[0x1865D7C50]();
    }
  }

  objc_autoreleasePoolPop(v5);
}

void __48__LSDatabaseBuilder_seedCryptexContentIfNeeded___block_invoke()
{
  _LSServer_LSEnumerateAndRegisterAllCryptexContent();
  v0 = _LSDatabaseGetSeedingGroup();
  dispatch_group_leave(v0);

  JUMPOUT(0x1865D7C50);
}

- (void)createAndSeedLocalDatabase:(BOOL *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x1865D7C40](self, a2);
  v5 = objc_autoreleasePoolPush();
  v20 = 0;
  v19 = 0;
  v6 = _LSDatabaseCreateFromPersistentStore(7, &v20, &v19);
  v7 = v19;
  if (v6)
  {
    v8 = +[LSDBExecutionContext sharedServerInstance];
    [(LSDBExecutionContext *)v8 setServerDatabase:v6];

    if ([(_LSDatabase *)v6 isSeeded]&& ([(_LSDatabase *)v6 isSeedingComplete]& 1) != 0)
    {
      _LSDatabaseCommit(v6);
      *a3 = 0;
    }

    else
    {
      v9 = _LSInstallLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = getuid();
        v11 = _CFGetEUID();
        *buf = 67109376;
        v22 = v10;
        v23 = 1024;
        v24 = v11;
        _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "#LSDatabaseBuilder Seeding database with UID: %d, EUID %d", buf, 0xEu);
      }

      DistributedCenter = CFNotificationCenterGetDistributedCenter();
      CFNotificationCenterPostNotificationWithOptions(DistributedCenter, @"com.apple.LaunchServices.DatabaseSeedingStart", 0, 0, 0);
      if ((v20 & 1) == 0)
      {

        _LSResetServer();
        v6 = _LSServer_CopyLocalDatabase(0);
      }

      _LSDatabaseSessionSetSeedingInProgress(1);
      [(_LSDatabase *)v6 setSeeded:?];
      *a3 = 1;
      MEMORY[0x1865D7C40]();
      v13 = _LSDatabaseGetSeedingGroup();
      dispatch_group_enter(v13);

      ioQueue = self->_ioQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __48__LSDatabaseBuilder_createAndSeedLocalDatabase___block_invoke;
      v17[3] = &unk_1E6A1B9D0;
      v18 = v20;
      v17[4] = self;
      dispatch_async(ioQueue, v17);
      if ([(_LSDatabase *)v6 cryptexContentChanged])
      {
        _LSServer_LSEnumerateAndRegisterAllCryptexContent();
      }
    }

    v15 = +[LSApplicationRestrictionsManager sharedInstance];
    [(LSApplicationRestrictionsManager *)v15 beginListeningForChanges];
  }

  else
  {
    v6 = _LSInstallLog();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      [(LSDatabaseBuilder *)v7 createAndSeedLocalDatabase:?];
    }
  }

  objc_autoreleasePoolPop(v5);
  MEMORY[0x1865D7C50]();
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __48__LSDatabaseBuilder_createAndSeedLocalDatabase___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (dispatchEnumerateAndRegisterWithDiagnosticFrame(unsigned short)::onceToken == -1)
  {
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_19:
    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_CREATION_FROM_STORE_FAILED__(v2);
LABEL_20:
    v4 = v3;
    if (v3)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  __48__LSDatabaseBuilder_createAndSeedLocalDatabase___block_invoke_cold_1();
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((v2 & 0x10) != 0)
  {
    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_IT_WAS_CORRUPT__(v2);
    goto LABEL_20;
  }

  if ((v2 & 8) != 0)
  {
    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_IT_DID_NOT_EXIST__(v2);
    goto LABEL_20;
  }

  if ((v2 & 4) != 0)
  {
    v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_A_RECOVERY_FILE_EXISTED__(v2);
    goto LABEL_20;
  }

  if ((v2 & 0x80) != 0)
  {
    __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_ALLOC_FAILED_DURING_STORE_CREATION__(v2);
  }

  else if ((v2 & 0x100) != 0)
  {
    __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_STORE_CREATION_FAILED_UNEXPECTEDLY__(v2);
  }

  else if ((v2 & 0x40) != 0)
  {
    __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_CREATION_FROM_FRESH_FAILED__(v2);
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      v3 = __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_UNEXPECTEDLY__(v2);
      goto LABEL_20;
    }

    __LAUNCH_SERVICES_IS_REBUILDING_THE_DATABASE_BECAUSE_THE_DATABASE_WAS_CREATED_FRESH__(v2);
  }

LABEL_21:
  v5 = _LSInstallLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "#LSDatabaseBuilder MobileInstallation reported PartialResultsReturned = YES, setting incomplete seed flag", buf, 2u);
  }

  v4 = 0;
LABEL_24:
  v6 = _LSServer_DatabaseExecutionContext();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__LSDatabaseBuilder_createAndSeedLocalDatabase___block_invoke_1;
  v10[3] = &unk_1E6A1B9A8;
  v10[4] = *(a1 + 32);
  v11 = v4;
  [(LSDBExecutionContext *)v6 syncWrite:v10];

  v7 = +[_LSInstallProgressService sharedInstance];
  [v7 sendDatabaseRebuiltNotification];

  v8 = _LSDatabaseGetSeedingGroup();
  dispatch_group_leave(v8);

  return MEMORY[0x1865D7C50]();
}

- (void)syncWithMI:(void *)a3
{
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Syncing with MI", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__LSDatabaseBuilder_syncWithMI___block_invoke;
  v6[3] = &__block_descriptor_40_e15_v16__0__NSURL_8l;
  v6[4] = a3;
  _LSServer_SyncWithMobileInstallation(v6);
  v5 = _LSDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "enumerated and registered MI content", buf, 2u);
  }
}

void __32__LSDatabaseBuilder_syncWithMI___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fileSystemRepresentation];
  v5 = *(a1 + 32);
  v6 = strlen(v4);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v9 = v6;
  if (v6)
  {
    memmove(&__dst, v4, v6);
  }

  *(&__dst + v7) = 0;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v5, &__dst);
  if (v9 < 0)
  {
    operator delete(__dst);
  }
}

- (void)setSeedingComplete:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v4 = _LSServer_CopyLocalDatabase(0);
  if (v4)
  {
    _LSDatabaseSessionSetSeedingInProgress(0);
    [(_LSDatabase *)v4 setSeeded:?];
    [(_LSDatabase *)v4 setSeedingComplete:v3];
    _LSDatabaseCommit(v4);
    _LSSaveImmediately(1);
  }

  v5 = _LSDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = getpid();
    v11 = 1024;
    v12 = _CFGetEUID();
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "[%d]: LSDatabaseBuilder: posting LSNotificationDatabaseSeedingComplete for UID %u", v10, 0xEu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, @"com.apple.LaunchServices.DatabaseSeedingComplete", 0, 0, 0);
  SharedInstance = __LSDefaultsGetSharedInstance();
  LODWORD(SharedInstance) = [SharedInstance proxyUIDForUID:getuid()] == 0;
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotificationWithOptions(DistributedCenter, @"com.apple.LaunchServices.DatabaseSeedingComplete", 0, 0, 2 * SharedInstance);
  _LSSetKernelPackageExtensions();
  _LSArmSaveTimer(4);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)createAndSeedLocalDatabase:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "#LSDatabaseBuilder Failed to read database from disk and couldn't create new one: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end