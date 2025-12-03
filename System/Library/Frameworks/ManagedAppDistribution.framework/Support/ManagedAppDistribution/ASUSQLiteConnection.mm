@interface ASUSQLiteConnection
- (ASUSQLiteConnection)initWithOptions:(id)options;
- (ASUSQLiteConnectionDelegate)delegate;
- (BOOL)executePreparedStatement:(id)statement error:(id *)error bindings:(id)bindings;
- (BOOL)executeStatement:(id)statement error:(id *)error bindings:(id)bindings;
- (BOOL)finalizePreparedStatement:(id)statement error:(id *)error;
- (BOOL)performSavepoint:(id)savepoint;
- (BOOL)performTransaction:(id)transaction error:(id *)error;
- (BOOL)tableExists:(id)exists;
- (uint64_t)close;
- (void)dealloc;
- (void)dispatchAfterTransaction:(id)transaction;
- (void)executePreparedQuery:(id)query withResults:(id)results;
- (void)executeQuery:(id)query withResults:(id)results;
- (void)open;
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
    v3 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1001E95F8(self, v3);
    }

    sqlite3_close_v2(self->_database);
  }

  v4.receiver = self;
  v4.super_class = ASUSQLiteConnection;
  [(ASUSQLiteConnection *)&v4 dealloc];
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
  v8 = sub_1006712F0(self, queryCopy, &v11);
  v9 = v11;
  if (v8)
  {
    v10 = sub_100671FC8([ASUSQLiteQueryResults alloc], v8);
  }

  else
  {
    v10 = 0;
  }

  resultsCopy[2](resultsCopy, v10, v9);
  [v8 clearBindings];
  [v8 reset];
}

