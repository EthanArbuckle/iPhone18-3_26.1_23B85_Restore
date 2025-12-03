@interface CyclerCloudBookmarksAssistant
- (CyclerCloudBookmarksAssistant)initWithBookmarkStore:(id)store databaseAccessor:(id)accessor migrationCoordinator:(id)coordinator;
- (id)_descriptionForErrorCode:(int64_t)code;
- (id)_errorWithCode:(int64_t)code;
- (void)clearLocalDataIncludingMigrationState:(BOOL)state completionHandler:(id)handler;
- (void)generateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)handler;
- (void)migrateToCloudKitWithCompletionHandler:(id)handler;
@end

@implementation CyclerCloudBookmarksAssistant

- (CyclerCloudBookmarksAssistant)initWithBookmarkStore:(id)store databaseAccessor:(id)accessor migrationCoordinator:(id)coordinator
{
  storeCopy = store;
  accessorCopy = accessor;
  coordinatorCopy = coordinator;
  v16.receiver = self;
  v16.super_class = CyclerCloudBookmarksAssistant;
  v12 = [(CyclerCloudBookmarksAssistant *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmarkStore, store);
    objc_storeStrong(&v13->_databaseAccessor, accessor);
    objc_storeStrong(&v13->_migrationCoordinator, coordinator);
    v14 = v13;
  }

  return v13;
}

- (void)clearLocalDataIncludingMigrationState:(BOOL)state completionHandler:(id)handler
{
  stateCopy = state;
  databaseAccessor = self->_databaseAccessor;
  handlerCopy = handler;
  createDatabase = [(WBSBookmarkDBAccess *)databaseAccessor createDatabase];
  if (createDatabase)
  {
    v9 = createDatabase;
    [(WBSBookmarkDBAccess *)self->_databaseAccessor clearlAllLocalBookmarksForAutomatedTestingWithDatabase:createDatabase];
    v12 = [WBBookmarkDatabaseSyncData databaseSyncDataInDatabase:v9 databaseAccessor:self->_databaseAccessor];
    bookmarksRecordZoneID = [(CloudBookmarkStore *)self->_bookmarkStore bookmarksRecordZoneID];
    [v12 setLastServerChangeToken:0 forRecordZoneID:bookmarksRecordZoneID];

    [v12 writeToDatabase:v9 databaseAccessor:self->_databaseAccessor];
    if (stateCopy)
    {
      [(WBSBookmarkDBAccess *)self->_databaseAccessor setLocalCloudKitMigrationState:0 database:v9];
      [(WBSBookmarkDBAccess *)self->_databaseAccessor resetDeviceIdentifier];
    }

    [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:v9 shouldSave:1];
    CFRelease(v9);
    v11 = 0;
  }

  else
  {
    v11 = [(CyclerCloudBookmarksAssistant *)self _errorWithCode:1];
    v12 = v11;
  }

  handlerCopy[2](handlerCopy, v11);
}

- (void)generateDAVServerIDsForExistingBookmarksWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  createDatabase = [(WBSBookmarkDBAccess *)self->_databaseAccessor createDatabase];
  if (createDatabase)
  {
    v6 = createDatabase;
    v7 = +[NSMutableOrderedSet orderedSet];
    v8 = 0;
    *&v9 = 138543362;
    v21 = v9;
    do
    {
      firstObject = [v7 firstObject];
      if ([v7 count])
      {
        [v7 removeObjectAtIndex:0];
      }

      v11 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithLocalID:firstObject database:v6];
      if (v11)
      {
        v12 = v11;
        v13 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyServerIdWithItem:v11];

        if (!v13)
        {
          v14 = +[NSUUID UUID];
          uUIDString = [v14 UUIDString];
          v16 = [@"https://fake-dav-id-for-testing/" stringByAppendingString:uUIDString];

          [(WBSBookmarkDBAccess *)self->_databaseAccessor setServerId:v16 item:v12];
          v8 = 1;
        }

        if ([(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:v12]== 1)
        {
          v17 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyLocalIDsInFolderWithLocalID:firstObject database:v6];
          if (v17)
          {
            [v7 unionSet:v17];
          }

          else
          {
            v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v23 = firstObject;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Received nil set of child local IDs for folder with local ID %{public}@ while generating DAV server IDs", buf, 0xCu);
            }
          }
        }

        CFRelease(v12);
      }

      else
      {
        v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v21;
          v23 = firstObject;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Trying to generate DAV server ID for bookmark with local ID %{public}@, but that bookmark doesn't exist", buf, 0xCu);
        }
      }
    }

    while ([v7 count]);
    [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:v6 shouldSave:v8 & 1];
    CFRelease(v6);
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v20 = [(CyclerCloudBookmarksAssistant *)self _errorWithCode:1];
    (handlerCopy)[2](handlerCopy, v20);
  }
}

- (void)migrateToCloudKitWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(CloudBookmarksMigrationCoordinator *)self->_migrationCoordinator invalidateCachedDataclassEnabledness];
  objc_initWeak(&location, self);
  bookmarkStore = self->_bookmarkStore;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A50B4;
  v7[3] = &unk_100135A18;
  objc_copyWeak(&v9, &location);
  v6 = handlerCopy;
  v8 = v6;
  [(CloudBookmarkStore *)bookmarkStore setUpBookmarksRecordZoneInOperationGroup:0 withCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_errorWithCode:(int64_t)code
{
  v8 = NSLocalizedDescriptionKey;
  v4 = [(CyclerCloudBookmarksAssistant *)self _descriptionForErrorCode:?];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [NSError errorWithDomain:@"com.apple.CloudKitBookmarks.CyclerCloudBookmarksAssistant" code:code userInfo:v5];

  return v6;
}

- (id)_descriptionForErrorCode:(int64_t)code
{
  if (code)
  {
    return @"Unable to acquire database lock";
  }

  else
  {
    return @"Migration failed";
  }
}

@end