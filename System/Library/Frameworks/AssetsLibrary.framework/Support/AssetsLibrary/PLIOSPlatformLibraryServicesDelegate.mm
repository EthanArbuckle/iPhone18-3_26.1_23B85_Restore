@interface PLIOSPlatformLibraryServicesDelegate
- (id)commonBuiltInOperations;
- (id)systemLibraryBuiltInOperations;
- (int64_t)requiredStateForFileSystemImportOperation;
- (void)_abortWithMigrationFailureError:(id)error;
- (void)_abortWithMigrationFailureReasonEACCES;
- (void)_abortWithMigrationFailureReasonENOSPC;
@end

@implementation PLIOSPlatformLibraryServicesDelegate

- (id)commonBuiltInOperations
{
  v3 = PLiOSPlatformLibraryServicesOperationNameWaitForFirstUnlock;
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager2 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress = [libraryServicesManager2 preRunningProgress];
  v40 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:libraryServicesManager requiredState:2 parentProgress:preRunningProgress executionBlock:&stru_10002CD20];
  v46[0] = v40;
  v4 = PLiOSPlatformLibraryServicesOperationNameMigrateOrRebuild;
  libraryServicesManager3 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress2 = [libraryServicesManager4 preRunningProgress];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10000344C;
  v45[3] = &unk_10002D828;
  v45[4] = self;
  v36 = [PLLibraryServicesOperation operationWithName:v4 libraryServicesManager:libraryServicesManager3 requiredState:4 parentProgress:preRunningProgress2 executionBlock:v45];
  v46[1] = v36;
  v5 = PLiOSPlatformLibraryServicesOperationNameInitCPLManager;
  libraryServicesManager5 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager6 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress3 = [libraryServicesManager6 preRunningProgress];
  v32 = [PLLibraryServicesOperation operationWithName:v5 libraryServicesManager:libraryServicesManager5 requiredState:5 parentProgress:preRunningProgress3 executionBlock:&stru_10002CD40];
  v46[2] = v32;
  v6 = PLLibraryServicesOperationNameBackupExclusionAttribute;
  libraryServicesManager7 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager8 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress4 = [libraryServicesManager8 preRunningProgress];
  v28 = [PLLibraryServicesOperation operationWithName:v6 libraryServicesManager:libraryServicesManager7 requiredState:5 parentProgress:preRunningProgress4 executionBlock:&stru_10002CD60];
  v46[3] = v28;
  operationForLocaleChangeCheck = [(PLPlatformLibraryServicesDelegate *)self operationForLocaleChangeCheck];
  v46[4] = operationForLocaleChangeCheck;
  v7 = PLiOSPlatformLibraryServicesOperationNameDuplicateMergeCrashRecovery;
  libraryServicesManager9 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v25 = [PLLibraryServicesOperation operationWithName:v7 libraryServicesManager:libraryServicesManager9 requiredState:6 parentProgress:0 executionBlock:&stru_10002CD80];
  v46[5] = v25;
  v8 = PLiOSPlatformLibraryServicesOperationNameAssetCreationRecovery;
  libraryServicesManager10 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v10 = [PLLibraryServicesOperation operationWithName:v8 libraryServicesManager:libraryServicesManager10 requiredState:7 parentProgress:0 executionBlock:&stru_10002CDA0];
  v46[6] = v10;
  v11 = PLiOSPlatformLibraryServicesOperationNameRegisterBackgroundJobService;
  libraryServicesManager11 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v13 = [PLLibraryServicesOperation operationWithName:v11 libraryServicesManager:libraryServicesManager11 requiredState:7 parentProgress:0 executionBlock:&stru_10002CDC0];
  v46[7] = v13;
  v14 = PLiOSPlatformLibraryServicesOperationNameInitCacheDeleteSupport;
  libraryServicesManager12 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager13 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  postRunningProgress = [libraryServicesManager13 postRunningProgress];
  v18 = [PLLibraryServicesOperation operationWithName:v14 libraryServicesManager:libraryServicesManager12 requiredState:7 parentProgress:postRunningProgress executionBlock:&stru_10002CDE0];
  v46[8] = v18;
  v19 = [NSArray arrayWithObjects:v46 count:9];

  if (PLIsChinaSKU())
  {
    operationForGreenTeaContactsAuthorizationCheck = [(PLPlatformLibraryServicesDelegate *)self operationForGreenTeaContactsAuthorizationCheck];
    v21 = [v19 arrayByAddingObject:operationForGreenTeaContactsAuthorizationCheck];

    v19 = v21;
  }

  v44.receiver = self;
  v44.super_class = PLIOSPlatformLibraryServicesDelegate;
  commonBuiltInOperations = [(PLPlatformLibraryServicesDelegate *)&v44 commonBuiltInOperations];
  v23 = [commonBuiltInOperations arrayByAddingObjectsFromArray:v19];

  return v23;
}

