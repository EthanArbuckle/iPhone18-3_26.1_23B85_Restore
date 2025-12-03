@interface PLExcessiveDatabaseSizeMaintenanceTask
- (BOOL)isHistorySizeExcessiveWithPathManager:(id)manager;
- (BOOL)isOrphanedSceneClassificationsCountExcessiveWithPathManager:(id)manager;
- (BOOL)runTaskWithTransaction:(id)transaction;
- (id)isHistorySizeExcessiveWithPathManager:(id)manager error:(id *)error;
- (void)_forceRebuildWithReason:(int64_t)reason pathManager:(id)manager transaction:(id)transaction;
@end

@implementation PLExcessiveDatabaseSizeMaintenanceTask

- (BOOL)isOrphanedSceneClassificationsCountExcessiveWithPathManager:(id)manager
{
  managerCopy = manager;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  [(PLMaintenanceTask *)self photoLibrary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000124C0;
  v5 = v9[3] = &unk_10002D3E0;
  v10 = v5;
  v12 = &v13;
  v6 = managerCopy;
  v11 = v6;
  [v5 performBlockAndWait:v9];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (id)isHistorySizeExcessiveWithPathManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  if (PLHasInternalDiagnostics())
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 BOOLForKey:@"PLTriggerExcessiveHistorySizeRebuild"];

    if (v8)
    {
      v9 = &__kCFBooleanTrue;
      goto LABEL_29;
    }
  }

  photosDatabasePath = [managerCopy photosDatabasePath];
  if (!photosDatabasePath)
  {
    v56 = NSDebugDescriptionErrorKey;
    v57 = @"databasePath is nil while checking for excessive history size";
    v24 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v13 = [NSError errorWithDomain:PLPhotosErrorDomain code:46518 userInfo:v24];

    if (error)
    {
      v25 = v13;
      v9 = 0;
      *error = v13;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_28;
  }

  v11 = [NSURL fileURLWithPath:photosDatabasePath isDirectory:0];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_100012C78;
  v48 = sub_100012C88;
  v49 = 0;
  v43 = 0;
  obj = 0;
  v12 = [v11 getResourceValue:&v43 forKey:NSURLFileSizeKey error:&obj];
  v13 = v43;
  objc_storeStrong(&v49, obj);
  if (!v12)
  {
    v26 = v45[5];
LABEL_17:
    if (error)
    {
      v26 = v26;
      v9 = 0;
      *error = v26;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_27;
  }

  if ([v13 unsignedLongLongValue] > 0x140000000)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
    managedObjectContext = [photoLibrary managedObjectContext];

    photoLibrary2 = [(PLMaintenanceTask *)self photoLibrary];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100012C90;
    v34[3] = &unk_10002D408;
    v17 = managedObjectContext;
    v35 = v17;
    v36 = &v38;
    v37 = &v44;
    [photoLibrary2 performBlockAndWait:v34];

    v18 = v39[3];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    if (v18 <= 1)
    {
      v18 = 1;
    }

    v39[3] = v18;
    v19 = (v45 + 5);
    v33 = v45[5];
    v20 = [PLPersistentHistoryUtilities fetchApproximateChangeCountWithPathManager:managerCopy error:&v33];
    objc_storeStrong(v19, v33);
    if (v20 < 1)
    {
LABEL_22:
      v9 = 0;
    }

    else
    {
      v21 = 5000 * v39[3];
      v9 = [NSNumber numberWithBool:v20 >= v21];
      if (v20 < v21)
      {
        v22 = PLBackendGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v39[3];
          libraryURL = [managerCopy libraryURL];
          v27 = [PLFilePathDescription descriptionWithFileURL:libraryURL];
          *buf = 134218498;
          v51 = v20;
          v52 = 2048;
          v53 = v30;
          v54 = 2112;
          v55 = v27;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Maintenance task: history count: %llu, asset count: %llu in library URL: %@", buf, 0x20u);
        }
      }

      else
      {
        v22 = PLBackendGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v39[3];
          libraryURL2 = [managerCopy libraryURL];
          v23 = [PLFilePathDescription descriptionWithFileURL:libraryURL2];
          *buf = 134218498;
          v51 = v20;
          v52 = 2048;
          v53 = v29;
          v54 = 2112;
          v55 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Maintenance task: Excessive history found with history count: %llu, asset count: %llu in library URL: %@", buf, 0x20u);
        }
      }
    }

    _Block_object_dispose(&v38, 8);
    v26 = v45[5];
    if (v9)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  v26 = v45[5];
  v9 = &__kCFBooleanFalse;
LABEL_27:

  _Block_object_dispose(&v44, 8);
LABEL_28:

LABEL_29:

  return v9;
}

- (BOOL)isHistorySizeExcessiveWithPathManager:(id)manager
{
  managerCopy = manager;
  v12 = 0;
  v5 = [(PLExcessiveDatabaseSizeMaintenanceTask *)self isHistorySizeExcessiveWithPathManager:managerCopy error:&v12];
  v6 = v12;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      libraryURL = [managerCopy libraryURL];
      v10 = [PLFilePathDescription descriptionWithFileURL:libraryURL];
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Maintenance task: Failed to determine history size for library URL %@. Error: %@", buf, 0x16u);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_forceRebuildWithReason:(int64_t)reason pathManager:(id)manager transaction:(id)transaction
{
  managerCopy = manager;
  transactionCopy = transaction;
  if ([PLRebuildJournalManager isEnabledWithPathManager:managerCopy error:0])
  {
    libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
    rebuildJournalManager = [libraryServicesManager rebuildJournalManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100013050;
    v15[3] = &unk_10002D3B8;
    v16 = managerCopy;
    reasonCopy = reason;
    v17 = transactionCopy;
    [rebuildJournalManager snapshotJournalsForPayloadClassIDs:0 withCompletionHandler:v15];

    v12 = v16;
  }

  else
  {
    [managerCopy setSqliteErrorForRebuildReason:reason allowsExit:0];
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      libraryURL = [managerCopy libraryURL];
      v14 = [PLFilePathDescription descriptionWithFileURL:libraryURL];
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Maintenance task: Added rebuild flag for excessive persistent history size for library URL: %@", buf, 0xCu);
    }
  }
}

- (BOOL)runTaskWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  pathManager = [photoLibrary pathManager];

  if (pathManager)
  {
    if (([pathManager sqliteErrorIndicatorFileExists] & 1) == 0)
    {
      if ([(PLExcessiveDatabaseSizeMaintenanceTask *)self isHistorySizeExcessiveWithPathManager:pathManager])
      {
        selfCopy2 = self;
        v8 = 16;
LABEL_10:
        [(PLExcessiveDatabaseSizeMaintenanceTask *)selfCopy2 _forceRebuildWithReason:v8 pathManager:pathManager transaction:transactionCopy];
        goto LABEL_11;
      }

      if ([(PLExcessiveDatabaseSizeMaintenanceTask *)self isOrphanedSceneClassificationsCountExcessiveWithPathManager:pathManager])
      {
        selfCopy2 = self;
        v8 = 20;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Maintenance task: Failed to get path manager", v11, 2u);
    }
  }

LABEL_11:

  return pathManager != 0;
}

@end