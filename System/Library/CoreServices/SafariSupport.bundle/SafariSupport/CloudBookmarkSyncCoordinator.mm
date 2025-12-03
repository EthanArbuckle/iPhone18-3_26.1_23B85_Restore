@interface CloudBookmarkSyncCoordinator
- (CloudBookmarkSyncCoordinator)initWithBookmarkStore:(id)store databaseCoordinator:(id)coordinator accountStore:(id)accountStore;
- (NSString)deviceIdentifier;
- (id)_bookmarkForRemoteRecord:(id)record isNewBookmark:(BOOL *)bookmark;
- (id)_existingBookmarkForRemoteRecord:(id)record;
- (id)_nextRecordBatchGetRecordNamesToCloudBookmarks:(id *)bookmarks withCloudBookmarkAllocationBlock:(id)block;
- (id)_rebuildUndeletedBookmark:(id)bookmark;
- (id)_recordNameOfLastRecordInRoot;
- (id)generateIdentityHashWithComponents:(id)components;
- (id)positionForCloudBookmarkWithRecordName:(id)name;
- (id)positionGenerator:(id)generator positionForRecordName:(id)name;
- (id)positionGenerator:(id)generator recordNameOfBookmarksAfterRecordWithName:(id)name;
- (id)positionGenerator:(id)generator recordNameOfBookmarksBeforeRecordWithName:(id)name;
- (int64_t)_nextChangeID;
- (void)_beginSyncingWithOperationGroupForFetching:(id)fetching operationGroupForSaving:(id)saving completionHandlers:(id)handlers;
- (void)_bookmarkStoreDidFinishSetUp;
- (void)_cleanUpAndCallCompletionHandlersWithError:(id)error;
- (void)_continueSyncingAfterSyncDown:(BOOL)down;
- (void)_didCompleteSyncDownAfterExpiredChangeTokenError;
- (void)_didFailToSyncWithError:(id)error didOpenDatabase:(BOOL)database;
- (void)_didSaveRecordsLocally;
- (void)_finishSyncing;
- (void)_handleExpiredChangeTokenError:(id)error completionHandler:(id)handler;
- (void)_performSyncDown;
- (void)_performSyncDownWithCompletionHandler:(id)handler;
- (void)_performSyncDownWithLastServerChangeToken:(id)token completionHandler:(id)handler;
- (void)_processChanges;
- (void)_reparentAndSaveUnrootedBookmarks;
- (void)_resetSyncData;
- (void)_saveNextChangedRecordBatch;
- (void)_saveNextReparentedRecordBatch;
- (void)_saveRecordBatch:(id)batch recordNamesToCloudBookmarks:(id)bookmarks successCompletionHandler:(id)handler;
- (void)_scheduleRetryIfAbleWithOperationGroupForFetching:(id)fetching operationGroupForSaving:(id)saving completionHandlers:(id)handlers;
- (void)_updateBookmarkWithRecord:(id)record;
- (void)beginSyncingWithOperationGroupForFetching:(id)fetching operationGroupForSaving:(id)saving completionHandler:(id)handler;
- (void)readingListBookmarkDidUpdate;
- (void)reorderAllBookmarksUsingSyncPosition;
- (void)saveAssetAtURL:(id)l toURL:(id)rL completionHandler:(id)handler;
@end

@implementation CloudBookmarkSyncCoordinator

- (CloudBookmarkSyncCoordinator)initWithBookmarkStore:(id)store databaseCoordinator:(id)coordinator accountStore:(id)accountStore
{
  storeCopy = store;
  coordinatorCopy = coordinator;
  accountStoreCopy = accountStore;
  v21.receiver = self;
  v21.super_class = CloudBookmarkSyncCoordinator;
  v12 = [(CloudBookmarkSyncCoordinator *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_databaseCoordinator, coordinator);
    objc_storeStrong(&v13->_accountStore, accountStore);
    objc_storeStrong(&v13->_bookmarkStore, store);
    v14 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudBookmarkSyncCoordinator.%@.%p.imageSavingQueue", objc_opt_class(), v13];
    uTF8String = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v17 = dispatch_queue_create(uTF8String, v16);
    internalQueue = v13->_internalQueue;
    v13->_internalQueue = v17;

    v19 = v13;
  }

  return v13;
}

- (NSString)deviceIdentifier
{
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  v3 = sub_1000328C4(databaseAccessor);

  return v3;
}

- (void)beginSyncingWithOperationGroupForFetching:(id)fetching operationGroupForSaving:(id)saving completionHandler:(id)handler
{
  savingCopy = saving;
  fetchingCopy = fetching;
  v10 = [handler copy];
  v12 = v10;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [(CloudBookmarkSyncCoordinator *)self _beginSyncingWithOperationGroupForFetching:fetchingCopy operationGroupForSaving:savingCopy completionHandlers:v11];
}

