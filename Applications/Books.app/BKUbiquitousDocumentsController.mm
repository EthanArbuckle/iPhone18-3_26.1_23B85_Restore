@interface BKUbiquitousDocumentsController
- (BKBackgroundTaskManaging)backgroundTaskProvider;
- (BKUbiquitousBooksHosting)ubiquitousBooksPlistHost;
- (BKUbiquitousDocumentsController)initWithUbiquityStatusMonitor:(id)monitor ubiquitousBooksPlistHost:(id)host ubiquityEligibleBooksProvider:(id)provider;
- (BKUbiquityEligibleBooksProviding)ubiquityEligibleBooksProvider;
- (IMUbiquityStatusMonitor)ubiquityStatusMonitor;
- (id)_permanentOrTemporaryAssetIDsWithAssetID:(id)d temporaryAssetID:(id)iD;
- (id)_sortedAssetsFromEligibleAssets:(id)assets moc:(id)moc;
- (int64_t)boq_spaceOccupiedByBooksMigratedSinceLastQuotaCheck;
- (void)_checkTimeoutForOngoingMigrationAttempt;
- (void)_decrementOrDoneOngoingMigrateAllAttempt;
- (void)_enterOngoingMigrateAllAttempt;
- (void)_fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:(id)completion;
- (void)_leaveOngoingMigrateAllAttempt;
- (void)_makeAllEligibleLocalBooksUbiquitousWithCompletion:(id)completion;
- (void)_migrateBookToUbiquity:(id)ubiquity completion:(id)completion;
- (void)_migrateBooksToUbiquityIfNeededWithCompletion:(id)completion;
- (void)_notifyOngoingMigrationAttemptCompletion:(id)completion hasPendingChange:(BOOL)change;
- (void)_removeAssetIDsForOngoingMigrationAttempt:(id)attempt;
- (void)al_addAssetIDsForOngoingMigrationAttempt:(id)attempt;
- (void)boq_addPendingUploadQuotaCompensationForAssets:(id)assets;
- (void)boq_addUploadedQuotaCompensationForAssetIDs:(id)ds;
- (void)boq_handleSpaceAvailableReceivedWithFreeBytes:(int64_t)bytes serverError:(id)error;
- (void)boq_migrateBooksThatWillFitToUbiquity:(id)ubiquity completion:(id)completion;
- (void)boq_migrateBooksThatWillFitToUbiquityAfterQuotaFetch:(id)fetch completion:(id)completion;
- (void)boq_removeQuotaCompensationForAssets:(id)assets;
- (void)boq_removeUploadedQuotaCompensation;
- (void)didHandleInitialQuery;
- (void)makeAllEligibleLocalBooksUbiquitousWithCompletion:(id)completion;
- (void)makeAllUbiquitousBooksLocalWithCompletion:(id)completion;
- (void)migrateBookToUbiquity:(id)ubiquity completion:(id)completion;
- (void)migrateBooksToUbiquityIfNeededWithCompletion:(id)completion;
- (void)p_postStatusNotificationForAssets:(id)assets withState:(int64_t)state;
- (void)p_updateCachedURLsFrom:(id)from to:(id)to;
- (void)reportUploadCompleteForBooks:(id)books;
- (void)reportUploadErrorForBooks:(id)books;
- (void)waitForOngoingMigrationAttemptToFinishWithAssetID:(id)d temporaryAssetID:(id)iD completion:(id)completion;
@end

@implementation BKUbiquitousDocumentsController

- (BKUbiquitousDocumentsController)initWithUbiquityStatusMonitor:(id)monitor ubiquitousBooksPlistHost:(id)host ubiquityEligibleBooksProvider:(id)provider
{
  monitorCopy = monitor;
  hostCopy = host;
  providerCopy = provider;
  v41.receiver = self;
  v41.super_class = BKUbiquitousDocumentsController;
  v11 = [(BKUbiquitousDocumentsController *)&v41 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_ubiquityStatusMonitor, monitorCopy);
    objc_storeWeak(&v12->_ubiquitousBooksPlistHost, hostCopy);
    objc_storeWeak(&v12->_ubiquityEligibleBooksProvider, providerCopy);
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

- (void)makeAllUbiquitousBooksLocalWithCompletion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018CC08;
  v10[3] = &unk_100A06F00;
  v10[4] = self;
  completionCopy = completion;
  v4 = completionCopy;
  v5 = objc_retainBlock(v10);
  migrationQueue = [(BKUbiquitousDocumentsController *)self migrationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018CCD0;
  v8[3] = &unk_100A03788;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(migrationQueue, v8);
}

- (void)makeAllEligibleLocalBooksUbiquitousWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BKUbiquitousDocumentsController *)self _enterOngoingMigrateAllAttempt];
  v5 = +[BKLibraryManager defaultManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018D160;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 addCustomOperationBlock:v7];
}

