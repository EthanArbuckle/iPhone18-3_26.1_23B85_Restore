@interface _WKWebExtensionSQLiteStore
- (BOOL)_openDatabaseIfNecessaryReturningErrorMessage:(id *)message createIfNecessary:(BOOL)necessary;
- (_WKWebExtensionSQLiteStore)initWithUniqueIdentifier:(id)identifier directory:(id)directory usesInMemoryDatabase:(BOOL)database;
- (id)_deleteDatabase;
- (id)_deleteDatabaseFileAtURL:(id)l reopenDatabase:(BOOL)database;
- (id)_deleteDatabaseIfEmpty;
- (id)_handleSchemaVersioningWithDeleteDatabaseFileOnError:(BOOL)error;
- (id)_openDatabase:(id)database withAccessType:(int64_t)type deleteDatabaseFileOnError:(BOOL)error;
- (id)_savepointNameFromUUID:(id)d;
- (int)_databaseSchemaVersion;
- (int)_migrateToCurrentSchemaVersionIfNeeded;
- (int)_setDatabaseSchemaVersion:(int)version;
- (void)_vacuum;
- (void)close;
- (void)commitSavepoint:(id)savepoint completionHandler:(id)handler;
- (void)createSavepointWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)deleteDatabaseWithCompletionHandler:(id)handler;
- (void)rollbackToSavepoint:(id)savepoint completionHandler:(id)handler;
@end

@implementation _WKWebExtensionSQLiteStore

- (_WKWebExtensionSQLiteStore)initWithUniqueIdentifier:(id)identifier directory:(id)directory usesInMemoryDatabase:(BOOL)database
{
  identifierCopy = identifier;
  directoryCopy = directory;
  v20.receiver = self;
  v20.super_class = _WKWebExtensionSQLiteStore;
  v10 = [(_WKWebExtensionSQLiteStore *)&v20 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    uniqueIdentifier = v10->_uniqueIdentifier;
    v10->_uniqueIdentifier = v11;

    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:directoryCopy];
    directory = v10->_directory;
    v10->_directory = v13;

    v10->_useInMemoryDatabase = database;
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.WebKit.WKWebExtensionSQLiteStore.%@", v10->_uniqueIdentifier];
    v16 = dispatch_queue_create([v15 cStringUsingEncoding:4], 0);
    databaseQueue = v10->_databaseQueue;
    v10->_databaseQueue = v16;

    v18 = v10;
  }

  return v10;
}

- (void)dealloc
{
  [(_WKWebExtensionSQLiteStore *)self close];
  v3.receiver = self;
  v3.super_class = _WKWebExtensionSQLiteStore;
  [(_WKWebExtensionSQLiteStore *)&v3 dealloc];
}

- (void)close
{
  database = self->_database;
  if (database)
  {
    v4 = database;
    v5 = self->_database;
    self->_database = 0;

    isMainThread = [MEMORY[0x1E696AF00] isMainThread];
    databaseQueue = self->_databaseQueue;
    if (isMainThread)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35___WKWebExtensionSQLiteStore_close__block_invoke;
      block[3] = &unk_1E762FE40;
      v9 = v4;
      dispatch_sync(databaseQueue, block);
    }

    else
    {
      dispatch_assert_queue_V2(databaseQueue);
      [(_WKWebExtensionSQLiteDatabase *)v4 close];
    }
  }
}

- (void)deleteDatabaseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66___WKWebExtensionSQLiteStore_deleteDatabaseWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E762FE68;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

- (void)_vacuum
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_databaseQueue);
  v3 = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"VACUUM");
  if (v3 != 101)
  {
    v4 = v3;
    v5 = qword_1ED640AB8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = self->_uniqueIdentifier;
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->_database lastErrorMessage];
      v8 = 138478339;
      v9 = uniqueIdentifier;
      v10 = 2114;
      v11 = lastErrorMessage;
      v12 = 1024;
      v13 = v4;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Failed to vacuum database for extension %{private}@: %{public}@ (%d)", &v8, 0x1Cu);
    }
  }
}

- (BOOL)_openDatabaseIfNecessaryReturningErrorMessage:(id *)message createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  dispatch_assert_queue_V2(self->_databaseQueue);
  if ([(_WKWebExtensionSQLiteStore *)self _isDatabaseOpen])
  {
    *message = 0;
    return 1;
  }

  else
  {
    if (necessaryCopy)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    _databaseURL = [(_WKWebExtensionSQLiteStore *)self _databaseURL];
    *message = [(_WKWebExtensionSQLiteStore *)self _openDatabase:_databaseURL withAccessType:v8 deleteDatabaseFileOnError:1];

    return [(_WKWebExtensionSQLiteStore *)self _isDatabaseOpen];
  }
}

