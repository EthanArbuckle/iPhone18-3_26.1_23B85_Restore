@interface MobileSlideShowDataMigrator
- (BOOL)_didRestoreFromMegaBackup;
- (BOOL)performMigration;
- (MobileSlideShowDataMigrator)init;
- (PLAssetsdClient)assetsdClient;
- (void)_recordDataMigrationInfo;
- (void)_setOTARestoreTokenIfNeeded;
@end

@implementation MobileSlideShowDataMigrator

- (PLAssetsdClient)assetsdClient
{
  assetsdClient = self->_assetsdClient;
  if (!assetsdClient)
  {
    v4 = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
    v5 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:v4];
    v6 = self->_assetsdClient;
    self->_assetsdClient = v5;

    assetsdClient = self->_assetsdClient;
  }

  return assetsdClient;
}

- (void)_setOTARestoreTokenIfNeeded
{
  if (!self->_didSetOTARestoreTokenIfNeeded && [(MobileSlideShowDataMigrator *)self didRestoreFromCloudBackup])
  {
    pathManager = self->_pathManager;
    v8 = 0;
    v4 = [PLDeviceRestoreMigrationPostProcessingSupport createForegroundRestoreFromCloudBackupCompleteTokenWithPathManager:pathManager error:&v8];
    v5 = v8;
    v6 = PLMigrationGetLog();
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Created foreground restore from cloud backup complete token", buf, 2u);
      }

      self->_didSetOTARestoreTokenIfNeeded = 1;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v5;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to create foreground restore from cloud backup complete token: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)_recordDataMigrationInfo
{
  v15[0] = PLDataMigrationDidUpgradeKey;
  v14 = [NSNumber numberWithBool:[(MobileSlideShowDataMigrator *)self didUpgrade]];
  v16[0] = v14;
  v15[1] = PLDataMigrationDidRestoreFromBackupKey;
  v13 = [NSNumber numberWithBool:[(MobileSlideShowDataMigrator *)self didRestoreFromBackup]];
  v16[1] = v13;
  v15[2] = PLDataMigrationDidMigrateBackupFromDifferentDeviceKey;
  v12 = [NSNumber numberWithBool:[(MobileSlideShowDataMigrator *)self didMigrateBackupFromDifferentDevice]];
  v16[2] = v12;
  v15[3] = PLDataMigrationDidRestoreFromCloudBackupKey;
  v3 = [NSNumber numberWithBool:[(MobileSlideShowDataMigrator *)self didRestoreFromCloudBackup]];
  v16[3] = v3;
  v15[4] = PLDataMigrationDidRestoreFromMegaBackupKey;
  v4 = [NSNumber numberWithBool:[(MobileSlideShowDataMigrator *)self _didRestoreFromMegaBackup]];
  v16[4] = v4;
  v15[5] = PLDataMigrationDidRestoreFromDeviceBackupKey;
  v5 = [NSNumber numberWithBool:[(MobileSlideShowDataMigrator *)self _didRestoreFromDevice]];
  v16[5] = v5;
  v15[6] = PLDataMigrationDidRestoreFromiTunesBackupKey;
  v6 = [NSNumber numberWithBool:[(MobileSlideShowDataMigrator *)self _didRestoreFromiTunes]];
  v16[6] = v6;
  v15[7] = PLDataMigrationBuildVersionKey;
  v7 = +[PLBuildVersion currentBuildVersionString];
  v16[7] = v7;
  v15[8] = PLDataMigrationDateKey;
  v8 = PLCompleteDateFormatter();
  v9 = +[NSDate date];
  v10 = [v8 stringFromDate:v9];
  v16[8] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:9];

  [(PLDataMigratorSupport *)self->_dataMigratorSupport recordDataMigrationInfo:v11];
}

- (BOOL)_didRestoreFromMegaBackup
{
  v3 = [(MobileSlideShowDataMigrator *)self didRestoreFromCloudBackup];
  if (v3)
  {
    return ([(MobileSlideShowDataMigrator *)self userDataDisposition]>> 7) & 1;
  }

  return v3;
}