- (void)_makeAllEligibleLocalBooksUbiquitousWithCompletion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018D384;
  v10[3] = &unk_100A06F00;
  v10[4] = self;
  completionCopy = completion;
  v4 = completionCopy;
  v5 = objc_retainBlock(v10);
  migrationQueue = [(BKUbiquitousDocumentsController *)self migrationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018D44C;
  v8[3] = &unk_100A03788;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(migrationQueue, v8);
}

- (void)migrateBooksToUbiquityIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BKUbiquitousDocumentsController *)self _enterOngoingMigrateAllAttempt];
  v5 = +[BKLibraryManager defaultManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018D958;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 addCustomOperationBlock:v7];
}

- (void)_fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:(id)completion
{
  completionCopy = completion;
  backgroundTaskProvider = [(BKUbiquitousDocumentsController *)self backgroundTaskProvider];
  v6 = backgroundTaskProvider;
  if (backgroundTaskProvider)
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
    v7 = backgroundTaskProvider;
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

      p_generateBooksProviderFetchTaskInvalidError = [(BKUbiquitousDocumentsController *)self p_generateBooksProviderFetchTaskInvalidError];
      v11 = objc_retainBlock(completionCopy);
      v12 = v11;
      if (v11)
      {
        (*(v11 + 2))(v11, 0, p_generateBooksProviderFetchTaskInvalidError);
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

      ubiquityEligibleBooksProvider = [(BKUbiquitousDocumentsController *)self ubiquityEligibleBooksProvider];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10018DD70;
      v17[3] = &unk_100A09A10;
      v18 = v7;
      v20 = &v24;
      v19 = completionCopy;
      [ubiquityEligibleBooksProvider fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:v17];

      p_generateBooksProviderFetchTaskInvalidError = v18;
    }

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    ubiquityEligibleBooksProvider2 = [(BKUbiquitousDocumentsController *)self ubiquityEligibleBooksProvider];
    [ubiquityEligibleBooksProvider2 fetchAllLocalBooksEligibleToBeMadeUbiquitousWithCompletion:completionCopy];
  }
}

- (void)_migrateBooksToUbiquityIfNeededWithCompletion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018DFDC;
  v11[3] = &unk_100A09A38;
  v11[4] = self;
  completionCopy = completion;
  v4 = completionCopy;
  v5 = objc_retainBlock(v11);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[BKUbiquitousDocumentsController] Attempting to migrateBooksToUbiquityIfNeededWithCompletion:", buf, 2u);
  }

  migrationQueue = [(BKUbiquitousDocumentsController *)self migrationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018E2C8;
  v8[3] = &unk_100A03788;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(migrationQueue, v8);
}

