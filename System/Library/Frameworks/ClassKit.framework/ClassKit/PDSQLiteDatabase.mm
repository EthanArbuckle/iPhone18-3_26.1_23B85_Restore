@interface PDSQLiteDatabase
+ (BOOL)_stepStatement:(sqlite3_stmt *)statement hasRow:(BOOL *)row resultCode:(int *)code error:(id *)error;
- (BOOL)_enableDisableForeignKeys:(BOOL)keys error:(id *)error;
- (BOOL)_executeSQL:(id)l error:(id *)error retryIfBusy:(BOOL)busy;
- (BOOL)_integerValueForPragma:(id)pragma databaseName:(id)name value:(int64_t *)value error:(id *)error;
- (BOOL)_setPragma:(id)pragma integerValue:(int64_t)value withDatabaseName:(id)name error:(id *)error;
- (BOOL)_verifyDatabaseOpenAndReturnError:(id *)error;
- (BOOL)attachDatabaseWithName:(id)name fileURL:(id)l error:(id *)error;
- (BOOL)detachDatabaseWithName:(id)name error:(id *)error;
- (BOOL)enableIncrementalAutovacuumWithError:(id *)error;
- (BOOL)incrementalVacuumDatabaseIfNeeded:(id)needed error:(id *)error;
- (BOOL)isDatabaseWithNameAttached:(id)attached;
- (BOOL)performTransactionWithType:(int64_t)type error:(id *)error usingBlock:(id)block;
- (BOOL)tableWithName:(id)name containsColumnWithName:(id)withName;
- (BOOL)validateForeignKeysForTable:(id)table databaseName:(id)name error:(id *)error;
- (PDSQLiteDatabase)initWithDatabaseURL:(id)l;
- (id).cxx_construct;
- (id)getLastErrorWithResultCode:(int)code;
- (id)lastInsertRowID;
- (int)_openForWriting:(BOOL)writing error:(id *)error;
- (int64_t)userVersionWithDatabaseName:(id)name error:(id *)error;
- (sqlite3_stmt)_statementForSQL:(id)l cache:(BOOL)cache error:(id *)error;
- (void)_assertNoActiveStatements;
- (void)_resetStatement:(sqlite3_stmt *)statement finalize:(BOOL)finalize;
- (void)accessDatabaseUsingBlock:(id)block;
- (void)clearStatementCache;
- (void)close;
- (void)dealloc;
- (void)onCommit:(id)commit orRollback:(id)rollback;
- (void)onRowUpdate:(id)update;
- (void)performUpdateBlock:(id)block changeType:(int64_t)type;
- (void)releaseMemory;
- (void)requireRollback;
- (void)truncate;
@end

@implementation PDSQLiteDatabase

- (PDSQLiteDatabase)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy && ([lCopy isFileURL] & 1) == 0)
  {

    self = 0;
    [NSException raise:NSInvalidArgumentException format:@"Invalid database URL"];
  }

  v12.receiver = self;
  v12.super_class = PDSQLiteDatabase;
  v6 = [(PDSQLiteDatabase *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    fileURL = v6->_fileURL;
    v6->_fileURL = v7;

    v9 = objc_opt_new();
    tableColumnNameCache = v6->_tableColumnNameCache;
    v6->_tableColumnNameCache = v9;
  }

  return v6;
}

- (void)dealloc
{
  if (self->_db)
  {
    [(PDSQLiteDatabase *)self close];
  }

  v3.receiver = self;
  v3.super_class = PDSQLiteDatabase;
  [(PDSQLiteDatabase *)&v3 dealloc];
}

