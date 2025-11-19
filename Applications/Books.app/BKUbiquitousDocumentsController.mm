@interface BKUbiquitousDocumentsController
- (BKBackgroundTaskManaging)backgroundTaskProvider;
- (BKUbiquitousBooksHosting)ubiquitousBooksPlistHost;
- (BKUbiquitousDocumentsController)initWithUbiquityStatusMonitor:(id)a3 ubiquitousBooksPlistHost:(id)a4 ubiquityEligibleBooksProvider:(id)a5;
- (BKUbiquityEligibleBooksProviding)ubiquityEligibleBooksProvider;
- (IMUbiquityStatusMonitor)ubiquityStatusMonitor;
- (id)_permanentOrTemporaryAssetIDsWithAssetID:(id)a3 temporaryAssetID:(id)a4;
- (id)_sortedAssetsFromEligibleAssets:(id)a3 moc:(id)a4;
- (int64_t)boq_spaceOccupiedByBooksMigratedSinceLastQuotaCheck;
- (void)_checkTimeoutForOngoingMigrationAttempt;
- (void)_decrementOrDoneOngoingMigrateAllAttempt;
- (void)_enterOngoingMigrateAllAttempt;
- (void)_fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:(id)a3;
- (void)_leaveOngoingMigrateAllAttempt;
- (void)_makeAllEligibleLocalBooksUbiquitousWithCompletion:(id)a3;
- (void)_migrateBookToUbiquity:(id)a3 completion:(id)a4;
- (void)_migrateBooksToUbiquityIfNeededWithCompletion:(id)a3;
- (void)_notifyOngoingMigrationAttemptCompletion:(id)a3 hasPendingChange:(BOOL)a4;
- (void)_removeAssetIDsForOngoingMigrationAttempt:(id)a3;
- (void)al_addAssetIDsForOngoingMigrationAttempt:(id)a3;
- (void)boq_addPendingUploadQuotaCompensationForAssets:(id)a3;
- (void)boq_addUploadedQuotaCompensationForAssetIDs:(id)a3;
- (void)boq_handleSpaceAvailableReceivedWithFreeBytes:(int64_t)a3 serverError:(id)a4;
- (void)boq_migrateBooksThatWillFitToUbiquity:(id)a3 completion:(id)a4;
- (void)boq_migrateBooksThatWillFitToUbiquityAfterQuotaFetch:(id)a3 completion:(id)a4;
- (void)boq_removeQuotaCompensationForAssets:(id)a3;
- (void)boq_removeUploadedQuotaCompensation;
- (void)didHandleInitialQuery;
- (void)makeAllEligibleLocalBooksUbiquitousWithCompletion:(id)a3;
- (void)makeAllUbiquitousBooksLocalWithCompletion:(id)a3;
- (void)migrateBookToUbiquity:(id)a3 completion:(id)a4;
- (void)migrateBooksToUbiquityIfNeededWithCompletion:(id)a3;
- (void)p_postStatusNotificationForAssets:(id)a3 withState:(int64_t)a4;
- (void)p_updateCachedURLsFrom:(id)a3 to:(id)a4;
- (void)reportUploadCompleteForBooks:(id)a3;
- (void)reportUploadErrorForBooks:(id)a3;
- (void)waitForOngoingMigrationAttemptToFinishWithAssetID:(id)a3 temporaryAssetID:(id)a4 completion:(id)a5;
@end

@implementation BKUbiquitousDocumentsController