- (void)migrateBookToUbiquity:(id)ubiquity completion:(id)completion
{
  ubiquityCopy = ubiquity;
  completionCopy = completion;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100027490;
  v24[4] = sub_100027680;
  assetID = [ubiquityCopy assetID];
  temporaryAssetID = [ubiquityCopy temporaryAssetID];
  v25 = [(BKUbiquitousDocumentsController *)self _permanentOrTemporaryAssetIDsWithAssetID:assetID temporaryAssetID:temporaryAssetID];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v20 = sub_10018EA70;
  v21 = &unk_100A037D8;
  selfCopy = self;
  v23 = v24;
  v10 = v19;
  os_unfair_lock_lock(&self->_ongoingMigrationAttemptAccessLock);
  v20(v10);
  os_unfair_lock_unlock(&self->_ongoingMigrationAttemptAccessLock);

  ongoingMigrationAttemptTimer = [(BKUbiquitousDocumentsController *)self ongoingMigrationAttemptTimer];
  [ongoingMigrationAttemptTimer signalWithCompletion:&stru_100A09A58];

  v12 = +[BKLibraryManager defaultManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10018EA88;
  v15[3] = &unk_100A09AA8;
  v15[4] = self;
  v13 = ubiquityCopy;
  v16 = v13;
  v18 = v24;
  v14 = completionCopy;
  v17 = v14;
  [v12 addCustomOperationBlock:v15];

  _Block_object_dispose(v24, 8);
}

- (void)_migrateBookToUbiquity:(id)ubiquity completion:(id)completion
{
  ubiquityCopy = ubiquity;
  completionCopy = completion;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10018ED18;
  v17[3] = &unk_100A09AD0;
  v17[4] = self;
  v8 = ubiquityCopy;
  v18 = v8;
  v19 = completionCopy;
  v9 = completionCopy;
  v10 = objc_retainBlock(v17);
  migrationQueue = [(BKUbiquitousDocumentsController *)self migrationQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10018EE30;
  v14[3] = &unk_100A049A0;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v12 = v10;
  v13 = v8;
  dispatch_async(migrationQueue, v14);
}

- (void)boq_migrateBooksThatWillFitToUbiquityAfterQuotaFetch:(id)fetch completion:(id)completion
{
  fetchCopy = fetch;
  completionCopy = completion;
  objc_initWeak(&location, self);
  [(BKUbiquitousDocumentsController *)self setPendingQuotaFetch:1];
  quotaFetcher = [(BKUbiquitousDocumentsController *)self quotaFetcher];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018FA48;
  v11[3] = &unk_100A09B20;
  objc_copyWeak(&v14, &location);
  v9 = fetchCopy;
  v12 = v9;
  v10 = completionCopy;
  v13 = v10;
  [quotaFetcher fetchUserQuotaWithCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)boq_migrateBooksThatWillFitToUbiquity:(id)ubiquity completion:(id)completion
{
  ubiquityCopy = ubiquity;
  completionCopy = completion;
  v49 = [NSMutableSet setWithArray:ubiquityCopy];
  v48 = objc_opt_new();
  boq_spaceOccupiedByBooksMigratedSinceLastQuotaCheck = [(BKUbiquitousDocumentsController *)self boq_spaceOccupiedByBooksMigratedSinceLastQuotaCheck];
  v7 = [(BKUbiquitousDocumentsController *)self ubiquityAvailableSpace]- boq_spaceOccupiedByBooksMigratedSinceLastQuotaCheck;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = ubiquityCopy;
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
        assetID = [v12 assetID];
        if (assetID)
        {
          v14 = assetID;
          v15 = [v12 url];

          if (v15)
          {
            v16 = [BKLibraryFileSizeManagerCacheItemRequest alloc];
            assetID2 = [v12 assetID];
            v18 = [v12 url];
            v19 = [v16 initWithCacheItemRequestWithAssetID:assetID2 assetURL:v18];

            v20 = +[BKLibraryFileSizeManager sharedInstance];
            v21 = [v20 synchronousFileSizeForCacheItemRequest:v19];

            if (v21)
            {
              longLongValue = [v21 longLongValue];
              v23 = (v7 - longLongValue);
              if (v7 >= longLongValue)
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

    booksThatEncounteredUploadError = [(BKUbiquitousDocumentsController *)self booksThatEncounteredUploadError];
    [booksThatEncounteredUploadError unionSet:v49];

    allObjects = [v49 allObjects];
    [(BKUbiquitousDocumentsController *)self p_postStatusNotificationForAssets:allObjects withState:10];
  }

  if ([v48 count])
  {
    booksThatEncounteredUploadError2 = [(BKUbiquitousDocumentsController *)self booksThatEncounteredUploadError];
    v30 = [NSSet setWithArray:v48];
    [booksThatEncounteredUploadError2 minusSet:v30];

    v31 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v48 count];
      v33 = ([(BKUbiquitousDocumentsController *)self ubiquityAvailableSpace]- v7);
      ubiquityAvailableSpace = [(BKUbiquitousDocumentsController *)self ubiquityAvailableSpace];
      *buf = 134218752;
      v58 = v32;
      v59 = 2048;
      v60 = v33;
      v61 = 2048;
      v62 = ubiquityAvailableSpace - v46;
      v63 = 2048;
      v64 = v46;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Will start migrating %ld books occupying %lld/%lld bytes (compensation: %lld)", buf, 0x2Au);
    }

    [(BKUbiquitousDocumentsController *)self boq_addPendingUploadQuotaCompensationForAssets:v48];
    ubiquitousBooksPlistHost = [(BKUbiquitousDocumentsController *)self ubiquitousBooksPlistHost];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1001902A0;
    v51[3] = &unk_100A05E68;
    v51[4] = self;
    v36 = completionCopy;
    v52 = completionCopy;
    [ubiquitousBooksPlistHost makeBooksUbiquitous:v48 completion:v51];
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

    v36 = completionCopy;
    v43 = objc_retainBlock(completionCopy);
    v44 = v43;
    if (v43)
    {
      (*(v43 + 2))(v43, 0, 0);
    }
  }
}

- (void)waitForOngoingMigrationAttemptToFinishWithAssetID:(id)d temporaryAssetID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v11 = [(BKUbiquitousDocumentsController *)self _permanentOrTemporaryAssetIDsWithAssetID:dCopy temporaryAssetID:iDCopy];
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
  v12 = completionCopy;
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
    selfCopy = self;
    v20 = v11;
    v30 = v20;
    v34 = &v43;
    v14 = v13;
    v33 = v14;
    v35 = &v39;
    v36 = buf;
    v31 = dCopy;
    v32 = iDCopy;
    v15 = v26;
    os_unfair_lock_lock(&self->_ongoingMigrationAttemptAccessLock);
    v27(v15);
    os_unfair_lock_unlock(&self->_ongoingMigrationAttemptAccessLock);

    if (*(v40 + 24) == 1)
    {
      ongoingMigrationAttemptTimer = [(BKUbiquitousDocumentsController *)self ongoingMigrationAttemptTimer];
      [ongoingMigrationAttemptTimer signalWithCompletion:&stru_100A09B90];
    }

    if (*(*&buf[8] + 40))
    {
      *(v44 + 24) = 1;
      ubiquityEligibleBooksProvider = [(BKUbiquitousDocumentsController *)self ubiquityEligibleBooksProvider];
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
      [ubiquityEligibleBooksProvider fetchLocalAssetWithID:v18 completion:v21];
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

- (void)al_addAssetIDsForOngoingMigrationAttempt:(id)attempt
{
  attemptCopy = attempt;
  v5 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 141558274;
    v8 = 1752392040;
    v9 = 2112;
    v10 = attemptCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - Add assetIDs: %{mask.hash}@", &v7, 0x16u);
  }

  ongoingMigrationAttemptAssetIDs = [(BKUbiquitousDocumentsController *)self ongoingMigrationAttemptAssetIDs];
  [ongoingMigrationAttemptAssetIDs unionSet:attemptCopy];
}

- (void)_removeAssetIDsForOngoingMigrationAttempt:(id)attempt
{
  attemptCopy = attempt;
  v5 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    *&buf[4] = 1752392040;
    *&buf[12] = 2112;
    *&buf[14] = attemptCopy;
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
  selfCopy = self;
  v15 = attemptCopy;
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
          assetIDs = [v11 assetIDs];
          *v26 = 141558274;
          v27 = 1752392040;
          v28 = 2112;
          v29 = assetIDs;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "OngoingMigrationAttempt - Done waiting for %{mask.hash}@", v26, 0x16u);
        }

        notifyBlock = [v11 notifyBlock];
        [(BKUbiquitousDocumentsController *)self _notifyOngoingMigrationAttemptCompletion:notifyBlock hasPendingChange:1];
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
  ongoingMigrationAttemptTimer = [(BKUbiquitousDocumentsController *)self ongoingMigrationAttemptTimer];
  [ongoingMigrationAttemptTimer signalWithCompletion:&stru_100A09C20];
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
  selfCopy = self;
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
  selfCopy = self;
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

- (void)_notifyOngoingMigrationAttemptCompletion:(id)completion hasPendingChange:(BOOL)change
{
  changeCopy = change;
  completionCopy = completion;
  v6 = completionCopy;
  if (changeCopy)
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
    v8 = objc_retainBlock(completionCopy);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (id)_permanentOrTemporaryAssetIDsWithAssetID:(id)d temporaryAssetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = objc_opt_new();
  if ([dCopy length])
  {
    [v7 addObject:dCopy];
  }

  if ([iDCopy length])
  {
    [v7 addObject:iDCopy];
  }

  return v7;
}

- (void)didHandleInitialQuery
{
  migrationQueue = [(BKUbiquitousDocumentsController *)self migrationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100191B60;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(migrationQueue, block);

  [(BKUbiquitousDocumentsController *)self migrateBooksToUbiquityIfNeededWithCompletion:0];
}

- (void)reportUploadErrorForBooks:(id)books
{
  booksCopy = books;
  bookOperationsQueue = [(BKUbiquitousDocumentsController *)self bookOperationsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100191C20;
  v7[3] = &unk_100A03440;
  v8 = booksCopy;
  selfCopy = self;
  v6 = booksCopy;
  [bookOperationsQueue addOperationWithBlock:v7];
}

- (void)reportUploadCompleteForBooks:(id)books
{
  booksCopy = books;
  bookOperationsQueue = [(BKUbiquitousDocumentsController *)self bookOperationsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100191DB8;
  v7[3] = &unk_100A03440;
  v8 = booksCopy;
  selfCopy = self;
  v6 = booksCopy;
  [bookOperationsQueue addOperationWithBlock:v7];
}

- (void)p_updateCachedURLsFrom:(id)from to:(id)to
{
  toCopy = to;
  fromCopy = from;
  v7 = +[AEPluginRegistry sharedInstance];
  v9 = [v7 pluginForURL:fromCopy];

  v8 = [v9 helperForURL:fromCopy withOptions:0];

  [v8 helperUpdateCachedURLTo:toCopy];
}

- (void)p_postStatusNotificationForAssets:(id)assets withState:(int64_t)state
{
  assetsCopy = assets;
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = assetsCopy;
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

        assetID = [*(*(&v18 + 1) + 8 * v12) assetID];
        if (assetID)
        {
          v14 = [[BKLibraryDownloadStatus alloc] initWithAssetID:assetID state:state progressValue:0x7FFFFFFFFFFFFFFFLL timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:0.0];
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
  assetIDToFileSizeMapPendingUpload = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapPendingUpload];
  allValues = [assetIDToFileSizeMapPendingUpload allValues];

  v5 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v7 += [*(*(&v21 + 1) + 8 * i) longLongValue];
      }

      v6 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
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
  assetIDToFileSizeMapUploadedSinceLastQuotaReceived = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapUploadedSinceLastQuotaReceived];
  allValues2 = [assetIDToFileSizeMapUploadedSinceLastQuotaReceived allValues];

  v12 = [allValues2 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(allValues2);
        }

        v7 += [*(*(&v17 + 1) + 8 * j) longLongValue];
      }

      v13 = [allValues2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  return v7;
}

- (void)boq_addPendingUploadQuotaCompensationForAssets:(id)assets
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = assets;
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
        assetID = [v8 assetID];
        v11 = [v8 url];
        v12 = [v9 initWithCacheItemRequestWithAssetID:assetID assetURL:v11];

        v13 = +[BKLibraryFileSizeManager sharedInstance];
        v14 = [v13 synchronousFileSizeForCacheItemRequest:v12];
        assetIDToFileSizeMapPendingUpload = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapPendingUpload];
        assetID2 = [v8 assetID];
        [assetIDToFileSizeMapPendingUpload setObject:v14 forKeyedSubscript:assetID2];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (void)boq_addUploadedQuotaCompensationForAssetIDs:(id)ds
{
  dsCopy = ds;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        assetIDToFileSizeMapPendingUpload = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapPendingUpload];
        v11 = [assetIDToFileSizeMapPendingUpload objectForKeyedSubscript:v9];

        assetIDToFileSizeMapPendingUpload2 = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapPendingUpload];
        [assetIDToFileSizeMapPendingUpload2 setObject:0 forKeyedSubscript:v9];

        assetIDToFileSizeMapUploadedSinceLastQuotaReceived = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapUploadedSinceLastQuotaReceived];
        [assetIDToFileSizeMapUploadedSinceLastQuotaReceived setObject:v11 forKeyedSubscript:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [dsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)boq_removeQuotaCompensationForAssets:(id)assets
{
  assetsCopy = assets;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [assetsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(assetsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        assetIDToFileSizeMapPendingUpload = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapPendingUpload];
        assetID = [v9 assetID];
        [assetIDToFileSizeMapPendingUpload setObject:0 forKeyedSubscript:assetID];

        assetIDToFileSizeMapUploadedSinceLastQuotaReceived = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapUploadedSinceLastQuotaReceived];
        assetID2 = [v9 assetID];
        [assetIDToFileSizeMapUploadedSinceLastQuotaReceived setObject:0 forKeyedSubscript:assetID2];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [assetsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)boq_removeUploadedQuotaCompensation
{
  assetIDToFileSizeMapUploadedSinceLastQuotaReceived = [(BKUbiquitousDocumentsController *)self assetIDToFileSizeMapUploadedSinceLastQuotaReceived];
  [assetIDToFileSizeMapUploadedSinceLastQuotaReceived removeAllObjects];
}

- (id)_sortedAssetsFromEligibleAssets:(id)assets moc:(id)moc
{
  assetsCopy = assets;
  mocCopy = moc;
  v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [assetsCopy count]);
  if ([assetsCopy count])
  {
    v7 = [assetsCopy valueForKey:@"assetID"];
    v8 = [NSMutableDictionary dictionaryWithObjects:assetsCopy forKeys:v7];
    v9 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
    [v9 setReturnsObjectsAsFaults:0];
    v10 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:v7];
    [v9 setPredicate:v10];

    v11 = [[NSSortDescriptor alloc] initWithKey:@"lastOpenDate" ascending:0];
    v49 = v11;
    v12 = [NSArray arrayWithObjects:&v49 count:1];
    [v9 setSortDescriptors:v12];

    v41 = 0;
    v13 = [mocCopy executeFetchRequest:v9 error:&v41];
    v14 = v41;
    v15 = v14;
    if (v13)
    {
      v30 = v14;
      v31 = v13;
      v32 = v9;
      v33 = v7;
      v34 = mocCopy;
      v35 = assetsCopy;
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
            assetID = [v21 assetID];
            v23 = [v8 objectForKeyedSubscript:assetID];
            v24 = BUProtocolCast();

            if (v24)
            {
              [v36 addObject:v24];
              assetID2 = [v21 assetID];
              [v8 setObject:0 forKeyedSubscript:assetID2];
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

              assetID2 = BCIMLog();
              if (os_log_type_enabled(assetID2, OS_LOG_TYPE_INFO))
              {
                assetID3 = [v21 assetID];
                *buf = 138412290;
                v43 = assetID3;
                _os_log_impl(&_mh_execute_header, assetID2, OS_LOG_TYPE_INFO, "@Couldn't map BKLibraryAsset with assetID {%@} to BKAsset", buf, 0xCu);
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v37 objects:v48 count:16];
        }

        while (v18);
      }

      mocCopy = v34;
      assetsCopy = v35;
      v9 = v32;
      v7 = v33;
      v15 = v30;
      v13 = v31;
    }

    if ([v8 count])
    {
      allValues = [v8 allValues];
      [v36 addObjectsFromArray:allValues];
    }
  }

  return v36;
}

- (void)boq_handleSpaceAvailableReceivedWithFreeBytes:(int64_t)bytes serverError:(id)error
{
  errorCopy = error;
  [(BKUbiquitousDocumentsController *)self setPendingQuotaFetch:0];
  if (!errorCopy)
  {
    selfCopy2 = self;
    bytesCopy = bytes;
    goto LABEL_9;
  }

  v7 = BCIMLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    bytesCopy2 = "[BKUbiquitousDocumentsController boq_handleSpaceAvailableReceivedWithFreeBytes:serverError:]";
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
    bytesCopy2 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "@Error retrieving ubiquity quota from server. Error (%@)", &v12, 0xCu);
  }

  if (![(BKUbiquitousDocumentsController *)self hasEverReceivedUbiquityQuota])
  {
    selfCopy2 = self;
    bytesCopy = 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:
    [(BKUbiquitousDocumentsController *)selfCopy2 setUbiquityAvailableSpace:bytesCopy];
  }

  [(BKUbiquitousDocumentsController *)self setHasEverReceivedUbiquityQuota:1];
  [(BKUbiquitousDocumentsController *)self boq_removeUploadedQuotaCompensation];
  v11 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    bytesCopy2 = bytes;
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