- (void)_beginSyncingWithOperationGroupForFetching:(id)fetching operationGroupForSaving:(id)saving completionHandlers:(id)handlers
{
  fetchingCopy = fetching;
  savingCopy = saving;
  handlersCopy = handlers;
  v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sync coordinator will begin syncing", buf, 2u);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v15, buf);
  v12 = handlersCopy;
  v13 = fetchingCopy;
  v14 = savingCopy;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_scheduleRetryIfAbleWithOperationGroupForFetching:(id)fetching operationGroupForSaving:(id)saving completionHandlers:(id)handlers
{
  fetchingCopy = fetching;
  savingCopy = saving;
  handlersCopy = handlers;
  numberOfRetries = self->_numberOfRetries;
  if (numberOfRetries > 2)
  {
    v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Discontinuing sync after attempting maximum number of retries", buf, 2u);
    }

    self->_numberOfRetries = 0;
    sub_10000306C(handlersCopy, 4, 0);
  }

  else
  {
    v12 = dbl_1000E8D10[numberOfRetries];
    self->_numberOfRetries = numberOfRetries + 1;
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = self->_numberOfRetries;
      *buf = 67109376;
      v22 = v14;
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Scheduling retry #%d in %.1fs.", buf, 0x12u);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10006C978;
    v17[3] = &unk_100134A08;
    v17[4] = self;
    v18 = fetchingCopy;
    v19 = savingCopy;
    v20 = handlersCopy;
    v15 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v17 block:v12];
    objc_storeWeak(&self->_retryTimer, v15);
  }
}

- (void)_resetSyncData
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Resetting sync data", v6, 2u);
  }

  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  [databaseAccessor clearAllSyncDataWithDatabase:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];

  databaseAccessor2 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  [databaseAccessor2 resetDeviceIdentifier];

  [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator setLocalMigrationState:0];
  self->_didResetSyncData = 1;
}

- (void)_bookmarkStoreDidFinishSetUp
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Bookmark Store setup done, opening database and processing changes", buf, 2u);
  }

  if (([(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator openDatabase]& 1) != 0)
  {
    v4 = [CloudBookmarkMovedBookmarkManager alloc];
    databaseRef = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
    databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
    v7 = [(CloudBookmarkMovedBookmarkManager *)v4 initWithDatabase:databaseRef databaseAccessor:databaseAccessor];
    movedBookmarkManager = self->_movedBookmarkManager;
    self->_movedBookmarkManager = v7;

    v9 = [CloudBookmarkPendingReferenceManager alloc];
    databaseRef2 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
    databaseAccessor2 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
    v12 = [(CloudBookmarkPendingReferenceManager *)v9 initWithDatabase:databaseRef2 databaseAccessor:databaseAccessor2];
    pendingReferenceManager = self->_pendingReferenceManager;
    self->_pendingReferenceManager = v12;

    v14 = [[WBSCRDTPositionGenerator alloc] initWithDelegate:self];
    positionGenerator = self->_positionGenerator;
    self->_positionGenerator = v14;

    v16 = +[NSMutableSet set];
    movedRecordNames = self->_movedRecordNames;
    self->_movedRecordNames = v16;

    v18 = +[NSMutableSet set];
    namesOfRecordsExpectedOnSyncDown = self->_namesOfRecordsExpectedOnSyncDown;
    self->_namesOfRecordsExpectedOnSyncDown = v18;

    v20 = +[NSMutableSet set];
    namesOfRecordsSavedToTheServer = self->_namesOfRecordsSavedToTheServer;
    self->_namesOfRecordsSavedToTheServer = v20;

    v22 = +[NSMutableSet set];
    namesOfRecordsMissingFromPreviousSyncDown = self->_namesOfRecordsMissingFromPreviousSyncDown;
    self->_namesOfRecordsMissingFromPreviousSyncDown = v22;

    databaseRef3 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
    databaseAccessor3 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
    v26 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:databaseRef3 databaseAccessor:databaseAccessor3];

    if ([v26 didNotSaveRecordsAfterMigration])
    {
      v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Records were not saved locally, attempt merging to generate Add changes", v31, 2u);
      }

      databaseAccessor4 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
      [databaseAccessor4 beginMergingChangesWithDatabase:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];

      databaseAccessor5 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
      [databaseAccessor5 finishMergingChangesWithDatabase:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];
    }

    [(CloudBookmarkSyncCoordinator *)self _processChanges];
    [(CloudBookmarkSyncCoordinator *)self _continueSyncingAfterSyncDown:0];
  }

  else
  {
    v30 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10007050C();
    }

    v26 = [NSError errorWithDomain:@"com.apple.Safari.CloudBookmarks" code:2 userInfo:0];
    [(CloudBookmarkSyncCoordinator *)self _didFailToSyncWithError:v26 didOpenDatabase:0];
  }
}