- (int)_openForWriting:(BOOL)writing error:(id *)error
{
  writingCopy = writing;
  fileURL = self->_fileURL;
  if (fileURL)
  {
    path = [(NSURL *)fileURL path];
  }

  else
  {
    path = @":memory:";
  }

  v32 = path;
  fileSystemRepresentation = [(__CFString *)path fileSystemRepresentation];
  if (writingCopy)
  {
    v10 = 3145734;
  }

  else
  {
    v10 = 3145729;
  }

  busy = sqlite3_open_v2(fileSystemRepresentation, &self->_db, v10, 0);
  if (busy)
  {
    v12 = @"opening database";
  }

  else
  {
    busy = sub_1000479FC(self->_db, "PRAGMA cache_size=-128", 0, 0, 0);
    if (busy)
    {
      v12 = @"setting cache_size";
    }

    else
    {
      busy = sqlite3_busy_timeout(self->_db, 60000);
      if (!busy)
      {
        if (writingCopy)
        {
          busy = sub_1000479FC(self->_db, "PRAGMA journal_mode = WAL", 0, 0, 0);
          if (busy)
          {
            v12 = @"setting journal_mode";
            goto LABEL_13;
          }

          busy = sub_1000479FC(self->_db, "PRAGMA foreign_keys = ON", 0, 0, 0);
          if (busy)
          {
            v12 = @"enabling foreign keys";
            goto LABEL_13;
          }
        }

        busy = ![(PDSQLiteDatabase *)self enableIncrementalAutovacuumWithError:error];
        goto LABEL_21;
      }

      v12 = @"setting busy timeout";
    }
  }

LABEL_13:
  db = self->_db;
  v14 = v12;
  v15 = sqlite3_extended_errcode(db);
  v16 = [NSString stringWithCString:sqlite3_errmsg(db) encoding:4];
  v17 = v14;
  v18 = objc_opt_new();
  v19 = [NSNumber numberWithInt:v15];
  [v18 setObject:v19 forKey:@"extended_error_code"];

  if (v16)
  {
    [v18 setObject:v16 forKey:@"error_message"];
    v20 = v16;
  }

  else
  {
    [v18 setObject:@"missing error message" forKey:@"error_message"];
    v20 = &stru_100206880;
  }

  v21 = [NSMutableString stringWithFormat:@"A SQLite error occurred: (%d) %@", v15, v20];
  [v18 setObject:v17 forKey:@"context"];
  [v21 appendFormat:@" <%@>", v17];
  [v18 setObject:v21 forKey:NSLocalizedDescriptionKey];
  v22 = [NSError errorWithDomain:@"com.apple.SQLite" code:v15 userInfo:v18];

  v23 = v22;
  *buf = v23;
  v38[0] = NSUnderlyingErrorKey;
  v38[1] = NSLocalizedDescriptionKey;
  localizedDescription = [v23 localizedDescription];
  path = v32;
  v25 = [NSString stringWithFormat:@"SQLite error: %@", localizedDescription];
  *&buf[8] = v25;
  v26 = [NSDictionary dictionaryWithObjects:buf forKeys:v38 count:2];

  v27 = [NSError errorWithDomain:@"com.apple.progressd.SQLite" code:4 userInfo:v26];

  if (error)
  {
    v28 = v27;
    *error = v27;
  }

  CLSInitLog();
  v29 = CLSLogDatabase;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    localizedDescription2 = [v27 localizedDescription];
    *buf = 138544130;
    *&buf[4] = v17;
    *&buf[12] = 1024;
    *&buf[14] = busy;
    v34 = 2114;
    v35 = v32;
    v36 = 2112;
    v37 = localizedDescription2;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Error %{public}@: [%d, %{public}@] (%@)", buf, 0x26u);
  }

  [(PDSQLiteDatabase *)self close];
LABEL_21:

  return busy;
}

- (BOOL)_enableDisableForeignKeys:(BOOL)keys error:(id *)error
{
  if (self->_isInTransaction)
  {
    CLSInitLog();
    v5 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Foreign keys cannot be turned on or off while inside a transaction", buf, 2u);
    }

    [NSError cls_assignError:error code:2 format:@"Foreign keys cannot be turned on or off while inside a transaction"];
    return 0;
  }

  else
  {
    keysCopy = keys;
    v9 = @"OFF";
    if (keys)
    {
      v9 = @"ON";
    }

    v10 = [NSString stringWithFormat:@"PRAGMA foreign_keys = %@", v9];
    v11 = sub_1000479FC(self->_db, [v10 UTF8String], 0, 0, 0);
    v6 = v11 == 0;
    if (v11)
    {
      v12 = @"disabling";
      if (keysCopy)
      {
        v12 = @"enabling";
      }

      v13 = [NSString stringWithFormat:@"%@ foreign keys", v12];
      [NSError cls_assignError:error code:100 format:@"Error %@: [%d]", v13, v11];
      CLSInitLog();
      v14 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = v13;
        v18 = 1024;
        v19 = v11;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error %{public}@: [%d]", buf, 0x12u);
      }
    }
  }

  return v6;
}

- (void)releaseMemory
{
  [(PDSQLiteDatabase *)self clearStatementCache];
  db = self->_db;

  sqlite3_db_release_memory(db);
}

- (void)close
{
  [(PDSQLiteDatabase *)self clearStatementCache];
  db = self->_db;
  if (db)
  {
    if (sqlite3_close(db))
    {
      CLSInitLog();
      v4 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "failed to close database!", v5, 2u);
      }
    }

    [(NSMutableDictionary *)self->_tableColumnNameCache removeAllObjects];
    self->_db = 0;
  }
}

