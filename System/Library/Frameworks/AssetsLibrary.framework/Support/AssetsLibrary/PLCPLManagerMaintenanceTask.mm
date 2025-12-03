@interface PLCPLManagerMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)transaction;
- (void)_reportLibraryStatsWithCPLManager:(id)manager;
- (void)_reportPhotoStateWithCPLManager:(id)manager;
@end

@implementation PLCPLManagerMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000B3B4;
  v23 = sub_10000B3C4;
  v24 = 0;
  libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
  isSystemPhotoLibrary = [libraryServicesManager isSystemPhotoLibrary];

  if (isSystemPhotoLibrary)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000B3CC;
    v18[3] = &unk_10002DA78;
    v18[4] = self;
    v18[5] = &v19;
    dispatch_sync(&_dispatch_main_q, v18);
  }

  [v20[5] startAssetRecoveryWithTransaction:transactionCopy];
  if (v20[5])
  {
    v7 = PLReportiCPLState();
    if ([v7 count])
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Reporting iCPL state %@", buf, 0xCu);
      }

      [v20[5] reportMiscInformation:v7];
      PLFinishReportiCPLState();
    }

    photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
    isCloudPhotoLibraryEnabled = [photoLibrary isCloudPhotoLibraryEnabled];

    if (isCloudPhotoLibraryEnabled)
    {
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "starting automatic prefetching/pruning during periodic maintenance", buf, 2u);
      }

      [v20[5] startAutomaticPrefetchOrPrune];
    }

    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = [v12 objectForKey:@"PLDeviceDataFeedbackDate"];

    if (!v13 || ([v13 timeIntervalSinceNow], fabs(v14) > 604800.0))
    {
      v15 = PLBackendGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "starting library stats reporting during periodic maintenance", buf, 2u);
      }

      [(PLCPLManagerMaintenanceTask *)self _reportLibraryStatsWithCPLManager:v20[5]];
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "starting photo state reporting during periodic maintenance", buf, 2u);
      }

      [(PLCPLManagerMaintenanceTask *)self _reportPhotoStateWithCPLManager:v20[5]];
    }
  }

  else
  {
    if (!isSystemPhotoLibrary)
    {
      goto LABEL_21;
    }

    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "No cplManager to perform periodic maintenance job", buf, 2u);
    }
  }

LABEL_21:
  _Block_object_dispose(&v19, 8);

  return 1;
}

- (void)_reportPhotoStateWithCPLManager:(id)manager
{
  managerCopy = manager;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:@"YES" forKey:CPLMiscInformationAppendCPLReport];
  v5 = +[PLAccountStore pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [v5 cachedPrimaryAppleAccount];

  if ([cachedPrimaryAppleAccount isEnabledForDataclass:kAccountDataclassSharedStreams])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v4 setObject:v7 forKey:@"SharedStreamsEnabled"];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = qword_100034BF8;
  v16 = qword_100034BF8;
  if (!qword_100034BF8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v18 = sub_10000B684;
    v19 = &unk_10002D7B0;
    v20 = &v13;
    sub_10000B684(&buf);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);
  v10 = objc_alloc_init(v8);
  v11 = @"NO";
  if ([v10 isBackupEnabled] && objc_msgSend(v10, "isBackupEnabledForDomainName:", @"CameraRollDomain"))
  {
    v11 = @"YES";
  }

  [v4 setObject:v11 forKey:@"PhotosInBackup"];
  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Reporting photo state: %@", &buf, 0xCu);
  }

  [managerCopy reportMiscInformation:v4];
}

- (void)_reportLibraryStatsWithCPLManager:(id)manager
{
  managerCopy = manager;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = PLBackendGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Library statistics logging: starting asset enumeration...", buf, 2u);
  }

  v7 = [PLLibraryContentsEnumerator alloc];
  photoLibrary = [(PLMaintenanceTask *)self photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];
  v10 = [v7 initWithSourceManagedObjectContext:managedObjectContext concurrent:0 readOnly:1];

  v48 = 0;
  v11 = PLCreateShortLivedSyndicationPhotoLibrary();
  v30 = v48;
  if (v11)
  {
    v12 = [PLLibraryContentsEnumerator alloc];
    managedObjectContext2 = [v11 managedObjectContext];
    v14 = [v12 initWithSourceManagedObjectContext:managedObjectContext2 concurrent:0 readOnly:1];
  }

  else
  {
    v14 = 0;
  }

  photoLibrary2 = [(PLMaintenanceTask *)self photoLibrary];
  isCloudPhotoLibraryEnabled = [photoLibrary2 isCloudPhotoLibraryEnabled];

  v17 = +[NSDate date];
  [PLAggdLogging configureEnumeratorForLibrarySizeLogging:v10 cloudPhotoLibraryEnabled:isCloudPhotoLibraryEnabled dataForCA:v4 dataForCK:v5];
  [PLAggdLogging configureEnumeratorForHyperionLocalResourcesLogging:v10 cloudPhotoLibraryEnabled:isCloudPhotoLibraryEnabled dataForCA:v4 dataForCK:v5];
  libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
  [PLAggdLogging configureEnumeratorForLibrarySummaryForLibraryEnumerator:v10 withSyndicationLibraryEnumerator:v14 cloudPhotoLibraryEnabled:isCloudPhotoLibraryEnabled dataForCA:v4 libraryServicesManager:libraryServicesManager];

  *buf = 0;
  v43 = buf;
  v44 = 0x3032000000;
  v45 = sub_10000B3B4;
  v46 = sub_10000B3C4;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v19 = +[PLConcurrencyLimiter sharedLimiter];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000BE18;
  v33[3] = &unk_10002D018;
  v36 = &v38;
  v20 = v10;
  v34 = v20;
  v37 = buf;
  v21 = v14;
  v35 = v21;
  [v19 sync:v33 identifyingBlock:0 library:0];

  v22 = +[NSDate date];
  [v22 timeIntervalSinceDate:v17];
  v24 = v23;

  if (*(v39 + 24) == 1)
  {
    PLSendCoreAnalyticEvent();
    v25 = PLBackendGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 134217984;
      v50 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Library statistics logging: finished in %g secs.", v49, 0xCu);
    }

    v26 = PLBackendGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v49 = 138412290;
      v50 = v5;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Reporting device data: %@", v49, 0xCu);
    }

    [managerCopy reportMiscInformation:v5];
    v27 = +[NSUserDefaults standardUserDefaults];
    v28 = +[NSDate date];
    [v27 setObject:v28 forKey:@"PLDeviceDataFeedbackDate"];
  }

  else
  {
    v27 = PLBackendGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = *(v43 + 5);
      *v49 = 138412290;
      v50 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to enumerate assets library statistics logging: %@", v49, 0xCu);
    }
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(buf, 8);
}

@end