- (void)reorderAllBookmarksUsingSyncPosition
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Opening database to reorder of all bookmarks in local storage based on CloudKit sync data", buf, 2u);
  }

  if (([(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator openDatabase]& 1) != 0)
  {
    v4 = [CloudBookmarkMovedBookmarkManager alloc];
    databaseRef = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
    databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
    v7 = [(CloudBookmarkMovedBookmarkManager *)v4 initWithDatabase:databaseRef databaseAccessor:databaseAccessor];
    movedBookmarkManager = self->_movedBookmarkManager;
    self->_movedBookmarkManager = v7;

    [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager reorderAllBookmarksUsingSyncPosition];
    [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator closeDatabaseAndSave:1];
    v9 = self->_movedBookmarkManager;
    self->_movedBookmarkManager = 0;

    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished reordering bookmarks in local storage", v12, 2u);
    }
  }

  else
  {
    v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100070540();
    }
  }
}

- (void)_finishSyncing
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Finish syncing", v5, 2u);
  }

  [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager moveBookmarksIntoPlace];
  [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager removeLocalItemsForDeletedRecordNames];
  [(CloudBookmarkPendingReferenceManager *)self->_pendingReferenceManager applyAllPendingReferencesWithUpdater:self];
  if (self->_changeToken)
  {
    databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
    [databaseAccessor clearChangesWithChangeToken:self->_changeToken database:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];
  }

  [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator closeDatabaseAndSave:1];
  [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator unlockForClient:@"Sync coordinator"];
  [(CloudBookmarkSyncCoordinator *)self _cleanUpAndCallCompletionHandlersWithError:0];
}

- (void)_didFailToSyncWithError:(id)error didOpenDatabase:(BOOL)database
{
  databaseCopy = database;
  errorCopy = error;
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100070574(v7);
    if (!databaseCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (databaseCopy)
  {
LABEL_3:
    [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator closeDatabaseAndSave:0];
  }

LABEL_4:
  if ([(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef])
  {
    v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100070604();
    }
  }

  if ((-[CloudBookmarkDatabaseCoordinating isDatabaseOpen](self->_databaseCoordinator, "isDatabaseOpen") & 1) == 0 && (([errorCopy safari_isOrContainsCloudKitMissingZoneError] & 1) != 0 || objc_msgSend(errorCopy, "safari_isMigrationStateRecordChangedError")))
  {
    [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator setLocalMigrationState:0];
  }

  [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator unlockForClient:@"Sync coordinator"];
  [(CloudBookmarkSyncCoordinator *)self _cleanUpAndCallCompletionHandlersWithError:errorCopy];
}

- (void)_cleanUpAndCallCompletionHandlersWithError:(id)error
{
  errorCopy = error;
  movedBookmarkManager = self->_movedBookmarkManager;
  self->_movedBookmarkManager = 0;

  pendingReferenceManager = self->_pendingReferenceManager;
  self->_pendingReferenceManager = 0;

  positionGenerator = self->_positionGenerator;
  self->_positionGenerator = 0;

  movedRecordNames = self->_movedRecordNames;
  self->_movedRecordNames = 0;

  unsavedChanges = self->_unsavedChanges;
  self->_unsavedChanges = 0;

  self->_isSynchronizing = 0;
  unsavedBookmarkFromLastBatch = self->_unsavedBookmarkFromLastBatch;
  self->_unsavedBookmarkFromLastBatch = 0;

  if (errorCopy && ([errorCopy safari_isOrContainsCloudKitMissingZoneError] & 1) == 0)
  {
    [errorCopy safari_isMigrationStateRecordChangedError];
  }

  v11 = [(NSMutableArray *)self->_syncingCompletionHandlers copy];
  v12 = self->_operationGroupForFetching;
  v13 = self->_operationGroupForSaving;
  syncingCompletionHandlers = self->_syncingCompletionHandlers;
  self->_syncingCompletionHandlers = 0;

  operationGroupForFetching = self->_operationGroupForFetching;
  self->_operationGroupForFetching = 0;

  operationGroupForSaving = self->_operationGroupForSaving;
  self->_operationGroupForSaving = 0;

  if (!self->_didReceiveSyncRequestWhileSyncing)
  {
    v21 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v19 = "Syncing done, calling completion handler";
      v20 = v21;
      goto LABEL_12;
    }

LABEL_13:
    v22 = v11;
    v23 = errorCopy;
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();

    goto LABEL_14;
  }

  self->_didReceiveSyncRequestWhileSyncing = 0;
  v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (errorCopy)
  {
    if (v18)
    {
      *buf = 0;
      v19 = "Not retrying sync after receiving synchronization request during sync since previous sync failed";
      v20 = v17;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v19, buf, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v18)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Retrying sync after receiving synchronization request during synchronization", buf, 2u);
  }

  [(CloudBookmarkSyncCoordinator *)self _beginSyncingWithOperationGroupForFetching:v12 operationGroupForSaving:v13 completionHandlers:v11];
LABEL_14:
}