- (void)clearStatementCache
{
  statementCache = self->_statementCache;
  if (statementCache)
  {
    CFRelease(statementCache);
    self->_statementCache = 0;
  }

  [(PDSQLiteDatabase *)self _assertNoActiveStatements];
}

- (void)truncate
{
  [(PDSQLiteDatabase *)self clearStatementCache];
  db = self->_db;
  if (db)
  {
    v6 = 13;
    if (sqlite3_file_control(db, 0, 101, &v6))
    {
      CLSInitLog();
      v4 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to truncate database!", v5, 2u);
      }
    }
  }
}

- (void)accessDatabaseUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_db)
  {
    blockCopy[2]();
  }
}

- (BOOL)_verifyDatabaseOpenAndReturnError:(id *)error
{
  db = self->_db;
  if (!db)
  {
    [NSError cls_assignError:error code:2 description:@"Database connection is closed"];
  }

  return db != 0;
}

- (BOOL)_executeSQL:(id)l error:(id *)error retryIfBusy:(BOOL)busy
{
  busyCopy = busy;
  lCopy = l;
  if ([(PDSQLiteDatabase *)self _verifyDatabaseOpenAndReturnError:error])
  {
    v17 = 0;
    db = self->_db;
    uTF8String = [lCopy UTF8String];
    if (busyCopy)
    {
      v11 = sub_1000479FC(db, uTF8String, 0, 0, &v17);
    }

    else
    {
      v11 = (_sqlite3_exec)(db, uTF8String, 0, 0, &v17);
    }

    v12 = v11;
    v13 = v11 == 0;
    if (v11)
    {
      v14 = v17;
      if (!v17)
      {
        v14 = sqlite3_errmsg(self->_db);
      }

      CLSInitLog();
      v15 = CLSLogDatabase;
      if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v19 = lCopy;
        v20 = 1024;
        v21 = v12;
        v22 = 2082;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Could not execute SQL: %@: [%d, %{public}s]", buf, 0x1Cu);
      }

      if (error)
      {
        *error = [(PDSQLiteDatabase *)self getLastErrorWithResultCode:v12];
      }

      if (v17)
      {
        sqlite3_free(v17);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)getLastErrorWithResultCode:(int)code
{
  db = self->_db;
  if (db)
  {
    db = sub_100048150(db, code);
    v3 = vars8;
  }

  return db;
}

- (BOOL)performTransactionWithType:(int64_t)type error:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  if (![(PDSQLiteDatabase *)self _verifyDatabaseOpenAndReturnError:error])
  {
    goto LABEL_41;
  }

  isInTransaction = self->_isInTransaction;
  if (isInTransaction)
  {
    transactionType = self->_transactionType;
    if (transactionType >= type)
    {
      goto LABEL_22;
    }

    v11 = @"DEFERRED";
    if (type == 1)
    {
      v12 = @"IMMEDIATE";
    }

    else
    {
      v12 = @"DEFERRED";
    }

    if (type == 2)
    {
      v12 = @"EXCLUSIVE";
    }

    if (transactionType == 1)
    {
      v11 = @"IMMEDIATE";
    }

    if (transactionType == 2)
    {
      v13 = @"EXCLUSIVE";
    }

    else
    {
      v13 = v11;
    }

    v14 = v12;
    [NSException raise:NSInvalidArgumentException format:@"Cannot perform %@ transaction inside an existing %@ transaction", v14, v13];
  }

  else
  {
    v15 = [NSString alloc];
    v16 = @"DEFERRED";
    if (type == 1)
    {
      v16 = @"IMMEDIATE";
    }

    if (type == 2)
    {
      v16 = @"EXCLUSIVE";
    }

    v14 = [v15 initWithFormat:@"BEGIN %@ TRANSACTION", v16];
    v17 = [(PDSQLiteDatabase *)self _executeSQL:v14 error:error retryIfBusy:1];
    self->_isInTransaction = v17;
    if (!v17)
    {

      goto LABEL_41;
    }

    self->_transactionType = type;
  }

  if (!self->_isInTransaction)
  {
LABEL_41:
    LOBYTE(v18) = 0;
    goto LABEL_52;
  }

LABEL_22:
  v40 = 0;
  v18 = blockCopy[2](blockCopy, &v40);
  v19 = v40;
  if (error)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v19 = v19;
    *error = v19;
  }

  if (!isInTransaction)
  {
    if (v18)
    {
      LOBYTE(v18) = !self->_requiresRollback;
    }

    [(PDSQLiteDatabase *)self _assertNoActiveStatements];
    if (v18)
    {
      v21 = [(PDSQLiteDatabase *)self _executeSQL:@"COMMIT;" error:error];
      self->_isHandlingTransactionEnd = 1;
      if (v21)
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v22 = self->_onCommitBlocks;
        v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v23)
        {
          v24 = *v37;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(v22);
              }

              (*(*(*(&v36 + 1) + 8 * i) + 16))();
            }

            v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v23);
        }

        LOBYTE(v18) = 1;
