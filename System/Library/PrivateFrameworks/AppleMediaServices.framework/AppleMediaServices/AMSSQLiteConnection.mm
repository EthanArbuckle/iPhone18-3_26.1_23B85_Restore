@interface AMSSQLiteConnection
- (AMSSQLiteConnection)initWithOptions:(id)options;
- (AMSSQLiteConnectionDelegate)delegate;
- (BOOL)_closeDueToError:(id)error error:(id *)a4;
- (BOOL)_executeStatement:(id)statement error:(id *)error;
- (BOOL)_executeWithError:(id *)error usingBlock:(id)block;
- (BOOL)_openAndAllowRetry:(BOOL)retry error:(id *)error;
- (BOOL)_performResetAfterCorruptionError:(id)error error:(id *)a4;
- (BOOL)_resetAfterCorruptionError:(id)error error:(id *)a4;
- (BOOL)_resetAfterIOError:(id)error error:(id *)a4;
- (BOOL)executePreparedStatement:(id)statement error:(id *)error bindings:(id)bindings;
- (BOOL)executeStatement:(id)statement error:(id *)error bindings:(id)bindings;
- (BOOL)finalizePreparedStatement:(id)statement error:(id *)error;
- (BOOL)truncateWithError:(id *)error;
- (id)_prepareStatement:(id)statement error:(id *)error;
- (id)_statementForPreparedStatement:(id)statement error:(id *)error;
- (id)_verifiedStatementForPreparedStatement:(id)statement error:(id *)error;
- (id)_verifiedStatementForSQL:(id)l error:(id *)error;
- (id)prepareStatement:(id)statement error:(id *)error;
- (int64_t)lastChangeCount;
- (void)_finalizeAllStatements;
- (void)_flushAfterTransactionBlocks;
- (void)dealloc;
- (void)dispatchAfterTransaction:(id)transaction;
- (void)executePreparedQuery:(id)query withResults:(id)results;
- (void)executeQuery:(id)query withResults:(id)results;
- (void)performTransaction:(id)transaction;
@end

@implementation AMSSQLiteConnection

- (void)_finalizeAllStatements
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMapTable *)self->_preparedStatements objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v10 + 1) + 8 * v7++) finalizeStatement];
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_preparedStatements removeAllObjects];
  stmt = sqlite3_next_stmt(self->_database, 0);
  if (stmt)
  {
    v9 = stmt;
    do
    {
      sqlite3_finalize(v9);
      v9 = sqlite3_next_stmt(self->_database, v9);
    }

    while (v9);
  }
}

- (void)dealloc
{
  [(AMSSQLiteConnection *)self _closeDueToError:0 error:0];
  v3.receiver = self;
  v3.super_class = AMSSQLiteConnection;
  [(AMSSQLiteConnection *)&v3 dealloc];
}

- (void)_flushAfterTransactionBlocks
{
  afterTransactionBlocks = self->_afterTransactionBlocks;
  if (afterTransactionBlocks)
  {
    v4 = [(NSMutableArray *)afterTransactionBlocks copy];
    v5 = self->_afterTransactionBlocks;
    self->_afterTransactionBlocks = 0;

    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__AMSSQLiteConnection__flushAfterTransactionBlocks__block_invoke;
    block[3] = &unk_1E73B3680;
    v9 = v4;
    v7 = v4;
    dispatch_async(v6, block);
  }
}

- (AMSSQLiteConnection)initWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = AMSSQLiteConnection;
  v5 = [(AMSSQLiteConnection *)&v11 init];
  if (v5)
  {
    v6 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v6;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    preparedStatements = v5->_preparedStatements;
    v5->_preparedStatements = strongToStrongObjectsMapTable;
  }

  return v5;
}

