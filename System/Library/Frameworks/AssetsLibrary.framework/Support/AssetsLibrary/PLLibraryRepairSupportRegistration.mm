@interface PLLibraryRepairSupportRegistration
+ (BOOL)_shouldSuppressPeriodicMaintenanceTasks;
+ (int64_t)checkLibraryIsReadyForProcessing:(id)processing libraryBundle:(id *)bundle;
+ (void)_enqueueDrawAssetPersonEdgesOperationWithLSM:(id)m library:(id)library serverTransaction:(id)transaction;
+ (void)_enqueueSocialGroupAssetContainmentOperationWithLSM:(id)m library:(id)library serverTransaction:(id)transaction;
+ (void)_enqueueSocialGroupDeduplicationOperationWithLSM:(id)m library:(id)library serverTransaction:(id)transaction;
+ (void)_reportProgressForTask:(id)task repairTaskName:(id)name started:(id)started stopped:(id)stopped itemCount:(unint64_t)count;
+ (void)enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:(id)necessary;
+ (void)installPeriodicMaintenanceActivity;
+ (void)registerTaskHandler:(id)handler description:(id)description executionWithProgressBlock:(id)block;
@end

@implementation PLLibraryRepairSupportRegistration

+ (void)_enqueueSocialGroupAssetContainmentOperationWithLSM:(id)m library:(id)library serverTransaction:(id)transaction
{
  transactionCopy = transaction;
  v7 = PLLibraryServicesOperationNameCrashRecoverySocialGroupAssetContainment;
  mCopy = m;
  postRunningProgress = [mCopy postRunningProgress];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E120;
  v12[3] = &unk_10002D828;
  v13 = transactionCopy;
  v10 = transactionCopy;
  v11 = [PLLibraryServicesOperation operationWithName:v7 libraryServicesManager:mCopy requiredState:7 parentProgress:postRunningProgress executionBlock:v12];

  [mCopy enqueueOperation:v11 error:0];
}

+ (void)_enqueueDrawAssetPersonEdgesOperationWithLSM:(id)m library:(id)library serverTransaction:(id)transaction
{
  libraryCopy = library;
  transactionCopy = transaction;
  v9 = PLLibraryServicesOperationNameCrashRecoveryDrawAssetPersonEdges;
  mCopy = m;
  postRunningProgress = [mCopy postRunningProgress];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10000E48C;
  v18 = &unk_10002D230;
  v19 = libraryCopy;
  v20 = transactionCopy;
  v12 = transactionCopy;
  v13 = libraryCopy;
  v14 = [PLLibraryServicesOperation operationWithName:v9 libraryServicesManager:mCopy requiredState:7 parentProgress:postRunningProgress executionBlock:&v15];

  [mCopy enqueueOperation:v14 error:{0, v15, v16, v17, v18}];
}

+ (void)_enqueueSocialGroupDeduplicationOperationWithLSM:(id)m library:(id)library serverTransaction:(id)transaction
{
  transactionCopy = transaction;
  v7 = PLLibraryServicesOperationNameCrashRecoverySocialGroupDeduplication;
  mCopy = m;
  postRunningProgress = [mCopy postRunningProgress];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E6F8;
  v12[3] = &unk_10002D828;
  v13 = transactionCopy;
  v10 = transactionCopy;
  v11 = [PLLibraryServicesOperation operationWithName:v7 libraryServicesManager:mCopy requiredState:7 parentProgress:postRunningProgress executionBlock:v12];

  [mCopy enqueueOperation:v11 error:0];
}

+ (void)enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  pathManager = [necessaryCopy pathManager];
  databaseContext = [necessaryCopy databaseContext];
  v7 = [databaseContext newShortLivedLibraryWithName:"+[PLLibraryRepairSupportRegistration enqueueOutstandingTransactionCrashRecoveryOperationsIfNecessary:]"];

  globalValues = [v7 globalValues];
  didImportFileSystemAssets = [globalValues didImportFileSystemAssets];

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
  v15 = pathManager;
  v16 = necessaryCopy;
  v19 = didImportFileSystemAssets ^ 1;
  v17 = v7;
  selfCopy = self;
  v11 = v7;
  v12 = necessaryCopy;
  v13 = pathManager;
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

  [self registerTaskHandler:@"com.apple.assetsd.periodicmaintenance" description:@"MaintenanceTasks: Repair library" executionWithProgressBlock:&stru_10002D198];
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Registering periodic curated library processing activity", v5, 2u);
  }

  [self registerTaskHandler:@"com.apple.assetsd.curatedlibraryprocessing" description:@"CuratedLibraryMaintenanceTasks: Repair library" executionWithProgressBlock:&stru_10002D1B8];
  +[PLBackgroundMigrationActivity registerIncompleteBackgroundMigrationActivity];
}

