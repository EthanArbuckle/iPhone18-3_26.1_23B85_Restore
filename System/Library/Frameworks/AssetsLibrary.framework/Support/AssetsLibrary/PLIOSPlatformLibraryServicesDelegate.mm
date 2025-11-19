@interface PLIOSPlatformLibraryServicesDelegate
- (id)commonBuiltInOperations;
- (id)systemLibraryBuiltInOperations;
- (int64_t)requiredStateForFileSystemImportOperation;
- (void)_abortWithMigrationFailureError:(id)a3;
- (void)_abortWithMigrationFailureReasonEACCES;
- (void)_abortWithMigrationFailureReasonENOSPC;
@end

@implementation PLIOSPlatformLibraryServicesDelegate

- (id)commonBuiltInOperations
{
  v3 = PLiOSPlatformLibraryServicesOperationNameWaitForFirstUnlock;
  v42 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v43 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v41 = [v43 preRunningProgress];
  v40 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:v42 requiredState:2 parentProgress:v41 executionBlock:&stru_10002CD20];
  v46[0] = v40;
  v4 = PLiOSPlatformLibraryServicesOperationNameMigrateOrRebuild;
  v38 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v39 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v37 = [v39 preRunningProgress];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10000344C;
  v45[3] = &unk_10002D828;
  v45[4] = self;
  v36 = [PLLibraryServicesOperation operationWithName:v4 libraryServicesManager:v38 requiredState:4 parentProgress:v37 executionBlock:v45];
  v46[1] = v36;
  v5 = PLiOSPlatformLibraryServicesOperationNameInitCPLManager;
  v34 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v35 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v33 = [v35 preRunningProgress];
  v32 = [PLLibraryServicesOperation operationWithName:v5 libraryServicesManager:v34 requiredState:5 parentProgress:v33 executionBlock:&stru_10002CD40];
  v46[2] = v32;
  v6 = PLLibraryServicesOperationNameBackupExclusionAttribute;
  v30 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v31 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v29 = [v31 preRunningProgress];
  v28 = [PLLibraryServicesOperation operationWithName:v6 libraryServicesManager:v30 requiredState:5 parentProgress:v29 executionBlock:&stru_10002CD60];
  v46[3] = v28;
  v27 = [(PLPlatformLibraryServicesDelegate *)self operationForLocaleChangeCheck];
  v46[4] = v27;
  v7 = PLiOSPlatformLibraryServicesOperationNameDuplicateMergeCrashRecovery;
  v26 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v25 = [PLLibraryServicesOperation operationWithName:v7 libraryServicesManager:v26 requiredState:6 parentProgress:0 executionBlock:&stru_10002CD80];
  v46[5] = v25;
  v8 = PLiOSPlatformLibraryServicesOperationNameAssetCreationRecovery;
  v9 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v10 = [PLLibraryServicesOperation operationWithName:v8 libraryServicesManager:v9 requiredState:7 parentProgress:0 executionBlock:&stru_10002CDA0];
  v46[6] = v10;
  v11 = PLiOSPlatformLibraryServicesOperationNameRegisterBackgroundJobService;
  v12 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v13 = [PLLibraryServicesOperation operationWithName:v11 libraryServicesManager:v12 requiredState:7 parentProgress:0 executionBlock:&stru_10002CDC0];
  v46[7] = v13;
  v14 = PLiOSPlatformLibraryServicesOperationNameInitCacheDeleteSupport;
  v15 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v16 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v17 = [v16 postRunningProgress];
  v18 = [PLLibraryServicesOperation operationWithName:v14 libraryServicesManager:v15 requiredState:7 parentProgress:v17 executionBlock:&stru_10002CDE0];
  v46[8] = v18;
  v19 = [NSArray arrayWithObjects:v46 count:9];

  if (PLIsChinaSKU())
  {
    v20 = [(PLPlatformLibraryServicesDelegate *)self operationForGreenTeaContactsAuthorizationCheck];
    v21 = [v19 arrayByAddingObject:v20];

    v19 = v21;
  }

  v44.receiver = self;
  v44.super_class = PLIOSPlatformLibraryServicesDelegate;
  v22 = [(PLPlatformLibraryServicesDelegate *)&v44 commonBuiltInOperations];
  v23 = [v22 arrayByAddingObjectsFromArray:v19];

  return v23;
}

