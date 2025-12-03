@interface PLPlatformLibraryServicesDelegate
- (PLLibraryServicesManager)libraryServicesManager;
- (PLPlatformLibraryServicesDelegate)initWithLibraryServicesManager:(id)manager;
- (id)commonBuiltInOperations;
- (id)logPrefix;
- (id)operationForGreenTeaContactsAuthorizationCheck;
- (id)operationForLocaleChangeCheck;
- (id)operations;
- (id)systemLibraryBuiltInOperations;
- (void)handleCompletedAllOperationsForLibraryState:(int64_t)state;
- (void)operationCompletionActivities;
@end

@implementation PLPlatformLibraryServicesDelegate

- (PLLibraryServicesManager)libraryServicesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryServicesManager);

  return WeakRetained;
}

- (id)logPrefix
{
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  logPrefix = [libraryServicesManager logPrefix];

  return logPrefix;
}

- (void)handleCompletedAllOperationsForLibraryState:(int64_t)state
{
  if (state <= 3)
  {
    switch(state)
    {
      case 1:
        v5 = 2;
        break;
      case 2:
        v5 = 3;
        break;
      case 3:
        v5 = 4;
        break;
      default:
        return;
    }
  }

  else if (state > 5)
  {
    if (state != 6)
    {
      if (state != 7)
      {
        return;
      }

      [(PLPlatformLibraryServicesDelegate *)self operationCompletionActivities];
    }

    v5 = 7;
  }

  else if (state == 4)
  {
    v5 = 5;
  }

  else
  {
    v5 = 6;
  }

  if (v5 != state)
  {
    libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
    v12 = 0;
    v7 = [libraryServicesManager transitionToState:v5 error:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      v9 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        logPrefix = [(PLPlatformLibraryServicesDelegate *)self logPrefix];
        v11 = PLStringFromLibraryServicesState();
        *buf = 138543874;
        v14 = logPrefix;
        v15 = 2114;
        v16 = v11;
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to perform built-in transition to %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)operationCompletionActivities
{
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  modelMigrator = [libraryServicesManager modelMigrator];
  analyticsEventManager = [modelMigrator analyticsEventManager];

  libraryServicesManager2 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [libraryServicesManager2 wellKnownPhotoLibraryIdentifier]);
  v7 = PLCoreAnalyticsLibraryEventWellKnownIdentifierKey;
  v8 = PLCoreAnalyticsLibraryCreateEvent;
  [analyticsEventManager setPayloadValue:v6 forKey:PLCoreAnalyticsLibraryEventWellKnownIdentifierKey onlyOnExistingEventWithName:PLCoreAnalyticsLibraryCreateEvent];

  libraryServicesManager3 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [libraryServicesManager3 wellKnownPhotoLibraryIdentifier]);
  v11 = PLCoreAnalyticsLibraryMigrateEvent;
  [analyticsEventManager setPayloadValue:v10 forKey:v7 onlyOnExistingEventWithName:PLCoreAnalyticsLibraryMigrateEvent];

  libraryServicesManager4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [libraryServicesManager4 wellKnownPhotoLibraryIdentifier]);
  v14 = PLCoreAnalyticsLibraryRebuildEvent;
  [analyticsEventManager setPayloadValue:v13 forKey:v7 onlyOnExistingEventWithName:PLCoreAnalyticsLibraryRebuildEvent];

  [analyticsEventManager publishEventWithName:v8];
  [analyticsEventManager publishEventWithName:v11];
  [analyticsEventManager publishEventWithName:v14];
}

