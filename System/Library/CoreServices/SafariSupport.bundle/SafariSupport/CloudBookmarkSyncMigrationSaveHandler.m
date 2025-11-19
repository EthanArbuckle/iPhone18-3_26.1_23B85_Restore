@interface CloudBookmarkSyncMigrationSaveHandler
- (BOOL)shouldApplyReference:(id)a3 withGeneration:(id)a4 toAttribute:(id)a5 inRecordWithName:(id)a6;
- (CloudBookmarkSyncMigrationSaveHandlerDelegate)delegate;
- (id)_dequeueNextCloudBookmarkToSave;
- (id)_recordByMergingRemoteRecord:(id)a3 intoCloudBookmark:(id)a4;
- (id)_recordByMergingRemoteRecord:(id)a3 withLocalRecord:(id)a4 recordNamesToCloudBookmarks:(id)a5 saveError:(int64_t)a6;
- (id)generateIdentityHashWithComponents:(id)a3;
- (id)recordIDForParentSyncServerID:(id)a3;
- (void)_generateAndSaveRemainingRecordsInOperationGroup:(id)a3;
- (void)_saveRecordBatch:(id)a3 inOperationGroup:(id)a4 recordNamesToCloudBookmarks:(id)a5;
@end

@implementation CloudBookmarkSyncMigrationSaveHandler

- (id)_dequeueNextCloudBookmarkToSave
{
  unsavedProcessedBookmark = self->_unsavedProcessedBookmark;
  if (unsavedProcessedBookmark)
  {
    v4 = unsavedProcessedBookmark;
    v5 = self->_unsavedProcessedBookmark;
    self->_unsavedProcessedBookmark = 0;
  }

  else
  {
    v4 = [(CloudBookmarkSyncMigrationSaveHandler *)self _nextCloudBookmarkToSave];
  }

  return v4;
}

- (void)_generateAndSaveRemainingRecordsInOperationGroup:(id)a3
{
  v26 = a3;
  v4 = +[NSMutableArray array];
  v27 = +[NSMutableDictionary dictionary];
  if (!self->_namesOfRecordsSavedToTheServer)
  {
    v5 = +[NSMutableSet set];
    namesOfRecordsSavedToTheServer = self->_namesOfRecordsSavedToTheServer;
    self->_namesOfRecordsSavedToTheServer = v5;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = 0;
  v9 = 0;
  v10 = &selRef__shouldResetLastKnownMinimumVersionsCacheInCollection_operationGroup_;
  while (2)
  {
    v11 = v10;
    v12 = v10[234];
    do
    {
      v13 = v8;
      v8 = [(CloudBookmarkSyncMigrationSaveHandler *)self _dequeueNextCloudBookmarkToSave];

      if (!v8)
      {
        goto LABEL_16;
      }
    }

    while ((objc_opt_respondsToSelector() & 1) != 0 && ![WeakRetained cloudBookmarkSyncMigrationSaveHandler:self shouldSaveBookmark:v8]);
    v14 = [v8 record];
    v15 = [v14 size];

    v16 = [v4 count];
    v17 = v16;
    v18 = v15 + v9;
    if (v18 < 0x200000)
    {
      if (v16 >= 0x64)
      {
        goto LABEL_13;
      }

LABEL_12:
      [v4 addObject:v8];
      v19 = [v8 recordName];
      [v27 setObject:v8 forKeyedSubscript:v19];
      [(NSMutableSet *)self->_namesOfRecordsSavedToTheServer addObject:v19];

      v9 = v18;
      v10 = v11;
      continue;
    }

    break;
  }

  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_13:
  v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v29 = v9;
    v30 = 2048;
    v31 = v17;
    v32 = 2112;
    v33 = self;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Batch of size %lu with %lu records is full for %@", buf, 0x20u);
  }

  objc_storeStrong(&self->_unsavedProcessedBookmark, v8);
LABEL_16:
  if ([v4 count])
  {
    v21 = v26;
    v22 = v27;
    [(CloudBookmarkSyncMigrationSaveHandler *)self _saveRecordBatch:v4 inOperationGroup:v26 recordNamesToCloudBookmarks:v27];
  }

  else
  {
    v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v21 = v26;
    v22 = v27;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100080CB8(v23);
    }

    v24 = [(NSMutableSet *)self->_namesOfRecordsSavedToTheServer copy];
    v25 = self->_namesOfRecordsSavedToTheServer;
    self->_namesOfRecordsSavedToTheServer = 0;

    [(CloudBookmarkSyncMigrationSaveHandler *)self _didFinishSavingRecordsWithNames:v24];
  }
}

