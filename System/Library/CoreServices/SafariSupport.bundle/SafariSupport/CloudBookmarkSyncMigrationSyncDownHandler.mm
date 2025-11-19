@interface CloudBookmarkSyncMigrationSyncDownHandler
- (BOOL)shouldApplyReference:(id)a3 withGeneration:(id)a4 toAttribute:(id)a5 inRecordWithName:(id)a6;
- (CloudBookmarkSyncMigrationSyncDownHandlerDelegate)delegate;
- (id)_cloudBookmarkForRecord:(id)a3 isNewBookmark:(BOOL *)a4;
- (void)_didDeleteRecordWithName:(id)a3;
- (void)_didFinishSyncingReceivingRecordNames:(id)a3 error:(id)a4;
- (void)_performSyncDownInOperationGroup:(id)a3;
- (void)_performSyncDownInOperationGroup:(id)a3 withRetryManager:(id)a4;
- (void)_updateLocalBookmarkWithCKRecord:(id)a3;
- (void)beginSyncDownInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)beginSyncDownInOperationGroup:(id)a3 keepingRecordsMarkedAsDeletedLocally:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation CloudBookmarkSyncMigrationSyncDownHandler

- (void)beginSyncDownInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000863CC;
  v7[3] = &unk_1001353A8;
  v8 = a4;
  v6 = v8;
  [(CloudBookmarkSyncMigrationSyncDownHandler *)self beginSyncDownInOperationGroup:a3 keepingRecordsMarkedAsDeletedLocally:0 completionHandler:v7];
}

- (void)beginSyncDownInOperationGroup:(id)a3 keepingRecordsMarkedAsDeletedLocally:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sync down handler starting sync, keep records marked as deleted locally = %d", buf, 8u);
  }

  v10 = v7;
  v11 = v8;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)_didFinishSyncingReceivingRecordNames:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100087964(v9);
    }

    recordNamesToDelete = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sync down handler did succcessfully sync down", buf, 2u);
    }

    recordNamesToDelete = self->_recordNamesToDelete;
  }

  v11 = recordNamesToDelete;
  v12 = self->_recordNamesToDelete;
  self->_recordNamesToDelete = 0;

  v13 = objc_retainBlock(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  self->_isSyncing = 0;
  v19 = v6;
  v20 = v11;
  v21 = v7;
  v15 = v7;
  v16 = v11;
  v17 = v6;
  v18 = v13;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)_performSyncDownInOperationGroup:(id)a3
{
  v4 = a3;
  v5 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:-[CloudTabGroupSyncCoordinator _bookmarksLog]_0()];
  [(CloudBookmarkSyncMigrationSyncDownHandler *)self _performSyncDownInOperationGroup:v4 withRetryManager:v5];
}

- (void)_performSyncDownInOperationGroup:(id)a3 withRetryManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(CloudBookmarkDatabaseHandler *)self databaseRef];
  v9 = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
  v10 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:v8 databaseAccessor:v9];

  v11 = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  v12 = [v11 bookmarksRecordZoneID];
  v13 = [v10 lastServerChangeTokenForRecordZoneID:v12];

  v14 = +[NSMutableSet set];
  v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Sync down handler fetching record changes from server change token: %{public}@", buf, 0xCu);
  }

  v16 = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100086B70;
  v30[3] = &unk_100134AC8;
  v30[4] = self;
  v31 = v14;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100086C7C;
  v28[3] = &unk_100134AF0;
  v28[4] = self;
  v17 = v31;
  v29 = v17;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100086D88;
  v22[3] = &unk_100135420;
  v22[4] = self;
  v18 = v7;
  v23 = v18;
  objc_copyWeak(&v27, &location);
  v19 = v6;
  v24 = v19;
  v20 = v13;
  v25 = v20;
  v21 = v17;
  v26 = v21;
  [v16 fetchBookmarksRecordChangesSinceServerChangeToken:v20 inOperationGroup:v19 recordChangedBlock:v30 recordWithIDWasDeletedBlock:v28 completionHandler:v22];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)_didDeleteRecordWithName:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cloudBookmarkSyncMigrationSyncDownHandler:self didDeleteBookmarkWithRecordName:v4];
}