- (void)_abortWithMigrationFailureError:(id)a3
{
  v4 = a3;
  if (PLIsErrorSQLiteDiskFull())
  {
    [(PLIOSPlatformLibraryServicesDelegate *)self _abortWithMigrationFailureReasonENOSPC];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = v4;
  v5 = PLTopLevelErrorAndAllUnderlyingErrors();
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 domain];
        v12 = [v11 isEqualToString:NSCocoaErrorDomain];

        if (!v12)
        {
          v14 = [v10 domain];
          v15 = [v14 isEqualToString:NSPOSIXErrorDomain];

          if (!v15)
          {
            continue;
          }

          v16 = [v10 code];
          if (v16 != 28)
          {
            if (v16 != 13)
            {
              continue;
            }

LABEL_15:
            [(PLIOSPlatformLibraryServicesDelegate *)self _abortWithMigrationFailureReasonEACCES];
            continue;
          }

LABEL_16:
          [(PLIOSPlatformLibraryServicesDelegate *)self _abortWithMigrationFailureReasonENOSPC];
          continue;
        }

        v13 = [v10 code];
        if (v13 == 640)
        {
          goto LABEL_16;
        }

        if (v13 == 513)
        {
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  v17 = PLMigrationGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v29 = v23;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Database migration failed: %@", buf, 0xCu);
  }

  v18 = [v23 userInfo];
  v19 = [v18 objectForKeyedSubscript:NSDebugDescriptionErrorKey];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v23;
  }

  v22 = [NSString stringWithFormat:@"Cannot create persistent store: %@", v21];

  [v22 UTF8String];
  PLAbortWithReason();
}

- (void)_abortWithMigrationFailureReasonENOSPC
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithMigrationFailureReasonEACCES
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (id)systemLibraryBuiltInOperations
{
  v3 = PLiOSPlatformLibraryServicesOperationNameWaitDataMigrationCheckpoint;
  v27 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v28 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v26 = [v28 preRunningProgress];
  v25 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:v27 requiredState:3 parentProgress:v26 executionBlock:&stru_10002CC78];
  v32[0] = v25;
  v4 = PLiOSPlatformLibraryServicesOperationNamePrepareOTARestore;
  v23 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v24 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v22 = [v24 preRunningProgress];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000438C;
  v31[3] = &unk_10002D828;
  v31[4] = self;
  v21 = [PLLibraryServicesOperation operationWithName:v4 libraryServicesManager:v23 requiredState:5 parentProgress:v22 executionBlock:v31];
  v32[1] = v21;
  v5 = PLiOSPlatformLibraryServicesOperationNameCameraIngestRecovery;
  v6 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v7 = [PLLibraryServicesOperation operationWithName:v5 libraryServicesManager:v6 requiredState:7 parentProgress:0 executionBlock:&stru_10002CC98];
  v32[2] = v7;
  v8 = PLiOSPlatformLibraryServicesOperationNameBuildQuickActionItems;
  v9 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v10 = [PLLibraryServicesOperation operationWithName:v8 libraryServicesManager:v9 requiredState:7 parentProgress:0 executionBlock:&stru_10002CCB8];
  v32[3] = v10;
  v11 = PLiOSPlatformLibraryServicesOperationNameInitializePhotoStream;
  v12 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100004448;
  v30[3] = &unk_10002D828;
  v30[4] = self;
  v13 = [PLLibraryServicesOperation operationWithName:v11 libraryServicesManager:v12 requiredState:7 parentProgress:0 executionBlock:v30];
  v32[4] = v13;
  v14 = PLiOSPlatformLibraryServicesOperationNameVerifyBackgroundUploadJobConsistency;
  v15 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v16 = [PLLibraryServicesOperation operationWithName:v14 libraryServicesManager:v15 requiredState:7 parentProgress:0 executionBlock:&stru_10002CD00];
  v32[5] = v16;
  v17 = [NSArray arrayWithObjects:v32 count:6];

  v29.receiver = self;
  v29.super_class = PLIOSPlatformLibraryServicesDelegate;
  v18 = [(PLPlatformLibraryServicesDelegate *)&v29 systemLibraryBuiltInOperations];
  v19 = [v18 arrayByAddingObjectsFromArray:v17];

  return v19;
}

- (int64_t)requiredStateForFileSystemImportOperation
{
  v7.receiver = self;
  v7.super_class = PLIOSPlatformLibraryServicesDelegate;
  v3 = [(PLPlatformLibraryServicesDelegate *)&v7 requiredStateForFileSystemImportOperation];
  v4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v5 = [v4 createOptions];

  if ((v5 & 8) != 0)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

@end