- (BKUbiquitousDocumentsController)initWithUbiquityStatusMonitor:(id)a3 ubiquitousBooksPlistHost:(id)a4 ubiquityEligibleBooksProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v41.receiver = self;
  v41.super_class = BKUbiquitousDocumentsController;
  v11 = [(BKUbiquitousDocumentsController *)&v41 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_ubiquityStatusMonitor, v8);
    objc_storeWeak(&v12->_ubiquitousBooksPlistHost, v9);
    objc_storeWeak(&v12->_ubiquityEligibleBooksProvider, v10);
    v13 = dispatch_queue_create("com.apple.ibooks.BKUbiquitousDocumentsController.migrationQueue", 0);
    migrationQueue = v12->_migrationQueue;
    v12->_migrationQueue = v13;

    v15 = objc_opt_new();
    bookOperationsQueue = v12->_bookOperationsQueue;
    v12->_bookOperationsQueue = v15;

    [(NSOperationQueue *)v12->_bookOperationsQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v12->_bookOperationsQueue setQualityOfService:17];
    v17 = objc_opt_new();
    booksThatEncounteredUploadError = v12->_booksThatEncounteredUploadError;
    v12->_booksThatEncounteredUploadError = v17;

    v19 = objc_opt_new();
    quotaFetcher = v12->_quotaFetcher;
    v12->_quotaFetcher = v19;

    v21 = objc_opt_new();
    pendingQuotaFetchMigrationBlocks = v12->_pendingQuotaFetchMigrationBlocks;
    v12->_pendingQuotaFetchMigrationBlocks = v21;

    v23 = objc_opt_new();
    assetIDToFileSizeMapPendingUpload = v12->_assetIDToFileSizeMapPendingUpload;
    v12->_assetIDToFileSizeMapPendingUpload = v23;

    v25 = objc_opt_new();
    assetIDToFileSizeMapUploadedSinceLastQuotaReceived = v12->_assetIDToFileSizeMapUploadedSinceLastQuotaReceived;
    v12->_assetIDToFileSizeMapUploadedSinceLastQuotaReceived = v25;

    v12->_ongoingMigrationAttemptAccessLock._os_unfair_lock_opaque = 0;
    v27 = objc_opt_new();
    ongoingMigrationAttemptAssetIDs = v12->_ongoingMigrationAttemptAssetIDs;
    v12->_ongoingMigrationAttemptAssetIDs = v27;

    v29 = objc_opt_new();
    ongoingMigrationAttemptObservers = v12->_ongoingMigrationAttemptObservers;
    v12->_ongoingMigrationAttemptObservers = v29;

    objc_initWeak(&location, v12);
    v31 = [BUCoalescingCallBlock alloc];
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_10018CA74;
    v38 = &unk_100A04820;
    objc_copyWeak(&v39, &location);
    v32 = [v31 initWithNotifyBlock:&v35 blockDescription:@"ongoingMigrationAttemptTimer"];
    ongoingMigrationAttemptTimer = v12->_ongoingMigrationAttemptTimer;
    v12->_ongoingMigrationAttemptTimer = v32;

    [(BUCoalescingCallBlock *)v12->_ongoingMigrationAttemptTimer setCoalescingDelay:5.0, v35, v36, v37, v38];
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)makeAllUbiquitousBooksLocalWithCompletion:(id)a3
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018CC08;
  v10[3] = &unk_100A06F00;
  v10[4] = self;
  v11 = a3;
  v4 = v11;
  v5 = objc_retainBlock(v10);
  v6 = [(BKUbiquitousDocumentsController *)self migrationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018CCD0;
  v8[3] = &unk_100A03788;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)makeAllEligibleLocalBooksUbiquitousWithCompletion:(id)a3
{
  v4 = a3;
  [(BKUbiquitousDocumentsController *)self _enterOngoingMigrateAllAttempt];
  v5 = +[BKLibraryManager defaultManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018D160;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addCustomOperationBlock:v7];
}

- (void)_makeAllEligibleLocalBooksUbiquitousWithCompletion:(id)a3
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018D384;
  v10[3] = &unk_100A06F00;
  v10[4] = self;
  v11 = a3;
  v4 = v11;
  v5 = objc_retainBlock(v10);
  v6 = [(BKUbiquitousDocumentsController *)self migrationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018D44C;
  v8[3] = &unk_100A03788;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)migrateBooksToUbiquityIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  [(BKUbiquitousDocumentsController *)self _enterOngoingMigrateAllAttempt];
  v5 = +[BKLibraryManager defaultManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018D958;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addCustomOperationBlock:v7];
}

