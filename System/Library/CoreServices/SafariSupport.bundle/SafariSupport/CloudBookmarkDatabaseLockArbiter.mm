@interface CloudBookmarkDatabaseLockArbiter
- (BOOL)isDatabaseOpen;
- (BOOL)lockForClient:(id)client;
- (BOOL)openDatabase;
- (CloudBookmarkDatabaseLockArbiter)initWithDatabaseAccessor:(id)accessor;
- (CloudBookmarkDatabaseLockArbiterDelegate)delegate;
- (int64_t)localMigrationState;
- (void)databaseRef;
- (void)dealloc;
- (void)setLocalMigrationState:(int64_t)state;
- (void)unlockForClient:(id)client;
@end

@implementation CloudBookmarkDatabaseLockArbiter

- (CloudBookmarkDatabaseLockArbiter)initWithDatabaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  v10.receiver = self;
  v10.super_class = CloudBookmarkDatabaseLockArbiter;
  v6 = [(CloudBookmarkDatabaseLockArbiter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseAccessor, accessor);
    v8 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CloudBookmarkDatabaseLockArbiter;
  [(CloudBookmarkDatabaseLockArbiter *)&v2 dealloc];
}

- (BOOL)isDatabaseOpen
{
  if (+[NSThread isMainThread])
  {
    return self->_databaseOpen;
  }

  else
  {
    v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008D90C();
    }

    return 0;
  }
}

- (void)databaseRef
{
  if (+[NSThread isMainThread])
  {
    return self->_databaseRef;
  }

  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10008D940();
  }

  return 0;
}

- (BOOL)lockForClient:(id)client
{
  clientCopy = client;
  v5 = +[NSThread isMainThread];
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10008D974();
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10008D9A8(clientCopy, v7);
  }

  databaseLockCount = self->_databaseLockCount;
  self->_databaseLockCount = databaseLockCount + 1;
  if (databaseLockCount)
  {
    v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18 = 138543362;
      v19 = clientCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@ backing store was already locked", &v18, 0xCu);
    }

    goto LABEL_10;
  }

  createDatabase = [(WBSBookmarkDBAccess *)self->_databaseAccessor createDatabase];
  self->_databaseRef = createDatabase;
  if (!createDatabase)
  {
    self->_databaseLockCount = 0;
    v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10008DA20();
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v18 = 138543362;
    v19 = clientCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@ successfully locked backing store", &v18, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 databaseLockArbiterDidAcquireDatabaseLock:self];
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (void)unlockForClient:(id)client
{
  clientCopy = client;
  if (+[NSThread isMainThread])
  {
    databaseLockCount = self->_databaseLockCount;
    if (databaseLockCount)
    {
      v6 = databaseLockCount - 1;
      self->_databaseLockCount = v6;
      if (v6)
      {
        v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v12 = 138543362;
          v13 = clientCopy;
          v8 = "%{public}@ did not unlock backing store due to outstanding lock requests";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v8, &v12, 0xCu);
        }
      }

      else
      {
        if (self->_databaseOpen)
        {
          v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10008DAC8();
          }
        }

        CFRelease(self->_databaseRef);
        self->_databaseRef = 0;
        v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v12 = 138543362;
          v13 = clientCopy;
          v8 = "%{public}@ unlocked backing store";
          goto LABEL_15;
        }
      }
    }

    else
    {
      v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10008DB3C();
      }
    }
  }

  else
  {
    v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10008DA94();
    }
  }
}

- (int64_t)localMigrationState
{
  v3 = +[NSThread isMainThread];
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008DB70();
    }

    return -1;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = self->_databaseLockCount != 0;
    databaseOpen = self->_databaseOpen;
    v11 = 67109376;
    LODWORD(v12[0]) = v6;
    WORD2(v12[0]) = 1024;
    *(v12 + 6) = databaseOpen;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetching local migration state from database (isDatabaseLocked: %d, isDatabaseOpen: %d)", &v11, 0xEu);
  }

  if (![(CloudBookmarkDatabaseLockArbiter *)self lockForClient:@"Migration state lock arbiter property"])
  {
    return -1;
  }

  if (!self->_databaseOpen)
  {
    [(WBSBookmarkDBAccess *)self->_databaseAccessor openDatabase:self->_databaseRef];
  }

  v8 = [(WBSBookmarkDBAccess *)self->_databaseAccessor localCloudKitMigrationState:self->_databaseRef];
  if (!self->_databaseOpen)
  {
    [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:self->_databaseRef shouldSave:0];
  }

  [(CloudBookmarkDatabaseLockArbiter *)self unlockForClient:@"Migration state lock arbiter property"];
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12[0] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Fetched local migration state %ld from database", &v11, 0xCu);
  }

  return v8;
}

- (void)setLocalMigrationState:(int64_t)state
{
  v5 = +[NSThread isMainThread];
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = self->_databaseLockCount != 0;
      databaseOpen = self->_databaseOpen;
      v10 = 134218496;
      stateCopy = state;
      v12 = 1024;
      v13 = v8;
      v14 = 1024;
      v15 = databaseOpen;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting local migration state in database to %ld (isDatabaseLocked: %d, isDatabaseOpen: %d)", &v10, 0x18u);
    }

    if (self->_databaseOpen)
    {
      sub_100032958(self->_databaseRef, state, self->_databaseAccessor);
    }

    else if ([(CloudBookmarkDatabaseLockArbiter *)self lockForClient:@"Migration state lock arbiter property"])
    {
      [(WBSBookmarkDBAccess *)self->_databaseAccessor openDatabase:self->_databaseRef];
      sub_100032958(self->_databaseRef, state, self->_databaseAccessor);
      [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:self->_databaseRef shouldSave:1];
      [(CloudBookmarkDatabaseLockArbiter *)self unlockForClient:@"Migration state lock arbiter property"];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10008DBA4();
  }
}

- (BOOL)openDatabase
{
  if (!+[NSThread isMainThread])
  {
    v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10008DBD8();
    }

    return 0;
  }

  if (!self->_databaseLockCount)
  {
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008DC40();
    }

    return 0;
  }

  databaseOpen = self->_databaseOpen;
  v4 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v5 = v4;
  if (databaseOpen)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008DC0C();
    }

    return 0;
  }

  v8 = 1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will open the database", v10, 2u);
  }

  self->_databaseOpen = 1;
  [(WBSBookmarkDBAccess *)self->_databaseAccessor openDatabase:self->_databaseRef];
  return v8;
}

- (CloudBookmarkDatabaseLockArbiterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end