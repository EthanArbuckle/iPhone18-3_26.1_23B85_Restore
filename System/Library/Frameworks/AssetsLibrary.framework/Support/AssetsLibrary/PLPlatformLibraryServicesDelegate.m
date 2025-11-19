@interface PLPlatformLibraryServicesDelegate
- (PLLibraryServicesManager)libraryServicesManager;
- (PLPlatformLibraryServicesDelegate)initWithLibraryServicesManager:(id)a3;
- (id)commonBuiltInOperations;
- (id)logPrefix;
- (id)operationForGreenTeaContactsAuthorizationCheck;
- (id)operationForLocaleChangeCheck;
- (id)operations;
- (id)systemLibraryBuiltInOperations;
- (void)handleCompletedAllOperationsForLibraryState:(int64_t)a3;
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
  v2 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v3 = [v2 logPrefix];

  return v3;
}

- (void)handleCompletedAllOperationsForLibraryState:(int64_t)a3
{
  if (a3 <= 3)
  {
    switch(a3)
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

  else if (a3 > 5)
  {
    if (a3 != 6)
    {
      if (a3 != 7)
      {
        return;
      }

      [(PLPlatformLibraryServicesDelegate *)self operationCompletionActivities];
    }

    v5 = 7;
  }

  else if (a3 == 4)
  {
    v5 = 5;
  }

  else
  {
    v5 = 6;
  }

  if (v5 != a3)
  {
    v6 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
    v12 = 0;
    v7 = [v6 transitionToState:v5 error:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      v9 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [(PLPlatformLibraryServicesDelegate *)self logPrefix];
        v11 = PLStringFromLibraryServicesState();
        *buf = 138543874;
        v14 = v10;
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
  v3 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v4 = [v3 modelMigrator];
  v15 = [v4 analyticsEventManager];

  v5 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 wellKnownPhotoLibraryIdentifier]);
  v7 = PLCoreAnalyticsLibraryEventWellKnownIdentifierKey;
  v8 = PLCoreAnalyticsLibraryCreateEvent;
  [v15 setPayloadValue:v6 forKey:PLCoreAnalyticsLibraryEventWellKnownIdentifierKey onlyOnExistingEventWithName:PLCoreAnalyticsLibraryCreateEvent];

  v9 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 wellKnownPhotoLibraryIdentifier]);
  v11 = PLCoreAnalyticsLibraryMigrateEvent;
  [v15 setPayloadValue:v10 forKey:v7 onlyOnExistingEventWithName:PLCoreAnalyticsLibraryMigrateEvent];

  v12 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 wellKnownPhotoLibraryIdentifier]);
  v14 = PLCoreAnalyticsLibraryRebuildEvent;
  [v15 setPayloadValue:v13 forKey:v7 onlyOnExistingEventWithName:PLCoreAnalyticsLibraryRebuildEvent];

  [v15 publishEventWithName:v8];
  [v15 publishEventWithName:v11];
  [v15 publishEventWithName:v14];
}