LABEL_51:

        self->_isHandlingTransactionEnd = 0;
        onCommitBlocks = self->_onCommitBlocks;
        self->_onCommitBlocks = 0;

        onRollbackBlocks = self->_onRollbackBlocks;
        self->_onRollbackBlocks = 0;

        *&self->_isInTransaction = 0;
        goto LABEL_52;
      }
    }

    else
    {
      self->_isHandlingTransactionEnd = 1;
    }

    [(PDSQLiteDatabase *)self _executeSQL:@"ROLLBACK;" error:error];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = self->_onRollbackBlocks;
    v26 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v26)
    {
      v27 = *v33;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v22);
          }

          (*(*(*(&v32 + 1) + 8 * j) + 16))();
        }

        v26 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v26);
    }

    LOBYTE(v18) = 0;
    goto LABEL_51;
  }

LABEL_52:

  return v18;
}

- (void)_resetStatement:(sqlite3_stmt *)statement finalize:(BOOL)finalize
{
  if (finalize)
  {
    sqlite3_finalize(statement);
  }

  else
  {
    sqlite3_reset(statement);
    sqlite3_clear_bindings(statement);
  }

  size = self->_activeStatements.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    return;
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * (statement & 0x1FFFFFFF) + 8) ^ (statement >> 32));
  v8 = 0x9DDFEA08EB382D69 * ((statement >> 32) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = vcnt_s8(size);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v9;
    if (v9 >= size)
    {
      v11 = v9 % size;
    }
  }

  else
  {
    v11 = (size - 1) & v9;
  }

  ptr = self->_activeStatements.__table_.__bucket_list_.__ptr_;
  v13 = ptr[v11];
  if (!v13)
  {
    return;
  }

  isa = *v13;
  if (!*v13)
  {
    return;
  }

  v15 = size - 1;
  while (1)
  {
    db = isa->_db;
    if (db == v9)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (db >= size)
      {
        db %= size;
      }
    }

    else
    {
      db &= v15;
    }

    if (db != v11)
    {
      return;
    }

LABEL_20:
    isa = isa->super.isa;
    if (!isa)
    {
      return;
    }
  }

  if (*&isa->_isInTransaction != statement)
  {
    goto LABEL_20;
  }

  v17 = isa->super.isa;
  if (v10.u32[0] > 1uLL)
  {
    if (v9 >= size)
    {
      v9 %= size;
    }
  }

  else
  {
    v9 &= v15;
  }

  v18 = ptr[v9];
  do
  {
    v19 = v18;
    v18 = v18->super.isa;
  }

  while (v18 != isa);
  if (v19 == &self->_activeStatements.__table_.__first_node_)
  {
    goto LABEL_39;
  }

  v20 = v19->_db;
  if (v10.u32[0] > 1uLL)
  {
    if (v20 >= size)
    {
      v20 %= size;
    }
  }

  else
  {
    v20 &= v15;
  }

  if (v20 == v9)
  {
LABEL_41:
    if (v17)
    {
      v21 = v17->_db;
      goto LABEL_43;
    }
  }

  else
  {
LABEL_39:
    if (!v17)
    {
      goto LABEL_40;
    }

    v21 = v17->_db;
    if (v10.u32[0] > 1uLL)
    {
      v22 = v17->_db;
      if (v21 >= size)
      {
        v22 = v21 % size;
      }
    }

    else
    {
      v22 = v21 & v15;
    }

    if (v22 != v9)
    {
LABEL_40:
      ptr[v9] = 0;
      v17 = isa->super.isa;
      goto LABEL_41;
    }

LABEL_43:
    if (v10.u32[0] > 1uLL)
    {
      if (v21 >= size)
      {
        v21 %= size;
      }
    }

    else
    {
      v21 &= v15;
    }

    if (v21 != v9)
    {
      self->_activeStatements.__table_.__bucket_list_.__ptr_[v21] = v19;
      v17 = isa->super.isa;
    }
  }

  v19->super.isa = v17;
  isa->super.isa = 0;
  --self->_activeStatements.__table_.__size_;

  operator delete(isa);
}

