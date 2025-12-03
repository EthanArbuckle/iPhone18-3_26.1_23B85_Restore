@interface CloudBookmarkSyncMigrationSaveReparentedBookmarksHandler
- (id)_nextCloudBookmarkToSave;
- (id)positionForCloudBookmarkWithRecordName:(id)name;
- (id)recordIDForParentSyncServerID:(id)d;
- (void)_didFailSavingWithError:(id)error;
- (void)_didFinishSavingRecordsWithNames:(id)names;
- (void)beginSavingReparentedBookmarksInOperationGroup:(id)group withRecordNames:(id)names lastKnownPositionInRoot:(id)root completionHandler:(id)handler;
@end

@implementation CloudBookmarkSyncMigrationSaveReparentedBookmarksHandler

- (void)beginSavingReparentedBookmarksInOperationGroup:(id)group withRecordNames:(id)names lastKnownPositionInRoot:(id)root completionHandler:(id)handler
{
  groupCopy = group;
  namesCopy = names;
  rootCopy = root;
  v16 = namesCopy;
  handlerCopy = handler;
  v17 = rootCopy;
  v12 = groupCopy;
  v13 = rootCopy;
  v14 = handlerCopy;
  v15 = namesCopy;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)_didFailSavingWithError:(id)error
{
  errorCopy = error;
  v5 = objc_retainBlock(self->_completionHandler);
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10008627C(v6, errorCopy);
  }

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  self->_isSavingReparentedRecords = 0;
  namesOfRemainingRecordsToSave = self->_namesOfRemainingRecordsToSave;
  self->_namesOfRemainingRecordsToSave = 0;

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
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Did finish saving reparented records", v10, 2u);
  }

  v8 = self->_completionHandler;
  self->_completionHandler = 0;

  self->_isSavingReparentedRecords = 0;
  namesOfRemainingRecordsToSave = self->_namesOfRemainingRecordsToSave;
  self->_namesOfRemainingRecordsToSave = 0;

  v6[2](v6, namesCopy, 0);
}

- (id)_nextCloudBookmarkToSave
{
  firstObject = [(NSMutableArray *)self->_namesOfRemainingRecordsToSave firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_namesOfRemainingRecordsToSave removeObjectAtIndex:0];
    databaseRef = [(CloudBookmarkDatabaseHandler *)self databaseRef];
    databaseAccessor = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
    v6 = [CloudBookmark cloudBookmarkForReparentedItemWithRecordName:firstObject inDatabase:databaseRef databaseAccessor:databaseAccessor updater:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)recordIDForParentSyncServerID:(id)d
{
  dCopy = d;
  v5 = [CKRecordID alloc];
  bookmarkStore = [(CloudBookmarkDatabaseHandler *)self bookmarkStore];
  bookmarksRecordZoneID = [bookmarkStore bookmarksRecordZoneID];
  v8 = [v5 initWithRecordName:dCopy zoneID:bookmarksRecordZoneID];

  return v8;
}

- (id)positionForCloudBookmarkWithRecordName:(id)name
{
  databaseRef = [(CloudBookmarkDatabaseHandler *)self databaseRef];
  databaseAccessor = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
  v6 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:databaseRef databaseAccessor:databaseAccessor];

  nextChangeID = [v6 nextChangeID];
  databaseRef2 = [(CloudBookmarkDatabaseHandler *)self databaseRef];
  databaseAccessor2 = [(CloudBookmarkDatabaseHandler *)self databaseAccessor];
  [v6 writeToDatabase:databaseRef2 databaseAccessor:databaseAccessor2];

  lastKnownPositionInRoot = self->_lastKnownPositionInRoot;
  deviceIdentifier = [(CloudBookmarkDatabaseHandler *)self deviceIdentifier];
  v12 = [WBSCRDTPosition positionBetweenPosition:lastKnownPositionInRoot andPosition:0 withDeviceIdentifier:deviceIdentifier changeID:nextChangeID];

  objc_storeStrong(&self->_lastKnownPositionInRoot, v12);

  return v12;
}

@end