- (BOOL)performMigration
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    qos_class_self();
    v4 = PLStringFromQoSClass();
    v27 = 138543362;
    v28 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting migration at QoS: %{public}@", &v27, 0xCu);
  }

  [(MobileSlideShowDataMigrator *)self _setOTARestoreTokenIfNeeded];
  [(MobileSlideShowDataMigrator *)self _recordDataMigrationInfo];
  [(PLDataMigratorSupport *)self->_dataMigratorSupport removeModelInterestDatabase];
  [(PLDataMigratorSupport *)self->_dataMigratorSupport removeAsidePhotosDatabase];
  [(PLDataMigratorSupport *)self->_dataMigratorSupport removeLegacyMetadataFiles];
  if (PLHasInternalDiagnostics())
  {
    [(PLDataMigratorSupport *)self->_dataMigratorSupport removeInternalMemoriesRelatedSnapshotDirectory];
  }

  v5 = [(PLDataMigratorSupport *)self->_dataMigratorSupport pathManager];
  v6 = [v5 libraryURL];

  if ([MobileSlideShowLegacyMigrationSupport requiresLegacyMigrationForLibraryURL:v6])
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Requires legacy migration", &v27, 2u);
    }

    v8 = [[MobileSlideShowLegacyMigrationSupport alloc] initWithLibraryURL:v6];
    v9 = [(MobileSlideShowLegacyMigrationSupport *)v8 performMigration];
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"failed";
      if (v9)
      {
        v11 = @"suceeded";
      }

      v27 = 138543362;
      v28 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Legacy migration %{public}@", &v27, 0xCu);
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  if ([(MobileSlideShowDataMigrator *)self didRestoreFromBackup])
  {
    if (([(MobileSlideShowDataMigrator *)self didRestoreFromCloudBackup]& 1) != 0)
    {
      v12 = 2;
    }

    else if ([(MobileSlideShowDataMigrator *)self _didRestoreFromDevice])
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = PLMigrationGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PLStringFromDataMigrationRestoreType();
    qos_class_self();
    v15 = PLStringFromQoSClass();
    v27 = 138543618;
    v28 = v14;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Starting assetsd migration service requests for restore type: %{public}@ at QoS: %{public}@", &v27, 0x16u);
  }

  v16 = [(MobileSlideShowDataMigrator *)self assetsdClient];
  v17 = [v16 migrationClient];
  [v17 cleanupModelForDataMigrationForRestoreType:v12];

  v18 = PLMigrationGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = PLStringFromDataMigrationRestoreType();
    qos_class_self();
    v20 = PLStringFromQoSClass();
    v27 = 138543618;
    v28 = v19;
    v29 = 2114;
    v30 = v20;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Sent cleanupModelForDataMigrationForRestoreType: %{public}@ at QoS: %{public}@", &v27, 0x16u);
  }

  v21 = [(MobileSlideShowDataMigrator *)self assetsdClient];
  v22 = [v21 migrationClient];
  [v22 dataMigrationWillFinish];

  v23 = PLMigrationGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    qos_class_self();
    v24 = PLStringFromQoSClass();
    v27 = 138543362;
    v28 = v24;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Sent dataMigrationWillFinish at %{public}@", &v27, 0xCu);
  }

  v25 = PLMigrationGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Migration complete", &v27, 2u);
  }

  return v9;
}

- (MobileSlideShowDataMigrator)init
{
  v8.receiver = self;
  v8.super_class = MobileSlideShowDataMigrator;
  v2 = [(MobileSlideShowDataMigrator *)&v8 init];
  if (v2)
  {
    v3 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
    pathManager = v2->_pathManager;
    v2->_pathManager = v3;

    v5 = [[PLDataMigratorSupport alloc] initWithPathManager:v2->_pathManager];
    dataMigratorSupport = v2->_dataMigratorSupport;
    v2->_dataMigratorSupport = v5;
  }

  return v2;
}

@end