- (id)_rebuildUndeletedBookmark:(id)bookmark
{
  bookmarkStore = self->_bookmarkStore;
  bookmarkCopy = bookmark;
  record = [bookmarkCopy record];
  v7 = [(CloudBookmarkStore *)bookmarkStore cloudBookmarkItemConfigurationForRecord:record];

  record2 = [bookmarkCopy record];

  databaseRef = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  v11 = [CloudBookmark cloudBookmarkWithAddedRecord:record2 configuration:v7 inDatabase:databaseRef databaseAccessor:databaseAccessor updater:self];

  [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager addMovedBookmark:v11];

  return v11;
}

- (id)_recordNameOfLastRecordInRoot
{
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  v4 = [databaseAccessor copyLastServerIdInFolderWithServerId:0 database:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];

  if (!v4)
  {
    goto LABEL_6;
  }

  while ([(NSMutableSet *)self->_movedRecordNames containsObject:v4])
  {
    databaseAccessor2 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
    v6 = [databaseAccessor2 copyServerIdInFolderBeforeServerId:v4 database:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];

    v4 = v6;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (![CKRecord safari_folderTypeForRecordName:v4])
  {
    v4 = v4;
    v7 = v4;
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (void)_didSaveRecordsLocally
{
  databaseRef = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  v7 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:databaseRef databaseAccessor:databaseAccessor];

  [v7 setDidNotSaveRecordsAfterMigration:0];
  databaseRef2 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
  databaseAccessor2 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  [v7 writeToDatabase:databaseRef2 databaseAccessor:databaseAccessor2];
}

- (void)_processChanges
{
  v3 = [CloudBookmarkChangeProcessor alloc];
  databaseRef = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  v6 = [(CloudBookmarkChangeProcessor *)v3 initWithDatabase:databaseRef databaseAccessor:databaseAccessor updater:self];

  [(CloudBookmarkChangeProcessor *)v6 processChanges];
  changes = [(CloudBookmarkChangeProcessor *)v6 changes];
  v8 = [changes mutableCopy];
  unsavedChanges = self->_unsavedChanges;
  self->_unsavedChanges = v8;

  changeToken = [(CloudBookmarkChangeProcessor *)v6 changeToken];
  changeToken = self->_changeToken;
  self->_changeToken = changeToken;

  movedRecordNames = [(CloudBookmarkChangeProcessor *)v6 movedRecordNames];
  v13 = [movedRecordNames mutableCopy];
  movedRecordNames = self->_movedRecordNames;
  self->_movedRecordNames = v13;

  positionGenerator = self->_positionGenerator;
  parentRecordNamesToMovedChildRecordNames = [(CloudBookmarkChangeProcessor *)v6 parentRecordNamesToMovedChildRecordNames];
  [(WBSCRDTPositionGenerator *)positionGenerator generatePositionsForChildRecordNamesGroupedByParentFolders:parentRecordNamesToMovedChildRecordNames];

  if ([(NSMutableArray *)self->_unsavedChanges count])
  {
    [(CloudBookmarkSyncCoordinator *)self _didSaveRecordsLocally];
  }

  v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = self->_unsavedChanges;
    v19 = v17;
    v20 = [(NSMutableArray *)v18 count];
    v21 = [(NSMutableSet *)self->_movedRecordNames count];
    v22 = self->_changeToken;
    v23 = 134218498;
    v24 = v20;
    v25 = 2048;
    v26 = v21;
    v27 = 2114;
    v28 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Number of processed changes %lu, locally moved records: %lu, change token: %{public}@", &v23, 0x20u);
  }
}

- (void)_saveNextChangedRecordBatch
{
  v7 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006D838;
  v6[3] = &unk_100134A30;
  v6[4] = self;
  v3 = [(CloudBookmarkSyncCoordinator *)self _nextRecordBatchGetRecordNamesToCloudBookmarks:&v7 withCloudBookmarkAllocationBlock:v6];
  v4 = v7;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006D9C4;
  v5[3] = &unk_100131408;
  v5[4] = self;
  [(CloudBookmarkSyncCoordinator *)self _saveRecordBatch:v3 recordNamesToCloudBookmarks:v4 successCompletionHandler:v5];
}

- (void)_reparentAndSaveUnrootedBookmarks
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    movedBookmarkManager = self->_movedBookmarkManager;
    v5 = v3;
    numberOfMovedBookmarks = [(CloudBookmarkMovedBookmarkManager *)movedBookmarkManager numberOfMovedBookmarks];
    numberOfDeletedBookmarks = [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager numberOfDeletedBookmarks];
    *buf = 134218240;
    v17 = numberOfMovedBookmarks;
    v18 = 2048;
    v19 = numberOfDeletedBookmarks;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Performing hierarchy check for moved records, number of moved records: %lu, number of deleted records: %lu", buf, 0x16u);
  }

  v8 = self->_movedBookmarkManager;
  v15 = 0;
  v9 = [(CloudBookmarkMovedBookmarkManager *)v8 bookmarksByVerifyingAndReparentingUnrootedBookmarksGetLastValidPositionInRootFolder:&v15];
  v10 = v15;
  v11 = v15;
  if ([v9 count])
  {
    objc_storeStrong(&self->_lastKnownPositionOfLastItemInRootFolder, v10);
    allObjects = [v9 allObjects];
    v13 = [allObjects mutableCopy];
    unsavedReparentedRecordNames = self->_unsavedReparentedRecordNames;
    self->_unsavedReparentedRecordNames = v13;

    [(NSMutableArray *)self->_unsavedReparentedRecordNames sortUsingComparator:&stru_100134A50];
    [(CloudBookmarkSyncCoordinator *)self _saveNextReparentedRecordBatch];
  }

  else
  {
    [(CloudBookmarkSyncCoordinator *)self _continueSyncingAfterSyncDown:0];
  }
}

