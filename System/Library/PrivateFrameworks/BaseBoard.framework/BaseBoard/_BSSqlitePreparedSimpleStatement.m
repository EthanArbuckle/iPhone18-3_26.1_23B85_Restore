@interface _BSSqlitePreparedSimpleStatement
- (BOOL)executeWithBindings:(id)a3 resultRowHandler:(id)a4 error:(id *)a5;
- (id)_initWithDatabaseConnection:(void *)a3 statement:;
- (id)_sqliteError:(uint64_t)a1;
- (void)dealloc;
- (void)sqliteDatabaseConnectionWillClose:(id)a3;
@end

@implementation _BSSqlitePreparedSimpleStatement

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->super._dbConnection);
  statement = self->_statement;
  if (statement)
  {
    if (WeakRetained)
    {
      self->_statement = 0;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __43___BSSqlitePreparedSimpleStatement_dealloc__block_invoke;
      v6[3] = &__block_descriptor_40_e18_v16__0__sqlite3__8l;
      v6[4] = statement;
      [(BSSqliteDatabaseConnection *)WeakRetained performWithDatabase:v6];
    }

    else
    {
      sqlite3_finalize(statement);
    }
  }

  v5.receiver = self;
  v5.super_class = _BSSqlitePreparedSimpleStatement;
  [(BSSqlitePreparedStatement *)&v5 dealloc];
}

- (id)_initWithDatabaseConnection:(void *)a3 statement:
{
  v5 = a2;
  if (a1)
  {
    v6 = [(BSSqlitePreparedStatement *)a1 _initWithDatabaseConnection:v5];
    a1 = v6;
    if (v6)
    {
      v6[2] = a3;
      WeakRetained = objc_loadWeakRetained(v6 + 1);
      [(BSSqliteDatabaseConnection *)WeakRetained addObserver:a1];
    }
  }

  return a1;
}

- (BOOL)executeWithBindings:(id)a3 resultRowHandler:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->super._dbConnection);
  if (WeakRetained && self->_statement)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79___BSSqlitePreparedSimpleStatement_executeWithBindings_resultRowHandler_error___block_invoke;
    v14[3] = &unk_1E72CAD30;
    v17 = &v18;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    [(BSSqliteDatabaseConnection *)WeakRetained performSyncWithDatabase:v14];

    v11 = *(v19 + 6);
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 21;
    *(v19 + 6) = 21;
    if (!a5)
    {
      goto LABEL_8;
    }
  }

  if (v11)
  {
    *a5 = [(_BSSqlitePreparedSimpleStatement *)self _sqliteError:v11];
    v11 = *(v19 + 6);
  }

LABEL_8:
  v12 = v11 == 0;

  _Block_object_dispose(&v18, 8);
  return v12;
}

- (id)_sqliteError:(uint64_t)a1
{
  if (a1)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errstr(a2)];
    [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A578]];

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v7 = [(BSSqliteDatabaseConnection *)WeakRetained lastErrorMessage];

    if (v7)
    {
      [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A588]];
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.baseboard.bssqlite" code:a2 userInfo:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)sqliteDatabaseConnectionWillClose:(id)a3
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_finalize(statement);
    self->_statement = 0;
  }

  objc_storeWeak(&self->super._dbConnection, 0);
}

@end