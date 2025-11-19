@interface CHDataMigrator
- (BOOL)didMigrateBackupFromDifferentDevice;
- (BOOL)performMigration;
- (BOOL)resetTimersIfNeeded;
- (CHDataMigrator)init;
- (void)removeDatabasesSyncedToGizmo;
- (void)resetCallHistorySyncHelperUserDefaults;
@end

@implementation CHDataMigrator

- (CHDataMigrator)init
{
  v6.receiver = self;
  v6.super_class = CHDataMigrator;
  v2 = [(CHDataMigrator *)&v6 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.CallHistorySyncHelper"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;
  }

  return v2;
}

- (BOOL)didMigrateBackupFromDifferentDevice
{
  if (os_variant_has_internal_diagnostics())
  {
    v3 = [(CHDataMigrator *)self userDefaults];
    v4 = [v3 BOOLForKey:@"resetCallTimersEnabled"];

    if (v4)
    {
      return 1;
    }
  }

  v6.receiver = self;
  v6.super_class = CHDataMigrator;
  return [(CHDataMigrator *)&v6 didMigrateBackupFromDifferentDevice];
}

- (BOOL)performMigration
{
  [(CHDataMigrator *)self removeDatabasesSyncedToGizmo];
  if ([(CHDataMigrator *)self didRestoreFromBackup])
  {
    [(CHDataMigrator *)self resetCallHistorySyncHelperUserDefaults];
  }

  return [(CHDataMigrator *)self resetTimersIfNeeded];
}

- (BOOL)resetTimersIfNeeded
{
  if ([(CHDataMigrator *)self didMigrateBackupFromDifferentDevice])
  {
    v2 = +[CHLogServer sharedInstance];
    v3 = [v2 logHandleForDomain:"CallHistoryDataMigrator"];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Requesting reset call timers", buf, 2u);
    }

    v4 = [NSXPCConnection alloc];
    v5 = [v4 initWithMachServiceName:kSyncHelperServiceIdentifier options:0];
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SyncProtocol];
    [v5 setRemoteObjectInterface:v6];
    [v5 resume];
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = 0;
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_4170];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10FC;
    v13[3] = &unk_4198;
    v13[4] = buf;
    [v7 resetCallTimers:v13];

    v8 = +[CHLogServer sharedInstance];
    v9 = [v8 logHandleForDomain:"CallHistoryDataMigrator"];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v15[24])
      {
        v10 = @"successfully";
      }

      else
      {
        v10 = @"unsuccessfully";
      }

      *v18 = 138543362;
      v19 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Reset call timers request completed %{public}@", v18, 0xCu);
    }

    v11 = v15[24];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (void)removeDatabasesSyncedToGizmo
{
  v30 = getMobileUserLibraryDirectoryPath();
  v2 = [v30 URLByAppendingPathComponent:kCallDBDirName];
  v3 = +[NSFileManager defaultManager];
  v4 = [v2 path];
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:0];

  v31 = objc_opt_new();
  v6 = [@"." stringByAppendingString:kCallHistoryDataStoreExtension];
  v33 = [kCallHistoryDBName stringByAppendingString:v6];
  v29 = v6;
  v32 = [kCallHistoryTempDBName stringByAppendingString:v6];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        v13 = [v12 pathExtension];
        v14 = [v13 isEqualToString:@"plist"];

        if ((v14 & 1) == 0)
        {
          v15 = [v12 pathExtension];
          v16 = [v15 hasSuffix:@"shm"];

          if ((v16 & 1) == 0)
          {
            v17 = [v12 pathExtension];
            v18 = [v17 hasSuffix:@"wal"];

            if ((v18 & 1) == 0)
            {
              v19 = [v12 lastPathComponent];
              v20 = [v19 isEqualToString:v33];

              if ((v20 & 1) == 0)
              {
                v21 = [v12 lastPathComponent];
                v22 = [v21 isEqualToString:v32];

                if ((v22 & 1) == 0)
                {
                  [v31 addObject:v12];
                }
              }
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = v31;
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [v2 URLByAppendingPathComponent:*(*(&v34 + 1) + 8 * j)];
        [DBManager destroyDBAtLocation:v28 withModelAtLocation:0];
      }

      v25 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v25);
  }
}

- (void)resetCallHistorySyncHelperUserDefaults
{
  v2 = [(CHDataMigrator *)self userDefaults];
  v3 = +[CHLogServer sharedInstance];
  v4 = [v3 logHandleForDomain:"CallHistoryDataMigrator"];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = @"com.apple.callhistory.cloud-storage";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Removing user defaults related to the legacy iCloud container %{public}@", &v7, 0xCu);
  }

  [v2 removeObjectForKey:@"com.apple.callhistory.cloud-storage"];
  v5 = +[CHLogServer sharedInstance];
  v6 = [v5 logHandleForDomain:"CallHistoryDataMigrator"];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = @"com.apple.callhistory.cloud-storage2";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Removing user defaults related to the current iCloud container %{public}@", &v7, 0xCu);
  }

  [v2 removeObjectForKey:@"com.apple.callhistory.cloud-storage2"];
}

@end