@interface AMSEngagementCacheDatabase
- (BOOL)closeWithError:(id *)error;
- (BOOL)collectGarbageWithError:(id *)error;
- (BOOL)connection:(id)connection needsResetForCorruptionError:(id)error error:(id *)a5;
- (BOOL)insertResponseData:(id)data filterData:(id)filterData expiration:(id)expiration error:(id *)error;
- (BOOL)openAtPath:(id)path error:(id *)error;
- (BOOL)selectWithExpirationDate:(id)date handler:(id)handler error:(id *)error;
- (void)_performTransaction:(id)transaction;
@end

@implementation AMSEngagementCacheDatabase

- (BOOL)closeWithError:(id *)error
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [AMSKeepAlive keepAliveWithName:v6];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__AMSEngagementCacheDatabase_closeWithError___block_invoke;
  aBlock[3] = &unk_1E73B3680;
  v8 = v7;
  v18 = v8;
  v9 = _Block_copy(aBlock);
  connection = [(AMSEngagementCacheDatabase *)self connection];
  v16 = 0;
  v11 = [connection closeWithError:&v16];
  v12 = v16;

  if (v11)
  {
    [(AMSEngagementCacheDatabase *)self setConnection:0];
  }

  else if (error)
  {
    *error = AMSError(16, @"Close Failure", @"Failed to close Engagement cache database.", v12);
  }

  connection2 = [(AMSEngagementCacheDatabase *)self connection];
  v14 = connection2 == 0;

  v9[2](v9);
  return v14;
}

- (BOOL)collectGarbageWithError:(id *)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AMSEngagementCacheDatabase_collectGarbageWithError___block_invoke;
  v5[3] = &unk_1E73B7410;
  v5[4] = &v6;
  v5[5] = error;
  [(AMSEngagementCacheDatabase *)self _performTransaction:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __54__AMSEngagementCacheDatabase_collectGarbageWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"DELETE FROM %@ WHERE %@ < ?", 0x1F0727958, 0x1F0727978];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AMSEngagementCacheDatabase_collectGarbageWithError___block_invoke_2;
  v10[3] = &__block_descriptor_40_e28_v16__0___AMSSQLiteBinding__8l;
  v10[4] = v7;
  v8 = [v4 executeStatement:v5 error:v6 bindings:v10];

  *(*(*(a1 + 32) + 8) + 24) = v8;
  return 1;
}

- (BOOL)insertResponseData:(id)data filterData:(id)filterData expiration:(id)expiration error:(id *)error
{
  dataCopy = data;
  filterDataCopy = filterData;
  expirationCopy = expiration;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__AMSEngagementCacheDatabase_insertResponseData_filterData_expiration_error___block_invoke;
  v17[3] = &unk_1E73B7438;
  v18 = dataCopy;
  v19 = expirationCopy;
  v20 = filterDataCopy;
  errorCopy = error;
  v13 = filterDataCopy;
  v14 = expirationCopy;
  v15 = dataCopy;
  [(AMSEngagementCacheDatabase *)self _performTransaction:v17];

  return 1;
}

uint64_t __77__AMSEngagementCacheDatabase_insertResponseData_filterData_expiration_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"INSERT INTO %@ (%@, %@, %@) VALUES (?, ?, ?)", 0x1F0727958, 0x1F071F6F8, 0x1F0727978, 0x1F07277D8];
  v6 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__AMSEngagementCacheDatabase_insertResponseData_filterData_expiration_error___block_invoke_2;
  v9[3] = &unk_1E73B6078;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v7 = [v4 executeStatement:v5 error:v6 bindings:v9];

  return v7;
}

void __77__AMSEngagementCacheDatabase_insertResponseData_filterData_expiration_error___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindData:v3 atPosition:1];
  [v4 bindDate:a1[5] atPosition:2];
  [v4 bindData:a1[6] atPosition:3];
}

- (BOOL)selectWithExpirationDate:(id)date handler:(id)handler error:(id *)error
{
  dateCopy = date;
  handlerCopy = handler;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AMSEngagementCacheDatabase_selectWithExpirationDate_handler_error___block_invoke;
  v13[3] = &unk_1E73B74B0;
  v10 = dateCopy;
  v16 = &v18;
  errorCopy = error;
  v14 = v10;
  v11 = handlerCopy;
  v15 = v11;
  [(AMSEngagementCacheDatabase *)self _performTransaction:v13];
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

uint64_t __69__AMSEngagementCacheDatabase_selectWithExpirationDate_handler_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ > ?", 0x1F071F6F8, 0x1F07277D8, 0x1F0727958, 0x1F0727978];
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__AMSEngagementCacheDatabase_selectWithExpirationDate_handler_error___block_invoke_2;
  v10[3] = &unk_1E73B7488;
  v12 = *(a1 + 56);
  v13 = v6;
  v9 = *(a1 + 40);
  v7 = v9;
  v11 = v9;
  [v4 executeQuery:v5 withResults:v10];

  return 1;
}

