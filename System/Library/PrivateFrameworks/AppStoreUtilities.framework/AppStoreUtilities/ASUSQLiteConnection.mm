@interface ASUSQLiteConnection
- (ASUSQLiteConnection)initWithOptions:(id)options;
- (ASUSQLiteConnectionDelegate)delegate;
- (BOOL)_open;
- (BOOL)executePreparedStatement:(id)statement error:(id *)error bindings:(id)bindings;
- (BOOL)executeStatement:(id)statement error:(id *)error bindings:(id)bindings;
- (BOOL)finalizePreparedStatement:(id)statement error:(id *)error;
- (BOOL)performSavepoint:(id)savepoint;
- (BOOL)performTransaction:(id)transaction error:(id *)error;
- (BOOL)tableExists:(id)exists;
- (id)_prepareStatement:(void *)statement error:;
- (id)_verifiedStatementForPreparedStatement:(void *)statement error:;
- (id)_verifiedStatementForSQL:(void *)l error:;
- (id)prepareStatement:(id)statement error:(id *)error;
- (int64_t)lastChangeCount;
- (uint64_t)_close;
- (uint64_t)_executeStatement:(void *)statement error:;
- (uint64_t)_executeWithError:(void *)error usingBlock:;
- (uint64_t)_resetAfterCorruptionError;
- (void)dealloc;
- (void)dispatchAfterTransaction:(id)transaction;
- (void)executePreparedQuery:(id)query withResults:(id)results;
- (void)executeQuery:(id)query withResults:(id)results;
@end

@implementation ASUSQLiteConnection