- (void)dispatchAfterTransaction:(id)transaction
{
  transactionCopy = transaction;
  v10 = transactionCopy;
  if (self->_transactionDepth)
  {
    if (!self->_afterTransactionBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      afterTransactionBlocks = self->_afterTransactionBlocks;
      self->_afterTransactionBlocks = v5;

      transactionCopy = v10;
    }

    v7 = [transactionCopy copy];
    v8 = self->_afterTransactionBlocks;
    v9 = _Block_copy(v7);
    [(NSMutableArray *)v8 addObject:v9];
  }

  else
  {
    transactionCopy[2]();
  }
}

- (void)executePreparedQuery:(id)query withResults:(id)results
{
  queryCopy = query;
  resultsCopy = results;
  v11 = 0;
  v8 = [(AMSSQLiteConnection *)self _verifiedStatementForPreparedStatement:queryCopy error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = [[AMSSQLiteQueryResults alloc] initWithStatement:v8];
  }

  else
  {
    v10 = 0;
  }

  resultsCopy[2](resultsCopy, v10, v9);
  [v8 clearBindings];
  [v8 reset];
}

- (BOOL)executePreparedStatement:(id)statement error:(id *)error bindings:(id)bindings
{
  bindingsCopy = bindings;
  v17 = 0;
  v9 = [(AMSSQLiteConnection *)self _verifiedStatementForPreparedStatement:statement error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9 && !v10)
  {
    if (bindingsCopy)
    {
      bindingsCopy[2](bindingsCopy, v9);
    }

    v16 = 0;
    v12 = [(AMSSQLiteConnection *)self _executeStatement:v9 error:&v16];
    v13 = v16;
    if (v13)
    {
      v11 = v13;
      if (!error)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    if (bindingsCopy)
    {
      [v9 clearBindings];
    }

LABEL_13:
    [v9 reset];
    v11 = 0;
    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v12 = 0;
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!error)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (!v12)
  {
    v14 = v11;
    *error = v11;
  }

LABEL_16:

  return v12;
}

- (void)executeQuery:(id)query withResults:(id)results
{
  queryCopy = query;
  resultsCopy = results;
  v12 = 0;
  v8 = [(AMSSQLiteConnection *)self _verifiedStatementForSQL:queryCopy error:&v12];
  v9 = v12;
  v10 = [[AMSSQLitePreparedStatement alloc] initWithConnection:self->_database SQL:queryCopy];
  if (v10)
  {
    [(NSMapTable *)self->_preparedStatements setObject:v8 forKey:v10];
  }

  if (v8)
  {
    v11 = [[AMSSQLiteQueryResults alloc] initWithStatement:v8];
  }

  else
  {
    v11 = 0;
  }

  resultsCopy[2](resultsCopy, v11, v9);
  [v8 finalizeStatement];
  if (v10)
  {
    [(NSMapTable *)self->_preparedStatements removeObjectForKey:v10];
  }
}

- (BOOL)executeStatement:(id)statement error:(id *)error bindings:(id)bindings
{
  bindingsCopy = bindings;
  v18 = 0;
  statementCopy = statement;
  v10 = [(AMSSQLiteConnection *)self _verifiedStatementForSQL:statementCopy error:&v18];
  v11 = v18;
  v12 = [[AMSSQLitePreparedStatement alloc] initWithConnection:self->_database SQL:statementCopy];

  if (v12)
  {
    [(NSMapTable *)self->_preparedStatements setObject:v10 forKey:v12];
  }

  if (!v10)
  {
    v13 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (bindingsCopy)
  {
    bindingsCopy[2](bindingsCopy, v10);
  }

  v17 = v11;
  v13 = [(AMSSQLiteConnection *)self _executeStatement:v10 error:&v17];
  v14 = v17;

  [v10 finalizeStatement];
  if (v12)
  {
    [(NSMapTable *)self->_preparedStatements removeObjectForKey:v12];
  }

  v11 = v14;
  if (error)
  {
LABEL_11:
    if (!v13)
    {
      v15 = v11;
      *error = v11;
    }
  }

LABEL_13:

  return v13;
}

- (BOOL)finalizePreparedStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v14 = 0;
  v7 = [(AMSSQLiteConnection *)self _verifiedStatementForPreparedStatement:statementCopy error:&v14];
  v8 = v14;
  if (v7)
  {
    finalizeStatement = [v7 finalizeStatement];
    if (finalizeStatement - 100 >= 2 && finalizeStatement != 0)
    {
      v11 = AMSSQLiteCreateError(-7708, @"Error Finalizing Prepared Statement", finalizeStatement, 0);

      v8 = v11;
    }

    [(NSMapTable *)self->_preparedStatements removeObjectForKey:statementCopy];
  }

  if (error)
  {
    v12 = v8;
    *error = v8;
  }

  return 0;
}

- (int64_t)lastChangeCount
{
  v3 = [(AMSSQLiteConnection *)self _openWithError:0];
  result = 0;
  if (v3)
  {
    return sqlite3_changes(self->_database);
  }

  return result;
}

- (void)performTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactionDepth = self->_transactionDepth;
  if (transactionDepth < 1)
  {
    if (![(AMSSQLiteConnection *)self executeStatement:@"BEGIN DEFERRED TRANSACTION" error:0])
    {
      goto LABEL_10;
    }

    self->_transactionDepth = 1;
    self->_transactionWantsRollback = 0;
  }

  else
  {
    self->_transactionDepth = transactionDepth + 1;
  }

  v5 = transactionCopy[2]() ^ 1;
  v6 = self->_transactionDepth;
  v7 = self->_transactionWantsRollback | v5;
  self->_transactionWantsRollback = v7 & 1;
  self->_transactionDepth = --v6;
  if (!v6)
  {
    if (v7)
    {
      v8 = @"ROLLBACK TRANSACTION";
    }

    else
    {
      v8 = @"COMMIT TRANSACTION";
    }

    [(AMSSQLiteConnection *)self executeStatement:v8 error:0];
    [(AMSSQLiteConnection *)self _flushAfterTransactionBlocks];
  }

LABEL_10:
}

