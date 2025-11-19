@interface PLLibraryRepairSupportRegistration
+ (BOOL)_shouldSuppressPeriodicMaintenanceTasks;
+ (int64_t)checkLibraryIsReadyForProcessing:(id)a3 libraryBundle:(id *)a4;
+ (void)_enqueueDrawAssetPersonEdgesOperationWithLSM:(id)a3 library:(id)a4 serverTransaction:(id)a5;
+ (void)_enqueueSocialGroupAssetContainmentOperationWithLSM:(id)a3 library:(id)a4 serverTransaction:(id)a5;
+ (void)_enqueueSocialGroupDeduplicationOperationWithLSM:(id)a3 library:(id)a4 serverTransaction:(id)a5;
+ (void)_reportProgressForTask:(id)a3 repairTaskName:(id)a4 started:(id)a5 stopped:(id)a6 itemCount:(unint64_t)a7;
+ (void)enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:(id)a3;
+ (void)installPeriodicMaintenanceActivity;
+ (void)registerTaskHandler:(id)a3 description:(id)a4 executionWithProgressBlock:(id)a5;
@end

@implementation PLLibraryRepairSupportRegistration

+ (void)_enqueueSocialGroupAssetContainmentOperationWithLSM:(id)a3 library:(id)a4 serverTransaction:(id)a5
{
  v6 = a5;
  v7 = PLLibraryServicesOperationNameCrashRecoverySocialGroupAssetContainment;
  v8 = a3;
  v9 = [v8 postRunningProgress];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E120;
  v12[3] = &unk_10002D828;
  v13 = v6;
  v10 = v6;
  v11 = [PLLibraryServicesOperation operationWithName:v7 libraryServicesManager:v8 requiredState:7 parentProgress:v9 executionBlock:v12];

  [v8 enqueueOperation:v11 error:0];
}

+ (void)_enqueueDrawAssetPersonEdgesOperationWithLSM:(id)a3 library:(id)a4 serverTransaction:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PLLibraryServicesOperationNameCrashRecoveryDrawAssetPersonEdges;
  v10 = a3;
  v11 = [v10 postRunningProgress];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10000E48C;
  v18 = &unk_10002D230;
  v19 = v7;
  v20 = v8;
  v12 = v8;
  v13 = v7;
  v14 = [PLLibraryServicesOperation operationWithName:v9 libraryServicesManager:v10 requiredState:7 parentProgress:v11 executionBlock:&v15];

  [v10 enqueueOperation:v14 error:{0, v15, v16, v17, v18}];
}

+ (void)_enqueueSocialGroupDeduplicationOperationWithLSM:(id)a3 library:(id)a4 serverTransaction:(id)a5
{
  v6 = a5;
  v7 = PLLibraryServicesOperationNameCrashRecoverySocialGroupDeduplication;
  v8 = a3;
  v9 = [v8 postRunningProgress];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E6F8;
  v12[3] = &unk_10002D828;
  v13 = v6;
  v10 = v6;
  v11 = [PLLibraryServicesOperation operationWithName:v7 libraryServicesManager:v8 requiredState:7 parentProgress:v9 executionBlock:v12];

  [v8 enqueueOperation:v11 error:0];
}

+ (void)enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [v4 pathManager];
  v6 = [v4 databaseContext];
  v7 = [v6 newShortLivedLibraryWithName:"+[PLLibraryRepairSupportRegistration enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:]"];

  v8 = [v7 globalValues];
  v9 = [v8 didImportFileSystemAssets];

  v10 = PLClientServerTransactionsGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Enqueuing outstanding transactions", buf, 2u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000E9BC;
  v14[3] = &unk_10002D280;
  v15 = v5;
  v16 = v4;
  v19 = v9 ^ 1;
  v17 = v7;
  v18 = a1;
  v11 = v7;
  v12 = v4;
  v13 = v5;
  [v12 registerOutstandingTransactionsHandler:v14];
}

+ (void)installPeriodicMaintenanceActivity
{
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering periodic maintenance task activity", buf, 2u);
  }

  [a1 registerTaskHandler:@"com.apple.assetsd.periodicmaintenance" description:@"MaintenanceTasks: Repair library" executionWithProgressBlock:&stru_10002D198];
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Registering periodic curated library processing activity", v5, 2u);
  }

  [a1 registerTaskHandler:@"com.apple.assetsd.curatedlibraryprocessing" description:@"CuratedLibraryMaintenanceTasks: Repair library" executionWithProgressBlock:&stru_10002D1B8];
  +[PLBackgroundMigrationActivity registerIncompleteBackgroundMigrationActivity];
}