void __69__AMSEngagementCacheDatabase_selectWithExpirationDate_handler_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (*(a1 + 48))
    {
      v7 = v5;
      **(a1 + 48) = v6;
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = a2;
    [v9 bindDouble:1 atPosition:v8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__AMSEngagementCacheDatabase_selectWithExpirationDate_handler_error___block_invoke_3;
    v12[3] = &unk_1E73B7460;
    v14 = *(a1 + 48);
    v11 = *(a1 + 32);
    v10 = v11;
    v13 = v11;
    [v9 enumerateRowsUsingBlock:v12];
  }
}

void __69__AMSEngagementCacheDatabase_selectWithExpirationDate_handler_error___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    if (*(a1 + 48))
    {
      v9 = v7;
      **(a1 + 48) = v8;
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
    v10 = [v12 dataForColumnIndex:0];
    v11 = [v12 dataForColumnIndex:1];
    if (a4)
    {
      *a4 = (*(*(a1 + 32) + 16))();
    }
  }
}

- (BOOL)openAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [AMSKeepAlive keepAliveWithName:v8];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__AMSEngagementCacheDatabase_openAtPath_error___block_invoke;
  aBlock[3] = &unk_1E73B3680;
  v10 = v9;
  v21 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [[AMSSQLiteConnectionOptions alloc] initWithDatabasePath:pathCopy];
  v13 = [[AMSSQLiteConnection alloc] initWithOptions:v12];
  [(AMSSQLiteConnection *)v13 setDelegate:self];
  v19 = 0;
  v14 = [AMSEngagementCacheDatabaseSchema createOrUpdateSchemaUsingConnection:v13 error:&v19];
  v15 = v19;
  if (v14)
  {
    [(AMSEngagementCacheDatabase *)self setConnection:v13];
  }

  else if (error)
  {
    *error = AMSError(16, @"Open Failure", @"Failed to open Engagement cache database.", v15);
  }

  connection = [(AMSEngagementCacheDatabase *)self connection];
  v17 = connection != 0;

  v11[2](v11);
  return v17;
}

- (BOOL)connection:(id)connection needsResetForCorruptionError:(id)error error:(id *)a5
{
  v45 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  errorCopy = error;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [AMSKeepAlive keepAliveWithName:v8];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__AMSEngagementCacheDatabase_connection_needsResetForCorruptionError_error___block_invoke;
  aBlock[3] = &unk_1E73B3680;
  v10 = v9;
  v40 = v10;
  v11 = _Block_copy(aBlock);
  v38 = 0;
  LOBYTE(v9) = [connectionCopy truncateWithError:&v38];
  v33 = v38;
  if ((v9 & 1) == 0)
  {
    v37 = 0;
    [connectionCopy closeWithError:&v37];
    v31 = v37;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    options = [connectionCopy options];
    databasePath = [options databasePath];
    v36 = 0;
    v15 = [defaultManager removeItemAtPath:databasePath error:&v36];
    v16 = v36;

    if (!v15)
    {
      v20 = AMSErrorBySettingUnderlyingError(v33, errorCopy);
      v18 = AMSErrorBySettingUnderlyingError(v16, v20);

      v21 = +[AMSLogConfig sharedConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = AMSLogableError(v18);
        *buf = 138543618;
        v42 = v23;
        v43 = 2114;
        v44 = v24;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete Engagement database after corruption. This is bad! Error = %{public}@", buf, 0x16u);
      }

      goto LABEL_11;
    }
  }

  v35 = 0;
  v17 = [AMSEngagementCacheDatabaseSchema createOrUpdateSchemaUsingConnection:connectionCopy error:&v35];
  v18 = v35;
  if (v17)
  {
    v19 = 1;
    goto LABEL_16;
  }

LABEL_11:
  v25 = +[AMSLogConfig sharedConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v25 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v28 = AMSLogableError(v18);
    *buf = 138543618;
    v42 = v27;
    v43 = 2114;
    v44 = v28;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reset Engagement database after corruption. This is bad! Error = %{public}@", buf, 0x16u);
  }

  v19 = 0;
LABEL_16:
  if (a5)
  {
    v29 = v18;
    *a5 = v18;
  }

  v11[2](v11);
  return v19;
}

- (void)_performTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [AMSKeepAlive keepAliveWithName:v6];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__AMSEngagementCacheDatabase__performTransaction___block_invoke;
  aBlock[3] = &unk_1E73B3680;
  v8 = v7;
  v17 = v8;
  v9 = _Block_copy(aBlock);
  connection = [(AMSEngagementCacheDatabase *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__AMSEngagementCacheDatabase__performTransaction___block_invoke_2;
  v13[3] = &unk_1E73B74D8;
  v11 = transactionCopy;
  v15 = v11;
  v12 = connection;
  v14 = v12;
  [v12 performTransaction:v13];

  v9[2](v9);
}

@end