- (void)_fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKUbiquitousDocumentsController *)self backgroundTaskProvider];
  v6 = v5;
  if (v5)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10018DD14;
    v21[3] = &unk_100A036C0;
    v23 = &v24;
    v7 = v5;
    v22 = v7;
    v8 = [v7 beginBackgroundTaskWithName:@"BKUbiquitousDocumentsController _fetchAllLocalBooksEligibleToBeMadeUbiquitous" expirationHandler:v21];
    v25[3] = v8;
    if (v8 == UIBackgroundTaskInvalid)
    {
      v9 = BKLibraryBookImportLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1007928F0(v9);
      }

      v10 = [(BKUbiquitousDocumentsController *)self p_generateBooksProviderFetchTaskInvalidError];
      v11 = objc_retainBlock(v4);
      v12 = v11;
      if (v11)
      {
        (*(v11 + 2))(v11, 0, v10);
      }
    }

    else
    {
      v14 = BKLibraryBookImportLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v25[3];
        *buf = 134217984;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_fetchAllLocalBooksEligibleToBeMadeUbiquitous - BEGIN background task: %lu", buf, 0xCu);
      }

      v16 = [(BKUbiquitousDocumentsController *)self ubiquityEligibleBooksProvider];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10018DD70;
      v17[3] = &unk_100A09A10;
      v18 = v7;
      v20 = &v24;
      v19 = v4;
      [v16 fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:v17];

      v10 = v18;
    }

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v13 = [(BKUbiquitousDocumentsController *)self ubiquityEligibleBooksProvider];
    [v13 fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:v4];
  }
}

- (void)_migrateBooksToUbiquityIfNeededWithCompletion:(id)a3
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018DFDC;
  v11[3] = &unk_100A09A38;
  v11[4] = self;
  v12 = a3;
  v4 = v12;
  v5 = objc_retainBlock(v11);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[BKUbiquitousDocumentsController] Attempting to migrateBooksToUbiquityIfNeededWithCompletion:", buf, 2u);
  }

  v6 = [(BKUbiquitousDocumentsController *)self migrationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018E2C8;
  v8[3] = &unk_100A03788;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)migrateBookToUbiquity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100027490;
  v24[4] = sub_100027680;
  v8 = [v6 assetID];
  v9 = [v6 temporaryAssetID];
  v25 = [(BKUbiquitousDocumentsController *)self _permanentOrTemporaryAssetIDsWithAssetID:v8 temporaryAssetID:v9];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v20 = sub_10018EA70;
  v21 = &unk_100A037D8;
  v22 = self;
  v23 = v24;
  v10 = v19;
  os_unfair_lock_lock(&self->_ongoingMigrationAttemptAccessLock);
  v20(v10);
  os_unfair_lock_unlock(&self->_ongoingMigrationAttemptAccessLock);

  v11 = [(BKUbiquitousDocumentsController *)self ongoingMigrationAttemptTimer];
  [v11 signalWithCompletion:&stru_100A09A58];

  v12 = +[BKLibraryManager defaultManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10018EA88;
  v15[3] = &unk_100A09AA8;
  v15[4] = self;
  v13 = v6;
  v16 = v13;
  v18 = v24;
  v14 = v7;
  v17 = v14;
  [v12 addCustomOperationBlock:v15];

  _Block_object_dispose(v24, 8);
}

- (void)_migrateBookToUbiquity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10018ED18;
  v17[3] = &unk_100A09AD0;
  v17[4] = self;
  v8 = v6;
  v18 = v8;
  v19 = v7;
  v9 = v7;
  v10 = objc_retainBlock(v17);
  v11 = [(BKUbiquitousDocumentsController *)self migrationQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10018EE30;
  v14[3] = &unk_100A049A0;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v12 = v10;
  v13 = v8;
  dispatch_async(v11, v14);
}