- (id)_openDatabase:(id)database withAccessType:(int64_t)type deleteDatabaseFileOnError:(BOOL)error
{
  errorCopy = error;
  v42 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  dispatch_assert_queue_V2(self->_databaseQueue);
  useInMemoryDatabase = self->_useInMemoryDatabase;
  if (useInMemoryDatabase)
  {
LABEL_4:
    v12 = [[_WKWebExtensionSQLiteDatabase alloc] initWithURL:databaseCopy queue:self->_databaseQueue];
    database = self->_database;
    self->_database = v12;

    v14 = self->_database;
    v37 = 0;
    v15 = [(_WKWebExtensionSQLiteDatabase *)v14 openWithAccessType:type error:&v37];
    v16 = v37;
    v17 = v16;
    if (!v15)
    {
      if (type == 2 || v16)
      {
        v23 = qword_1ED640AB8;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          uniqueIdentifier = self->_uniqueIdentifier;
          v32 = WebKit::privacyPreservingDescription(v17, v24);
          *buf = 138478083;
          v39 = uniqueIdentifier;
          v40 = 2114;
          v41 = v32;
          _os_log_error_impl(&dword_19D52D000, v23, OS_LOG_TYPE_ERROR, "Failed to open database for extension %{private}@: %{public}@", buf, 0x16u);
        }

        if (!errorCopy || useInMemoryDatabase)
        {
          [(_WKWebExtensionSQLiteDatabase *)self->_database close];
          v25 = self->_database;
          self->_database = 0;

          v22 = @"Failed to open extension storage database.";
        }

        else
        {
          v22 = [(_WKWebExtensionSQLiteStore *)self _deleteDatabaseFileAtURL:databaseCopy reopenDatabase:1];
        }
      }

      else
      {
        v22 = 0;
        v17 = self->_database;
        self->_database = 0;
      }

      goto LABEL_25;
    }

    v18 = self->_database;
    v36 = v17;
    v19 = [(_WKWebExtensionSQLiteDatabase *)v18 enableWAL:&v36];
    v20 = v36;

    if (v19)
    {
      v21 = [(_WKWebExtensionSQLiteStore *)self _handleSchemaVersioningWithDeleteDatabaseFileOnError:errorCopy];
    }

    else
    {
      v26 = qword_1ED640AB8;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v33 = self->_uniqueIdentifier;
        v34 = WebKit::privacyPreservingDescription(v20, v27);
        *buf = 138478083;
        v39 = v33;
        v40 = 2114;
        v41 = v34;
        _os_log_error_impl(&dword_19D52D000, v26, OS_LOG_TYPE_ERROR, "Failed to enable write-ahead logging on database for extension %{private}@: %{public}@", buf, 0x16u);
      }

      if (!errorCopy || useInMemoryDatabase)
      {
        [(_WKWebExtensionSQLiteDatabase *)self->_database close];
        v28 = self->_database;
        self->_database = 0;

        v22 = @"Failed to open extension storage database.";
LABEL_24:
        v17 = v20;
LABEL_25:

        goto LABEL_26;
      }

      v21 = [(_WKWebExtensionSQLiteStore *)self _deleteDatabaseFileAtURL:databaseCopy reopenDatabase:1];
    }

    v22 = v21;
    goto LABEL_24;
  }

  v11 = WebKit::ensureDirectoryExists(self->_directory, v9);
  if (v11)
  {

    goto LABEL_4;
  }

  v29 = qword_1ED640AB8;
  if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
  {
    v35 = self->_uniqueIdentifier;
    *buf = 138477827;
    v39 = v35;
    _os_log_error_impl(&dword_19D52D000, v29, OS_LOG_TYPE_ERROR, "Failed to create extension storage directory for extension %{private}@", buf, 0xCu);
  }

  v22 = @"Failed to create extension storage directory.";
LABEL_26:

  return v22;
}

