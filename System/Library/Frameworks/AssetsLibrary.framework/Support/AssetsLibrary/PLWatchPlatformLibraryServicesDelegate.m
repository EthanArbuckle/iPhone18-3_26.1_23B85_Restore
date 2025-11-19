@interface PLWatchPlatformLibraryServicesDelegate
- (id)commonBuiltInOperations;
@end

@implementation PLWatchPlatformLibraryServicesDelegate

- (id)commonBuiltInOperations
{
  v3 = PLWatchPlatformLibraryServicesOperationNameWaitForFirstUnlock;
  v4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v5 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v6 = [v5 preRunningProgress];
  v7 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:v4 requiredState:2 parentProgress:v6 executionBlock:&stru_10002CE78];
  v27[0] = v7;
  v8 = PLWatchPlatformLibraryServicesOperationNameMigrateOrRebuild;
  v9 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v10 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v11 = [v10 preRunningProgress];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000073CC;
  v26[3] = &unk_10002D828;
  v26[4] = self;
  v12 = [PLLibraryServicesOperation operationWithName:v8 libraryServicesManager:v9 requiredState:4 parentProgress:v11 executionBlock:v26];
  v27[1] = v12;
  v13 = [NSArray arrayWithObjects:v27 count:2];

  if (PLPlatformCloudPhotosPrimarySyncSupported())
  {
    v14 = PLWatchPlatformLibraryServicesOperationNameInitCPLManager;
    v15 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
    v16 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
    v17 = [v16 preRunningProgress];
    v18 = [PLLibraryServicesOperation operationWithName:v14 libraryServicesManager:v15 requiredState:5 parentProgress:v17 executionBlock:&stru_10002CE98];
    v19 = [v13 arrayByAddingObject:v18];

    v13 = v19;
  }

  if (PLIsChinaSKU())
  {
    v20 = [(PLPlatformLibraryServicesDelegate *)self operationForGreenTeaContactsAuthorizationCheck];
    v21 = [v13 arrayByAddingObject:v20];

    v13 = v21;
  }

  v25.receiver = self;
  v25.super_class = PLWatchPlatformLibraryServicesDelegate;
  v22 = [(PLPlatformLibraryServicesDelegate *)&v25 commonBuiltInOperations];
  v23 = [v22 arrayByAddingObjectsFromArray:v13];

  return v23;
}

@end