- (void)boq_migrateBooksThatWillFitToUbiquityAfterQuotaFetch:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  [(BKUbiquitousDocumentsController *)self setPendingQuotaFetch:1];
  v8 = [(BKUbiquitousDocumentsController *)self quotaFetcher];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018FA48;
  v11[3] = &unk_100A09B20;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 fetchUserQuotaWithCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)boq_migrateBooksThatWillFitToUbiquity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v47 = a4;
  v49 = [NSMutableSet setWithArray:v6];
  v48 = objc_opt_new();
  v45 = [(BKUbiquitousDocumentsController *)self boq_spaceOccupiedByBooksMigratedSinceLastQuotaCheck];
  v7 = [(BKUbiquitousDocumentsController *)self ubiquityAvailableSpace]- v45;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v54;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        v13 = [v12 assetID];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 url];

          if (v15)
          {
            v16 = [BKLibraryFileSizeManagerCacheItemRequest alloc];
            v17 = [v12 assetID];
            v18 = [v12 url];
            v19 = [v16 initWithCacheItemRequestWithAssetID:v17 assetURL:v18];

            v20 = +[BKLibraryFileSizeManager sharedInstance];
            v21 = [v20 synchronousFileSizeForCacheItemRequest:v19];

            if (v21)
            {
              v22 = [v21 longLongValue];
              v23 = (v7 - v22);
              if (v7 >= v22)
              {
                [v48 addObject:v12];
                [v49 removeObject:v12];
                v7 = v23;
              }
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v9);
  }

  v24 = v48;
  if ([v49 count])
  {
    v25 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v49 count];
      *buf = 134217984;
      v58 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Marking %ld books with upload error since they wouldn't fit in iCloud", buf, 0xCu);
    }

    v27 = [(BKUbiquitousDocumentsController *)self booksThatEncounteredUploadError];
    [v27 unionSet:v49];

    v28 = [v49 allObjects];
    [(BKUbiquitousDocumentsController *)self p_postStatusNotificationForAssets:v28 withState:10];
  }

  if ([v48 count])
  {
    v29 = [(BKUbiquitousDocumentsController *)self booksThatEncounteredUploadError];
    v30 = [NSSet setWithArray:v48];
    [v29 minusSet:v30];

    v31 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v48 count];
      v33 = ([(BKUbiquitousDocumentsController *)self ubiquityAvailableSpace]- v7);
      v34 = [(BKUbiquitousDocumentsController *)self ubiquityAvailableSpace];
      *buf = 134218752;
      v58 = v32;
      v59 = 2048;
      v60 = v33;
      v61 = 2048;
      v62 = v34 - v46;
      v63 = 2048;
      v64 = v46;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Will start migrating %ld books occupying %lld/%lld bytes (compensation: %lld)", buf, 0x2Au);
    }

    [(BKUbiquitousDocumentsController *)self boq_addPendingUploadQuotaCompensationForAssets:v48];
    v35 = [(BKUbiquitousDocumentsController *)self ubiquitousBooksPlistHost];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1001902A0;
    v51[3] = &unk_100A05E68;
    v51[4] = self;
    v36 = v47;
    v52 = v47;
    [v35 makeBooksUbiquitous:v48 completion:v51];
  }

  else
  {
    v37 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = ([(BKUbiquitousDocumentsController *)self ubiquityAvailableSpace]- v7);
      v39 = ([(BKUbiquitousDocumentsController *)self ubiquityAvailableSpace]- v46);
      v40 = [v49 valueForKey:@"assetID"];
      *buf = 134218754;
      v58 = v38;
      v59 = 2048;
      v60 = v39;
      v24 = v48;
      v61 = 2048;
      v62 = v46;
      v63 = 2112;
      v64 = v40;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Nothing to migrate, probably because nothing will fit. Avail: %lld/%lld bytes (compensation: %lld). booksToBeMarkedWithAnUploadError: [%@]", buf, 0x2Au);
    }

    v41 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [obj valueForKey:@"assetID"];
      *buf = 138412290;
      v58 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "calling callback after NOT migrating assetIDs [%@]", buf, 0xCu);
    }

    v36 = v47;
    v43 = objc_retainBlock(v47);
    v44 = v43;
    if (v43)
    {
      (*(v43 + 2))(v43, 0, 0);
    }
  }
}

- (void)waitForOngoingMigrationAttemptToFinishWithAssetID:(id)a3 temporaryAssetID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BKUbiquitousDocumentsController *)self _permanentOrTemporaryAssetIDsWithAssetID:v8 temporaryAssetID:v9];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10019076C;
  v37[3] = &unk_100A09B48;
  v12 = v10;
  v37[4] = self;
  v38 = v12;
  v13 = objc_retainBlock(v37);
  if ([v11 count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v48 = sub_100027490;
    v49 = sub_100027680;
    v50 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v27 = sub_100190874;
    v28 = &unk_100A09B70;
    v29 = self;
    v20 = v11;
    v30 = v20;
    v34 = &v43;
    v14 = v13;
    v33 = v14;
    v35 = &v39;
    v36 = buf;
    v31 = v8;
    v32 = v9;
    v15 = v26;
    os_unfair_lock_lock(&self->_ongoingMigrationAttemptAccessLock);
    v27(v15);
    os_unfair_lock_unlock(&self->_ongoingMigrationAttemptAccessLock);

    if (*(v40 + 24) == 1)
    {
      v16 = [(BKUbiquitousDocumentsController *)self ongoingMigrationAttemptTimer];
      [v16 signalWithCompletion:&stru_100A09B90];
    }

    if (*(*&buf[8] + 40))
    {
      *(v44 + 24) = 1;
      v17 = [(BKUbiquitousDocumentsController *)self ubiquityEligibleBooksProvider];
      v18 = *(*&buf[8] + 40);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100190940;
      v21[3] = &unk_100A09C00;
      v21[4] = self;
      v22 = v20;
      v23 = v14;
      v25 = &v39;
      v24 = v12;
      [v17 fetchLocalAssetWithID:v18 completion:v21];
    }

    _Block_object_dispose(buf, 8);
  }

  if ((v44[3] & 1) == 0)
  {
    v19 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558274;
      *&buf[4] = 1752392040;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - No wait needed for %{mask.hash}@", buf, 0x16u);
    }

    [(BKUbiquitousDocumentsController *)self _notifyOngoingMigrationAttemptCompletion:v12 hasPendingChange:0];
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
}

