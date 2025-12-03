@interface SQLiteConnection
- (BOOL)_close;
- (BOOL)_executeStatement:(id)statement error:(id *)error;
- (BOOL)_executeWithError:(id *)error usingBlock:(id)block;
- (BOOL)_open;
- (BOOL)_performResetAfterCorruptionError;
- (BOOL)_resetAfterCorruptionError;
- (BOOL)_resetAfterIOError;
- (BOOL)addFunction:(id)function;
- (BOOL)executePreparedStatement:(id)statement error:(id *)error bindings:(id)bindings;
- (BOOL)executeStatement:(id)statement error:(id *)error bindings:(id)bindings;
- (BOOL)finalizePreparedStatement:(id)statement error:(id *)error;
- (BOOL)performSavepoint:(id)savepoint;
- (BOOL)removeFunction:(id)function;
- (BOOL)removeFunctionNamed:(id)named withArgumentCount:(int64_t)count;
- (BOOL)tableExists:(id)exists;
- (BOOL)truncate;
- (NSError)currentError;
- (SQLiteConnection)initWithOptions:(id)options;
- (SQLiteConnectionDelegate)delegate;
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

@implementation SQLiteConnection

- (SQLiteConnection)initWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = SQLiteConnection;
  v5 = [(SQLiteConnection *)&v11 init];
  if (v5)
  {
    v6 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v6;

    v8 = +[NSMapTable strongToStrongObjectsMapTable];
    preparedStatements = v5->_preparedStatements;
    v5->_preparedStatements = v8;
  }

  return v5;
}

- (void)dealloc
{
  if (self->_database)
  {
    if (qword_1002BD420 != -1)
    {
      sub_1001F5698();
    }

    v3 = qword_1002ABFD0;
    if (os_log_type_enabled(qword_1002ABFD0, OS_LOG_TYPE_FAULT))
    {
      sub_1001F56AC(self, v3);
    }

    sqlite3_close_v2(self->_database);
  }

  v4.receiver = self;
  v4.super_class = SQLiteConnection;
  [(SQLiteConnection *)&v4 dealloc];
}

