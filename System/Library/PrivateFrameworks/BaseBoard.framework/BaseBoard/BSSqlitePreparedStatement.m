@interface BSSqlitePreparedStatement
+ (id)_newPreparedStatementForDatabaseConnection:(void *)a3 withSQLQuery:;
- (BOOL)executeWithBindings:(id)a3 resultRowHandler:(id)a4 error:(id *)a5;
- (BSSqlitePreparedStatement)init;
- (id)_initWithDatabaseConnection:(void *)a1;
- (void)dealloc;
@end

@implementation BSSqlitePreparedStatement

- (void)dealloc
{
  objc_storeWeak(&self->_dbConnection, 0);
  v3.receiver = self;
  v3.super_class = BSSqlitePreparedStatement;
  [(BSSqlitePreparedStatement *)&v3 dealloc];
}

- (id)_initWithDatabaseConnection:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel__initWithDatabaseConnection_ object:a1 file:@"BSSqlitePreparedStatement.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
    }

    v9.receiver = a1;
    v9.super_class = BSSqlitePreparedStatement;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(v5 + 1, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BSSqlitePreparedStatement)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BSSqlitePreparedStatement.m" lineNumber:76 description:@"init is not allowed"];

  return [(BSSqlitePreparedStatement *)self _initWithDatabaseConnection:?];
}

+ (id)_newPreparedStatementForDatabaseConnection:(void *)a3 withSQLQuery:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if (!v4)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:sel__newPreparedStatementForDatabaseConnection_withSQLQuery_ object:v6 file:@"BSSqlitePreparedStatement.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"connection"}];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:sel__newPreparedStatementForDatabaseConnection_withSQLQuery_ object:v6 file:@"BSSqlitePreparedStatement.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"sqlQuery"}];

    goto LABEL_3;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__BSSqlitePreparedStatement__newPreparedStatementForDatabaseConnection_withSQLQuery___block_invoke;
  v13[3] = &unk_1E72CACE8;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  v15 = v8;
  v16 = &v17;
  [(BSSqliteDatabaseConnection *)v8 performSyncWithDatabase:v13];
  v9 = v18[5];

  _Block_object_dispose(&v17, 8);
  return v9;
}

void __85__BSSqlitePreparedStatement__newPreparedStatementForDatabaseConnection_withSQLQuery___block_invoke(uint64_t a1, sqlite3 *a2)
{
  v4 = [*(a1 + 32) UTF8String];
  pzTail = 0;
  ppStmt = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v4 || !*v4)
  {
LABEL_18:
    if ([v5 count] == 1)
    {
      v18 = [v5 objectAtIndex:0];
    }

    else
    {
      v18 = [_BSSqlitePreparedCompoundStatement alloc];
      v19 = *(a1 + 40);
      v20 = v5;
      if (v18)
      {
        v18 = [(BSSqlitePreparedStatement *)v18 _initWithDatabaseConnection:v19];
        if (v18)
        {
          v21 = [v20 copy];
          statements = v18->_statements;
          v18->_statements = v21;
        }
      }
    }

    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v18;

    goto LABEL_25;
  }

  while (1)
  {
    v6 = strlen(v4);
    if (sqlite3_prepare_v2(a2, v4, v6, &ppStmt, &pzTail))
    {
      break;
    }

    v16 = [_BSSqlitePreparedSimpleStatement alloc];
    v12 = [(_BSSqlitePreparedSimpleStatement *)&v16->super.super.isa _initWithDatabaseConnection:ppStmt statement:?];
    [v5 addObject:v12];
LABEL_12:

    v4 = pzTail;
    if (!pzTail || !*pzTail)
    {
      goto LABEL_18;
    }
  }

  if (pzTail > v4)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [v7 initWithBytes:v4 length:pzTail - v4 encoding:4];
    v9 = [_BSSqliteDeferredPreparedSimpleStatement alloc];
    v10 = *(a1 + 40);
    v11 = v8;
    v12 = v11;
    if (v9)
    {
      if (!v11)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        [v17 handleFailureInMethod:sel_initWithDatabaseConnection_deferredSql_ object:v9 file:@"BSSqlitePreparedStatement.m" lineNumber:343 description:{@"Invalid parameter not satisfying: %@", @"sql"}];
      }

      v13 = [(_BSSqlitePreparedSimpleStatement *)&v9->super.super.super.isa _initWithDatabaseConnection:v10 statement:0];
      if (v13)
      {
        v14 = [v12 copy];
        v15 = v13[3];
        v13[3] = v14;
      }
    }

    else
    {
      v13 = 0;
    }

    [v5 addObject:v13];
    goto LABEL_12;
  }

  if (!pzTail || !*pzTail)
  {
    goto LABEL_18;
  }

LABEL_25:
}

- (BOOL)executeWithBindings:(id)a3 resultRowHandler:(id)a4 error:(id *)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"BSSqlitePreparedStatement.m" lineNumber:136 description:@"Abstract class implementation should never be called"];

  return 0;
}

@end