- (id)prepareStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v16 = 0;
  v7 = [(AMSSQLiteConnection *)self _openWithError:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    v15 = v8;
    v10 = [(AMSSQLiteConnection *)self _prepareStatement:statementCopy error:&v15];
    v11 = v15;

    if (v10)
    {
      v12 = [[AMSSQLitePreparedStatement alloc] initWithConnection:self SQL:statementCopy];
      [(NSMapTable *)self->_preparedStatements setObject:v10 forKey:v12];
    }

    else
    {
      v12 = 0;
    }

    v9 = v11;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v12)
  {
    v13 = v9;
    *error = v9;
  }

LABEL_10:

  return v12;
}

- (BOOL)truncateWithError:(id *)error
{
  if ([(AMSSQLiteConnectionOptions *)self->_options isReadOnly])
  {
    if (error)
    {
      v5 = AMSSQLiteCreateError(-7701, @"Unable to Truncate Read-Only Database", 0, 0);
      v6 = 0;
LABEL_8:
      *error = v5;
      return v6;
    }

    return 0;
  }

  if (![(AMSSQLiteConnection *)self _openAndAllowRetry:0 error:error])
  {
    return 0;
  }

  [(AMSSQLiteConnection *)self _finalizeAllStatements];
  v9 = 129;
  v7 = sqlite3_file_control(self->_database, 0, 101, &v9);
  v6 = v7 == 0;
  if (!v7)
  {
    sqlite3_close(self->_database);
    self->_database = 0;
    return v6;
  }

  if (error)
  {
    v5 = AMSSQLiteCreateError(-7707, @"Failed to Truncate Database", v7, 0);
    goto LABEL_8;
  }

  return v6;
}