- (void)_updateLocalBookmarkWithCKRecord:(id)a3
{
  v4 = a3;
  v15 = 0;
  v5 = [(CloudBookmarkSyncMigrationSyncDownHandler *)self _cloudBookmarkForRecord:v4 isNewBookmark:&v15];
  if (v5)
  {
    v6 = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
    v7 = [v6 bookmarkHashGenerator];
    v8 = [v5 configuration];
    [v7 verifyIdentityHashInBookmarkRecord:v4 configuration:v8];

    if (v15 == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained cloudBookmarkSyncMigrationSyncDownHandler:self didMoveBookmark:v5];

      [v5 saveAssetsIfNeededWithUpdater:self];
      goto LABEL_13;
    }

    v10 = [v5 resultFromMergingRecord:v4 usingUpdater:self];
    if ((v10 & 1) != 0 && (v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
    {
      sub_100087B14(v11, v5);
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v10 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100087BC4(v12, v5);
    }

LABEL_9:
    if ((v10 & 2) != 0)
    {
      [v5 updateLocalItemWithUpdater:self];
      [v5 saveAssetsIfNeededWithUpdater:self];
      if ((v10 & 4) == 0)
      {
LABEL_11:
        if ((v10 & 8) == 0)
        {
          goto LABEL_13;
        }

LABEL_12:
        v13 = [v5 recordName];
        [(CloudBookmarkSyncMigrationSyncDownHandler *)self _didDeleteRecordWithName:v13];

        goto LABEL_13;
      }
    }

    else if ((v10 & 4) == 0)
    {
      goto LABEL_11;
    }

    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 cloudBookmarkSyncMigrationSyncDownHandler:self didMoveBookmark:v5];

    if ((v10 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (id)_cloudBookmarkForRecord:(id)a3 isNewBookmark:(BOOL *)a4
{
  v6 = a3;
  *a4 = 0;
  v7 = [v6 safari_recordName];
  if ([v7 isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark])
  {
    v8 = 0;
    goto LABEL_11;
  }

  v9 = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  v10 = [v9 cloudBookmarkItemConfigurationForRecord:v6];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [(CloudBookmarkDatabaseHandler *)self databaseRef];
  v12 = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
  v8 = [CloudBookmark cloudBookmarkWithRecordName:v7 inDatabase:v11 databaseAccessor:v12 updater:self];

  if (!v8)
  {
    if ([v6 safari_minimumAPIVersion] > 4)
    {
      v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
LABEL_9:
        v8 = 0;
        goto LABEL_10;
      }

      v21 = 138543362;
      v22 = v7;
      v14 = "Record %{public}@ does not locally exist and cannot be saved locally because of its minimum API version";
      v15 = v13;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, v14, &v21, 0xCu);
      goto LABEL_9;
    }

    if ([v6 safari_state] == 1)
    {
      recordNamesToDelete = self->_recordNamesToDelete;
      v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (!recordNamesToDelete)
      {
        if (!v19)
        {
          goto LABEL_9;
        }

        v21 = 138543362;
        v22 = v7;
        v14 = "Record %{public}@ does not exist locally and is deleted remotely";
        v15 = v18;
        goto LABEL_8;
      }

      if (v19)
      {
        v21 = 138543362;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Writing locally record %{public}@ despite the record not existing locally and being deleted remotely for merging", &v21, 0xCu);
      }

      [(NSMutableSet *)self->_recordNamesToDelete addObject:v7];
    }

    *a4 = 1;
    v20 = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
    v8 = [CloudBookmark cloudBookmarkWithAddedRecord:v6 configuration:v10 inDatabase:v11 databaseAccessor:v20 updater:self];
  }

LABEL_10:

LABEL_11:

  return v8;
}

- (BOOL)shouldApplyReference:(id)a3 withGeneration:(id)a4 toAttribute:(id)a5 inRecordWithName:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained cloudBookmarkSyncMigrationSyncDownHandler:self shouldApplyReference:v13 withGeneration:v12 toAttribute:v11 inRecordWithName:v10];

  return self;
}

- (CloudBookmarkSyncMigrationSyncDownHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end