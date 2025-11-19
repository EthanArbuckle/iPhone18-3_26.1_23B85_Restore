@interface CloudBookmarkSyncMigrationFolderContentConverter
- (id)_nextCloudBookmarkToSave;
- (id)generateIdentityHashWithComponents:(id)a3;
- (void)_didFailSavingWithError:(id)a3;
- (void)_didFinishSavingRecordsWithNames:(id)a3;
- (void)beginFolderMigrationInOperationGroup:(id)a3 completionHandler:(id)a4;
@end

@implementation CloudBookmarkSyncMigrationFolderContentConverter

- (void)beginFolderMigrationInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v5;
  v7 = v8;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)_didFailSavingWithError:(id)a3
{
  v4 = a3;
  v5 = objc_retainBlock(self->_completionHandler);
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10007EFD8(v6, v4);
  }

  positionGenerator = self->_positionGenerator;
  self->_positionGenerator = 0;

  recordNameEnumerator = self->_recordNameEnumerator;
  self->_recordNameEnumerator = 0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  self->_isMigrating = 0;
  v5[2](v5, 0, v4);
}

- (void)_didFinishSavingRecordsWithNames:(id)a3
{
  completionHandler = self->_completionHandler;
  v5 = a3;
  v6 = objc_retainBlock(completionHandler);
  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Did finish migrating folder contents", v11, 2u);
  }

  positionGenerator = self->_positionGenerator;
  self->_positionGenerator = 0;

  recordNameEnumerator = self->_recordNameEnumerator;
  self->_recordNameEnumerator = 0;

  v10 = self->_completionHandler;
  self->_completionHandler = 0;

  self->_isMigrating = 0;
  v6[2](v6, v5, 0);
}

- (id)_nextCloudBookmarkToSave
{
  v3 = [(CloudBookmarkDatabaseHandler *)self databaseRef];
  v4 = [(NSEnumerator *)self->_recordNameEnumerator nextObject];
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
      v8 = [CloudBookmark cloudBookmarkToMigrateItemWithRecordName:v5 inDatabase:v3 databaseAccessor:v7 updater:self];

      if (v8)
      {
        break;
      }

      objc_autoreleasePoolPop(v6);
      v9 = [(NSEnumerator *)self->_recordNameEnumerator nextObject];

      v5 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    [v8 updateLocalItemWithUpdater:self];
    objc_autoreleasePoolPop(v6);
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

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

@end