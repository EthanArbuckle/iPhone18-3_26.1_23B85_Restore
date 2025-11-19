@interface PLMacPlatformLibraryServicesDelegate
- (id)commonBuiltInOperations;
- (id)systemLibraryBuiltInOperations;
@end

@implementation PLMacPlatformLibraryServicesDelegate

- (id)commonBuiltInOperations
{
  v3 = PLMacPlatformLibraryServicesOperationNameCheckFilesystemForSyncRoot;
  v42 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v41 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:v42 requiredState:1 parentProgress:0 executionBlock:&stru_10002D888];
  v44[0] = v41;
  v4 = PLMacPlatformLibraryServicesOperationNameMigrateOrRebuild;
  v39 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v40 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v38 = [v40 preRunningProgress];
  v37 = [PLLibraryServicesOperation operationWithName:v4 libraryServicesManager:v39 requiredState:4 parentProgress:v38 executionBlock:&stru_10002D8A8];
  v44[1] = v37;
  v5 = PLLibraryServicesOperationNameBackupExclusionAttribute;
  v35 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v36 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v34 = [v36 preRunningProgress];
  v33 = [PLLibraryServicesOperation operationWithName:v5 libraryServicesManager:v35 requiredState:5 parentProgress:v34 executionBlock:&stru_10002D8C8];
  v44[2] = v33;
  v6 = PLMacPlatformLibraryServicesOperationNameInitCPLManager;
  v31 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v32 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v30 = [v32 preRunningProgress];
  v29 = [PLLibraryServicesOperation operationWithName:v6 libraryServicesManager:v31 requiredState:5 parentProgress:v30 executionBlock:&stru_10002D8E8];
  v44[3] = v29;
  v28 = [(PLPlatformLibraryServicesDelegate *)self operationForLocaleChangeCheck];
  v44[4] = v28;
  v7 = PLMacPlatformLibraryServicesOperationNameDuplicateMergeCrashRecovery;
  v27 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v26 = [PLLibraryServicesOperation operationWithName:v7 libraryServicesManager:v27 requiredState:6 parentProgress:0 executionBlock:&stru_10002D908];
  v44[5] = v26;
  v8 = PLiOSPlatformLibraryServicesOperationNameAssetCreationRecovery;
  v25 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v24 = [PLLibraryServicesOperation operationWithName:v8 libraryServicesManager:v25 requiredState:7 parentProgress:0 executionBlock:&stru_10002D928];
  v44[6] = v24;
  v9 = PLMacPlatformLibraryServicesOperationNameCleanInvalidSSB;
  v10 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v11 = [PLLibraryServicesOperation operationWithName:v9 libraryServicesManager:v10 requiredState:7 parentProgress:0 executionBlock:&stru_10002D948];
  v44[7] = v11;
  v12 = PLMacPlatformLibraryServicesOperationNameRegisterBackgroundJobService;
  v13 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v14 = [PLLibraryServicesOperation operationWithName:v12 libraryServicesManager:v13 requiredState:7 parentProgress:0 executionBlock:&stru_10002D968];
  v44[8] = v14;
  v15 = PLMacPlatformLibraryServicesOperationNameInitCacheDeleteSupport;
  v16 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v17 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v18 = [v17 preRunningProgress];
  v19 = [PLLibraryServicesOperation operationWithName:v15 libraryServicesManager:v16 requiredState:7 parentProgress:v18 executionBlock:&stru_10002D988];
  v44[9] = v19;
  v20 = [NSArray arrayWithObjects:v44 count:10];

  v43.receiver = self;
  v43.super_class = PLMacPlatformLibraryServicesDelegate;
  v21 = [(PLPlatformLibraryServicesDelegate *)&v43 commonBuiltInOperations];
  v22 = [v21 arrayByAddingObjectsFromArray:v20];

  return v22;
}

- (id)systemLibraryBuiltInOperations
{
  v3 = PLMacPlatformLibraryServicesOperationNameNotifySPLMigrated;
  v4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100017E14;
  v14[3] = &unk_10002D828;
  v14[4] = self;
  v5 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:v4 requiredState:7 parentProgress:0 executionBlock:v14];
  v15[0] = v5;
  v6 = PLMacPlatformLibraryServicesOperationNameInitializePhotoStream;
  v7 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v8 = [PLLibraryServicesOperation operationWithName:v6 libraryServicesManager:v7 requiredState:7 parentProgress:0 executionBlock:&stru_10002D868];
  v15[1] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:2];

  v13.receiver = self;
  v13.super_class = PLMacPlatformLibraryServicesDelegate;
  v10 = [(PLPlatformLibraryServicesDelegate *)&v13 systemLibraryBuiltInOperations];
  v11 = [v10 arrayByAddingObjectsFromArray:v9];

  return v11;
}

@end