- (int64_t)userVersionWithDatabaseName:(id)name error:(id *)error
{
  v5 = -1;
  [(PDSQLiteDatabase *)self _integerValueForPragma:@"user_version" databaseName:name value:&v5 error:error];
  return v5;
}

- (id)lastInsertRowID
{
  insert_rowid = sqlite3_last_insert_rowid(self->_db);

  return [NSNumber numberWithLongLong:insert_rowid];
}

- (BOOL)_setPragma:(id)pragma integerValue:(int64_t)value withDatabaseName:(id)name error:(id *)error
{
  pragmaCopy = pragma;
  v11 = sub_100049330(name);
  value = [NSString stringWithFormat:@"PRAGMA %@%@=%lld", v11, pragmaCopy, value];

  LOBYTE(error) = [(PDSQLiteDatabase *)self _executeSQL:value error:error];
  return error;
}

- (BOOL)_integerValueForPragma:(id)pragma databaseName:(id)name value:(int64_t *)value error:(id *)error
{
  pragmaCopy = pragma;
  v11 = sub_100049330(name);
  pragmaCopy = [NSString stringWithFormat:@"PRAGMA %@%@", v11, pragmaCopy];;

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004950C;
  v14[3] = &unk_100203098;
  v14[4] = &v15;
  v14[5] = value;
  [(PDSQLiteDatabase *)self _executeSQL:pragmaCopy cache:0 error:error bindingHandler:0 enumerationHandler:v14];
  LOBYTE(error) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return error;
}

- (void)onCommit:(id)commit orRollback:(id)rollback
{
  commitCopy = commit;
  rollbackCopy = rollback;
  if (!self->_isHandlingTransactionEnd)
  {
    if (commitCopy)
    {
      onCommitBlocks = self->_onCommitBlocks;
      v8 = commitCopy;
      if (!onCommitBlocks)
      {
        v9 = objc_alloc_init(NSMutableArray);
        v10 = self->_onCommitBlocks;
        self->_onCommitBlocks = v9;

        onCommitBlocks = self->_onCommitBlocks;
        v8 = commitCopy;
      }

      v11 = objc_retainBlock(v8);
      [(NSMutableArray *)onCommitBlocks addObject:v11];
    }

    if (rollbackCopy)
    {
      onRollbackBlocks = self->_onRollbackBlocks;
      if (!onRollbackBlocks)
      {
        v13 = objc_alloc_init(NSMutableArray);
        v14 = self->_onRollbackBlocks;
        self->_onRollbackBlocks = v13;

        onRollbackBlocks = self->_onRollbackBlocks;
      }

      v15 = objc_retainBlock(rollbackCopy);
      [(NSMutableArray *)onRollbackBlocks addObject:v15];
    }
  }
}

- (void)requireRollback
{
  if (self->_isInTransaction)
  {
    self->_requiresRollback = 1;
  }
}

- (void)performUpdateBlock:(id)block changeType:(int64_t)type
{
  blockCopy = block;
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {
    updateBlock[2](updateBlock, blockCopy, type);
  }
}

- (void)onRowUpdate:(id)update
{
  updateCopy = update;
  if (self->_db)
  {
    v4 = objc_retainBlock(updateCopy);
    updateBlock = self->_updateBlock;
    self->_updateBlock = v4;

    db = self->_db;
    if (updateCopy)
    {
      sqlite3_update_hook(db, sub_1000497A0, self);
    }

    else
    {
      sqlite3_update_hook(db, 0, 0);
    }
  }
}

- (BOOL)validateForeignKeysForTable:(id)table databaseName:(id)name error:(id *)error
{
  tableCopy = table;
  nameCopy = name;
  v10 = sub_100049330(nameCopy);
  if (tableCopy)
  {
    [NSString stringWithFormat:@"PRAGMA %@foreign_key_check(%@)", v10, tableCopy];
  }

  else
  {
    [NSString stringWithFormat:@"PRAGMA %@foreign_key_check", v10];
  }
  v11 = ;

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100049B80;
  v16[3] = &unk_1002030C0;
  v16[4] = &v17;
  if ([(PDSQLiteDatabase *)self _executeSQL:v11 cache:0 error:error bindingHandler:0 enumerationHandler:v16])
  {
    v12 = *(v18 + 24) ^ 1;
  }

  else
  {
    CLSInitLog();
    v13 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      v15 = *error;
      *buf = 138543362;
      v22 = v15;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to validate foreign keys: %{public}@", buf, 0xCu);
    }

    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v12 & 1;
}