- (void)_saveNextReparentedRecordBatch
{
  v7 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006DC38;
  v6[3] = &unk_100134A30;
  v6[4] = self;
  v3 = [(CloudBookmarkSyncCoordinator *)self _nextRecordBatchGetRecordNamesToCloudBookmarks:&v7 withCloudBookmarkAllocationBlock:v6];
  v4 = v7;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006DD0C;
  v5[3] = &unk_100131408;
  v5[4] = self;
  [(CloudBookmarkSyncCoordinator *)self _saveRecordBatch:v3 recordNamesToCloudBookmarks:v4 successCompletionHandler:v5];
}

- (id)_nextRecordBatchGetRecordNamesToCloudBookmarks:(id *)bookmarks withCloudBookmarkAllocationBlock:(id)block
{
  blockCopy = block;
  v35 = +[NSMutableArray array];
  v7 = +[NSMutableDictionary dictionary];
  if (self->_unsavedBookmarkFromLastBatch)
  {
    v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      unsavedBookmarkFromLastBatch = self->_unsavedBookmarkFromLastBatch;
      v11 = v9;
      recordName = [(CloudBookmark *)unsavedBookmarkFromLastBatch recordName];
      *buf = 138543362;
      v38 = recordName;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Using unsaved bookmark from last batch with record name: %{public}@", buf, 0xCu);
    }

    record = [(CloudBookmark *)self->_unsavedBookmarkFromLastBatch record];
    v14 = [record size];

    [v35 addObject:self->_unsavedBookmarkFromLastBatch];
    v15 = self->_unsavedBookmarkFromLastBatch;
    recordName2 = [(CloudBookmark *)v15 recordName];
    [v7 setObject:v15 forKeyedSubscript:recordName2];

    v17 = self->_unsavedBookmarkFromLastBatch;
    self->_unsavedBookmarkFromLastBatch = 0;

    if (v14 >= 0x200000)
    {
      v18 = v7;
      *bookmarks = v7;
      goto LABEL_24;
    }
  }

  else
  {
    v14 = 0;
  }

  v36 = 0;
  *&v8 = 138543362;
  v34 = v8;
  while (1)
  {
    v19 = blockCopy[2](blockCopy, &v36);
    v20 = v19;
    if (v19)
    {
      break;
    }

LABEL_18:

    if (v36 == 1)
    {
      goto LABEL_23;
    }
  }

  [(CloudBookmark *)v19 updateLocalItemWithUpdater:self];
  record2 = [(CloudBookmark *)v20 record];
  v22 = [record2 size];

  v23 = [v35 count];
  v24 = &v14[v22];
  if (&v14[v22] < 0x200000)
  {
    if (v23 >= 0x64)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (!v23)
  {
LABEL_13:
    recordName3 = [(CloudBookmark *)v20 recordName];
    v26 = [v7 objectForKeyedSubscript:recordName3];

    if (v26)
    {
      v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = v34;
        v38 = recordName3;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Not adding bookmark to batch with record name %{public}@ because it already exists in the batch", buf, 0xCu);
      }
    }

    else
    {
      [v35 addObject:v20];
      [v7 setObject:v20 forKeyedSubscript:recordName3];
      [(NSMutableSet *)self->_namesOfRecordsSavedToTheServer addObject:recordName3];
      [(NSMutableSet *)self->_namesOfRecordsExpectedOnSyncDown addObject:recordName3];
      v14 = v24;
    }

    goto LABEL_18;
  }

LABEL_20:
  v28 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = v28;
    recordName4 = [(CloudBookmark *)v20 recordName];
    *buf = v34;
    v38 = recordName4;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Setting unsaved bookmark with name %{public}@ because the batch is full", buf, 0xCu);
  }

  v31 = self->_unsavedBookmarkFromLastBatch;
  self->_unsavedBookmarkFromLastBatch = v20;