- (void)executeQuery:(id)query withResults:(id)results
{
  queryCopy = query;
  resultsCopy = results;
  v12 = 0;
  v8 = sub_100671510(self, queryCopy, &v12);
  v9 = v12;
  v10 = sub_100670E54([ASUSQLitePreparedStatement alloc], self->_database, queryCopy);
  if (v10)
  {
    [(NSMapTable *)self->_preparedStatements setObject:v8 forKey:v10];
  }

  if (v8)
  {
    v11 = sub_100671FC8([ASUSQLiteQueryResults alloc], v8);
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

- (BOOL)performSavepoint:(id)savepoint
{
  savepointCopy = savepoint;
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];
  v7 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_100770428];
  v8 = [NSString stringWithFormat:@"SP_%@", v7];

  v9 = [NSString stringWithFormat:@"SAVEPOINT %@", v8];
  LODWORD(uUIDString) = [(ASUSQLiteConnection *)self executeStatement:v9 error:0];

  if (!uUIDString)
  {
    goto LABEL_5;
  }

  if (!savepointCopy[2](savepointCopy))
  {
    v12 = [NSString stringWithFormat:@"ROLLBACK TRANSACTION TO SAVEPOINT %@", v8];
    [(ASUSQLiteConnection *)self executeStatement:v12 error:0];

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = [NSString stringWithFormat:@"RELEASE SAVEPOINT %@", v8];
  v11 = [(ASUSQLiteConnection *)self executeStatement:v10 error:0];

LABEL_6:
  return v11;
}

- (BOOL)performTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v16[0] = 0;
  transactionDepth = self->_transactionDepth;
  if (transactionDepth < 1)
  {
    if (![(ASUSQLiteConnection *)self executeStatement:@"BEGIN DEFERRED TRANSACTION" error:v16])
    {
      goto LABEL_23;
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
        v8 = [NSError errorWithDomain:@"ASUSQLiteErrorDomain" code:6 userInfo:0];
LABEL_21:
        v9 = 0;
        *error = v8;
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  os_variant_has_internal_content();
  v9 = transactionCopy[2](transactionCopy, self);
  v10 = self->_transactionDepth;
  v11 = self->_transactionWantsRollback | v9 ^ 1;
  self->_transactionWantsRollback = v11 & 1;
  self->_transactionDepth = --v10;
  if (!v10)
  {
    if (v11)
    {
      if (v16[0])
      {
        v12 = 0;
      }

      else
      {
        v12 = v16;
      }

      [(ASUSQLiteConnection *)self executeStatement:@"ROLLBACK TRANSACTION" error:v12];
    }

    else
    {
      [(ASUSQLiteConnection *)self executeStatement:@"COMMIT TRANSACTION" error:v16];
    }

    sub_100671734(self);
  }

  if (error)
  {
    v13 = v9;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    if (v16[0])
    {
      v8 = v16[0];
      goto LABEL_21;
    }

    v14 = [NSError errorWithDomain:@"ASUSQLiteErrorDomain" code:0 userInfo:0];
    *error = v14;

LABEL_23:
    v9 = 0;
  }

LABEL_24:

  return v9;
}

- (BOOL)tableExists:(id)exists
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001E8E6C;
  v6[3] = &unk_1007567C0;
  existsCopy = exists;
  v7 = existsCopy;
  v8 = &v9;
  [(ASUSQLiteConnection *)self executeQuery:@"SELECT name FROM sqlite_master where name = ?" withResults:v6];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

- (ASUSQLiteConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)executePreparedStatement:(id)statement error:(id *)error bindings:(id)bindings
{
  sub_1001E91DC();
  v27 = v5;
  v28 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_1001E91AC();
  v17 = sub_1006712F0(v15, v10, v16);
  v18 = v26;
  if (v17)
  {
    if (v14)
    {
      v22 = sub_1001E91C8();
      v23(v22);
    }

    v25 = v18;
    v19 = sub_100671460(v12, v17, &v25);
    v24 = v25;

    if (v14)
    {
      [v17 clearBindings];
    }

    v18 = v24;
  }

  else
  {
    v19 = 0;
  }

  [v17 reset];
  if (v8 && (v19 & 1) == 0)
  {
    v20 = v18;
    *v8 = v18;
  }

  sub_1001E91F0();
  return result;
}

- (BOOL)executeStatement:(id)statement error:(id *)error bindings:(id)bindings
{
  bindingsCopy = bindings;
  v20 = 0;
  statementCopy = statement;
  v10 = sub_100671510(self, statementCopy, &v20);
  v11 = v20;
  v12 = sub_100670E54([ASUSQLitePreparedStatement alloc], self->_database, statementCopy);

  if (v12)
  {
    [(NSMapTable *)self->_preparedStatements setObject:v10 forKey:v12];
  }

  if (!v10)
  {
    v13 = 0;
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (bindingsCopy)
  {
    v16 = sub_1001E91C8();
    v17(v16);
  }

  v19 = v11;
  v13 = sub_100671460(self, v10, &v19);
  v18 = v19;

  [v10 finalizeStatement];
  if (v12)
  {
    [(NSMapTable *)self->_preparedStatements removeObjectForKey:v12];
  }

  v11 = v18;
  if (error)
  {
LABEL_5:
    if ((v13 & 1) == 0)
    {
      v14 = v11;
      *error = v11;
    }
  }

LABEL_7:

  return v13;
}

- (BOOL)finalizePreparedStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v13 = 0;
  v7 = sub_1006712F0(self, statementCopy, &v13);
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

- (uint64_t)close
{
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      sub_1006719AC(result);
      if (sqlite3_close(*(v1 + 16)))
      {
        return 0;
      }

      else
      {
        v2 = *(v1 + 8);
        *(v1 + 8) = 0;

        *(v1 + 16) = 0;
        *(v1 + 40) = 0;
        result = 1;
        *(v1 + 48) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)open
{
  sub_1001E91DC();
  a17 = v18;
  a18 = v20;
  if (v19)
  {
    v21 = v19;
    if (!*(v19 + 16))
    {
      db = 0;
      v22 = 1;
      while (1)
      {
        v23 = ASUSQLiteOpenDatabaseAndApplyOptions(&db, *(v21 + 56));
        if (!v23)
        {
          break;
        }

        if (v23 <= 0x1Au && ((1 << v23) & 0x4000C02) != 0)
        {
          v25 = sub_100671ADC(v21) & v22;
          v22 = 0;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_3;
      }

      v26 = db;
      *(v21 + 16) = db;
      sqlite3_create_function(v26, "timestamp", 0, 1, 0, sub_1001E8FC4, 0, 0);
    }
  }

LABEL_3:
  sub_1001E91F0();
}

@end