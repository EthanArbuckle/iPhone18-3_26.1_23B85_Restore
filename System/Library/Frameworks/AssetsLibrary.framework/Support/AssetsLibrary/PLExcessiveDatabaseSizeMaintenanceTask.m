@interface PLExcessiveDatabaseSizeMaintenanceTask
- (BOOL)isHistorySizeExcessiveWithPathManager:(id)a3;
- (BOOL)isOrphanedSceneClassificationsCountExcessiveWithPathManager:(id)a3;
- (BOOL)runTaskWithTransaction:(id)a3;
- (id)isHistorySizeExcessiveWithPathManager:(id)a3 error:(id *)a4;
- (void)_forceRebuildWithReason:(int64_t)a3 pathManager:(id)a4 transaction:(id)a5;
@end

@implementation PLExcessiveDatabaseSizeMaintenanceTask

- (BOOL)isOrphanedSceneClassificationsCountExcessiveWithPathManager:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v11 = v6;
  [v5 performBlockAndWait:v9];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (id)isHistorySizeExcessiveWithPathManager:(id)a3 error:(id *)a4
{
  v6 = a3;
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

  v10 = [v6 photosDatabasePath];
  if (!v10)
  {
    v56 = NSDebugDescriptionErrorKey;
    v57 = @"databasePath is nil while checking for excessive history size";
    v24 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v13 = [NSError errorWithDomain:PLPhotosErrorDomain code:46518 userInfo:v24];

    if (a4)
    {
      v25 = v13;
      v9 = 0;
      *a4 = v13;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_28;
  }

  v11 = [NSURL fileURLWithPath:v10 isDirectory:0];
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
    if (a4)
    {
      v26 = v26;
      v9 = 0;
      *a4 = v26;
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
    v14 = [(PLMaintenanceTask *)self photoLibrary];
    v15 = [v14 managedObjectContext];

    v16 = [(PLMaintenanceTask *)self photoLibrary];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100012C90;
    v34[3] = &unk_10002D408;
    v17 = v15;
    v35 = v17;
    v36 = &v38;
    v37 = &v44;
    [v16 performBlockAndWait:v34];

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
    v20 = [PLPersistentHistoryUtilities fetchApproximateChangeCountWithPathManager:v6 error:&v33];
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
          v32 = [v6 libraryURL];
          v27 = [PLFilePathDescription descriptionWithFileURL:v32];
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
          v31 = [v6 libraryURL];
          v23 = [PLFilePathDescription descriptionWithFileURL:v31];
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

- (BOOL)isHistorySizeExcessiveWithPathManager:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [(PLExcessiveDatabaseSizeMaintenanceTask *)self isHistorySizeExcessiveWithPathManager:v4 error:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 libraryURL];
      v10 = [PLFilePathDescription descriptionWithFileURL:v9];
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Maintenance task: Failed to determine history size for library URL %@. Error: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)_forceRebuildWithReason:(int64_t)a3 pathManager:(id)a4 transaction:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([PLRebuildJournalManager isEnabledWithPathManager:v8 error:0])
  {
    v10 = [(PLMaintenanceTask *)self libraryServicesManager];
    v11 = [v10 rebuildJournalManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100013050;
    v15[3] = &unk_10002D3B8;
    v16 = v8;
    v18 = a3;
    v17 = v9;
    [v11 snapshotJournalsForPayloadClassIDs:0 withCompletionHandler:v15];

    v12 = v16;
  }

  else
  {
    [v8 setSqliteErrorForRebuildReason:a3 allowsExit:0];
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 libraryURL];
      v14 = [PLFilePathDescription descriptionWithFileURL:v13];
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Maintenance task: Added rebuild flag for excessive persistent history size for library URL: %@", buf, 0xCu);
    }
  }
}

- (BOOL)runTaskWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [(PLMaintenanceTask *)self photoLibrary];
  v6 = [v5 pathManager];

  if (v6)
  {
    if (([v6 sqliteErrorIndicatorFileExists] & 1) == 0)
    {
      if ([(PLExcessiveDatabaseSizeMaintenanceTask *)self isHistorySizeExcessiveWithPathManager:v6])
      {
        v7 = self;
        v8 = 16;
LABEL_10:
        [(PLExcessiveDatabaseSizeMaintenanceTask *)v7 _forceRebuildWithReason:v8 pathManager:v6 transaction:v4];
        goto LABEL_11;
      }

      if ([(PLExcessiveDatabaseSizeMaintenanceTask *)self isOrphanedSceneClassificationsCountExcessiveWithPathManager:v6])
      {
        v7 = self;
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

  return v6 != 0;
}

@end