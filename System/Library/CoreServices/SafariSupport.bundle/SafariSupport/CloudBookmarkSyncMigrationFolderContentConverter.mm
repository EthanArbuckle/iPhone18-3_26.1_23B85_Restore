@interface CloudBookmarkSyncMigrationFolderContentConverter
- (id)_nextCloudBookmarkToSave;
- (id)generateIdentityHashWithComponents:(id)components;
- (void)_didFailSavingWithError:(id)error;
- (void)_didFinishSavingRecordsWithNames:(id)names;
- (void)beginFolderMigrationInOperationGroup:(id)group completionHandler:(id)handler;
@end

@implementation CloudBookmarkSyncMigrationFolderContentConverter

- (void)beginFolderMigrationInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v6 = groupCopy;
  v7 = handlerCopy;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)_didFailSavingWithError:(id)error
{
  errorCopy = error;
  v5 = objc_retainBlock(self->_completionHandler);
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10007EFD8(v6, errorCopy);
  }

  positionGenerator = self->_positionGenerator;
  self->_positionGenerator = 0;

  recordNameEnumerator = self->_recordNameEnumerator;
  self->_recordNameEnumerator = 0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  self->_isMigrating = 0;
  v5[2](v5, 0, errorCopy);
}

- (void)_didFinishSavingRecordsWithNames:(id)names
{
  completionHandler = self->_completionHandler;
  namesCopy = names;
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
  v6[2](v6, namesCopy, 0);
}

- (id)_nextCloudBookmarkToSave
{
  databaseRef = [(CloudBookmarkDatabaseHandler *)self databaseRef];
  nextObject = [(NSEnumerator *)self->_recordNameEnumerator nextObject];
  if (nextObject)
  {
    v5 = nextObject;
    while (1)
    {
      v6 = objc_autoreleasePoolPush();
      databaseAccessor = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
      v8 = [CloudBookmark cloudBookmarkToMigrateItemWithRecordName:v5 inDatabase:databaseRef databaseAccessor:databaseAccessor updater:self];

      if (v8)
      {
        break;
      }

      objc_autoreleasePoolPop(v6);
      nextObject2 = [(NSEnumerator *)self->_recordNameEnumerator nextObject];

      v5 = nextObject2;
      if (!nextObject2)
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

- (id)generateIdentityHashWithComponents:(id)components
{
  componentsCopy = components;
  bookmarkStore = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  bookmarkHashGenerator = [bookmarkStore bookmarkHashGenerator];
  v7 = [bookmarkHashGenerator generateHashWithComponents:componentsCopy];

  return v7;
}

@end