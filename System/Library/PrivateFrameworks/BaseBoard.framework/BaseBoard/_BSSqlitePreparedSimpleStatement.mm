@interface _BSSqlitePreparedSimpleStatement
- (BOOL)executeWithBindings:(id)bindings resultRowHandler:(id)handler error:(id *)error;
- (id)_initWithDatabaseConnection:(void *)connection statement:;
- (id)_sqliteError:(uint64_t)error;
- (void)dealloc;
- (void)sqliteDatabaseConnectionWillClose:(id)close;
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

- (id)_initWithDatabaseConnection:(void *)connection statement:
{
  v5 = a2;
  if (self)
  {
    v6 = [(BSSqlitePreparedStatement *)self _initWithDatabaseConnection:v5];
    self = v6;
    if (v6)
    {
      v6[2] = connection;
      WeakRetained = objc_loadWeakRetained(v6 + 1);
      [(BSSqliteDatabaseConnection *)WeakRetained addObserver:self];
    }
  }

  return self;
}

- (BOOL)executeWithBindings:(id)bindings resultRowHandler:(id)handler error:(id *)error
{
  bindingsCopy = bindings;
  handlerCopy = handler;
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
    v15 = bindingsCopy;
    v16 = handlerCopy;
    [(BSSqliteDatabaseConnection *)WeakRetained performSyncWithDatabase:v14];

    v11 = *(v19 + 6);
    if (!error)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 21;
    *(v19 + 6) = 21;
    if (!error)
    {
      goto LABEL_8;
    }
  }

  if (v11)
  {
    *error = [(_BSSqlitePreparedSimpleStatement *)self _sqliteError:v11];
    v11 = *(v19 + 6);
  }

LABEL_8:
  v12 = v11 == 0;

  _Block_object_dispose(&v18, 8);
  return v12;
}

- (id)_sqliteError:(uint64_t)error
{
  if (error)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errstr(a2)];
    [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A578]];

    WeakRetained = objc_loadWeakRetained((error + 8));
    lastErrorMessage = [(BSSqliteDatabaseConnection *)WeakRetained lastErrorMessage];

    if (lastErrorMessage)
    {
      [dictionary setObject:lastErrorMessage forKeyedSubscript:*MEMORY[0x1E696A588]];
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.baseboard.bssqlite" code:a2 userInfo:dictionary];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)sqliteDatabaseConnectionWillClose:(id)close
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