- (BOOL)enableIncrementalAutovacuumWithError:(id *)error
{
  v31 = 0;
  v32 = 0;
  v5 = [(PDSQLiteDatabase *)self _integerValueForPragma:@"AUTO_VACUUM" databaseName:0 value:&v32 error:&v31];
  v6 = v31;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    CLSInitLog();
    v9 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get value for pragma 'AUTO_VACUUM': %{public}@", buf, 0xCu);
      if (error)
      {
        goto LABEL_6;
      }
    }

    else if (error)
    {
LABEL_6:
      v10 = v7;
      v8 = 0;
      *error = v7;
      goto LABEL_26;
    }

    v8 = 0;
    goto LABEL_26;
  }

  if (v32 != 2)
  {
    v30 = v6;
    v11 = [(PDSQLiteDatabase *)self _setPragma:@"AUTO_VACUUM" integerValue:2 withDatabaseName:0 error:&v30];
    v12 = v30;

    if (v11)
    {
      v28 = 0;
      v29 = 2500;
      v13 = [(PDSQLiteDatabase *)self _integerValueForPragma:@"CACHE_SPILL" databaseName:0 value:&v29 error:&v28];
      v14 = v28;
      if ((v13 & 1) == 0)
      {
        CLSInitLog();
        v15 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v34 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Failed to retrieve base value for CACHE_SPILL when enabling incremental autovacuum: %{public}@", buf, 0xCu);
        }
      }

      v16 = v29 & (v29 >> 63);
      v27 = v14;
      v17 = [(PDSQLiteDatabase *)self _setPragma:@"CACHE_SPILL" integerValue:v16 withDatabaseName:0 error:&v27];
      v18 = v27;

      if ((v17 & 1) == 0)
      {
        CLSInitLog();
        v19 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          v34 = v16;
          v35 = 2114;
          v36 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Failed to set %lld for CACHE_SPILL when enabling incremental autovacuum: %{public}@", buf, 0x16u);
        }
      }

      v8 = [(PDSQLiteDatabase *)self _executeSQL:@"VACUUM;" error:error];
      v26 = v18;
      v20 = [(PDSQLiteDatabase *)self _setPragma:@"CACHE_SPILL" integerValue:v29 withDatabaseName:0 error:&v26];
      v21 = v26;

      if ((v20 & 1) == 0)
      {
        CLSInitLog();
        v22 = CLSLogDatabase;
        if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v34 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Failed to reset base value for CACHE_SPILL when enabling incremental autovacuum: %{public}@", buf, 0xCu);
        }
      }

      goto LABEL_25;
    }

    CLSInitLog();
    v23 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v12;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to set value for pragma 'AUTO_VACUUM': %{public}@", buf, 0xCu);
      if (error)
      {
        goto LABEL_20;
      }
    }

    else if (error)
    {
LABEL_20:
      v24 = v12;
      v8 = 0;
      *error = v12;
LABEL_25:
      v7 = v12;
      goto LABEL_26;
    }

    v8 = 0;
    goto LABEL_25;
  }

  v8 = 1;
LABEL_26:

  return v8;
}