- (void)al_addAssetIDsForOngoingMigrationAttempt:(id)a3
{
  v4 = a3;
  v5 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 141558274;
    v8 = 1752392040;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - Add assetIDs: %{mask.hash}@", &v7, 0x16u);
  }

  v6 = [(BKUbiquitousDocumentsController *)self ongoingMigrationAttemptAssetIDs];
  [v6 unionSet:v4];
}

- (void)_removeAssetIDsForOngoingMigrationAttempt:(id)a3
{
  v4 = a3;
  v5 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    *&buf[4] = 1752392040;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - Remove assetIDs: %{mask.hash}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = sub_100027490;
  v33 = sub_100027680;
  v34 = objc_opt_new();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v21 = sub_1001910A4;
  v22 = &unk_100A03760;
  v23 = self;
  v15 = v4;
  v24 = v15;
  v25 = buf;
  v6 = v20;
  os_unfair_lock_lock(&self->_ongoingMigrationAttemptAccessLock);
  v21(v6);
  os_unfair_lock_unlock(&self->_ongoingMigrationAttemptAccessLock);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(*&buf[8] + 40);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v30 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = BKLibraryBookImportLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 assetIDs];
          *v26 = 141558274;
          v27 = 1752392040;
          v28 = 2112;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - Done waiting for %{mask.hash}@", v26, 0x16u);
        }

        v14 = [v11 notifyBlock];
        [(BKUbiquitousDocumentsController *)self _notifyOngoingMigrationAttemptCompletion:v14 hasPendingChange:1];
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v30 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_enterOngoingMigrateAllAttempt
{
  v3 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - Enter 'migrate all' attempt", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001912E8;
  v5[3] = &unk_100A033C8;
  v5[4] = self;
  os_unfair_lock_lock(&self->_ongoingMigrationAttemptAccessLock);
  sub_1001912E8(v5);
  os_unfair_lock_unlock(&self->_ongoingMigrationAttemptAccessLock);
  v4 = [(BKUbiquitousDocumentsController *)self ongoingMigrationAttemptTimer];
  [v4 signalWithCompletion:&stru_100A09C20];
}

- (void)_leaveOngoingMigrateAllAttempt
{
  v3 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - Leave 'migrate all' attempt", v4, 2u);
  }

  [(BKUbiquitousDocumentsController *)self _decrementOrDoneOngoingMigrateAllAttempt];
}

- (void)_decrementOrDoneOngoingMigrateAllAttempt
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100027490;
  v15 = sub_100027680;
  v16 = objc_opt_new();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_10019157C;
  v8 = &unk_100A037D8;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_ongoingMigrationAttemptAccessLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_ongoingMigrationAttemptAccessLock);

  if ([v12[5] count])
  {
    v4 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v12[5];
      *buf = 141558274;
      v18 = 1752392040;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - No more pending 'migrate all' attempts, triggering observers for %{mask.hash}@", buf, 0x16u);
    }

    [(BKUbiquitousDocumentsController *)self _removeAssetIDsForOngoingMigrationAttempt:v12[5]];
  }

  _Block_object_dispose(&v11, 8);
}