+ (int64_t)checkLibraryIsReadyForProcessing:(id)processing libraryBundle:(id *)bundle
{
  processingCopy = processing;
  v6 = +[PLLibraryBookmarkManager sharedBookmarkManager];
  v40 = 0;
  v38 = processingCopy;
  v7 = [v6 URLFromClientLibraryURL:processingCopy sandboxExtension:0 error:&v40];
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
      pathManager = [(__CFString *)v13 pathManager];
      v18 = [v16 initWithPathManager:pathManager];
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

        libraryServicesManager = 0;
        v9 = 5;
        goto LABEL_44;
      }
    }

    libraryServicesManager = [(__CFString *)v13 libraryServicesManager];
    if (!libraryServicesManager)
    {
      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v13;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No libraryServicesManager for library bundle %@", buf, 0xCu);
      }

      libraryServicesManager = 0;
      v9 = 2;
      goto LABEL_44;
    }
  }

  else
  {
    libraryServicesManager = 0;
  }

  if (v9 != 6)
  {
    goto LABEL_45;
  }

  bundleCopy = bundle;
  v22 = [[PLPhotoLibraryOpener alloc] initWithLibraryServicesManager:libraryServicesManager reportInProgressUpgrades:0];
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
    bundle = bundleCopy;
    goto LABEL_45;
  }

  v30 = v6;
  libraryServicesManager2 = [(__CFString *)v13 libraryServicesManager];
  cplReadiness = [libraryServicesManager2 cplReadiness];
  v33 = [cplReadiness isReadyForCloudPhotoLibraryWithStatus:0];

  if (v33)
  {
    v9 = 6;
    v6 = v30;
    v8 = v36;
    bundle = bundleCopy;
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
  bundle = bundleCopy;
LABEL_44:

LABEL_45:
  if (bundle)
  {
    v34 = v13;
    *bundle = v13;
  }

  return v9;
}

+ (void)_reportProgressForTask:(id)task repairTaskName:(id)name started:(id)started stopped:(id)stopped itemCount:(unint64_t)count
{
  taskCopy = task;
  startedCopy = started;
  stoppedCopy = stopped;
  nameCopy = name;
  identifier = [taskCopy identifier];
  nameCopy = [NSString stringWithFormat:@"%@.%@", identifier, nameCopy];

  v17 = [BGSystemTaskThroughputMetrics alloc];
  v18 = [NSNumber numberWithUnsignedInt:qos_class_self()];
  v19 = [v17 initWithIdentifier:nameCopy qos:v18 workloadCategory:10 expectedMetricValue:0];

  v30 = 0;
  LOBYTE(v18) = [taskCopy registerThroughputTrackingFor:v19 withStartTime:startedCopy error:&v30];
  v20 = v30;
  if (v18)
  {
    [v19 addItemCount:count];
    v29 = v20;
    v21 = [taskCopy deregisterThroughputTrackingFor:v19 withEndTime:stoppedCopy error:&v29];
    v22 = v29;

    v23 = PLBackendGetLog();
    v24 = v23;
    if (v21)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v32 = nameCopy;
        v33 = 2112;
        v34 = startedCopy;
        v35 = 2112;
        v36 = stoppedCopy;
        v37 = 2048;
        countCopy = count;
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
      v32 = nameCopy;
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
    v32 = nameCopy;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "'%@': %@, Can't register throughput tracking", buf, 0x16u);
  }

LABEL_11:
}

+ (void)registerTaskHandler:(id)handler description:(id)description executionWithProgressBlock:(id)block
{
  descriptionCopy = description;
  blockCopy = block;
  handlerCopy = handler;
  v11 = +[BGSystemTaskScheduler sharedScheduler];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100010538;
  v14[3] = &unk_10002D158;
  v16 = blockCopy;
  selfCopy = self;
  v15 = descriptionCopy;
  v12 = blockCopy;
  v13 = descriptionCopy;
  [v11 registerForTaskWithIdentifier:handlerCopy usingQueue:0 launchHandler:v14];
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