- (void)_abortWithMigrationFailureError:(id)error
{
  errorCopy = error;
  if (PLIsErrorSQLiteDiskFull())
  {
    [(PLIOSPlatformLibraryServicesDelegate *)self _abortWithMigrationFailureReasonENOSPC];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = errorCopy;
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
        domain = [v10 domain];
        v12 = [domain isEqualToString:NSCocoaErrorDomain];

        if (!v12)
        {
          domain2 = [v10 domain];
          v15 = [domain2 isEqualToString:NSPOSIXErrorDomain];

          if (!v15)
          {
            continue;
          }

          code = [v10 code];
          if (code != 28)
          {
            if (code != 13)
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

        code2 = [v10 code];
        if (code2 == 640)
        {
          goto LABEL_16;
        }

        if (code2 == 513)
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

  userInfo = [v23 userInfo];
  v19 = [userInfo objectForKeyedSubscript:NSDebugDescriptionErrorKey];
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
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager2 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress = [libraryServicesManager2 preRunningProgress];
  v25 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:libraryServicesManager requiredState:3 parentProgress:preRunningProgress executionBlock:&stru_10002CC78];
  v32[0] = v25;
  v4 = PLiOSPlatformLibraryServicesOperationNamePrepareOTARestore;
  libraryServicesManager3 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress2 = [libraryServicesManager4 preRunningProgress];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000438C;
  v31[3] = &unk_10002D828;
  v31[4] = self;
  v21 = [PLLibraryServicesOperation operationWithName:v4 libraryServicesManager:libraryServicesManager3 requiredState:5 parentProgress:preRunningProgress2 executionBlock:v31];
  v32[1] = v21;
  v5 = PLiOSPlatformLibraryServicesOperationNameCameraIngestRecovery;
  libraryServicesManager5 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v7 = [PLLibraryServicesOperation operationWithName:v5 libraryServicesManager:libraryServicesManager5 requiredState:7 parentProgress:0 executionBlock:&stru_10002CC98];
  v32[2] = v7;
  v8 = PLiOSPlatformLibraryServicesOperationNameBuildQuickActionItems;
  libraryServicesManager6 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v10 = [PLLibraryServicesOperation operationWithName:v8 libraryServicesManager:libraryServicesManager6 requiredState:7 parentProgress:0 executionBlock:&stru_10002CCB8];
  v32[3] = v10;
  v11 = PLiOSPlatformLibraryServicesOperationNameInitializePhotoStream;
  libraryServicesManager7 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100004448;
  v30[3] = &unk_10002D828;
  v30[4] = self;
  v13 = [PLLibraryServicesOperation operationWithName:v11 libraryServicesManager:libraryServicesManager7 requiredState:7 parentProgress:0 executionBlock:v30];
  v32[4] = v13;
  v14 = PLiOSPlatformLibraryServicesOperationNameVerifyBackgroundUploadJobConsistency;
  libraryServicesManager8 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v16 = [PLLibraryServicesOperation operationWithName:v14 libraryServicesManager:libraryServicesManager8 requiredState:7 parentProgress:0 executionBlock:&stru_10002CD00];
  v32[5] = v16;
  v17 = [NSArray arrayWithObjects:v32 count:6];

  v29.receiver = self;
  v29.super_class = PLIOSPlatformLibraryServicesDelegate;
  systemLibraryBuiltInOperations = [(PLPlatformLibraryServicesDelegate *)&v29 systemLibraryBuiltInOperations];
  v19 = [systemLibraryBuiltInOperations arrayByAddingObjectsFromArray:v17];

  return v19;
}

- (int64_t)requiredStateForFileSystemImportOperation
{
  v7.receiver = self;
  v7.super_class = PLIOSPlatformLibraryServicesDelegate;
  requiredStateForFileSystemImportOperation = [(PLPlatformLibraryServicesDelegate *)&v7 requiredStateForFileSystemImportOperation];
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  createOptions = [libraryServicesManager createOptions];

  if ((createOptions & 8) != 0)
  {
    return 6;
  }

  else
  {
    return requiredStateForFileSystemImportOperation;
  }
}

@end