- (void)_checkTimeoutForOngoingMigrationAttempt
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100027490;
  v22 = sub_100027680;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v8 = sub_10019185C;
  v9 = &unk_100A09C48;
  v10 = self;
  v11 = &v24;
  v12 = &v18;
  v13 = &v14;
  v3 = v7;
  os_unfair_lock_lock(&self->_ongoingMigrationAttemptAccessLock);
  v8(v3);
  os_unfair_lock_unlock(&self->_ongoingMigrationAttemptAccessLock);

  if (*(v15 + 24) == 1)
  {
    v4 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v25[3];
      v6 = v19[5];
      *buf = 134218498;
      v29 = v5;
      v30 = 2160;
      v31 = 1752392040;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - Timeout - %ld outstanding 'migrate all', assetIDs: %{mask.hash}@", buf, 0x20u);
    }

    [(BKUbiquitousDocumentsController *)self _decrementOrDoneOngoingMigrateAllAttempt];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
}

- (void)_notifyOngoingMigrationAttemptCompletion:(id)a3 hasPendingChange:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = +[BKLibraryManager defaultManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001919EC;
    v10[3] = &unk_100A03920;
    v11 = v6;
    [v7 addCustomOperationBlock:v10];
  }

  else
  {
    v8 = objc_retainBlock(v5);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (id)_permanentOrTemporaryAssetIDsWithAssetID:(id)a3 temporaryAssetID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if ([v5 length])
  {
    [v7 addObject:v5];
  }

  if ([v6 length])
  {
    [v7 addObject:v6];
  }

  return v7;
}

- (void)didHandleInitialQuery
{
  v3 = [(BKUbiquitousDocumentsController *)self migrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100191B60;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(v3, block);

  [(BKUbiquitousDocumentsController *)self migrateBooksToUbiquityIfNeededWithCompletion:0];
}

- (void)reportUploadErrorForBooks:(id)a3
{
  v4 = a3;
  v5 = [(BKUbiquitousDocumentsController *)self bookOperationsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100191C20;
  v7[3] = &unk_100A03440;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (void)reportUploadCompleteForBooks:(id)a3
{
  v4 = a3;
  v5 = [(BKUbiquitousDocumentsController *)self bookOperationsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100191DB8;
  v7[3] = &unk_100A03440;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (void)p_updateCachedURLsFrom:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[AEPluginRegistry sharedInstance];
  v9 = [v7 pluginForURL:v6];

  v8 = [v9 helperForURL:v6 withOptions:0];

  [v8 helperUpdateCachedURLTo:v5];
}

- (void)p_postStatusNotificationForAssets:(id)a3 withState:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) assetID];
        if (v13)
        {
          v14 = [[BKLibraryDownloadStatus alloc] initWithAssetID:v13 state:a4 progressValue:0x7FFFFFFFFFFFFFFFLL timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:0.0];
          [v7 addObject:v14];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  v15 = +[NSNotificationCenter defaultCenter];
  v16 = BKLibraryDownloadStatusNotification;
  v22 = BKLibraryDownloadStatusKey;
  v23 = v7;
  v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [v15 postNotificationName:v16 object:self userInfo:v17];
}

- (int64_t)boq_spaceOccupiedByBooksMigratedSinceLastQuotaCheck
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapPendingUpload];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v21 + 1) + 8 * i) longLongValue];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapUploadedSinceLastQuotaReceived];
  v11 = [v10 allValues];

  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v7 += [*(*(&v17 + 1) + 8 * j) longLongValue];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  return v7;
}

- (void)boq_addPendingUploadQuotaCompensationForAssets:(id)a3
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = [BKLibraryFileSizeManagerCacheItemRequest alloc];
        v10 = [v8 assetID];
        v11 = [v8 url];
        v12 = [v9 initWithCacheItemRequestWithAssetID:v10 assetURL:v11];

        v13 = +[BKLibraryFileSizeManager sharedInstance];
        v14 = [v13 synchronousFileSizeForCacheItemRequest:v12];
        v15 = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapPendingUpload];
        v16 = [v8 assetID];
        [v15 setObject:v14 forKeyedSubscript:v16];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (void)boq_addUploadedQuotaCompensationForAssetIDs:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapPendingUpload];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapPendingUpload];
        [v12 setObject:0 forKeyedSubscript:v9];

        v13 = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapUploadedSinceLastQuotaReceived];
        [v13 setObject:v11 forKeyedSubscript:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)boq_removeQuotaCompensationForAssets:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapPendingUpload];
        v11 = [v9 assetID];
        [v10 setObject:0 forKeyedSubscript:v11];

        v12 = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapUploadedSinceLastQuotaReceived];
        v13 = [v9 assetID];
        [v12 setObject:0 forKeyedSubscript:v13];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)boq_removeUploadedQuotaCompensation
{
  v2 = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapUploadedSinceLastQuotaReceived];
  [v2 removeAllObjects];
}