- (ASUSQLiteConnection)initWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = ASUSQLiteConnection;
  v5 = [(ASUSQLiteConnection *)&v11 init];
  if (v5)
  {
    v6 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v6;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    preparedStatements = v5->_preparedStatements;
    v5->_preparedStatements = strongToStrongObjectsMapTable;
  }

  return v5;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_database)
  {
    v3 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      databasePath = [(ASUSQLiteConnectionOptions *)self->_options databasePath];
      *buf = 138543362;
      v8 = databasePath;
      _os_log_fault_impl(&dword_2400F8000, v3, OS_LOG_TYPE_FAULT, "Connection taken down HARD, please call close before deallocating: %{public}@", buf, 0xCu);
    }

    sqlite3_close_v2(self->_database);
  }

  v6.receiver = self;
  v6.super_class = ASUSQLiteConnection;
  [(ASUSQLiteConnection *)&v6 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_close
{
  v16 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      objectEnumerator = [*(result + 32) objectEnumerator];
      v3 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v12;
        do
        {
          v6 = 0;
          do
          {
            if (*v12 != v5)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            [*(*(&v11 + 1) + 8 * v6++) finalizeStatement];
          }

          while (v4 != v6);
          v4 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v4);
      }

      [*(v1 + 32) removeAllObjects];
      stmt = sqlite3_next_stmt(*(v1 + 16), 0);
      if (stmt)
      {
        v8 = stmt;
        do
        {
          sqlite3_finalize(v8);
          v8 = sqlite3_next_stmt(*(v1 + 16), v8);
        }

        while (v8);
      }

      if (sqlite3_close(*(v1 + 16)))
      {
        result = 0;
      }

      else
      {
        v9 = *(v1 + 8);
        *(v1 + 8) = 0;

        *(v1 + 16) = 0;
        *(v1 + 40) = 0;
        result = 1;
        *(v1 + 48) = 0;
      }
    }

    else
    {
      result = 1;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dispatchAfterTransaction:(id)transaction
{
  transactionCopy = transaction;
  v10 = transactionCopy;
  if (self->_transactionDepth)
  {
    if (!self->_afterTransactionBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      afterTransactionBlocks = self->_afterTransactionBlocks;
      self->_afterTransactionBlocks = v5;

      transactionCopy = v10;
    }

    v7 = [transactionCopy copy];
    v8 = self->_afterTransactionBlocks;
    v9 = MEMORY[0x245CB9940]();
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
  v8 = [(ASUSQLiteConnection *)&self->super.isa _verifiedStatementForPreparedStatement:queryCopy error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = [[ASUSQLiteQueryResults alloc] initWithStatement:v8];
  }

  else
  {
    v10 = 0;
  }

  resultsCopy[2](resultsCopy, v10, v9);
  [v8 clearBindings];
  [v8 reset];
}

- (id)_verifiedStatementForPreparedStatement:(void *)statement error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (v5)
    {
      v7 = v5[1];
    }

    else
    {
      v7 = 0;
    }

    if (v7 == self)
    {
      if ([(ASUSQLiteConnection *)self _open])
      {
        v9 = v6;
        v10 = [self[4] objectForKey:v9];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = 0;
        }

        else
        {
          if (v6)
          {
            v16 = v9[2];
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;
          v20 = 0;
          v11 = [(ASUSQLiteConnection *)self _prepareStatement:v17 error:&v20];
          v13 = v20;

          if (v11)
          {
            [self[4] setObject:v11 forKey:v9];
            v12 = 0;
          }

          else
          {
            v18 = v13;
            v12 = v13;
          }
        }

        v8 = v12;
        if (v11)
        {
          if ([self[7] isReadOnly] && (objc_msgSend(v11, "isReadOnly") & 1) == 0)
          {
            v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASUSQLiteErrorDomain" code:2 userInfo:0];

            self = 0;
            v8 = v19;
          }

          else
          {
            self = v11;
          }
        }

        else
        {
          self = 0;
        }

        if (statement)
        {
LABEL_11:
          if (!self)
          {
            v14 = v8;
            *statement = v8;
          }
        }

LABEL_13:

        goto LABEL_14;
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASUSQLiteErrorDomain" code:1 userInfo:0];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Statement from a different connection"];
      v8 = 0;
    }

    self = 0;
    if (statement)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_14:

  return self;
}

- (BOOL)executePreparedStatement:(id)statement error:(id *)error bindings:(id)bindings
{
  bindingsCopy = bindings;
  v16 = 0;
  v9 = [(ASUSQLiteConnection *)&self->super.isa _verifiedStatementForPreparedStatement:statement error:&v16];
  v10 = v16;
  if (v9)
  {
    if (bindingsCopy)
    {
      bindingsCopy[2](bindingsCopy, v9);
    }

    v15 = v10;
    v11 = [(ASUSQLiteConnection *)self _executeStatement:v9 error:&v15];
    v12 = v15;

    if (bindingsCopy)
    {
      [v9 clearBindings];
    }

    v10 = v12;
  }

  else
  {
    v11 = 0;
  }

  [v9 reset];
  if (error && (v11 & 1) == 0)
  {
    v13 = v10;
    *error = v10;
  }

  return v11;
}

- (uint64_t)_executeStatement:(void *)statement error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__ASUSQLiteConnection__executeStatement_error___block_invoke;
    v10[3] = &unk_278C97F58;
    v7 = v5;
    v11 = v7;
    v8 = [(ASUSQLiteConnection *)self _executeWithError:statement usingBlock:v10];
    if (v8)
    {
      [v7 reset];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)executeQuery:(id)query withResults:(id)results
{
  v13[4] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  resultsCopy = results;
  v13[0] = 0;
  v8 = [(ASUSQLiteConnection *)&self->super.isa _verifiedStatementForSQL:queryCopy error:v13];
  v9 = v13[0];
  v10 = [[ASUSQLitePreparedStatement alloc] initWithConnection:queryCopy SQL:?];
  if (v10)
  {
    [(NSMapTable *)self->_preparedStatements setObject:v8 forKey:v10];
  }

  if (v8)
  {
    v11 = [[ASUSQLiteQueryResults alloc] initWithStatement:v8];
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

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_verifiedStatementForSQL:(void *)l error:
{
  v5 = a2;
  if (self)
  {
    if ([(ASUSQLiteConnection *)self _open])
    {
      v11 = 0;
      v6 = [(ASUSQLiteConnection *)self _prepareStatement:v5 error:&v11];
      v7 = v11;
      if (v6)
      {
        if ([self[7] isReadOnly] && (objc_msgSend(v6, "isReadOnly") & 1) == 0)
        {
          v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASUSQLiteErrorDomain" code:2 userInfo:0];

          [v6 finalizeStatement];
          self = 0;
          v7 = v8;
        }

        else
        {
          self = v6;
        }
      }

      else
      {
        self = 0;
      }

      if (l)
      {
LABEL_12:
        if (!self)
        {
          v9 = v7;
          *l = v7;
        }
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASUSQLiteErrorDomain" code:1 userInfo:0];
      self = 0;
      if (l)
      {
        goto LABEL_12;
      }
    }
  }

  return self;
}

- (BOOL)executeStatement:(id)statement error:(id *)error bindings:(id)bindings
{
  bindingsCopy = bindings;
  v18 = 0;
  statementCopy = statement;
  v10 = [(ASUSQLiteConnection *)&self->super.isa _verifiedStatementForSQL:statementCopy error:&v18];
  v11 = v18;
  v12 = [[ASUSQLitePreparedStatement alloc] initWithConnection:statementCopy SQL:?];

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
  v13 = [(ASUSQLiteConnection *)self _executeStatement:v10 error:&v17];
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
    if ((v13 & 1) == 0)
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
  v13 = 0;
  v7 = [(ASUSQLiteConnection *)&self->super.isa _verifiedStatementForPreparedStatement:statementCopy error:&v13];
  v8 = v13;
  if (!v7)
  {
    v10 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = ASUSQLiteCreateErrorForResultCode([v7 finalizeStatement]);

  v10 = v9 == 0;
  [(NSMapTable *)self->_preparedStatements removeObjectForKey:statementCopy];
  v8 = v9;
  if (error)
  {
LABEL_3:
    v11 = v8;
    *error = v8;
  }

LABEL_4:

  return v10;
}

- (int64_t)lastChangeCount
{
  if ([(ASUSQLiteConnection *)self _open])
  {
    return sqlite3_changes(self->_database);
  }

  else
  {
    return 0;
  }
}

- (BOOL)_open
{
  if (!self)
  {
    return 0;
  }

  v2 = 1;
  if (!*(self + 16))
  {
    db = 0;
    v3 = 1;
    while (1)
    {
      v4 = ASUSQLiteOpenDatabaseAndApplyOptions(&db, *(self + 56));
      v2 = v4 == 0;
      if (!v4)
      {
        break;
      }

      if (v4 <= 0x1Au && ((1 << v4) & 0x4000C02) != 0)
      {
        v6 = v3 & [(ASUSQLiteConnection *)self _resetAfterCorruptionError];
        v3 = 0;
        if (v6)
        {
          continue;
        }
      }

      return v2;
    }

    v7 = db;
    *(self + 16) = db;
    sqlite3_create_function(v7, "timestamp", 0, 1, 0, _timeIntervalSinceReferenceDate, 0, 0);
  }

  return v2;
}

- (BOOL)performSavepoint:(id)savepoint
{
  savepointCopy = savepoint;
  v5 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v8 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_285214D50];
  v9 = [v5 stringWithFormat:@"SP_%@", v8];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"SAVEPOINT %@", v9];
  LODWORD(uUIDString) = [(ASUSQLiteConnection *)self executeStatement:v10 error:0];

  if (!uUIDString)
  {
    goto LABEL_5;
  }

  if (!savepointCopy[2](savepointCopy))
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"ROLLBACK TRANSACTION TO SAVEPOINT %@", v9];
    [(ASUSQLiteConnection *)self executeStatement:v13 error:0];

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"RELEASE SAVEPOINT %@", v9];
  v12 = [(ASUSQLiteConnection *)self executeStatement:v11 error:0];

LABEL_6:
  return v12;
}

- (BOOL)performTransaction:(id)transaction error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v22[0] = 0;
  transactionDepth = self->_transactionDepth;
  if (transactionDepth < 1)
  {
    if (![(ASUSQLiteConnection *)self executeStatement:@"BEGIN DEFERRED TRANSACTION" error:v22])
    {
      goto LABEL_24;
    }

    self->_transactionDepth = 1;
    self->_transactionWantsRollback = 0;
  }

  else
  {
    self->_transactionDepth = transactionDepth + 1;
    if (self->_transactionWantsRollback)
    {
      if (error)
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASUSQLiteErrorDomain" code:6 userInfo:0];
LABEL_22:
        v9 = 0;
        *error = v8;
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  os_variant_has_internal_content();
  v9 = transactionCopy[2](transactionCopy);
  v10 = self->_transactionDepth;
  v11 = self->_transactionWantsRollback | v9 ^ 1;
  self->_transactionWantsRollback = v11 & 1;
  self->_transactionDepth = --v10;
  if (!v10)
  {
    if (v11)
    {
      if (v22[0])
      {
        v12 = 0;
      }

      else
      {
        v12 = v22;
      }

      [(ASUSQLiteConnection *)self executeStatement:@"ROLLBACK TRANSACTION" error:v12];
    }

    else
    {
      [(ASUSQLiteConnection *)self executeStatement:@"COMMIT TRANSACTION" error:v22];
    }

    afterTransactionBlocks = self->_afterTransactionBlocks;
    if (afterTransactionBlocks)
    {
      v14 = [(NSMutableArray *)afterTransactionBlocks copy];
      v15 = self->_afterTransactionBlocks;
      self->_afterTransactionBlocks = 0;

      v16 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__ASUSQLiteConnection__flushAfterTransactionBlocks__block_invoke;
      block[3] = &unk_278C97C28;
      v24 = v14;
      v17 = v14;
      dispatch_async(v16, block);
    }
  }

  if (error)
  {
    v18 = v9;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    if (v22[0])
    {
      v8 = v22[0];
      goto LABEL_22;
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASUSQLiteErrorDomain" code:0 userInfo:0];
    *error = v19;

LABEL_24:
    v9 = 0;
  }

LABEL_25:

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)prepareStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v10 = 0;
  if ([(ASUSQLiteConnection *)self _open])
  {
    v7 = [(ASUSQLiteConnection *)self _prepareStatement:statementCopy error:&v10];
    if (v7)
    {
      v8 = [[ASUSQLitePreparedStatement alloc] initWithConnection:statementCopy SQL:?];
      [(NSMapTable *)self->_preparedStatements setObject:v7 forKey:v8];
    }

    else
    {
      v8 = 0;
    }

    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ASUSQLiteErrorDomain" code:1 userInfo:0];
    v10 = v8 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v8)
  {
    *error = v10;
  }

LABEL_10:

  return v8;
}

- (id)_prepareStatement:(void *)statement error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__2;
    v15 = __Block_byref_object_dispose__2;
    v16 = 0;
    uTF8String = [v5 UTF8String];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__ASUSQLiteConnection__prepareStatement_error___block_invoke;
    v10[3] = &unk_278C97F80;
    v10[5] = &v11;
    v10[6] = uTF8String;
    v10[4] = self;
    [(ASUSQLiteConnection *)self _executeWithError:statement usingBlock:v10];
    v8 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)tableExists:(id)exists
{
  existsCopy = exists;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ASUSQLiteConnection_tableExists___block_invoke;
  v7[3] = &unk_278C97930;
  v5 = existsCopy;
  v8 = v5;
  v9 = &v10;
  [(ASUSQLiteConnection *)self executeQuery:@"SELECT name FROM sqlite_master where name = ?" withResults:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __35__ASUSQLiteConnection_tableExists___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (uint64_t)_executeWithError:(void *)error usingBlock:
{
  v38 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!self)
  {
    v15 = 0;
    goto LABEL_31;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    buf[0] = 0;
    v9 = errorCopy[2](errorCopy, buf);
    if (v9 <= 9u)
    {
      if (v9 - 5 >= 2)
      {
        if (!v9)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if (v6 >= 10)
      {
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASUSQLiteErrorDomain" code:3 userInfo:0];
        goto LABEL_24;
      }

      usleep(0xF4240u);
      ++v6;
      goto LABEL_10;
    }

    if (v9 <= 0x63u)
    {
      break;
    }

    if (v9 != 100)
    {
      if (v9 == 101)
      {
LABEL_26:
        v11 = 0;
        v7 = 1;
LABEL_27:
        objc_autoreleasePoolPop(v8);
        if (!a2)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }

LABEL_23:
      v13 = ASUSQLiteCreateErrorForResultCode(v9);
LABEL_24:
      v11 = v13;
      goto LABEL_27;
    }

    v7 = 1;
LABEL_10:
    v10 = buf[0];
    objc_autoreleasePoolPop(v8);
    if (v10)
    {
      v11 = 0;
      if (!a2)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }
  }

  if (v9 != 10)
  {
    if (v9 == 11 || v9 == 26)
    {
      v11 = ASUSQLiteCreateErrorForResultCode(v9);
      objc_autoreleasePoolPop(v8);
      [(ASUSQLiteConnection *)self _resetAfterCorruptionError];
      if (!a2)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v11 = ASUSQLiteCreateErrorForResultCode(v9);
  objc_autoreleasePoolPop(v8);
  v18 = ASULogHandleForCategory(1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v22 = objc_opt_class();
    v23 = *(self + 56);
    v24 = v22;
    databasePath = [v23 databasePath];
    *buf = 138412546;
    v35 = v22;
    v36 = 2114;
    v37 = databasePath;
    _os_log_error_impl(&dword_2400F8000, v18, OS_LOG_TYPE_ERROR, "[%@]: Reopening database after IO error: %{public}@", buf, 0x16u);
  }

  v19 = *(self + 8);
  v20 = v19;
  v21 = *(self + 40);
  if ([(ASUSQLiteConnection *)self _close]&& [(ASUSQLiteConnection *)self _open])
  {
    if (v21)
    {
      if (sqlite3_exec(*(self + 16), "BEGIN DEFERRED TRANSACTION", 0, 0, 0))
      {
        goto LABEL_38;
      }

      objc_storeStrong((self + 8), v19);
      *(self + 40) = v21;
      *(self + 48) = 1;
    }

    WeakRetained = objc_loadWeakRetained((self + 24));
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v28 = ASULogHandleForCategory(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = *(self + 56);
        v32 = v30;
        databasePath2 = [v31 databasePath];
        *buf = 138412546;
        v35 = v30;
        v36 = 2114;
        v37 = databasePath2;
        _os_log_error_impl(&dword_2400F8000, v28, OS_LOG_TYPE_ERROR, "[%@]: Asking delegate to reset database after reopen: %{public}@", buf, 0x16u);
      }

      v29 = objc_loadWeakRetained((self + 24));
      [v29 connectionNeedsResetForReopen:self];
    }
  }

  else
  {
LABEL_38:
    [(ASUSQLiteConnection *)self _resetAfterCorruptionError];
  }

  if (!a2)
  {
    goto LABEL_30;
  }

LABEL_28:
  if ((v7 & 1) == 0)
  {
    v14 = v11;
    *a2 = v11;
  }

LABEL_30:

  v15 = v7;
LABEL_31:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (uint64_t)_resetAfterCorruptionError
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((self + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = *(self + 56);
      v13 = v11;
      databasePath = [v12 databasePath];
      v19 = 138412546;
      v20 = v11;
      v21 = 2114;
      v22 = databasePath;
      _os_log_error_impl(&dword_2400F8000, v4, OS_LOG_TYPE_ERROR, "[%@]: Asking delegate to reset database after corruption: %{public}@", &v19, 0x16u);
    }

    databasePath3 = objc_loadWeakRetained((self + 24));
    v6 = [databasePath3 connectionNeedsResetForCorruption:self];
LABEL_10:
    v7 = v6;

    goto LABEL_11;
  }

  if (([*(self + 56) isReadOnly] & 1) == 0)
  {
    v8 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = *(self + 56);
      v17 = v15;
      databasePath2 = [v16 databasePath];
      v19 = 138412546;
      v20 = v15;
      v21 = 2114;
      v22 = databasePath2;
      _os_log_error_impl(&dword_2400F8000, v8, OS_LOG_TYPE_ERROR, "[%@]: Deleting database after corruption: %{public}@", &v19, 0x16u);
    }

    databasePath3 = [*(self + 56) databasePath];
    [(ASUSQLiteConnection *)self _close];
    v6 = ASUSQLiteDeleteDatabase(databasePath3, 0);
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

void __51__ASUSQLiteConnection__flushAfterTransactionBlocks__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __47__ASUSQLiteConnection__prepareStatement_error___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), *(a1 + 48), -1, &ppStmt, 0);
  if (v2 - 100 < 2 || v2 == 0)
  {
    v4 = [ASUSQLiteStatement alloc];
    v5 = [(ASUSQLiteStatement *)v4 initWithStatement:ppStmt onConnection:*(a1 + 32)];
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

- (ASUSQLiteConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end