- (void)_saveRecordBatch:(id)a3 inOperationGroup:(id)a4 recordNamesToCloudBookmarks:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  v12 = [v10 valueForKey:@"record"];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100080410;
  v17[3] = &unk_100134AA0;
  v17[4] = self;
  v18 = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008063C;
  v15[3] = &unk_1001351C0;
  v15[4] = self;
  v16 = v8;
  v13 = v8;
  v14 = v9;
  [v11 saveBookmarksRecordBatch:v12 inOperationGroup:v13 clientChangeTokenData:0 mergeHandler:v17 completionHandler:v15];
}

- (id)_recordByMergingRemoteRecord:(id)a3 withLocalRecord:(id)a4 recordNamesToCloudBookmarks:(id)a5 saveError:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [a4 safari_recordName];
  v13 = [v11 objectForKeyedSubscript:v12];
  if (a6 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      v18 = [v13 recordName];
      [v17 cloudBookmarkSyncMigrationSaveHandler:self didDeleteBookmarkWithRecordName:v18];
    }

    [v11 removeObjectForKey:v12];
  }

  else if (!a6)
  {
    v14 = [(CloudBookmarkSyncMigrationSaveHandler *)self _recordByMergingRemoteRecord:v10 intoCloudBookmark:v13];
    goto LABEL_8;
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (id)_recordByMergingRemoteRecord:(id)a3 intoCloudBookmark:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  v9 = [v8 bookmarkHashGenerator];
  v10 = [v7 configuration];
  [v9 verifyIdentityHashInBookmarkRecord:v6 configuration:v10];

  v11 = [v7 resultFromMergingRecord:v6 usingUpdater:self];
  if ((v11 & 0x10) != 0)
  {
    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100080CFC(v12, v7, v11);
      if ((v11 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if ((v11 & 2) != 0)
  {
LABEL_4:
    [v7 updateLocalItemWithUpdater:self];
  }

LABEL_5:
  if ((v11 & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 cloudBookmarkSyncMigrationSaveHandler:self didMoveBookmark:v7];
    }
  }

  if ((v11 & 8) != 0)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_delegate);
      v19 = [v7 recordName];
      [v18 cloudBookmarkSyncMigrationSaveHandler:self didDeleteBookmarkWithRecordName:v19];
    }
  }

  v20 = v11 << 63 >> 63;
  v21 = (v20 & v6);

  return (v20 & v6);
}

- (id)recordIDForParentSyncServerID:(id)a3
{
  v4 = a3;
  v5 = [CKRecordID alloc];
  v6 = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  v7 = [v6 bookmarksRecordZoneID];
  v8 = [v5 initWithRecordName:v4 zoneID:v7];

  return v8;
}

- (id)generateIdentityHashWithComponents:(id)a3
{
  v4 = a3;
  v5 = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  v6 = [v5 bookmarkHashGenerator];
  v7 = [v6 generateHashWithComponents:v4];

  return v7;
}

- (BOOL)shouldApplyReference:(id)a3 withGeneration:(id)a4 toAttribute:(id)a5 inRecordWithName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v15 = [WeakRetained cloudBookmarkSyncMigrationSaveHandler:self shouldApplyReference:v10 withGeneration:v11 toAttribute:v12 inRecordWithName:v13];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (CloudBookmarkSyncMigrationSaveHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end