- (id)commonBuiltInOperations
{
  if ([(PLPlatformLibraryServicesDelegate *)self shouldSkipFileSystemImportOperation])
  {
    v66 = 0;
  }

  else
  {
    requiredStateForFileSystemImportOperation = [(PLPlatformLibraryServicesDelegate *)self requiredStateForFileSystemImportOperation];
    libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
    v6 = libraryServicesManager;
    if (requiredStateForFileSystemImportOperation > 6)
    {
      [libraryServicesManager postRunningProgress];
    }

    else
    {
      [libraryServicesManager preRunningProgress];
    }
    v66 = ;
  }

  v7 = PLLibraryServicesOperationNameCheckForAutoCreateWellKnownLibrary;
  libraryServicesManager2 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager3 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress = [libraryServicesManager3 preRunningProgress];
  v62 = [PLLibraryServicesOperation operationWithName:v7 libraryServicesManager:libraryServicesManager2 requiredState:3 parentProgress:preRunningProgress executionBlock:&stru_10002D588];
  v72[0] = v62;
  v8 = PLLibraryServicesOperationNameActivateTCC;
  libraryServicesManager4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager5 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress2 = [libraryServicesManager5 preRunningProgress];
  v58 = [PLLibraryServicesOperation operationWithName:v8 libraryServicesManager:libraryServicesManager4 requiredState:3 parentProgress:preRunningProgress2 executionBlock:&stru_10002D5A8];
  v72[1] = v58;
  v9 = PLLibraryServicesOperationNameCoreAnalyticsSetup;
  libraryServicesManager6 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager7 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress3 = [libraryServicesManager7 preRunningProgress];
  v54 = [PLLibraryServicesOperation operationWithName:v9 libraryServicesManager:libraryServicesManager6 requiredState:3 parentProgress:preRunningProgress3 executionBlock:&stru_10002D5C8];
  v72[2] = v54;
  v10 = PLLibraryServicesOperationNameInitChangeHandling;
  libraryServicesManager8 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager9 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress4 = [libraryServicesManager9 preRunningProgress];
  v50 = [PLLibraryServicesOperation operationWithName:v10 libraryServicesManager:libraryServicesManager8 requiredState:5 parentProgress:preRunningProgress4 executionBlock:&stru_10002D5E8];
  v72[3] = v50;
  v11 = PLLibraryServicesOperationNameFilesystemImportNotifyEvent;
  libraryServicesManager10 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v48 = [PLLibraryServicesOperation operationWithName:v11 libraryServicesManager:libraryServicesManager10 requiredState:6 parentProgress:0 executionBlock:&stru_10002D608];
  v72[4] = v48;
  v12 = PLLibraryServicesOperationNameCreateSingletonAlbums;
  libraryServicesManager11 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100014C40;
  v71[3] = &unk_10002D828;
  v71[4] = self;
  v46 = [PLLibraryServicesOperation operationWithName:v12 libraryServicesManager:libraryServicesManager11 requiredState:6 parentProgress:0 executionBlock:v71];
  v72[5] = v46;
  v13 = PLLibraryServicesOperationNameCrashRecoveryOps;
  libraryServicesManager12 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager13 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress5 = [libraryServicesManager13 preRunningProgress];
  v42 = [PLLibraryServicesOperation operationWithName:v13 libraryServicesManager:libraryServicesManager12 requiredState:6 parentProgress:preRunningProgress5 executionBlock:&stru_10002D628];
  v72[6] = v42;
  v14 = PLLibraryServicesOperationNameUpdateGraphLabels;
  libraryServicesManager14 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager15 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress6 = [libraryServicesManager15 preRunningProgress];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_100014E70;
  v70[3] = &unk_10002D828;
  v70[4] = self;
  v38 = [PLLibraryServicesOperation operationWithName:v14 libraryServicesManager:libraryServicesManager14 requiredState:6 parentProgress:preRunningProgress6 executionBlock:v70];
  v72[7] = v38;
  v15 = PLLibraryServicesOperationNameCheckForMediaAnalysisVersionBump;
  libraryServicesManager16 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100015018;
  v69[3] = &unk_10002D828;
  v69[4] = self;
  v36 = [PLLibraryServicesOperation operationWithName:v15 libraryServicesManager:libraryServicesManager16 requiredState:6 parentProgress:0 executionBlock:v69];
  v72[8] = v36;
  v16 = PLLibraryServicesOperationNameUpdatePADLibraryOpened;
  libraryServicesManager17 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v18 = [PLLibraryServicesOperation operationWithName:v16 libraryServicesManager:libraryServicesManager17 requiredState:7 parentProgress:0 executionBlock:&stru_10002D670];
  v72[9] = v18;
  v19 = PLLibraryServicesOperationNameSpaceAttribution;
  libraryServicesManager18 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100015130;
  v68[3] = &unk_10002D6C0;
  v68[4] = self;
  v68[5] = a2;
  v21 = [PLLibraryServicesOperation operationWithName:v19 libraryServicesManager:libraryServicesManager18 requiredState:7 parentProgress:0 executionBlock:v68];
  v72[10] = v21;
  v22 = PLLibraryServicesOperationNameThumbnailRebuildReq;
  libraryServicesManager19 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v24 = [PLLibraryServicesOperation operationWithName:v22 libraryServicesManager:libraryServicesManager19 requiredState:7 parentProgress:0 executionBlock:&stru_10002D6E0];
  v72[11] = v24;
  v25 = PLLibraryServicesOperationNameFileSystemImport;
  libraryServicesManager20 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100015570;
  v67[3] = &unk_10002D828;
  v67[4] = self;
  v27 = [PLLibraryServicesOperation operationWithName:v25 libraryServicesManager:libraryServicesManager20 requiredState:[(PLPlatformLibraryServicesDelegate *)self requiredStateForFileSystemImportOperation] parentProgress:v66 executionBlock:v67];
  v72[12] = v27;
  v28 = [NSArray arrayWithObjects:v72 count:13];

  libraryServicesManager21 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  pathManager = [libraryServicesManager21 pathManager];
  LODWORD(libraryServicesManager19) = [PLRebuildJournalManager isEnabledWithPathManager:pathManager error:0];

  if (libraryServicesManager19)
  {
    v31 = PLLibraryServicesOperationNameStartJournalManager;
    libraryServicesManager22 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
    v33 = [PLLibraryServicesOperation operationWithName:v31 libraryServicesManager:libraryServicesManager22 requiredState:7 parentProgress:0 executionBlock:&stru_10002D788];
    v34 = [v28 arrayByAddingObject:v33];

    v28 = v34;
  }

  return v28;
}

