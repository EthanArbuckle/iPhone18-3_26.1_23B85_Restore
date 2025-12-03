@interface PLWatchPlatformLibraryServicesDelegate
- (id)commonBuiltInOperations;
@end

@implementation PLWatchPlatformLibraryServicesDelegate

- (id)commonBuiltInOperations
{
  v3 = PLWatchPlatformLibraryServicesOperationNameWaitForFirstUnlock;
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager2 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress = [libraryServicesManager2 preRunningProgress];
  v7 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:libraryServicesManager requiredState:2 parentProgress:preRunningProgress executionBlock:&stru_10002CE78];
  v27[0] = v7;
  v8 = PLWatchPlatformLibraryServicesOperationNameMigrateOrRebuild;
  libraryServicesManager3 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress2 = [libraryServicesManager4 preRunningProgress];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000073CC;
  v26[3] = &unk_10002D828;
  v26[4] = self;
  v12 = [PLLibraryServicesOperation operationWithName:v8 libraryServicesManager:libraryServicesManager3 requiredState:4 parentProgress:preRunningProgress2 executionBlock:v26];
  v27[1] = v12;
  v13 = [NSArray arrayWithObjects:v27 count:2];

  if (PLPlatformCloudPhotosPrimarySyncSupported())
  {
    v14 = PLWatchPlatformLibraryServicesOperationNameInitCPLManager;
    libraryServicesManager5 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
    libraryServicesManager6 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
    preRunningProgress3 = [libraryServicesManager6 preRunningProgress];
    v18 = [PLLibraryServicesOperation operationWithName:v14 libraryServicesManager:libraryServicesManager5 requiredState:5 parentProgress:preRunningProgress3 executionBlock:&stru_10002CE98];
    v19 = [v13 arrayByAddingObject:v18];

    v13 = v19;
  }

  if (PLIsChinaSKU())
  {
    operationForGreenTeaContactsAuthorizationCheck = [(PLPlatformLibraryServicesDelegate *)self operationForGreenTeaContactsAuthorizationCheck];
    v21 = [v13 arrayByAddingObject:operationForGreenTeaContactsAuthorizationCheck];

    v13 = v21;
  }

  v25.receiver = self;
  v25.super_class = PLWatchPlatformLibraryServicesDelegate;
  commonBuiltInOperations = [(PLPlatformLibraryServicesDelegate *)&v25 commonBuiltInOperations];
  v23 = [commonBuiltInOperations arrayByAddingObjectsFromArray:v13];

  return v23;
}

@end