LABEL_23:
  v32 = v7;
  *bookmarks = v7;
LABEL_24:

  return v35;
}

- (void)_saveRecordBatch:(id)batch recordNamesToCloudBookmarks:(id)bookmarks successCompletionHandler:(id)handler
{
  batchCopy = batch;
  bookmarksCopy = bookmarks;
  handlerCopy = handler;
  if ([(CloudBookmarkAccountPropertiesStore *)self->_accountPropertiesStore isDataclassEnabled])
  {
    v11 = [batchCopy count];
    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100070638(v13);
      }

      bookmarkStore = self->_bookmarkStore;
      v15 = [batchCopy valueForKey:@"record"];
      operationGroupForSaving = self->_operationGroupForSaving;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10006E2FC;
      v21[3] = &unk_100134AA0;
      v21[4] = self;
      v22 = bookmarksCopy;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10006E654;
      v19[3] = &unk_100132D28;
      v19[4] = self;
      v20 = handlerCopy;
      [(CloudBookmarkStore *)bookmarkStore saveBookmarksRecordBatch:v15 inOperationGroup:operationGroupForSaving clientChangeTokenData:0 mergeHandler:v21 completionHandler:v19];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Done saving all record changes", buf, 2u);
      }

      [(CloudBookmarkSyncCoordinator *)self _continueSyncingAfterSyncDown:0];
    }
  }

  else
  {
    v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Discontinuing sync because bookmarks dataclass was disabled during sync", buf, 2u);
    }

    v18 = [NSError safari_errorWithCloudBookmarksCode:5 userInfo:0];
    [(CloudBookmarkSyncCoordinator *)self _didFailToSyncWithError:v18 didOpenDatabase:1];
  }
}

- (void)_performSyncDown
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006E7F8;
  v2[3] = &unk_1001344B0;
  v2[4] = self;
  [(CloudBookmarkSyncCoordinator *)self _performSyncDownWithCompletionHandler:v2];
}

- (void)_performSyncDownWithCompletionHandler:(id)handler
{
  databaseCoordinator = self->_databaseCoordinator;
  handlerCopy = handler;
  databaseRef = [(CloudBookmarkDatabaseCoordinating *)databaseCoordinator databaseRef];
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  v8 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:databaseRef databaseAccessor:databaseAccessor];
  bookmarksRecordZoneID = [(CloudBookmarkStore *)self->_bookmarkStore bookmarksRecordZoneID];
  v10 = [v8 lastServerChangeTokenForRecordZoneID:bookmarksRecordZoneID];

  [(CloudBookmarkSyncCoordinator *)self _performSyncDownWithLastServerChangeToken:v10 completionHandler:handlerCopy];
}

- (void)_performSyncDownWithLastServerChangeToken:(id)token completionHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v24 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Performing sync down with last server change token: %{public}@", buf, 0xCu);
  }

  v9 = +[NSMutableSet set];
  bookmarkStore = self->_bookmarkStore;
  operationGroupForFetching = self->_operationGroupForFetching;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10006EBAC;
  v21[3] = &unk_100134AC8;
  v21[4] = self;
  v22 = v9;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006ECD8;
  v19[3] = &unk_100134AF0;
  v19[4] = self;
  v20 = v22;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006EE08;
  v15[3] = &unk_100134B40;
  v15[4] = self;
  v16 = tokenCopy;
  v17 = v20;
  v18 = handlerCopy;
  v12 = v20;
  v13 = tokenCopy;
  v14 = handlerCopy;
  [(CloudBookmarkStore *)bookmarkStore fetchBookmarksRecordChangesSinceServerChangeToken:v13 inOperationGroup:operationGroupForFetching recordChangedBlock:v21 recordWithIDWasDeletedBlock:v19 completionHandler:v15];
}

- (void)_handleExpiredChangeTokenError:(id)error completionHandler:(id)handler
{
  if (self->_expiredChangeTokenHandler)
  {
    (*(handler + 2))(handler, error);
  }

  else
  {
    handlerCopy = handler;
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Change token is expired; trying a full sync down.", v12, 2u);
    }

    v8 = [CloudBookmarkExpiredChangeTokenHandler alloc];
    databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
    v10 = [(CloudBookmarkExpiredChangeTokenHandler *)v8 initWithDatabaseAccessor:databaseAccessor database:[(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef]];
    expiredChangeTokenHandler = self->_expiredChangeTokenHandler;
    self->_expiredChangeTokenHandler = v10;

    [(CloudBookmarkExpiredChangeTokenHandler *)self->_expiredChangeTokenHandler collectAllRecordNames];
    [(CloudBookmarkSyncCoordinator *)self _performSyncDownWithLastServerChangeToken:0 completionHandler:handlerCopy];
  }
}