- (BOOL)_closeDueToError:(id)error error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_database)
  {
    [(AMSSQLiteConnection *)self _finalizeAllStatements];
    v7 = sqlite3_close(self->_database);
    if (v7)
    {
      v8 = v7;
      v9 = +[AMSLogConfig sharedConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543618;
        v16 = objc_opt_class();
        v17 = 1024;
        v18 = v8;
        v11 = v16;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to close the database: closeResult=%d", &v15, 0x12u);
      }

      if (a4)
      {
        AMSSQLiteCreateError(-7706, @"Failed to Close Database", v8, errorCopy);
        *a4 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      afterTransactionBlocks = self->_afterTransactionBlocks;
      self->_afterTransactionBlocks = 0;

      self->_database = 0;
      self->_transactionDepth = 0;
      v12 = 1;
      self->_transactionWantsRollback = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)_executeStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__AMSSQLiteConnection__executeStatement_error___block_invoke;
  v10[3] = &unk_1E73BBF20;
  v7 = statementCopy;
  v11 = v7;
  v8 = [(AMSSQLiteConnection *)self _executeWithError:error usingBlock:v10];
  if (v8)
  {
    [v7 reset];
  }

  return v8;
}

- (BOOL)_executeWithError:(id *)error usingBlock:(id)block
{
  v44 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = 0;
  v6 = 0;
LABEL_2:
  v34 = v5;
  do
  {
    v7 = objc_autoreleasePoolPush();
    v39 = 0;
    v8 = blockCopy[2](blockCopy, &v39);
    if (v8 - 5 >= 2)
    {
      if (v8 <= 0xAu)
      {
        if (!v8)
        {
LABEL_32:
          objc_autoreleasePoolPop(v7);
          v15 = 0;
          v16 = 0;
          goto LABEL_35;
        }

        if (v8 != 8)
        {
          if (v8 != 10)
          {
            goto LABEL_33;
          }

          v16 = AMSSQLiteCreateError(-7705, @"Statement Execution Failed, I/O Error", v8, 0);
          objc_autoreleasePoolPop(v7);
          v37 = 0;
          v17 = [(AMSSQLiteConnection *)self _resetAfterIOError:v16 error:&v37];
          v18 = v37;
LABEL_26:
          v15 = v18;
          if (!v34)
          {
            goto LABEL_38;
          }

LABEL_35:
          v5 = 1;
          goto LABEL_57;
        }
      }

      else
      {
        if (v8 > 0x63u)
        {
          if (v8 == 100)
          {
            v14 = v39;
            objc_autoreleasePoolPop(v7);
            v5 = 1;
            if ((v14 & 1) == 0)
            {
              goto LABEL_2;
            }

            v15 = 0;
            v16 = 0;
            goto LABEL_57;
          }

          if (v8 == 101)
          {
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        if (v8 != 11 && v8 != 26)
        {
LABEL_33:
          v20 = @"Statement Execution Failed, Unknown Error";
          v21 = -7708;
LABEL_34:
          v16 = AMSSQLiteCreateError(v21, v20, v8, 0);
          objc_autoreleasePoolPop(v7);
          v15 = 0;
          if (!v34)
          {
            v17 = 0;
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      v16 = AMSSQLiteCreateError(-7704, @"Statement Execution Failed, Database Corrupt", v8, 0);
      objc_autoreleasePoolPop(v7);
      v38 = 0;
      v17 = [(AMSSQLiteConnection *)self _resetAfterCorruptionError:v16 error:&v38];
      v18 = v38;
      goto LABEL_26;
    }

    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      *buf = 138543618;
      v41 = v11;
      v42 = 1024;
      LODWORD(v43) = v8;
      v12 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Database locked or busy: sqlResult=%d", buf, 0x12u);
    }

    if (v6 > 999)
    {
      v20 = @"Statement execution Timed Out";
      v21 = -7702;
      goto LABEL_34;
    }

    ++v6;
    usleep(0x2710u);
    v13 = v39;
    objc_autoreleasePoolPop(v7);
  }

  while ((v13 & 1) == 0);
  v15 = 0;
  if (v34)
  {
    v5 = 1;
    v16 = 0;
    goto LABEL_57;
  }

  v17 = 0;
  v16 = 0;
LABEL_38:
  v22 = +[AMSLogConfig sharedConfig];
  if (!v22)
  {
    v22 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v22 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v35 = v17;
    v24 = AMSLogKey();
    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_opt_class();
    v27 = v26;
    if (v24)
    {
      v6 = AMSLogKey();
      [v25 stringWithFormat:@"%@: [%@] ", v27, v6];
    }

    else
    {
      [v25 stringWithFormat:@"%@: ", v26];
    }
    v28 = ;
    v29 = AMSLogableError(v16);
    *buf = 138543618;
    v41 = v28;
    v42 = 2114;
    v43 = v29;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Execution error: %{public}@", buf, 0x16u);
    if (v24)
    {

      v28 = v6;
    }

    v17 = v35;
  }

  if (v15)
  {
    v30 = v17;
  }

  else
  {
    v30 = 1;
  }

  if (v30 == 1)
  {
    if (error)
    {
      v31 = v16;
      goto LABEL_55;
    }

LABEL_56:
    v5 = 0;
  }

  else
  {
    if (!error)
    {
      goto LABEL_56;
    }

    v31 = AMSErrorBySettingUnderlyingError(v15, v16);
LABEL_55:
    v5 = 0;
    *error = v31;
  }

LABEL_57:

  return v5;
}

void __51__AMSSQLiteConnection__flushAfterTransactionBlocks__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (BOOL)_openAndAllowRetry:(BOOL)retry error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = 1;
  if (!self->_database)
  {
    selfCopy3 = self;
    v7 = 0;
    v63 = 0;
    v8 = 1;
    retryCopy = retry;
    while (1)
    {
      v9 = v8;
      v10 = v7;
      v62 = 0;
      options = selfCopy3->_options;
      v61 = v7;
      v5 = AMSSQLiteOpen(options, &v63, &v62, &v61);
      v7 = v61;

      if (v5)
      {
        selfCopy3->_database = v63;
        goto LABEL_40;
      }

      userInfo = [v7 userInfo];
      v13 = [userInfo objectForKeyedSubscript:0x1F0738738];
      v57 = v9;
      v58 = v7;
      if (objc_opt_respondsToSelector())
      {
        userInfo2 = [v7 userInfo];
        v15 = [userInfo2 objectForKeyedSubscript:0x1F0738738];
        longLongValue = [v15 longLongValue];
      }

      else
      {
        longLongValue = 0;
      }

      if (v62)
      {
        v17 = v62;
      }

      else
      {
        v17 = longLongValue;
      }

      v18 = +[AMSLogConfig sharedConfig];
      v19 = v4;
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v21 = AMSLogKey();
        v22 = MEMORY[0x1E696AEC0];
        v23 = objc_opt_class();
        v24 = v23;
        v55 = v5;
        if (v21)
        {
          v54 = AMSLogKey();
          v25 = [v22 stringWithFormat:@"%@: [%@] ", v24, v54];
          v53 = v25;
          v19 = v4;
        }

        else
        {
          v25 = [v22 stringWithFormat:@"%@: ", v23];
          v19 = v25;
        }

        v27 = v17;
        v28 = v17;
        databasePath = [(AMSSQLiteConnectionOptions *)self->_options databasePath];
        v30 = AMSHashIfNeeded(databasePath);
        *buf = 138544386;
        v65 = v25;
        v66 = 2114;
        v67 = v30;
        v68 = 1026;
        *v69 = v62;
        *&v69[4] = 1026;
        *&v69[6] = longLongValue;
        v70 = 1026;
        v71 = v28;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to open AMS database at path %{public}@. openResult = %{public}d, setupResult = %{public}d, baseSqliteResult = %{public}d", buf, 0x28u);

        v31 = v19;
        if (v21)
        {

          v31 = v54;
        }

        v5 = v55;
        selfCopy3 = self;
        v26 = retryCopy;
      }

      else
      {
        v26 = retryCopy;
        v27 = v17;
        selfCopy3 = self;
      }

      if (!v26 || v27 > 0x1Au || ((1 << v27) & 0x4000C00) == 0)
      {
        v35 = 0x1E73B0000;
        v7 = v58;
        goto LABEL_29;
      }

      v4 = v19;
      v60 = 0;
      v7 = v58;
      v32 = [(AMSSQLiteConnection *)selfCopy3 _performResetAfterCorruptionError:v58 error:&v60];
      v33 = v60;
      v34 = v33;
      v35 = 0x1E73B0000uLL;
      if (!v32)
      {
        break;
      }

      v8 = 0;
      if ((v57 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v7 = v34;
LABEL_29:
    sharedConfig = [*(v35 + 3552) sharedConfig];
    if (!sharedConfig)
    {
      sharedConfig = [*(v35 + 3552) sharedConfig];
    }

    oSLogObject2 = [sharedConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v38 = v7;
      v39 = AMSLogKey();
      v40 = selfCopy3;
      v41 = v39;
      v42 = MEMORY[0x1E696AEC0];
      v43 = v40;
      v44 = objc_opt_class();
      v45 = v44;
      v46 = v5;
      if (v41)
      {
        v26 = AMSLogKey();
        [v42 stringWithFormat:@"%@: [%@] ", v45, v26];
      }

      else
      {
        [v42 stringWithFormat:@"%@: ", v44];
      }
      v47 = ;
      databasePath2 = [(AMSSQLiteConnectionOptions *)v43->_options databasePath];
      v49 = AMSHashIfNeeded(databasePath2);
      *buf = 138543874;
      v65 = v47;
      v66 = 2114;
      v67 = v49;
      v68 = 2112;
      *v69 = v38;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Error opening database. path = %{public}@ | error = %@", buf, 0x20u);

      if (v41)
      {

        v47 = v26;
      }

      v5 = v46;
      v7 = v38;
    }

    if (error)
    {
      v50 = v7;
      *error = v7;
    }

LABEL_40:
  }

  return v5;
}

- (BOOL)_performResetAfterCorruptionError:(id)error error:(id *)a4
{
  v51 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      options = self->_options;
      v13 = v11;
      databasePath = [(AMSSQLiteConnectionOptions *)options databasePath];
      v15 = AMSLogableError(errorCopy);
      *buf = 138543874;
      v46 = v11;
      v47 = 2114;
      v48 = databasePath;
      v49 = 2114;
      v50 = v15;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Asking delegate to reset database after corruption: %{public}@, error = %{public}@", buf, 0x20u);
    }

    v16 = objc_loadWeakRetained(&self->_delegate);
    v44 = 0;
    v17 = [v16 connection:self needsResetForCorruptionError:errorCopy error:&v44];
    v18 = v44;

    if ((v17 & 1) == 0)
    {
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = AMSError(0, @"Database Reset Error", @"AMSSQLiteConnecton delegate failed to reset the database, but did not return an error", errorCopy);
      }

      v30 = v19;
      v31 = +[AMSLogConfig sharedConfig];
      if (!v31)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v31 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v39 = objc_opt_class();
      v40 = self->_options;
      v35 = v39;
      databasePath2 = [(AMSSQLiteConnectionOptions *)v40 databasePath];
      v37 = AMSLogableError(v30);
      *buf = 138543874;
      v46 = v39;
      v47 = 2114;
      v48 = databasePath2;
      v49 = 2114;
      v50 = v37;
      v38 = "%{public}@: Delegate failed to reset database after corruption: %{public}@, error = %{public}@";
LABEL_26:
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, v38, buf, 0x20u);

LABEL_27:
      if (a4)
      {
        v41 = v30;
        *a4 = v30;
      }

      v20 = 0;
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  if (![(AMSSQLiteConnectionOptions *)self->_options isReadOnly])
  {
    v21 = +[AMSLogConfig sharedConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = self->_options;
      v25 = v23;
      databasePath3 = [(AMSSQLiteConnectionOptions *)v24 databasePath];
      v27 = AMSLogableError(errorCopy);
      *buf = 138543874;
      v46 = v23;
      v47 = 2114;
      v48 = databasePath3;
      v49 = 2114;
      v50 = v27;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: Truncating database after corruption: %{public}@, error = %{public}@", buf, 0x20u);
    }

    databasePath4 = [(AMSSQLiteConnectionOptions *)self->_options databasePath];
    v43 = 0;
    v29 = AMSSQLiteTruncateDatabase(databasePath4, &v43);
    v18 = v43;

    if (!v29)
    {
      v30 = AMSErrorBySettingUnderlyingError(v18, errorCopy);
      v31 = +[AMSLogConfig sharedConfig];
      if (!v31)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v31 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v33 = objc_opt_class();
      v34 = self->_options;
      v35 = v33;
      databasePath2 = [(AMSSQLiteConnectionOptions *)v34 databasePath];
      v37 = AMSLogableError(v30);
      *buf = 138543874;
      v46 = v33;
      v47 = 2114;
      v48 = databasePath2;
      v49 = 2114;
      v50 = v37;
      v38 = "%{public}@: Failed to truncate database after corruption: %{public}@, error = %{public}@";
      goto LABEL_26;
    }

LABEL_16:
    v20 = 1;
LABEL_30:

    goto LABEL_31;
  }

  v20 = 0;
LABEL_31:

  return v20;
}

- (id)_prepareStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__61;
  v15 = __Block_byref_object_dispose__61;
  v16 = 0;
  uTF8String = [statementCopy UTF8String];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__AMSSQLiteConnection__prepareStatement_error___block_invoke;
  v10[3] = &unk_1E73BBF48;
  v10[5] = &v11;
  v10[6] = uTF8String;
  v10[4] = self;
  [(AMSSQLiteConnection *)self _executeWithError:error usingBlock:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __47__AMSSQLiteConnection__prepareStatement_error___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), *(a1 + 48), -1, &ppStmt, 0);
  if (v2 - 100 < 2 || v2 == 0)
  {
    v4 = [AMSSQLiteStatement alloc];
    v5 = [(AMSSQLiteStatement *)v4 initWithStatement:ppStmt onConnection:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    sqlite3_finalize(ppStmt);
  }

  return v2;
}

- (BOOL)_resetAfterCorruptionError:(id)error error:(id *)a4
{
  errorCopy = error;
  if (self->_didResetForCorruption)
  {
    v7 = 0;
  }

  else
  {
    v8 = 1;
    self->_didResetForCorruption = 1;
    v13 = 0;
    v9 = [(AMSSQLiteConnection *)self _resetAfterIOError:errorCopy error:&v13];
    v7 = v13;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v12 = 0;
  if ([(AMSSQLiteConnection *)self _closeDueToError:v7 error:&v12])
  {
    v10 = v7;
  }

  else
  {
    v10 = v12;
  }

  if ([(AMSSQLiteConnection *)self _performResetAfterCorruptionError:v10 error:a4])
  {
    self->_didResetForCorruption = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (BOOL)_resetAfterIOError:(id)error error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    options = self->_options;
    v11 = v9;
    databasePath = [(AMSSQLiteConnectionOptions *)options databasePath];
    *buf = 138543618;
    v25 = v9;
    v26 = 2114;
    v27 = databasePath;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Reopening database after IO error: %{public}@", buf, 0x16u);
  }

  afterTransactionBlocks = self->_afterTransactionBlocks;
  v14 = afterTransactionBlocks;
  transactionDepth = self->_transactionDepth;
  if ([(AMSSQLiteConnection *)self _closeDueToError:errorCopy error:a4])
  {
    v23 = 0;
    v16 = [(AMSSQLiteConnection *)self _openWithError:&v23];
    v17 = v23;
    v18 = v17;
    if (v16)
    {
      if (!transactionDepth)
      {
        v21 = 1;
        goto LABEL_18;
      }

      v19 = sqlite3_exec(self->_database, "BEGIN DEFERRED TRANSACTION", 0, 0, 0);
      if (!v19)
      {
        objc_storeStrong(&self->_afterTransactionBlocks, afterTransactionBlocks);
        self->_transactionDepth = transactionDepth;
        v21 = 1;
        self->_transactionWantsRollback = 1;
        goto LABEL_18;
      }

      if (a4)
      {
        v20 = AMSSQLiteCreateError(-7708, @"Failed to Begin Transaction After I/O Error", v19, errorCopy);
LABEL_14:
        v21 = 0;
        *a4 = v20;
LABEL_18:

        goto LABEL_19;
      }
    }

    else if (a4)
    {
      v20 = AMSErrorBySettingUnderlyingError(v17, errorCopy);
      goto LABEL_14;
    }

    v21 = 0;
    goto LABEL_18;
  }

  v21 = 0;
LABEL_19:

  return v21;
}

- (id)_statementForPreparedStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v7 = [(NSMapTable *)self->_preparedStatements objectForKey:statementCopy];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = [statementCopy SQL];
    v13 = 0;
    v8 = [(AMSSQLiteConnection *)self _prepareStatement:v10 error:&v13];
    v9 = v13;

    if (v8)
    {
      [(NSMapTable *)self->_preparedStatements setObject:v8 forKey:statementCopy];
    }

    else if (error)
    {
      v11 = v9;
      v8 = 0;
      *error = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_verifiedStatementForPreparedStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  if ([statementCopy connectionPointer] == self)
  {
    v17 = 0;
    v9 = [(AMSSQLiteConnection *)self _openWithError:&v17];
    v10 = v17;
    v8 = v10;
    if (v9)
    {
      v16 = v10;
      v11 = [(AMSSQLiteConnection *)self _statementForPreparedStatement:statementCopy error:&v16];
      v12 = v16;

      if (v11)
      {
        if (-[AMSSQLiteConnectionOptions isReadOnly](self->_options, "isReadOnly") && ([v11 isReadOnly] & 1) == 0)
        {
          v13 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1F0738718 code:-7701 userInfo:0];

          v7 = 0;
          v12 = v13;
        }

        else
        {
          v7 = v11;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = v12;
      if (!error)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
      if (!error)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Statement from a different connection"];
    v7 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_16;
    }
  }

  if (!v7)
  {
    v14 = v8;
    *error = v8;
  }

LABEL_16:

  return v7;
}

- (id)_verifiedStatementForSQL:(id)l error:(id *)error
{
  lCopy = l;
  v17 = 0;
  v7 = [(AMSSQLiteConnection *)self _openWithError:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    v16 = v8;
    v10 = [(AMSSQLiteConnection *)self _prepareStatement:lCopy error:&v16];
    v11 = v16;

    if (v10)
    {
      if (-[AMSSQLiteConnectionOptions isReadOnly](self->_options, "isReadOnly") && ([v10 isReadOnly] & 1) == 0)
      {
        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1F0738718 code:-7701 userInfo:0];

        [v10 finalizeStatement];
        v12 = 0;
        v11 = v13;
      }

      else
      {
        v12 = v10;
      }
    }

    else
    {
      v12 = 0;
    }

    v9 = v11;
    if (!error)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
    if (!error)
    {
      goto LABEL_13;
    }
  }

  if (!v12)
  {
    v14 = v9;
    *error = v9;
  }

LABEL_13:

  return v12;
}

- (AMSSQLiteConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end