- (id)commonBuiltInOperations
{
  if ([(PLPlatformLibraryServicesDelegate *)self shouldSkipFileSystemImportOperation])
  {
    v66 = 0;
  }

  else
  {
    v4 = [(PLPlatformLibraryServicesDelegate *)self requiredStateForFileSystemImportOperation];
    v5 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
    v6 = v5;
    if (v4 > 6)
    {
      [v5 postRunningProgress];
    }

    else
    {
      [v5 preRunningProgress];
    }
    v66 = ;
  }

  v7 = PLLibraryServicesOperationNameCheckForAutoCreateWellKnownLibrary;
  v64 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v65 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v63 = [v65 preRunningProgress];
  v62 = [PLLibraryServicesOperation operationWithName:v7 libraryServicesManager:v64 requiredState:3 parentProgress:v63 executionBlock:&stru_10002D588];
  v72[0] = v62;
  v8 = PLLibraryServicesOperationNameActivateTCC;
  v60 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v61 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v59 = [v61 preRunningProgress];
  v58 = [PLLibraryServicesOperation operationWithName:v8 libraryServicesManager:v60 requiredState:3 parentProgress:v59 executionBlock:&stru_10002D5A8];
  v72[1] = v58;
  v9 = PLLibraryServicesOperationNameCoreAnalyticsSetup;
  v56 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v57 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v55 = [v57 preRunningProgress];
  v54 = [PLLibraryServicesOperation operationWithName:v9 libraryServicesManager:v56 requiredState:3 parentProgress:v55 executionBlock:&stru_10002D5C8];
  v72[2] = v54;
  v10 = PLLibraryServicesOperationNameInitChangeHandling;
  v52 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v53 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v51 = [v53 preRunningProgress];
  v50 = [PLLibraryServicesOperation operationWithName:v10 libraryServicesManager:v52 requiredState:5 parentProgress:v51 executionBlock:&stru_10002D5E8];
  v72[3] = v50;
  v11 = PLLibraryServicesOperationNameFilesystemImportNotifyEvent;
  v49 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v48 = [PLLibraryServicesOperation operationWithName:v11 libraryServicesManager:v49 requiredState:6 parentProgress:0 executionBlock:&stru_10002D608];
  v72[4] = v48;
  v12 = PLLibraryServicesOperationNameCreateSingletonAlbums;
  v47 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100014C40;
  v71[3] = &unk_10002D828;
  v71[4] = self;
  v46 = [PLLibraryServicesOperation operationWithName:v12 libraryServicesManager:v47 requiredState:6 parentProgress:0 executionBlock:v71];
  v72[5] = v46;
  v13 = PLLibraryServicesOperationNameCrashRecoveryOps;
  v44 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v45 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v43 = [v45 preRunningProgress];
  v42 = [PLLibraryServicesOperation operationWithName:v13 libraryServicesManager:v44 requiredState:6 parentProgress:v43 executionBlock:&stru_10002D628];
  v72[6] = v42;
  v14 = PLLibraryServicesOperationNameUpdateGraphLabels;
  v40 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v41 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v39 = [v41 preRunningProgress];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_100014E70;
  v70[3] = &unk_10002D828;
  v70[4] = self;
  v38 = [PLLibraryServicesOperation operationWithName:v14 libraryServicesManager:v40 requiredState:6 parentProgress:v39 executionBlock:v70];
  v72[7] = v38;
  v15 = PLLibraryServicesOperationNameCheckForMediaAnalysisVersionBump;
  v37 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100015018;
  v69[3] = &unk_10002D828;
  v69[4] = self;
  v36 = [PLLibraryServicesOperation operationWithName:v15 libraryServicesManager:v37 requiredState:6 parentProgress:0 executionBlock:v69];
  v72[8] = v36;
  v16 = PLLibraryServicesOperationNameUpdatePADLibraryOpened;
  v17 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v18 = [PLLibraryServicesOperation operationWithName:v16 libraryServicesManager:v17 requiredState:7 parentProgress:0 executionBlock:&stru_10002D670];
  v72[9] = v18;
  v19 = PLLibraryServicesOperationNameSpaceAttribution;
  v20 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100015130;
  v68[3] = &unk_10002D6C0;
  v68[4] = self;
  v68[5] = a2;
  v21 = [PLLibraryServicesOperation operationWithName:v19 libraryServicesManager:v20 requiredState:7 parentProgress:0 executionBlock:v68];
  v72[10] = v21;
  v22 = PLLibraryServicesOperationNameThumbnailRebuildReq;
  v23 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v24 = [PLLibraryServicesOperation operationWithName:v22 libraryServicesManager:v23 requiredState:7 parentProgress:0 executionBlock:&stru_10002D6E0];
  v72[11] = v24;
  v25 = PLLibraryServicesOperationNameFileSystemImport;
  v26 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100015570;
  v67[3] = &unk_10002D828;
  v67[4] = self;
  v27 = [PLLibraryServicesOperation operationWithName:v25 libraryServicesManager:v26 requiredState:[(PLPlatformLibraryServicesDelegate *)self requiredStateForFileSystemImportOperation] parentProgress:v66 executionBlock:v67];
  v72[12] = v27;
  v28 = [NSArray arrayWithObjects:v72 count:13];

  v29 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v30 = [v29 pathManager];
  LODWORD(v23) = [PLRebuildJournalManager isEnabledWithPathManager:v30 error:0];

  if (v23)
  {
    v31 = PLLibraryServicesOperationNameStartJournalManager;
    v32 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
    v33 = [PLLibraryServicesOperation operationWithName:v31 libraryServicesManager:v32 requiredState:7 parentProgress:0 executionBlock:&stru_10002D788];
    v34 = [v28 arrayByAddingObject:v33];

    v28 = v34;
  }

  return v28;
}