- (void)_didCompleteSyncDownAfterExpiredChangeTokenError
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Successfully completed full sync down after expired change token error", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  namesOfLocalRecordsToDelete = [(CloudBookmarkExpiredChangeTokenHandler *)self->_expiredChangeTokenHandler namesOfLocalRecordsToDelete];
  v5 = [namesOfLocalRecordsToDelete countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    *&v6 = 138412290;
    v12 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(namesOfLocalRecordsToDelete);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = v12;
          v18 = v10;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Record %@ was not seen during sync down after expired change token error; marking it for deletion", buf, 0xCu);
        }

        [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager didDeleteBookmarkWithRecordName:v10, v12];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [namesOfLocalRecordsToDelete countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_updateBookmarkWithRecord:(id)record
{
  recordCopy = record;
  safari_recordName = [recordCopy safari_recordName];
  if ([recordCopy safari_minimumAPIVersion] <= 4)
  {
    v13 = 0;
    v7 = [(CloudBookmarkSyncCoordinator *)self _bookmarkForRemoteRecord:recordCopy isNewBookmark:&v13];
    if (!v7)
    {
LABEL_15:

      goto LABEL_16;
    }

    bookmarkHashGenerator = [(CloudBookmarkStore *)self->_bookmarkStore bookmarkHashGenerator];
    configuration = [v7 configuration];
    [bookmarkHashGenerator verifyIdentityHashInBookmarkRecord:recordCopy configuration:configuration];

    [(CloudBookmarkSyncCoordinator *)self _didSaveRecordsLocally];
    if (v13 == 1)
    {
      [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager addMovedBookmark:v7];
      [v7 saveAssetsIfNeededWithUpdater:self];
      goto LABEL_15;
    }

    v10 = [v7 resultFromMergingRecord:recordCopy usingUpdater:self];
    if ((v10 & 1) != 0 && (v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
    {
      sub_100070988(safari_recordName, v11, v10);
      if ((v10 & 0x10) == 0)
      {
LABEL_11:
        if ((v10 & 2) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }
    }

    else if ((v10 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    v12 = [(CloudBookmarkSyncCoordinator *)self _rebuildUndeletedBookmark:v7];

    v7 = v12;
    if ((v10 & 2) == 0)
    {
LABEL_12:
      if ((v10 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v7 updateLocalItemWithUpdater:self];
    [v7 saveAssetsIfNeededWithUpdater:self];
    if ((v10 & 4) == 0)
    {
LABEL_13:
      if ((v10 & 8) == 0)
      {
        goto LABEL_15;
      }

LABEL_14:
      [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager didDeleteBookmarkWithRecordName:safari_recordName];
      goto LABEL_15;
    }

LABEL_20:
    [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager addMovedBookmark:v7];
    if ((v10 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100070A38(v6, recordCopy);
  }

  [(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager didDeleteBookmarkWithRecordName:safari_recordName];
LABEL_16:
}

- (id)_existingBookmarkForRemoteRecord:(id)record
{
  safari_recordName = [record safari_recordName];
  if (([safari_recordName isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark] & 1) != 0 || -[CloudBookmarkMovedBookmarkManager isDeletedRecordName:](self->_movedBookmarkManager, "isDeletedRecordName:", safari_recordName))
  {
    v5 = 0;
  }

  else
  {
    databaseRef = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
    databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
    v5 = [CloudBookmark cloudBookmarkWithRecordName:safari_recordName inDatabase:databaseRef databaseAccessor:databaseAccessor updater:self];
  }

  return v5;
}

- (id)_bookmarkForRemoteRecord:(id)record isNewBookmark:(BOOL *)bookmark
{
  recordCopy = record;
  *bookmark = 0;
  safari_recordName = [recordCopy safari_recordName];
  if ([safari_recordName isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(CloudBookmarkSyncCoordinator *)self _existingBookmarkForRemoteRecord:recordCopy];
    v10 = v9;
    if (v9)
    {
      v8 = v9;
    }

    else if ([recordCopy safari_state] == 1)
    {
      v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100070AF8();
      }

      v8 = 0;
    }

    else
    {
      *bookmark = 1;
      v12 = [(CloudBookmarkStore *)self->_bookmarkStore cloudBookmarkItemConfigurationForRecord:recordCopy];
      databaseRef = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
      databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
      v8 = [CloudBookmark cloudBookmarkWithAddedRecord:recordCopy configuration:v12 inDatabase:databaseRef databaseAccessor:databaseAccessor updater:self];
    }
  }

  return v8;
}

- (void)_continueSyncingAfterSyncDown:(BOOL)down
{
  if ([(NSMutableArray *)self->_unsavedChanges count])
  {
    v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Has unsaved changes; saving next batch.", buf, 2u);
    }

    [(CloudBookmarkSyncCoordinator *)self _saveNextChangedRecordBatch];
  }

  else if (down)
  {
    if ([(CloudBookmarkMovedBookmarkManager *)self->_movedBookmarkManager hasUnverifiedMovedBookmarks])
    {
      v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Unrooted moved bookmarks are present; will reparent", v8, 2u);
      }

      [(CloudBookmarkSyncCoordinator *)self _reparentAndSaveUnrootedBookmarks];
    }

    else
    {

      [(CloudBookmarkSyncCoordinator *)self _finishSyncing];
    }
  }

  else
  {
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Have not performed a sync down yet; doing so now", v9, 2u);
    }

    [(CloudBookmarkSyncCoordinator *)self _performSyncDown];
  }
}

- (int64_t)_nextChangeID
{
  databaseRef = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  v5 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:databaseRef databaseAccessor:databaseAccessor];

  nextChangeID = [v5 nextChangeID];
  databaseRef2 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
  databaseAccessor2 = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  [v5 writeToDatabase:databaseRef2 databaseAccessor:databaseAccessor2];

  return nextChangeID;
}

- (id)positionGenerator:(id)generator positionForRecordName:(id)name
{
  databaseCoordinator = self->_databaseCoordinator;
  nameCopy = name;
  databaseRef = [(CloudBookmarkDatabaseCoordinating *)databaseCoordinator databaseRef];
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  v9 = [CloudBookmark positionForItemWithRecordName:nameCopy inDatabase:databaseRef databaseAccessor:databaseAccessor];

  return v9;
}

- (id)positionGenerator:(id)generator recordNameOfBookmarksBeforeRecordWithName:(id)name
{
  databaseCoordinator = self->_databaseCoordinator;
  nameCopy = name;
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)databaseCoordinator databaseAccessor];
  v8 = [databaseAccessor copyServerIdInFolderBeforeServerId:nameCopy database:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];

  return v8;
}

- (id)positionGenerator:(id)generator recordNameOfBookmarksAfterRecordWithName:(id)name
{
  databaseCoordinator = self->_databaseCoordinator;
  nameCopy = name;
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)databaseCoordinator databaseAccessor];
  v8 = [databaseAccessor copyServerIdInFolderAfterServerId:nameCopy database:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];

  return v8;
}

- (id)generateIdentityHashWithComponents:(id)components
{
  bookmarkStore = self->_bookmarkStore;
  componentsCopy = components;
  bookmarkHashGenerator = [(CloudBookmarkStore *)bookmarkStore bookmarkHashGenerator];
  v6 = [bookmarkHashGenerator generateHashWithComponents:componentsCopy];

  return v6;
}

- (id)positionForCloudBookmarkWithRecordName:(id)name
{
  nameCopy = name;
  if ([CKRecord safari_folderTypeForRecordName:nameCopy])
  {
    v5 = 0;
  }

  else
  {
    firstObject = [(NSMutableArray *)self->_unsavedReparentedRecordNames firstObject];
    v7 = [firstObject isEqualToString:nameCopy];

    if (v7)
    {
      lastKnownPositionOfLastItemInRootFolder = self->_lastKnownPositionOfLastItemInRootFolder;
      deviceIdentifier = [(CloudBookmarkSyncCoordinator *)self deviceIdentifier];
      v10 = [WBSCRDTPosition positionBetweenPosition:lastKnownPositionOfLastItemInRootFolder andPosition:0 withDeviceIdentifier:deviceIdentifier changeID:[(CloudBookmarkSyncCoordinator *)self _nextChangeID]];
      v11 = self->_lastKnownPositionOfLastItemInRootFolder;
      self->_lastKnownPositionOfLastItemInRootFolder = v10;

      v12 = self->_lastKnownPositionOfLastItemInRootFolder;
    }

    else
    {
      v12 = [(WBSCRDTPositionGenerator *)self->_positionGenerator positionForBookmarkWithRecordName:nameCopy];
    }

    v5 = v12;
  }

  return v5;
}

- (void)saveAssetAtURL:(id)l toURL:(id)rL completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  if (lCopy && rLCopy)
  {
    v11 = +[NSFileManager defaultManager];
    internalQueue = self->_internalQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100070018;
    v15[3] = &unk_100131650;
    v16 = lCopy;
    v17 = v11;
    v18 = rLCopy;
    v19 = handlerCopy;
    v13 = v11;
    dispatch_async(internalQueue, v15);
  }

  else
  {
    v14 = [NSError safari_errorWithDomain:CKErrorDomain code:35 privacyPreservingDescription:@"Asset temporary url or destination URL was not available."];
    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

- (void)readingListBookmarkDidUpdate
{
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  if (objc_opt_respondsToSelector())
  {
    [databaseAccessor readingListItemDidUpdateWithDatabase:{-[CloudBookmarkDatabaseCoordinating databaseRef](self->_databaseCoordinator, "databaseRef")}];
  }
}

@end