@interface CloudBookmarkSyncMigrationCoordinator
- (CloudBookmarkSyncMigrationCoordinator)initWithBookmarkStore:(id)store databaseCoordinator:(id)coordinator accountStore:(id)accountStore;
- (int64_t)localMigrationState;
- (void)_beginMigrationAsPrimaryMigrator:(BOOL)migrator inOperationGroup:(id)group;
- (void)_didFinishMigrationWithError:(id)error;
- (void)beginMigratingAsPrimaryMigrator:(BOOL)migrator inOperationGroup:(id)group willBeginMigrationHandler:(id)handler withCompletionHandler:(id)completionHandler;
- (void)resetToNonMigratedStateInOperationGroup:(id)group completionHandler:(id)handler;
- (void)setLocalMigrationState:(int64_t)state;
@end

@implementation CloudBookmarkSyncMigrationCoordinator

- (CloudBookmarkSyncMigrationCoordinator)initWithBookmarkStore:(id)store databaseCoordinator:(id)coordinator accountStore:(id)accountStore
{
  storeCopy = store;
  coordinatorCopy = coordinator;
  accountStoreCopy = accountStore;
  v18.receiver = self;
  v18.super_class = CloudBookmarkSyncMigrationCoordinator;
  v12 = [(CloudBookmarkSyncMigrationCoordinator *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountStore, accountStore);
    objc_storeStrong(&v13->_bookmarkStore, store);
    objc_storeStrong(&v13->_databaseCoordinator, coordinator);
    v14 = [[CloudBookmarkAccountPropertiesStore alloc] initWithAccountStore:v13->_accountStore databaseCoordinator:v13->_databaseCoordinator];
    accountPropertiesStore = v13->_accountPropertiesStore;
    v13->_accountPropertiesStore = v14;

    v16 = v13;
  }

  return v13;
}

- (int64_t)localMigrationState
{
  v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100077764(self, v3);
  }

  return [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator localMigrationState];
}

- (void)setLocalMigrationState:(int64_t)state
{
  v5 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    isMigrating = self->_isMigrating;
    v7 = 134218240;
    stateCopy = state;
    v9 = 1024;
    v10 = isMigrating;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting local migration state in database to %ld (isMigrating: %d)", &v7, 0x12u);
  }

  [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator setLocalMigrationState:state];
}

- (void)beginMigratingAsPrimaryMigrator:(BOOL)migrator inOperationGroup:(id)group willBeginMigrationHandler:(id)handler withCompletionHandler:(id)completionHandler
{
  migratorCopy = migrator;
  groupCopy = group;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (migratorCopy)
  {
    if (v13)
    {
      *buf = 0;
      v14 = "Sync migration coordinator starting PRIMARY migration";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }
  }

  else if (v13)
  {
    *buf = 0;
    v14 = "Sync migration coordinator starting SECONDARY migration";
    goto LABEL_6;
  }

  v18 = groupCopy;
  v15 = groupCopy;
  v16 = handlerCopy;
  v17 = completionHandlerCopy;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)_beginMigrationAsPrimaryMigrator:(BOOL)migrator inOperationGroup:(id)group
{
  migratorCopy = migrator;
  groupCopy = group;
  v7 = [CloudBookmarkSyncMigrationConverter alloc];
  bookmarkStore = [(CloudBookmarkSyncMigrationCoordinator *)self bookmarkStore];
  databaseRef = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseRef];
  databaseAccessor = [(CloudBookmarkDatabaseCoordinating *)self->_databaseCoordinator databaseAccessor];
  v11 = [(CloudBookmarkDatabaseHandler *)v7 initWithBookmarkStore:bookmarkStore database:databaseRef databaseAccessor:databaseAccessor accountPropertiesStore:self->_accountPropertiesStore];
  migrationConverter = self->_migrationConverter;
  self->_migrationConverter = v11;

  v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = migratorCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting migration conversion as primaryMigrator = %d", buf, 8u);
  }

  v14 = self->_migrationConverter;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000770A0;
  v15[3] = &unk_1001344B0;
  v15[4] = self;
  [(CloudBookmarkSyncMigrationConverter *)v14 beginMigrationInOperationGroup:groupCopy completionHandler:v15];
}

- (void)_didFinishMigrationWithError:(id)error
{
  errorCopy = error;
  v5 = objc_retainBlock(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v8 = v7;
  if (errorCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100077900(v8, errorCopy);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sync migration coordinator did finish migrating.", buf, 2u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100077318;
  v11[3] = &unk_1001314F8;
  v11[4] = self;
  v12 = errorCopy;
  v9 = errorCopy;
  v10 = objc_retainBlock(v11);
  v5[2](v5, v9, v10);
}

- (void)resetToNonMigratedStateInOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  bookmarkStore = self->_bookmarkStore;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100077524;
  v9[3] = &unk_100131678;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(CloudBookmarkStore *)bookmarkStore deleteBookmarksZoneInOperationGroup:group completionHandler:v9];
}

@end