@interface CloudBookmarkSyncMigrationSaveReparentedBookmarksHandler
- (id)_nextCloudBookmarkToSave;
- (id)positionForCloudBookmarkWithRecordName:(id)a3;
- (id)recordIDForParentSyncServerID:(id)a3;
- (void)_didFailSavingWithError:(id)a3;
- (void)_didFinishSavingRecordsWithNames:(id)a3;
- (void)beginSavingReparentedBookmarksInOperationGroup:(id)a3 withRecordNames:(id)a4 lastKnownPositionInRoot:(id)a5 completionHandler:(id)a6;
@end

@implementation CloudBookmarkSyncMigrationSaveReparentedBookmarksHandler

- (void)beginSavingReparentedBookmarksInOperationGroup:(id)a3 withRecordNames:(id)a4 lastKnownPositionInRoot:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16 = v10;
  v18 = a6;
  v17 = v11;
  v12 = v9;
  v13 = v11;
  v14 = v18;
  v15 = v10;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)_didFailSavingWithError:(id)a3
{
  v4 = a3;
  v5 = objc_retainBlock(self->_completionHandler);
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10008627C(v6, v4);
  }

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  self->_isSavingReparentedRecords = 0;
  namesOfRemainingRecordsToSave = self->_namesOfRemainingRecordsToSave;
  self->_namesOfRemainingRecordsToSave = 0;

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
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Did finish saving reparented records", v10, 2u);
  }

  v8 = self->_completionHandler;
  self->_completionHandler = 0;

  self->_isSavingReparentedRecords = 0;
  namesOfRemainingRecordsToSave = self->_namesOfRemainingRecordsToSave;
  self->_namesOfRemainingRecordsToSave = 0;

  v6[2](v6, v5, 0);
}

- (id)_nextCloudBookmarkToSave
{
  v3 = [(NSMutableArray *)self->_namesOfRemainingRecordsToSave firstObject];
  if (v3)
  {
    [(NSMutableArray *)self->_namesOfRemainingRecordsToSave removeObjectAtIndex:0];
    v4 = [(CloudBookmarkDatabaseHandler *)self databaseRef];
    v5 = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
    v6 = [CloudBookmark cloudBookmarkForReparentedItemWithRecordName:v3 inDatabase:v4 databaseAccessor:v5 updater:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

- (id)positionForCloudBookmarkWithRecordName:(id)a3
{
  v4 = [(CloudBookmarkDatabaseHandler *)self databaseRef];
  v5 = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
  v6 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:v4 databaseAccessor:v5];

  v7 = [v6 nextChangeID];
  v8 = [(CloudBookmarkDatabaseHandler *)self databaseRef];
  v9 = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
  [v6 writeToDatabase:v8 databaseAccessor:v9];

  lastKnownPositionInRoot = self->_lastKnownPositionInRoot;
  v11 = [(CloudBookmarkDatabaseHandler *)self deviceIdentifier];
  v12 = [WBSCRDTPosition positionBetweenPosition:lastKnownPositionInRoot andPosition:0 withDeviceIdentifier:v11 changeID:v7];

  objc_storeStrong(&self->_lastKnownPositionInRoot, v12);

  return v12;
}

@end