- (id)_deleteDatabaseFileAtURL:(id)l reopenDatabase:(BOOL)database
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dispatch_assert_queue_V2(self->_databaseQueue);
  if ([(_WKWebExtensionSQLiteStore *)self _isDatabaseOpen])
  {
    if ([(_WKWebExtensionSQLiteDatabase *)self->_database close])
    {
      v7 = @"Failed to close extension storage database.";
    }

    else
    {
      v7 = 0;
    }

    database = self->_database;
    self->_database = 0;
  }

  else
  {
    v7 = 0;
  }

  path = [lCopy path];
  MEMORY[0x19EB02040](&v25, path);

  for (i = 0; i != 2; ++i)
  {
    v11 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    }

    v23 = v11;
    *buf = [_WKWebExtensionSQLiteStore _deleteDatabaseFileAtURL:reopenDatabase:]::databaseFileSuffixes[i];
    result = WTF::tryMakeString<WTF::String,WTF::ASCIILiteral>(&v23, buf, &v24);
    if (!v24)
    {
      __break(0xC471u);
      return result;
    }

    WTF::FileSystemImpl::deleteFile(&v24, v13);
    v15 = v24;
    v24 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v14);
    }

    v16 = v23;
    v23 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v14);
    }
  }

  if (WTF::FileSystemImpl::fileExists(&v25, v14) && (WTF::FileSystemImpl::deleteFile(&v25, v17) & 1) == 0)
  {
    v20 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = self->_uniqueIdentifier;
      *buf = 138477827;
      *&buf[4] = uniqueIdentifier;
      _os_log_error_impl(&dword_19D52D000, v20, OS_LOG_TYPE_ERROR, "Failed to delete database for extension %{private}@", buf, 0xCu);
    }

    v7 = @"Failed to delete extension storage database file.";
  }

  else if (database)
  {
    v7 = [(_WKWebExtensionSQLiteStore *)self _openDatabase:lCopy withAccessType:2 deleteDatabaseFileOnError:0];
  }

  else
  {
    v19 = self->_database;
    self->_database = 0;
  }

  v21 = v25;
  v25 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v18);
  }

  return v7;
}

- (id)_deleteDatabaseIfEmpty
{
  dispatch_assert_queue_V2(self->_databaseQueue);
  if ([(_WKWebExtensionSQLiteStore *)self _isDatabaseEmpty])
  {
    _deleteDatabase = [(_WKWebExtensionSQLiteStore *)self _deleteDatabase];
  }

  else
  {
    _deleteDatabase = 0;
  }

  return _deleteDatabase;
}

- (id)_deleteDatabase
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_databaseQueue);
  if ([(_WKWebExtensionSQLiteStore *)self _isDatabaseOpen])
  {
    if ([(_WKWebExtensionSQLiteDatabase *)self->_database close])
    {
      v3 = qword_1ED640AB8;
      if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
      {
        uniqueIdentifier = self->_uniqueIdentifier;
        v11 = 138477827;
        v12 = uniqueIdentifier;
        _os_log_error_impl(&dword_19D52D000, v3, OS_LOG_TYPE_ERROR, "Failed to close storage database for extension %{private}@", &v11, 0xCu);
      }

      v4 = @"Failed to close extension storage database.";
    }

    else
    {
      v4 = 0;
    }

    database = self->_database;
    self->_database = 0;
  }

  else
  {
    v4 = 0;
  }

  if (!self->_useInMemoryDatabase)
  {
    _databaseURL = [(_WKWebExtensionSQLiteStore *)self _databaseURL];
    v7 = [(_WKWebExtensionSQLiteStore *)self _deleteDatabaseFileAtURL:_databaseURL reopenDatabase:0];

    if ([(__CFString *)v4 length])
    {
      v8 = v4;
    }

    else
    {
      v8 = v7;
    }

    v4 = v8;
  }

  return v4;
}

- (id)_handleSchemaVersioningWithDeleteDatabaseFileOnError:(BOOL)error
{
  errorCopy = error;
  v20 = *MEMORY[0x1E69E9840];
  _currentDatabaseSchemaVersion = [(_WKWebExtensionSQLiteStore *)self _currentDatabaseSchemaVersion];
  _migrateToCurrentSchemaVersionIfNeeded = [(_WKWebExtensionSQLiteStore *)self _migrateToCurrentSchemaVersionIfNeeded];
  if (_migrateToCurrentSchemaVersionIfNeeded == _currentDatabaseSchemaVersion)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v8 = _migrateToCurrentSchemaVersionIfNeeded;
  v9 = qword_1ED640AB8;
  if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    v15[0] = 67109635;
    v15[1] = v8;
    v16 = 1024;
    v17 = _currentDatabaseSchemaVersion;
    v18 = 2113;
    v19 = uniqueIdentifier;
    _os_log_error_impl(&dword_19D52D000, v9, OS_LOG_TYPE_ERROR, "Schema version (%d) does not match the supported schema version (%d) in database for extension %{private}@", v15, 0x18u);
    if (!errorCopy)
    {
      goto LABEL_8;
    }
  }

  else if (!errorCopy)
  {
LABEL_8:
    database = self->_database;
    p_database = &self->_database;
    [(_WKWebExtensionSQLiteDatabase *)database close];
    _databaseURL = *p_database;
    *p_database = 0;
    v7 = @"Failed to open extension storage database because of an invalid schema version.";
    goto LABEL_9;
  }

  if (self->_useInMemoryDatabase)
  {
    goto LABEL_8;
  }

  _databaseURL = [(_WKWebExtensionSQLiteStore *)self _databaseURL];
  v7 = [(_WKWebExtensionSQLiteStore *)self _deleteDatabaseFileAtURL:_databaseURL reopenDatabase:1];