- (id)operationForGreenTeaContactsAuthorizationCheck
{
  v3 = PLLibraryServicesOperationNameGreenTeaContactsAuthorizationChangeCheck;
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000165A8;
  v7[3] = &unk_10002D828;
  v7[4] = self;
  v5 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:libraryServicesManager requiredState:6 parentProgress:0 executionBlock:v7];

  return v5;
}

- (id)operationForLocaleChangeCheck
{
  v3 = PLLibraryServicesOperationNameLocaleChangeCheck;
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016778;
  v7[3] = &unk_10002D828;
  v7[4] = self;
  v5 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:libraryServicesManager requiredState:6 parentProgress:0 executionBlock:v7];

  return v5;
}

- (id)systemLibraryBuiltInOperations
{
  v3 = PLLibraryServicesOperationNameCreateConstraintsDirectory;
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager2 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress = [libraryServicesManager2 preRunningProgress];
  v19 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:libraryServicesManager requiredState:3 parentProgress:preRunningProgress executionBlock:&stru_10002D4C8];
  v23[0] = v19;
  v4 = PLLibraryServicesOperationNameNotifyLibraryAvailability;
  libraryServicesManager3 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  preRunningProgress2 = [libraryServicesManager4 preRunningProgress];
  v8 = [PLLibraryServicesOperation operationWithName:v4 libraryServicesManager:libraryServicesManager3 requiredState:6 parentProgress:preRunningProgress2 executionBlock:&stru_10002D4E8];
  v23[1] = v8;
  v9 = PLLibraryServicesOperationNamePrefetchSensitiveContentAnalysisPolicy;
  libraryServicesManager5 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryServicesManager6 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  postRunningProgress = [libraryServicesManager6 postRunningProgress];
  v13 = [PLLibraryServicesOperation operationWithName:v9 libraryServicesManager:libraryServicesManager5 requiredState:7 parentProgress:postRunningProgress executionBlock:&stru_10002D508];
  v23[2] = v13;
  v14 = [NSArray arrayWithObjects:v23 count:3];

  libraryServicesManager7 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v16 = [PLLibraryServicesOperation operationWithName:@"Open syndication library" libraryServicesManager:libraryServicesManager7 requiredState:7 parentProgress:0 executionBlock:&stru_10002D568];
  v17 = [v14 arrayByAddingObject:v16];

  return v17;
}

- (id)operations
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000171BC;
  v16 = sub_1000171CC;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000171D4;
  v11[3] = &unk_10002D4A8;
  v11[4] = &v12;
  v3 = objc_retainBlock(v11);
  libraryServicesManager = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  libraryURL = [libraryServicesManager libraryURL];
  v6 = [PLPhotoLibraryPathManager isSystemPhotoLibraryURL:libraryURL];

  if (v6)
  {
    systemLibraryBuiltInOperations = [(PLPlatformLibraryServicesDelegate *)self systemLibraryBuiltInOperations];
    (v3[2])(v3, systemLibraryBuiltInOperations);
  }

  commonBuiltInOperations = [(PLPlatformLibraryServicesDelegate *)self commonBuiltInOperations];
  (v3[2])(v3, commonBuiltInOperations);

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (PLPlatformLibraryServicesDelegate)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  v5 = [(PLPlatformLibraryServicesDelegate *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryServicesManager, managerCopy);
  }

  return v6;
}

@end