- (BOOL)incrementalVacuumDatabaseIfNeeded:(id)needed error:(id *)error
{
  neededCopy = needed;
  v12 = 0;
  if (![(PDSQLiteDatabase *)self _integerValueForPragma:@"FREELIST_COUNT" databaseName:neededCopy value:&v12 error:error])
  {
    goto LABEL_8;
  }

  if (!v12)
  {
LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  v11 = 0;
  if (![(PDSQLiteDatabase *)self _integerValueForPragma:@"PAGE_SIZE" databaseName:neededCopy value:&v11 error:error])
  {
LABEL_8:
    v9 = 0;
    goto LABEL_10;
  }

  if (v12 <= 0x200000 / v11)
  {
    goto LABEL_9;
  }

  v7 = @"main";
  if (neededCopy)
  {
    v7 = neededCopy;
  }

  v8 = [NSString stringWithFormat:@"PRAGMA %@.incremental_vacuum(%lld)", v7, v12 - 0x200000 / v11];
  v9 = [(PDSQLiteDatabase *)self _executeSQL:v8 error:error];

LABEL_10:
  return v9;
}

- (BOOL)attachDatabaseWithName:(id)name fileURL:(id)l error:(id *)error
{
  nameCopy = name;
  lCopy = l;
  if (![nameCopy length])
  {
    [NSException raise:NSInvalidArgumentException format:@"Invalid database name"];
  }

  if (([lCopy isFileURL] & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"Invalid database URL"];
  }

  attachedDatabaseURLsByName = self->_attachedDatabaseURLsByName;
  if (attachedDatabaseURLsByName)
  {
    v11 = [(NSMutableDictionary *)attachedDatabaseURLsByName objectForKeyedSubscript:nameCopy];
    v12 = v11;
    if (v11)
    {
      LOBYTE(v13) = [v11 isEqual:lCopy];
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = [NSError errorWithDomain:@"com.apple.progressd.SQLite" code:2 userInfo:0];
      }

      goto LABEL_13;
    }
  }

  else
  {
    v15 = +[NSMutableDictionary dictionary];
    v16 = self->_attachedDatabaseURLsByName;
    self->_attachedDatabaseURLsByName = v15;
  }

  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ATTACH DATABASE %s AS %@", [lCopy fileSystemRepresentation], nameCopy);
  v19 = 0;
  v13 = [(PDSQLiteDatabase *)self _executeSQL:v12 error:&v19 retryIfBusy:1];
  v14 = v19;
  if (v13)
  {
    [(NSMutableDictionary *)self->_attachedDatabaseURLsByName setObject:lCopy forKeyedSubscript:nameCopy];
  }

LABEL_13:

  if (error)
  {
    v17 = v14;
    *error = v14;
  }

  return v13;
}