- (id)_sortedAssetsFromEligibleAssets:(id)a3 moc:(id)a4
{
  v5 = a3;
  v6 = a4;
  v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  if ([v5 count])
  {
    v7 = [v5 valueForKey:@"assetID"];
    v8 = [NSMutableDictionary dictionaryWithObjects:v5 forKeys:v7];
    v9 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v9 setReturnsObjectsAsFaults:0];
    v10 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:v7];
    [v9 setPredicate:v10];

    v11 = [[NSSortDescriptor alloc] initWithKey:@"lastOpenDate" ascending:0];
    v49 = v11;
    v12 = [NSArray arrayWithObjects:&v49 count:1];
    [v9 setSortDescriptors:v12];

    v41 = 0;
    v13 = [v6 executeFetchRequest:v9 error:&v41];
    v14 = v41;
    v15 = v14;
    if (v13)
    {
      v30 = v14;
      v31 = v13;
      v32 = v9;
      v33 = v7;
      v34 = v6;
      v35 = v5;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = v13;
      v17 = [v16 countByEnumeratingWithState:&v37 objects:v48 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v38;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v37 + 1) + 8 * i);
            v22 = [v21 assetID];
            v23 = [v8 objectForKeyedSubscript:v22];
            v24 = BUProtocolCast();

            if (v24)
            {
              [v36 addObject:v24];
              v25 = [v21 assetID];
              [v8 setObject:0 forKeyedSubscript:v25];
            }

            else
            {
              v26 = BCIMLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v43 = "[BKUbiquitousDocumentsController _sortedAssetsFromEligibleAssets:moc:]";
                v44 = 2080;
                v45 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKUbiquitousDocumentsController.m";
                v46 = 1024;
                v47 = 886;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
              }

              v25 = BCIMLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v27 = [v21 assetID];
                *buf = 138412290;
                v43 = v27;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "@Couldn't map BKLibraryAsset with assetID {%@} to BKAsset", buf, 0xCu);
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v37 objects:v48 count:16];
        }

        while (v18);
      }

      v6 = v34;
      v5 = v35;
      v9 = v32;
      v7 = v33;
      v15 = v30;
      v13 = v31;
    }

    if ([v8 count])
    {
      v28 = [v8 allValues];
      [v36 addObjectsFromArray:v28];
    }
  }

  return v36;
}

- (void)boq_handleSpaceAvailableReceivedWithFreeBytes:(int64_t)a3 serverError:(id)a4
{
  v6 = a4;
  [(BKUbiquitousDocumentsController *)self setPendingQuotaFetch:0];
  if (!v6)
  {
    v9 = self;
    v10 = a3;
    goto LABEL_9;
  }

  v7 = BCIMLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[BKUbiquitousDocumentsController boq_handleSpaceAvailableReceivedWithFreeBytes:serverError:]";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKUbiquitousDocumentsController.m";
    v16 = 1024;
    v17 = 907;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %s:%d", &v12, 0x1Cu);
  }

  v8 = BCIMLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "@Error retrieving ubiquity quota from server. Error (%@)", &v12, 0xCu);
  }

  if (![(BKUbiquitousDocumentsController *)self hasEverReceivedUbiquityQuota])
  {
    v9 = self;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:
    [(BKUbiquitousDocumentsController *)v9 setUbiquityAvailableSpace:v10];
  }

  [(BKUbiquitousDocumentsController *)self setHasEverReceivedUbiquityQuota:1];
  [(BKUbiquitousDocumentsController *)self boq_removeUploadedQuotaCompensation];
  v11 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ubiquityAvailableSpace: %lld", &v12, 0xCu);
  }
}

- (BKBackgroundTaskManaging)backgroundTaskProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundTaskProvider);

  return WeakRetained;
}

- (IMUbiquityStatusMonitor)ubiquityStatusMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_ubiquityStatusMonitor);

  return WeakRetained;
}

- (BKUbiquitousBooksHosting)ubiquitousBooksPlistHost
{
  WeakRetained = objc_loadWeakRetained(&self->_ubiquitousBooksPlistHost);

  return WeakRetained;
}

- (BKUbiquityEligibleBooksProviding)ubiquityEligibleBooksProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_ubiquityEligibleBooksProvider);

  return WeakRetained;
}

@end