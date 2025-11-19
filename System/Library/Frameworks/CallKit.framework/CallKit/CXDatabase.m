@interface CXDatabase
- (BOOL)closeWithError:(id *)a3;
- (BOOL)performTransactionWithBlock:(id)a3 error:(id *)a4;
- (BOOL)setBusyTimeout:(double)a3 error:(id *)a4;
- (id)_statementForSQL:(id)a3 transient:(BOOL)a4 error:(id *)a5;
- (id)description;
- (id)namesOfColumnsInTableWithName:(id)a3 error:(id *)a4;
- (int)countOfRecordsModifiedByLastQuery;
- (int64_t)lastInsertedRowID;
- (void)dealloc;
@end

@implementation CXDatabase

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Error closing database: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CXDatabase *)self url];
  v6 = [v3 stringWithFormat:@"<%@ %p URL=%@>", v4, self, v5];

  return v6;
}

- (BOOL)closeWithError:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(CXDatabase *)self database])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [(CXDatabase *)self sqlQueryToStatements];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v20 + 1) + 8 * i) finalize];
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v8);
    }

    v11 = [(CXDatabase *)self sqlQueryToStatements];
    [v11 removeAllObjects];

    v12 = sqlite3_close([(CXDatabase *)self database]);
    v13 = v12;
    if (a3 && v12)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlite3_close for %@ returned %d", self, v12];
      v15 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v25 = v14;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      *a3 = [v15 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v13 userInfo:v16];
    }

    v17 = v13 == 0;
    [(CXDatabase *)self setDatabase:0];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)setBusyTimeout:(double)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = (a3 * 1000.0);
  busy = sqlite3_busy_timeout([(CXDatabase *)self database], v6);
  v8 = busy;
  if (a4 && busy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlite3_busy_timeout for %@ with ms=%d returned %d", self, v6, busy];
    v10 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v10 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v8 userInfo:v11];
  }

  result = v8 == 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)lastInsertedRowID
{
  v2 = [(CXDatabase *)self database];

  return sqlite3_last_insert_rowid(v2);
}

- (int)countOfRecordsModifiedByLastQuery
{
  v2 = [(CXDatabase *)self database];

  return sqlite3_changes(v2);
}

- (id)_statementForSQL:(id)a3 transient:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CXDatabase *)self sqlQueryToStatements];
  v10 = [v9 objectForKeyedSubscript:v8];

  if (!v10)
  {
    v10 = [[CXDatabaseStatement alloc] initWithSQL:v8 database:self error:a5];
    if (!a4)
    {
      v11 = [(CXDatabase *)self sqlQueryToStatements];
      [v11 setObject:v10 forKeyedSubscript:v8];
    }
  }

  return v10;
}

- (id)namesOfColumnsInTableWithName:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = [v6 array];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __50__CXDatabase_namesOfColumnsInTableWithName_error___block_invoke;
  v17 = &unk_1E7C070F0;
  v9 = v8;
  v18 = v9;
  v10 = MEMORY[0x1B8C78C60](&v14);
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA table_info(%@)", v7, v14, v15, v16, v17];

  if (![(CXDatabase *)self selectSQL:v11 withBindings:MEMORY[0x1E695E0F0] expectedColumnCount:6 resultRowHandler:v10 error:a4])
  {

    v9 = 0;
  }

  v12 = [v9 copy];

  return v12;
}

void __50__CXDatabase_namesOfColumnsInTableWithName_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:1];
  [*(a1 + 32) addObject:v3];
}

- (BOOL)performTransactionWithBlock:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(CXDatabase *)self beginTransactionWithError:a4])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__CXDatabase_performTransactionWithBlock_error___block_invoke;
    v11[3] = &unk_1E7C07430;
    v11[4] = self;
    v11[5] = &v12;
    v7 = MEMORY[0x1B8C78C60](v11);
    v8 = v6[2](v6, v7, a4);
    if ((v13[3] & 1) == 0)
    {
      v8 = [(CXDatabase *)self commitTransactionWithError:a4];
    }

    v9 = v8;

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end