- (id)operationForGreenTeaContactsAuthorizationCheck
{
  v3 = PLLibraryServicesOperationNameGreenTeaContactsAuthorizationChangeCheck;
  v4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000165A8;
  v7[3] = &unk_10002D828;
  v7[4] = self;
  v5 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:v4 requiredState:6 parentProgress:0 executionBlock:v7];

  return v5;
}

- (id)operationForLocaleChangeCheck
{
  v3 = PLLibraryServicesOperationNameLocaleChangeCheck;
  v4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016778;
  v7[3] = &unk_10002D828;
  v7[4] = self;
  v5 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:v4 requiredState:6 parentProgress:0 executionBlock:v7];

  return v5;
}

- (id)systemLibraryBuiltInOperations
{
  v3 = PLLibraryServicesOperationNameCreateConstraintsDirectory;
  v21 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v22 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v20 = [v22 preRunningProgress];
  v19 = [PLLibraryServicesOperation operationWithName:v3 libraryServicesManager:v21 requiredState:3 parentProgress:v20 executionBlock:&stru_10002D4C8];
  v23[0] = v19;
  v4 = PLLibraryServicesOperationNameNotifyLibraryAvailability;
  v5 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v6 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v7 = [v6 preRunningProgress];
  v8 = [PLLibraryServicesOperation operationWithName:v4 libraryServicesManager:v5 requiredState:6 parentProgress:v7 executionBlock:&stru_10002D4E8];
  v23[1] = v8;
  v9 = PLLibraryServicesOperationNamePrefetchSensitiveContentAnalysisPolicy;
  v10 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v11 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v12 = [v11 postRunningProgress];
  v13 = [PLLibraryServicesOperation operationWithName:v9 libraryServicesManager:v10 requiredState:7 parentProgress:v12 executionBlock:&stru_10002D508];
  v23[2] = v13;
  v14 = [NSArray arrayWithObjects:v23 count:3];

  v15 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v16 = [PLLibraryServicesOperation operationWithName:@"Open syndication library" libraryServicesManager:v15 requiredState:7 parentProgress:0 executionBlock:&stru_10002D568];
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
  v4 = [(PLPlatformLibraryServicesDelegate *)self libraryServicesManager];
  v5 = [v4 libraryURL];
  v6 = [PLPhotoLibraryPathManager isSystemPhotoLibraryURL:v5];

  if (v6)
  {
    v7 = [(PLPlatformLibraryServicesDelegate *)self systemLibraryBuiltInOperations];
    (v3[2])(v3, v7);
  }

  v8 = [(PLPlatformLibraryServicesDelegate *)self commonBuiltInOperations];
  (v3[2])(v3, v8);

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (PLPlatformLibraryServicesDelegate)initWithLibraryServicesManager:(id)a3
{
  v4 = a3;
  v5 = [(PLPlatformLibraryServicesDelegate *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryServicesManager, v4);
  }

  return v6;
}

@end