- (BOOL)detachDatabaseWithName:(id)name error:(id *)error
{
  nameCopy = name;
  if ([(PDSQLiteDatabase *)self isDatabaseWithNameAttached:nameCopy])
  {
    nameCopy = [NSString stringWithFormat:@"DETACH DATABASE %@", nameCopy];
    v8 = [(PDSQLiteDatabase *)self _executeSQL:nameCopy error:error];
    if (v8)
    {
      [(NSMutableDictionary *)self->_attachedDatabaseURLsByName removeObjectForKey:nameCopy];
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)isDatabaseWithNameAttached:(id)attached
{
  v3 = [(NSMutableDictionary *)self->_attachedDatabaseURLsByName objectForKeyedSubscript:attached];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)tableWithName:(id)name containsColumnWithName:(id)withName
{
  nameCopy = name;
  withNameCopy = withName;
  if (self->_db && [nameCopy length] && objc_msgSend(withNameCopy, "length"))
  {
    withNameCopy = [nameCopy stringByAppendingFormat:@".%@", withNameCopy];
    v9 = [(NSMutableDictionary *)self->_tableColumnNameCache objectForKey:withNameCopy];
    v10 = v9;
    if (v9)
    {
      LOBYTE(v11) = [v9 BOOLValue];
    }

    else
    {
      v11 = sqlite3_table_column_metadata(self->_db, 0, [nameCopy UTF8String], objc_msgSend(withNameCopy, "UTF8String"), 0, 0, 0, 0, 0) == 0;
      tableColumnNameCache = self->_tableColumnNameCache;
      v13 = [NSNumber numberWithBool:v11];
      [(NSMutableDictionary *)tableColumnNameCache setObject:v13 forKey:withNameCopy];
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

+ (BOOL)_stepStatement:(sqlite3_stmt *)statement hasRow:(BOOL *)row resultCode:(int *)code error:(id *)error
{
  if (row)
  {
    *row = 0;
  }

  if (!statement)
  {
    return 1;
  }

  while (1)
  {
    v10 = sqlite3_step(statement);
    v11 = v10;
    if (v10 == 9)
    {
      if (code)
      {
        *code = 9;
      }

      goto LABEL_22;
    }

    if (v10 == 101)
    {
      return 1;
    }

    if (v10 == 100)
    {
      break;
    }

    v12 = v10;
    if (v10 - 7 <= 0xFFFFFFFD)
    {
      if (code)
      {
        *code = v10;
      }

      CLSInitLog();
      v13 = CLSLogDatabase;
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      if (v12 == 19)
      {
        if (v14)
        {
          v19 = sqlite3_sql(statement);
          v20 = sqlite3_db_handle(statement);
          v23 = 136315650;
          v24 = v19;
          v25 = 1024;
          v26 = 19;
          v27 = 2082;
          v28 = sqlite3_errmsg(v20);
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Constraint violation during statement step: %s [%d, %{public}s]", &v23, 0x1Cu);
        }
      }

      else if (v14)
      {
        v21 = sqlite3_sql(statement);
        v22 = sqlite3_db_handle(statement);
        v23 = 136315650;
        v24 = v21;
        v25 = 1024;
        v26 = v12;
        v27 = 2080;
        v28 = sqlite3_errmsg(v22);
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Step failed: %s: [%d, %s]", &v23, 0x1Cu);
      }

LABEL_22:
      if (!error)
      {
        return 0;
      }

      v16 = sqlite3_db_handle(statement);
      v17 = sub_100048150(v16, v11);
      v18 = v17;
      result = 0;
      *error = v17;
      return result;
    }
  }

  result = 1;
  if (row)
  {
    *row = 1;
  }

  return result;
}

- (sqlite3_stmt)_statementForSQL:(id)l cache:(BOOL)cache error:(id *)error
{
  cacheCopy = cache;
  lCopy = l;
  if ([(PDSQLiteDatabase *)self _verifyDatabaseOpenAndReturnError:error])
  {
    ppStmt = 0;
    if (!cacheCopy || (v9 = self->_statementCache) == 0 || (Value = CFDictionaryGetValue(v9, lCopy), (ppStmt = Value) == 0))
    {
      v11 = objc_autoreleasePoolPush();
      do
      {
        *pzTail = 0;
        db = self->_db;
        v13 = lCopy;
        v14 = sqlite3_prepare_v2(db, [lCopy UTF8String], objc_msgSend(lCopy, "length"), &ppStmt, pzTail);
        v15 = v14;
      }

      while ((v14 - 5) < 2);
      if (v14)
      {
        CLSInitLog();
        v16 = CLSLogDatabase;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v30 = sqlite3_errmsg(self->_db);
          *pzTail = 138412802;
          *&pzTail[4] = lCopy;
          v33 = 1024;
          v34 = v15;
          v35 = 2080;
          v36 = v30;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Could not prepare statement: %@: [%d, %s]", pzTail, 0x1Cu);
        }

        v17 = [(PDSQLiteDatabase *)self getLastErrorWithResultCode:v15];
      }

      else
      {
        if (cacheCopy)
        {
          statementCache = self->_statementCache;
          if (!statementCache)
          {
            statementCache = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &unk_10024BA50);
            self->_statementCache = statementCache;
          }

          if (ppStmt)
          {
            CFDictionarySetValue(statementCache, lCopy, ppStmt);
          }
        }

        v17 = 0;
      }

      objc_autoreleasePoolPop(v11);
      if (error)
      {
        v19 = v17;
        *error = v17;
      }

      Value = ppStmt;
      if (ppStmt)
      {
        if (!cacheCopy)
        {
          v20 = 0x9DDFEA08EB382D69 * ((8 * (ppStmt & 0x1FFFFFFF) + 8) ^ (ppStmt >> 32));
          v21 = 0x9DDFEA08EB382D69 * ((ppStmt >> 32) ^ (v20 >> 47) ^ v20);
          v22 = 0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47));
          size = self->_activeStatements.__table_.__bucket_list_.__deleter_.__size_;
          if (size)
          {
            v24 = vcnt_s8(size);
            v24.i16[0] = vaddlv_u8(v24);
            if (v24.u32[0] > 1uLL)
            {
              v25 = 0x9DDFEA08EB382D69 * (v21 ^ (v21 >> 47));
              if (v22 >= size)
              {
                v25 = v22 % size;
              }
            }

            else
            {
              v25 = (size - 1) & v22;
            }

            v26 = self->_activeStatements.__table_.__bucket_list_.__ptr_[v25];
            if (v26)
            {
              for (i = *v26; i; i = *i)
              {
                v28 = i[1];
                if (v28 == v22)
                {
                  if (i[2] == ppStmt)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  if (v24.u32[0] > 1uLL)
                  {
                    if (v28 >= size)
                    {
                      v28 %= size;
                    }
                  }

                  else
                  {
                    v28 &= size - 1;
                  }

                  if (v28 != v25)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }
      }
    }
  }

  else
  {
    Value = 0;
  }

LABEL_40:

  return Value;
}

- (void)_assertNoActiveStatements
{
  for (i = self->_activeStatements.__table_.__first_node_.__next_; i; i = *i)
  {
    v3 = i[2];
    CLSInitLog();
    v4 = CLSLogDatabase;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = sqlite3_sql(v3);
      *buf = 134218242;
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = "<unknown sql>";
      }

      v8 = v3;
      v9 = 2082;
      v10 = v6;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Transaction finished with active outstanding statement: %p %{public}s", buf, 0x16u);
    }
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end