LABEL_9:

LABEL_10:

  return v7;
}

- (int)_migrateToCurrentSchemaVersionIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_databaseQueue);
  _databaseSchemaVersion = [(_WKWebExtensionSQLiteStore *)self _databaseSchemaVersion];
  _currentDatabaseSchemaVersion = [(_WKWebExtensionSQLiteStore *)self _currentDatabaseSchemaVersion];
  if (_databaseSchemaVersion == _currentDatabaseSchemaVersion)
  {
    LODWORD(v5) = _databaseSchemaVersion;
  }

  else
  {
    v5 = _currentDatabaseSchemaVersion;
    if (_databaseSchemaVersion)
    {
      v6 = qword_1ED640AB8;
      if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_INFO))
      {
        uniqueIdentifier = self->_uniqueIdentifier;
        v9[0] = 67109635;
        v9[1] = _databaseSchemaVersion;
        v10 = 1024;
        v11 = v5;
        v12 = 2113;
        v13 = uniqueIdentifier;
        _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_INFO, "Schema version (%d) does not match our supported schema version (%d) in database for extension %{private}@, recreating database", v9, 0x18u);
      }
    }

    if ([(_WKWebExtensionSQLiteStore *)self _resetDatabaseSchema]== 101 && [(_WKWebExtensionSQLiteStore *)self _setDatabaseSchemaVersion:0]== 101 && ([(_WKWebExtensionSQLiteStore *)self _vacuum], [(_WKWebExtensionSQLiteStore *)self _createFreshDatabaseSchema]== 101))
    {
      [(_WKWebExtensionSQLiteStore *)self _setDatabaseSchemaVersion:v5];
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  return v5;
}

- (int)_databaseSchemaVersion
{
  dispatch_assert_queue_V2(self->_databaseQueue);
  v3 = WebKit::SQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  nextObject = [v3 nextObject];
  v5 = [nextObject intAtIndex:0];

  statement = [v3 statement];
  [statement invalidate];

  return v5;
}

- (int)_setDatabaseSchemaVersion:(int)version
{
  v3 = *&version;
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_databaseQueue);
  database = self->_database;
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA user_version = %d", v3];
  v7 = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(database, 0, v6);

  if (v7 != 101)
  {
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = self->_uniqueIdentifier;
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->_database lastErrorMessage];
      *buf = 138478339;
      v13 = uniqueIdentifier;
      v14 = 2114;
      v15 = lastErrorMessage;
      v16 = 1024;
      v17 = v7;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "Failed to set database version for extension %{private}@: %{public}@ (%d)", buf, 0x1Cu);
    }
  }

  return v7;
}

- (id)_savepointNameFromUUID:(id)d
{
  uUIDString = [d UUIDString];
  v4 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F1147748];
  v5 = [@"S" stringByAppendingString:v4];

  return v5;
}

- (void)createSavepointWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  objc_initWeak(&location, self);
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = __67___WKWebExtensionSQLiteStore_createSavepointWithCompletionHandler___block_invoke;
  v9[3] = &unk_1F10E6218;
  objc_copyWeak(&v12, &location);
  v10 = uUID;
  v11 = handlerCopy;
  v7 = uUID;
  v8 = handlerCopy;
  dispatch_async(databaseQueue, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)commitSavepoint:(id)savepoint completionHandler:(id)handler
{
  savepointCopy = savepoint;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  databaseQueue = self->_databaseQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = __64___WKWebExtensionSQLiteStore_commitSavepoint_completionHandler___block_invoke;
  v11[3] = &unk_1F10E6218;
  objc_copyWeak(&v14, &location);
  v12 = savepointCopy;
  v13 = handlerCopy;
  v9 = savepointCopy;
  v10 = handlerCopy;
  dispatch_async(databaseQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)rollbackToSavepoint:(id)savepoint completionHandler:(id)handler
{
  savepointCopy = savepoint;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  databaseQueue = self->_databaseQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = __68___WKWebExtensionSQLiteStore_rollbackToSavepoint_completionHandler___block_invoke;
  v11[3] = &unk_1F10E6218;
  objc_copyWeak(&v14, &location);
  v12 = savepointCopy;
  v13 = handlerCopy;
  v9 = savepointCopy;
  v10 = handlerCopy;
  dispatch_async(databaseQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end