@interface BSSqliteDatabaseConnection
- (BOOL)truncateDatabaseAndReturnError:(id *)a3;
- (BSSqliteDatabaseConnection)init;
- (BSSqliteDatabaseConnection)initWithFileURL:(id)a3 dataProtectionClass:(unint64_t)a4;
- (id)_initWithSqlitePath:(uint64_t)a3 dataProtectionClass:;
- (id)lastErrorMessage;
- (id)prepareStatement:(id)a3;
- (void)_closeConnection;
- (void)addObserver:(uint64_t)a1;
- (void)close;
- (void)dealloc;
- (void)performSyncWithDatabase:(uint64_t)a1;
- (void)performWithDatabase:(uint64_t)a1;
@end

@implementation BSSqliteDatabaseConnection

- (BSSqliteDatabaseConnection)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BSSqliteDatabaseConnection.m" lineNumber:32 description:@"init is not allowed"];

  return [(BSSqliteDatabaseConnection *)self _initWithSqlitePath:2 dataProtectionClass:?];
}

- (id)_initWithSqlitePath:(uint64_t)a3 dataProtectionClass:
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:sel__initWithSqlitePath_dataProtectionClass_ object:a1 file:@"BSSqliteDatabaseConnection.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"path"}];
    }

    v19.receiver = a1;
    v19.super_class = BSSqliteDatabaseConnection;
    v6 = objc_msgSendSuper2(&v19, sel_init);
    if (v6)
    {
      Serial = BSDispatchQueueCreateSerial(@"com.apple.baseboard.sqlite.database");
      v8 = *(v6 + 1);
      *(v6 + 1) = Serial;

      objc_opt_self();
      v9 = a2;
      v10 = [a2 UTF8String];
      if ((a3 - 1) >= 3)
      {
        v11 = 1048582;
      }

      else
      {
        v11 = 4194310 - ((a3 - 1) << 20);
      }

      v12 = sqlite3_open_v2(v10, v6 + 2, v11, 0);
      if (v12)
      {
        v13 = BSLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v21 = a2;
          v22 = 1024;
          v23 = v12;
          _os_log_error_impl(&dword_18FEF6000, v13, OS_LOG_TYPE_ERROR, "Failed to open database %{public}@ due to result %d", buf, 0x12u);
        }

        [(BSSqliteDatabaseConnection *)v6 _closeConnection];
        goto LABEL_12;
      }

      v15 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      v16 = *(v6 + 3);
      *(v6 + 3) = v15;
    }

    v6 = v6;
    v14 = v6;
    goto LABEL_15;
  }

  v6 = 0;
LABEL_12:
  v14 = 0;
LABEL_15:

  return v14;
}

- (BSSqliteDatabaseConnection)initWithFileURL:(id)a3 dataProtectionClass:(unint64_t)a4
{
  if (([a3 isFileURL] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"BSSqliteDatabaseConnection.m" lineNumber:41 description:{@"url must be a fileURL : url=%@", a3}];
  }

  v8 = [a3 path];
  v9 = [(BSSqliteDatabaseConnection *)self _initWithSqlitePath:v8 dataProtectionClass:a4];

  return v9;
}

- (void)_closeConnection
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sqlite3_close_v2(v2);
    if (v3)
    {
      v4 = v3;
      v5 = BSLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = sqlite3_errstr(v4);
        v7 = *(a1 + 16);
        v8 = 136315906;
        v9 = "[BSSqliteDatabaseConnection _closeConnection]";
        v10 = 1024;
        v11 = v4;
        v12 = 2082;
        v13 = v6;
        v14 = 2048;
        v15 = v7;
        _os_log_error_impl(&dword_18FEF6000, v5, OS_LOG_TYPE_ERROR, "%s: got error %d (%{public}s) closing database connection %p", &v8, 0x26u);
      }
    }

    *(a1 + 16) = 0;
  }
}

- (void)dealloc
{
  if (self->_queue_dbConnection)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"BSSqliteDatabaseConnection.m" lineNumber:65 description:@"database must be closed before dealloc"];
  }

  if (self->_queue_queryCache)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"BSSqliteDatabaseConnection.m" lineNumber:66 description:@"database must be closed before dealloc"];
  }

  v6.receiver = self;
  v6.super_class = BSSqliteDatabaseConnection;
  [(BSSqliteDatabaseConnection *)&v6 dealloc];
}

- (id)prepareStatement:(id)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"BSSqliteDatabaseConnection.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"query"}];
  }

  v5 = [(NSCache *)self->_queue_queryCache objectForKey:a3];
  if (!v5)
  {
    v5 = [BSSqlitePreparedStatement _newPreparedStatementForDatabaseConnection:a3 withSQLQuery:?];
    if (v5)
    {
      v6 = [a3 copy];
      [(NSCache *)self->_queue_queryCache setObject:v5 forKey:v6];
    }
  }

  return v5;
}

- (BOOL)truncateDatabaseAndReturnError:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__BSSqliteDatabaseConnection_truncateDatabaseAndReturnError___block_invoke;
  v6[3] = &unk_1E72CB288;
  v6[4] = self;
  v6[5] = &v11;
  v6[6] = &v7;
  [(BSSqliteDatabaseConnection *)self performSyncWithDatabase:v6];
  if (a3)
  {
    *a3 = v12[5];
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v4;
}

void __61__BSSqliteDatabaseConnection_truncateDatabaseAndReturnError___block_invoke(void *a1, sqlite3 *a2)
{
  v4 = sqlite3_file_control(a2, 0, 101, 0);
  if (v4)
  {
    v5 = v4;
    v6 = a1[4];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(a2)];
    if (v6)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errstr(v5)];
      [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696A578]];

      if (v7)
      {
        [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A588]];
      }

      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.baseboard.bssqlite" code:v5 userInfo:v8];
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (void)performSyncWithDatabase:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __54__BSSqliteDatabaseConnection_performSyncWithDatabase___block_invoke;
    v3[3] = &unk_1E72CB2B0;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

- (void)performWithDatabase:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __50__BSSqliteDatabaseConnection_performWithDatabase___block_invoke;
    v3[3] = &unk_1E72CB2B0;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

- (id)lastErrorMessage
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = __Block_byref_object_copy__2;
    v8 = __Block_byref_object_dispose__2;
    v9 = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __46__BSSqliteDatabaseConnection_lastErrorMessage__block_invoke;
    v3[3] = &unk_1E72CB2D8;
    v3[4] = &v4;
    [(BSSqliteDatabaseConnection *)a1 performSyncWithDatabase:v3];
    v1 = v5[5];
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void __46__BSSqliteDatabaseConnection_lastErrorMessage__block_invoke(uint64_t a1, sqlite3 *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(a2)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__BSSqliteDatabaseConnection_close__block_invoke;
  block[3] = &unk_1E72CADE8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __35__BSSqliteDatabaseConnection_close__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 8));
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(v1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = *v10;
      do
      {
        v5 = 0;
        do
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v9 + 1) + 8 * v5);
          if (objc_opt_respondsToSelector())
          {
            [v6 sqliteDatabaseConnectionWillClose:{v1, v9}];
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v3);
    }

    v7 = *(v1 + 32);
    *(v1 + 32) = 0;

    [*(v1 + 24) removeAllObjects];
    v8 = *(v1 + 24);
    *(v1 + 24) = 0;

    [(BSSqliteDatabaseConnection *)v1 _closeConnection];
  }
}

- (void)addObserver:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __42__BSSqliteDatabaseConnection_addObserver___block_invoke;
    v3[3] = &unk_1E72CACC0;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

uint64_t __42__BSSqliteDatabaseConnection_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

@end