+ (int64_t)checkLibraryIsReadyForProcessing:(id)a3 libraryBundle:(id *)a4
{
  v5 = a3;
  v6 = +[PLLibraryBookmarkManager sharedBookmarkManager];
  v40 = 0;
  v38 = v5;
  v7 = [v6 URLFromClientLibraryURL:v5 sandboxExtension:0 error:&v40];
  v8 = v40;
  if (v7)
  {
    v9 = 6;
  }

  else
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = v38;
      v43 = 2112;
      v44 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error getting SSB for libraryURL %@. Error: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "accessibleLibraryURL: %@", buf, 0xCu);
  }

  if (v7)
  {
    v12 = +[PLPhotoLibraryBundleController sharedBundleController];
    v13 = [v12 openBundleAtLibraryURL:v7];

    if (!v13)
    {
      v14 = PLBackendGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No libraryBundle for %@", buf, 0xCu);
      }

      v13 = 0;
      v9 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = PLBackendGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v42 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "libraryBundle: %@", buf, 0xCu);
  }

  if (v13)
  {
    if (([PLPhotoLibraryPathManager isSystemPhotoLibraryURL:v7]& 1) == 0)
    {
      v16 = [PLModelMigrator alloc];
      v17 = [(__CFString *)v13 pathManager];
      v18 = [v16 initWithPathManager:v17];
      v19 = [v18 isPhotoLibraryDatabaseReadyForOpen:0];

      if (!v19)
      {
        v21 = PLBackendGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v7;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Photo library database at %@ is not ready for maintenance tasks", buf, 0xCu);
        }

        v20 = 0;
        v9 = 5;
        goto LABEL_44;
      }
    }

    v20 = [(__CFString *)v13 libraryServicesManager];
    if (!v20)
    {
      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v13;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No libraryServicesManager for library bundle %@", buf, 0xCu);
      }

      v20 = 0;
      v9 = 2;
      goto LABEL_44;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v9 != 6)
  {
    goto LABEL_45;
  }

  v37 = a4;
  v22 = [[PLPhotoLibraryOpener alloc] initWithLibraryServicesManager:v20 reportInProgressUpgrades:0];
  v39 = 0;
  v23 = [v22 openPhotoLibraryDatabaseWithAutoUpgrade:0 autoCreate:0 error:&v39];
  v24 = v39;
  if (v23)
  {
    v9 = 6;
  }

  else
  {
    v25 = PLBackendGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = v7;
      v43 = 2112;
      v44 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Photo library database at %@ cannot be opened: %@", buf, 0x16u);
    }

    v9 = 4;
  }

  v26 = PLBackendGetLog();
  v36 = v8;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = @"NO";
    if (v23)
    {
      v27 = @"YES";
    }

    v28 = v6;
    v29 = v27;
    *buf = 138412290;
    v42 = v29;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Maintain library: open database: %@", buf, 0xCu);

    v6 = v28;
    v8 = v36;
  }

  if (!v23)
  {
    a4 = v37;
    goto LABEL_45;
  }

  v30 = v6;
  v31 = [(__CFString *)v13 libraryServicesManager];
  v32 = [v31 cplReadiness];
  v33 = [v32 isReadyForCloudPhotoLibraryWithStatus:0];

  if (v33)
  {
    v9 = 6;
    v6 = v30;
    v8 = v36;
    a4 = v37;
    goto LABEL_45;
  }

  v21 = PLBackendGetLog();
  v6 = v30;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Photo library at %@ is currently not ready", buf, 0xCu);
  }

  v9 = 3;
  v8 = v36;
  a4 = v37;
LABEL_44:

LABEL_45:
  if (a4)
  {
    v34 = v13;
    *a4 = v13;
  }

  return v9;
}

+ (void)_reportProgressForTask:(id)a3 repairTaskName:(id)a4 started:(id)a5 stopped:(id)a6 itemCount:(unint64_t)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a4;
  v15 = [v11 identifier];
  v16 = [NSString stringWithFormat:@"%@.%@", v15, v14];

  v17 = [BGSystemTaskThroughputMetrics alloc];
  v18 = [NSNumber numberWithUnsignedInt:qos_class_self()];
  v19 = [v17 initWithIdentifier:v16 qos:v18 workloadCategory:10 expectedMetricValue:0];

  v30 = 0;
  LOBYTE(v18) = [v11 registerThroughputTrackingFor:v19 withStartTime:v12 error:&v30];
  v20 = v30;
  if (v18)
  {
    [v19 addItemCount:a7];
    v29 = v20;
    v21 = [v11 deregisterThroughputTrackingFor:v19 withEndTime:v13 error:&v29];
    v22 = v29;

    v23 = PLBackendGetLog();
    v24 = v23;
    if (v21)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v32 = v16;
        v33 = 2112;
        v34 = v12;
        v35 = 2112;
        v36 = v13;
        v37 = 2048;
        v38 = a7;
        v25 = "Finished task '%@' work, from: %@, to: %@, itemCount: %lu";
        v26 = v24;
        v27 = OS_LOG_TYPE_DEBUG;
        v28 = 42;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v26, v27, v25, buf, v28);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v32 = v16;
      v33 = 2112;
      v34 = v22;
      v25 = "Couldn't deregister metrics for '%@': %@";
      v26 = v24;
      v27 = OS_LOG_TYPE_ERROR;
      v28 = 22;
      goto LABEL_9;
    }

    v20 = v22;
    goto LABEL_11;
  }

  v24 = PLBackendGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v32 = v16;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "'%@': %@, Can't register throughput tracking", buf, 0x16u);
  }

LABEL_11:
}

+ (void)registerTaskHandler:(id)a3 description:(id)a4 executionWithProgressBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = +[BGSystemTaskScheduler sharedScheduler];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100010538;
  v14[3] = &unk_10002D158;
  v16 = v9;
  v17 = a1;
  v15 = v8;
  v12 = v9;
  v13 = v8;
  [v11 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v14];
}

+ (BOOL)_shouldSuppressPeriodicMaintenanceTasks
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobileslideshow"];
  v3 = [v2 BOOLForKey:@"com.apple.Photos.SuppressMaintenanceTasks"];
  if (v3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = @"com.apple.Photos.SuppressMaintenanceTasks";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MaintenanceTasks: Repair library disabled by user default %@.", &v6, 0xCu);
    }
  }

  return v3;
}

@end