- (void)dispatchAfterTransaction:(id)transaction
{
  transactionCopy = transaction;
  v10 = transactionCopy;
  if (self->_transactionDepth)
  {
    if (!self->_afterTransactionBlocks)
    {
      v5 = objc_alloc_init(NSMutableArray);
      afterTransactionBlocks = self->_afterTransactionBlocks;
      self->_afterTransactionBlocks = v5;

      transactionCopy = v10;
    }

    v7 = [transactionCopy copy];
    v8 = self->_afterTransactionBlocks;
    v9 = objc_retainBlock(v7);
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
  v8 = [(SQLiteConnection *)self _verifiedStatementForPreparedStatement:queryCopy error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = [[SQLiteQueryResults alloc] initWithStatement:v8];
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
  v16 = 0;
  v9 = [(SQLiteConnection *)self _verifiedStatementForPreparedStatement:statement error:&v16];
  v10 = v16;
  if (v9)
  {
    if (bindingsCopy)
    {
      bindingsCopy[2](bindingsCopy, v9);
    }

    v15 = v10;
    v11 = [(SQLiteConnection *)self _executeStatement:v9 error:&v15];
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
  if (error && !v11)
  {
    v13 = v10;
    *error = v10;
  }

  return v11;
}

- (void)executeQuery:(id)query withResults:(id)results
{
  queryCopy = query;
  resultsCopy = results;
  v12 = 0;
  v8 = [(SQLiteConnection *)self _verifiedStatementForSQL:queryCopy error:&v12];
  v9 = v12;
  v10 = [[SQLitePreparedStatement alloc] initWithConnection:self->_database SQL:queryCopy];
  if (v10)
  {
    [(NSMapTable *)self->_preparedStatements setObject:v8 forKey:v10];
  }

  if (v8)
  {
    v11 = [[SQLiteQueryResults alloc] initWithStatement:v8];
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
  v10 = [(SQLiteConnection *)self _verifiedStatementForSQL:statementCopy error:&v18];
  v11 = v18;
  v12 = [[SQLitePreparedStatement alloc] initWithConnection:self->_database SQL:statementCopy];

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
  v13 = [(SQLiteConnection *)self _executeStatement:v10 error:&v17];
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
  v13 = 0;
  v7 = [(SQLiteConnection *)self _verifiedStatementForPreparedStatement:statementCopy error:&v13];
  v8 = v13;
  if (!v7)
  {
    v9 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v9 = sub_1000143F0([v7 finalizeStatement]);
  if (!v9)
  {
    v10 = sub_100014134(self->_database);

    v8 = v10;
  }

  [(NSMapTable *)self->_preparedStatements removeObjectForKey:statementCopy];
  if (error)
  {
LABEL_7:
    if (!v9)
    {
      v11 = v8;
      *error = v8;
    }
  }

LABEL_9:

  return v9;
}

- (int64_t)lastChangeCount
{
  if ([(SQLiteConnection *)self _open])
  {
    return sqlite3_changes(self->_database);
  }

  else
  {
    return 0;
  }
}

- (BOOL)performSavepoint:(id)savepoint
{
  savepointCopy = savepoint;
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];
  v7 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_100296B10];
  v8 = [NSString stringWithFormat:@"SP_%@", v7];

  v9 = [NSString stringWithFormat:@"SAVEPOINT %@", v8];
  LODWORD(uUIDString) = [(SQLiteConnection *)self executeStatement:v9 error:0];

  if (!uUIDString)
  {
    goto LABEL_5;
  }

  if (!savepointCopy[2](savepointCopy))
  {
    v12 = [NSString stringWithFormat:@"ROLLBACK TRANSACTION TO SAVEPOINT %@", v8];
    [(SQLiteConnection *)self executeStatement:v12 error:0];

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = [NSString stringWithFormat:@"RELEASE SAVEPOINT %@", v8];
  v11 = [(SQLiteConnection *)self executeStatement:v10 error:0];

LABEL_6:
  return v11;
}

- (void)performTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactionDepth = self->_transactionDepth;
  if (transactionDepth < 1)
  {
    if (![(SQLiteConnection *)self executeStatement:@"BEGIN DEFERRED TRANSACTION" error:0])
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

  os_variant_has_internal_content();
  v6 = transactionCopy[2](transactionCopy);
  v7 = self->_transactionDepth;
  v8 = self->_transactionWantsRollback | v6 ^ 1;
  self->_transactionWantsRollback = v8 & 1;
  self->_transactionDepth = --v7;
  if (!v7)
  {
    if (v8)
    {
      v9 = @"ROLLBACK TRANSACTION";
    }

    else
    {
      v9 = @"COMMIT TRANSACTION";
    }

    [(SQLiteConnection *)self executeStatement:v9 error:0];
    [(SQLiteConnection *)self _flushAfterTransactionBlocks];
  }

LABEL_10:
}

- (id)prepareStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  if ([(SQLiteConnection *)self _open])
  {
    v12 = 0;
    v7 = [(SQLiteConnection *)self _prepareStatement:statementCopy error:&v12];
    v8 = v12;
    if (v7)
    {
      v9 = [[SQLitePreparedStatement alloc] initWithConnection:self SQL:statementCopy];
      [(NSMapTable *)self->_preparedStatements setObject:v7 forKey:v9];
    }

    else
    {
      v9 = 0;
    }

    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:-7700 userInfo:0];
    v9 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v9)
  {
    v10 = v8;
    *error = v8;
  }

LABEL_10:

  return v9;
}

- (BOOL)truncate
{
  if ([(SQLiteConnectionOptions *)self->_options isReadOnly]|| ![(SQLiteConnection *)self _open])
  {
    return 0;
  }

  [(SQLiteConnection *)self _finalizeAllStatements];
  v6 = 129;
  v3 = sqlite3_file_control(self->_database, 0, 101, &v6);
  v4 = v3 == 0;
  if (!v3)
  {
    sqlite3_close(self->_database);
    self->_database = 0;
  }

  return v4;
}

- (BOOL)tableExists:(id)exists
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000128D4;
  v6[3] = &unk_100278430;
  existsCopy = exists;
  v7 = existsCopy;
  v8 = &v9;
  [(SQLiteConnection *)self executeQuery:@"SELECT name FROM sqlite_master where name = ?" withResults:v6];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

- (BOOL)addFunction:(id)function
{
  functionCopy = function;
  if (self->_database)
  {
    if (qword_1002BD420 != -1)
    {
      sub_1001F5698();
    }

    v5 = qword_1002ABFD0;
    if (os_log_type_enabled(qword_1002ABFD0, OS_LOG_TYPE_FAULT))
    {
      sub_1001F58A0(v5);
    }
  }

  else
  {
    if (qword_1002BD420 != -1)
    {
      sub_1001F5698();
    }

    v6 = qword_1002ABFD0;
    if (os_log_type_enabled(qword_1002ABFD0, OS_LOG_TYPE_FAULT))
    {
      sub_1001F58E4(self, v6);
    }
  }

  return 0;
}

- (BOOL)removeFunction:(id)function
{
  functionCopy = function;
  if (qword_1002BD420 != -1)
  {
    sub_1001F5698();
  }

  v4 = qword_1002ABFD0;
  if (os_log_type_enabled(qword_1002ABFD0, OS_LOG_TYPE_FAULT))
  {
    sub_1001F58A0(v4);
  }

  return 0;
}

- (BOOL)removeFunctionNamed:(id)named withArgumentCount:(int64_t)count
{
  countCopy = count;
  namedCopy = named;
  v7 = namedCopy;
  database = self->_database;
  if (database)
  {
    v9 = sqlite3_create_function_v2(database, [namedCopy UTF8String], countCopy, 1, 0, 0, 0, 0, 0) == 0;
  }

  else
  {
    if (qword_1002BD420 != -1)
    {
      sub_1001F5698();
    }

    v10 = qword_1002ABFD0;
    if (os_log_type_enabled(qword_1002ABFD0, OS_LOG_TYPE_ERROR))
    {
      sub_1001F5978(self, v10);
    }

    v9 = 0;
  }

  return v9;
}

- (NSError)currentError
{
  database = self->_database;
  if (database)
  {
    database = sub_100014134(database);
    v2 = vars8;
  }

  return database;
}

- (BOOL)_close
{
  if (!self->_database)
  {
    return 1;
  }

  if (qword_1002BD420 != -1)
  {
    sub_1001F5698();
  }

  v3 = qword_1002ABFD0;
  if (os_log_type_enabled(qword_1002ABFD0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    options = self->_options;
    v7 = v5;
    databasePath = [(SQLiteConnectionOptions *)options databasePath];
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = databasePath;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Closing database at path: %{public}@", &v11, 0x16u);
  }

  [(SQLiteConnection *)self _finalizeAllStatements];
  if (sqlite3_close(self->_database))
  {
    return 0;
  }

  afterTransactionBlocks = self->_afterTransactionBlocks;
  self->_afterTransactionBlocks = 0;

  self->_database = 0;
  self->_transactionDepth = 0;
  result = 1;
  self->_transactionWantsRollback = 0;
  return result;
}

- (BOOL)_executeStatement:(id)statement error:(id *)error
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012D68;
  v9[3] = &unk_1002787C8;
  statementCopy = statement;
  v10 = statementCopy;
  v7 = [(SQLiteConnection *)self _executeWithError:error usingBlock:v9];
  if (v7)
  {
    [statementCopy reset];
  }

  return v7;
}

- (BOOL)_executeWithError:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = objc_autoreleasePoolPush();
    v17 = 0;
    v10 = blockCopy[2](blockCopy, &v17);
    if (v10 <= 9)
    {
      if ((v10 - 5) >= 2)
      {
        if (!v10)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      if (v8 >= 10)
      {
        v14 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:-7702 userInfo:0];
        goto LABEL_23;
      }

      usleep(0xF4240u);
      ++v8;
      goto LABEL_9;
    }

    if (v10 <= 99)
    {
      break;
    }

    if (v10 != 100)
    {
      if (v10 == 101)
      {
LABEL_25:
        v12 = 0;
        v7 = 1;
LABEL_26:
        objc_autoreleasePoolPop(v9);
        if (!error)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

LABEL_22:
      v14 = sub_100014134(self->_database);
LABEL_23:
      v12 = v14;
      goto LABEL_26;
    }

    v7 = 1;
LABEL_9:
    v11 = v17;
    objc_autoreleasePoolPop(v9);
    if (v11)
    {
      v12 = 0;
      if (!error)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  if (v10 != 10)
  {
    if (v10 == 11 || v10 == 26)
    {
      v12 = sub_100014134(self->_database);
      objc_autoreleasePoolPop(v9);
      [(SQLiteConnection *)self _resetAfterCorruptionError];
      if (!error)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v12 = sub_100014134(self->_database);
  objc_autoreleasePoolPop(v9);
  [(SQLiteConnection *)self _resetAfterIOError];
  if (!error)
  {
    goto LABEL_29;
  }

LABEL_27:
  if ((v7 & 1) == 0)
  {
    v15 = v12;
    *error = v12;
  }

LABEL_29:

  return v7 & 1;
}

- (void)_finalizeAllStatements
{
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

        [*(*(&v10 + 1) + 8 * v7) finalizeStatement];
        v7 = v7 + 1;
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

- (void)_flushAfterTransactionBlocks
{
  afterTransactionBlocks = self->_afterTransactionBlocks;
  if (afterTransactionBlocks)
  {
    v4 = [(NSMutableArray *)afterTransactionBlocks copy];
    v5 = self->_afterTransactionBlocks;
    self->_afterTransactionBlocks = 0;

    v6 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013120;
    block[3] = &unk_1002785B8;
    v9 = v4;
    v7 = v4;
    dispatch_async(v6, block);
  }
}

- (BOOL)_open
{
  if (self->_database)
  {
    return 1;
  }

  if (qword_1002BD420 != -1)
  {
    sub_1001F5698();
  }

  v4 = qword_1002ABFD0;
  if (os_log_type_enabled(qword_1002ABFD0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    options = self->_options;
    v8 = v6;
    databasePath = [(SQLiteConnectionOptions *)options databasePath];
    *db = 138543618;
    *&db[4] = v6;
    v17 = 2114;
    v18 = databasePath;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Opening database at path: %{public}@", db, 0x16u);
  }

  *db = 0;
  v10 = 1;
  while (1)
  {
    v11 = sub_10001420C(db, self->_options);
    v2 = v11 == 0;
    if (!v11)
    {
      break;
    }

    if (v11 <= 0x1Au && ((1 << v11) & 0x4000C02) != 0)
    {
      v13 = [(SQLiteConnection *)self _performResetAfterCorruptionError]& v10;
      v10 = 0;
      if (v13)
      {
        continue;
      }
    }

    return v2;
  }

  v14 = *db;
  self->_database = *db;
  self->_didResetForCorruption = 0;
  sqlite3_create_function(v14, "timestamp", 0, 1, 0, sub_1000133D0, 0, 0);
  return v2;
}

- (BOOL)_performResetAfterCorruptionError
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (qword_1002BD420 != -1)
    {
      sub_1001F5698();
    }

    v5 = qword_1002ABFA0;
    if (os_log_type_enabled(qword_1002ABFA0, OS_LOG_TYPE_ERROR))
    {
      sub_1001F5AEC(v5);
    }

    databasePath = objc_loadWeakRetained(&self->_delegate);
    v7 = [databasePath connectionNeedsResetForCorruption:self];
LABEL_14:
    v8 = v7;

    return v8;
  }

  if (![(SQLiteConnectionOptions *)self->_options isReadOnly])
  {
    if (qword_1002BD420 != -1)
    {
      sub_1001F5698();
    }

    v9 = qword_1002ABFA0;
    if (os_log_type_enabled(qword_1002ABFA0, OS_LOG_TYPE_ERROR))
    {
      sub_1001F5A14(v9);
    }

    databasePath = [(SQLiteConnectionOptions *)self->_options databasePath];
    v7 = sub_10001440C(databasePath);
    goto LABEL_14;
  }

  return 0;
}

- (id)_prepareStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100013664;
  v14 = sub_100013674;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001367C;
  v9[3] = &unk_1002787F0;
  v9[5] = &v10;
  v9[6] = [statementCopy UTF8String];
  v9[4] = self;
  [(SQLiteConnection *)self _executeWithError:error usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (BOOL)_resetAfterCorruptionError
{
  if (self->_didResetForCorruption || ([(SQLiteConnectionOptions *)self->_options encryptionKeyId], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    [(SQLiteConnection *)self _close];

    return [(SQLiteConnection *)self _performResetAfterCorruptionError];
  }

  else
  {
    self->_didResetForCorruption = 1;

    return [(SQLiteConnection *)self _resetAfterIOError];
  }
}

- (BOOL)_resetAfterIOError
{
  if (qword_1002BD420 != -1)
  {
    sub_1001F5698();
  }

  v3 = qword_1002ABFA0;
  if (os_log_type_enabled(qword_1002ABFA0, OS_LOG_TYPE_ERROR))
  {
    sub_1001F5BA4(v3);
  }

  afterTransactionBlocks = self->_afterTransactionBlocks;
  v5 = afterTransactionBlocks;
  transactionDepth = self->_transactionDepth;
  if (![(SQLiteConnection *)self _close]|| ![(SQLiteConnection *)self _open])
  {
    goto LABEL_9;
  }

  if (transactionDepth)
  {
    if (sqlite3_exec(self->_database, "BEGIN DEFERRED TRANSACTION", 0, 0, 0))
    {
LABEL_9:
      [(SQLiteConnection *)self _close];
      _performResetAfterCorruptionError = [(SQLiteConnection *)self _performResetAfterCorruptionError];
      goto LABEL_10;
    }

    objc_storeStrong(&self->_afterTransactionBlocks, afterTransactionBlocks);
    self->_transactionDepth = transactionDepth;
    self->_transactionWantsRollback = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    if (qword_1002BD420 != -1)
    {
      sub_1001F5C5C();
    }

    v11 = qword_1002ABFA0;
    if (os_log_type_enabled(qword_1002ABFA0, OS_LOG_TYPE_ERROR))
    {
      sub_1001F5C84(v11);
    }

    v12 = objc_loadWeakRetained(&self->_delegate);
    _performResetAfterCorruptionError = [v12 connectionNeedsResetForReopen:self];
  }

  else
  {
    _performResetAfterCorruptionError = 1;
  }

LABEL_10:

  return _performResetAfterCorruptionError;
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
    v8 = [(SQLiteConnection *)self _prepareStatement:v10 error:&v13];
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
    if ([(SQLiteConnection *)self _open])
    {
      v13 = 0;
      v9 = [(SQLiteConnection *)self _statementForPreparedStatement:statementCopy error:&v13];
      v8 = v13;
      if (v9)
      {
        if (-[SQLiteConnectionOptions isReadOnly](self->_options, "isReadOnly") && ([v9 isReadOnly] & 1) == 0)
        {
          v10 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:-7701 userInfo:0];

          v7 = 0;
          v8 = v10;
        }

        else
        {
          v7 = v9;
        }
      }

      else
      {
        v7 = 0;
      }

      if (!error)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:-7700 userInfo:0];
      v7 = 0;
      if (!error)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Statement from a different connection"];
    v7 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_16;
    }
  }

  if (!v7)
  {
    v11 = v8;
    *error = v8;
  }

LABEL_16:

  return v7;
}

- (id)_verifiedStatementForSQL:(id)l error:(id *)error
{
  lCopy = l;
  if ([(SQLiteConnection *)self _open])
  {
    v13 = 0;
    v7 = [(SQLiteConnection *)self _prepareStatement:lCopy error:&v13];
    v8 = v13;
    if (v7)
    {
      if (-[SQLiteConnectionOptions isReadOnly](self->_options, "isReadOnly") && ([v7 isReadOnly] & 1) == 0)
      {
        v10 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:-7701 userInfo:0];

        [v7 finalizeStatement];
        v9 = 0;
        v8 = v10;
      }

      else
      {
        v9 = v7;
      }
    }

    else
    {
      v9 = 0;
    }

    if (!error)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:-7700 userInfo:0];
    v9 = 0;
    if (!error)
    {
      goto LABEL_13;
    }
  }

  if (!v9)
  {
    v11 = v8;
    *error = v8;
  }

LABEL_13:

  return v9;
}

- (SQLiteConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end