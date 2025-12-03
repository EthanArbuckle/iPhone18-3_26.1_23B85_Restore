@interface PLMacPlatformLibraryServicesDelegate
- (id)commonBuiltInOperations;
- (id)systemLibraryBuiltInOperations;
@end

@implementation PLMacPlatformLibraryServicesDelegate

- (id)commonBuiltInOperations
{
  v3 = PLMacPlatformLibraryServicesOperationNameCheckFilesystemForSyncRoot;
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v41 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:libraryServicesManager requiredState:1 parentProgress:0 executionBlock:&stru_10002D888];
  v44[0] = v41;
  v4 = PLMacPlatformLibraryServicesOperationNameMigrateOrRebuild;
  libraryServicesManager2 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager3 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress = [libraryServicesManager3 preRunningProgress];
  v37 = [PLLibraryServicesOperation operationWithName:v4 libraryServicesManager:libraryServicesManager2 requiredState:4 parentProgress:preRunningProgress executionBlock:&stru_10002D8A8];
  v44[1] = v37;
  v5 = PLLibraryServicesOperationNameBackupExclusionAttribute;
  libraryServicesManager4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager5 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress2 = [libraryServicesManager5 preRunningProgress];
  v33 = [PLLibraryServicesOperation operationWithName:v5 libraryServicesManager:libraryServicesManager4 requiredState:5 parentProgress:preRunningProgress2 executionBlock:&stru_10002D8C8];
  v44[2] = v33;
  v6 = PLMacPlatformLibraryServicesOperationNameInitCPLManager;
  libraryServicesManager6 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager7 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress3 = [libraryServicesManager7 preRunningProgress];
  v29 = [PLLibraryServicesOperation operationWithName:v6 libraryServicesManager:libraryServicesManager6 requiredState:5 parentProgress:preRunningProgress3 executionBlock:&stru_10002D8E8];
  v44[3] = v29;
  operationForLocaleChangeCheck = [(PLPlatformLibraryServicesDelegate *)self operationForLocaleChangeCheck];
  v44[4] = operationForLocaleChangeCheck;
  v7 = PLMacPlatformLibraryServicesOperationNameDuplicateMergeCrashRecovery;
  libraryServicesManager8 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v26 = [PLLibraryServicesOperation operationWithName:v7 libraryServicesManager:libraryServicesManager8 requiredState:6 parentProgress:0 executionBlock:&stru_10002D908];
  v44[5] = v26;
  v8 = PLiOSPlatformLibraryServicesOperationNameAssetCreationRecovery;
  libraryServicesManager9 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v24 = [PLLibraryServicesOperation operationWithName:v8 libraryServicesManager:libraryServicesManager9 requiredState:7 parentProgress:0 executionBlock:&stru_10002D928];
  v44[6] = v24;
  v9 = PLMacPlatformLibraryServicesOperationNameCleanInvalidSSB;
  libraryServicesManager10 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v11 = [PLLibraryServicesOperation operationWithName:v9 libraryServicesManager:libraryServicesManager10 requiredState:7 parentProgress:0 executionBlock:&stru_10002D948];
  v44[7] = v11;
  v12 = PLMacPlatformLibraryServicesOperationNameRegisterBackgroundJobService;
  libraryServicesManager11 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v14 = [PLLibraryServicesOperation operationWithName:v12 libraryServicesManager:libraryServicesManager11 requiredState:7 parentProgress:0 executionBlock:&stru_10002D968];
  v44[8] = v14;
  v15 = PLMacPlatformLibraryServicesOperationNameInitCacheDeleteSupport;
  libraryServicesManager12 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager13 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress4 = [libraryServicesManager13 preRunningProgress];
  v19 = [PLLibraryServicesOperation operationWithName:v15 libraryServicesManager:libraryServicesManager12 requiredState:7 parentProgress:preRunningProgress4 executionBlock:&stru_10002D988];
  v44[9] = v19;
  v20 = [NSArray arrayWithObjects:v44 count:10];

  v43.receiver = self;
  v43.super_class = PLMacPlatformLibraryServicesDelegate;
  commonBuiltInOperations = [(PLPlatformLibraryServicesDelegate *)&v43 commonBuiltInOperations];
  v22 = [commonBuiltInOperations arrayByAddingObjectsFromArray:v20];

  return v22;
}

- (id)systemLibraryBuiltInOperations
{
  v3 = PLMacPlatformLibraryServicesOperationNameNotifySPLMigrated;
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100017E14;
  v14[3] = &unk_10002D828;
  v14[4] = self;
  v5 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:libraryServicesManager requiredState:7 parentProgress:0 executionBlock:v14];
  v15[0] = v5;
  v6 = PLMacPlatformLibraryServicesOperationNameInitializePhotoStream;
  libraryServicesManager2 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v8 = [PLLibraryServicesOperation operationWithName:v6 libraryServicesManager:libraryServicesManager2 requiredState:7 parentProgress:0 executionBlock:&stru_10002D868];
  v15[1] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:2];

  v13.receiver = self;
  v13.super_class = PLMacPlatformLibraryServicesDelegate;
  systemLibraryBuiltInOperations = [(PLPlatformLibraryServicesDelegate *)&v13 systemLibraryBuiltInOperations];
  v11 = [systemLibraryBuiltInOperations arrayByAddingObjectsFromArray:v9];

  return v11;
}

@end