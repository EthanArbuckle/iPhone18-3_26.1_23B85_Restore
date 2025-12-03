@interface CXDatabase
- (BOOL)closeWithError:(id *)error;
- (BOOL)performTransactionWithBlock:(id)block error:(id *)error;
- (BOOL)setBusyTimeout:(double)timeout error:(id *)error;
- (id)_statementForSQL:(id)l transient:(BOOL)transient error:(id *)error;
- (id)description;
- (id)namesOfColumnsInTableWithName:(id)name error:(id *)error;
- (int)countOfRecordsModifiedByLastQuery;
- (int64_t)lastInsertedRowID;
- (void)dealloc;
@end

@implementation CXDatabase

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
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

- (BOOL)closeWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(CXDatabase *)self database])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    sqlQueryToStatements = [(CXDatabase *)self sqlQueryToStatements];
    allValues = [sqlQueryToStatements allValues];

    v7 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v20 + 1) + 8 * i) finalize];
        }

        v8 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v8);
    }

    sqlQueryToStatements2 = [(CXDatabase *)self sqlQueryToStatements];
    [sqlQueryToStatements2 removeAllObjects];

    v12 = sqlite3_close([(CXDatabase *)self database]);
    v13 = v12;
    if (error && v12)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlite3_close for %@ returned %d", self, v12];
      v15 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v25 = v14;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      *error = [v15 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v13 userInfo:v16];
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

- (BOOL)setBusyTimeout:(double)timeout error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = (timeout * 1000.0);
  busy = sqlite3_busy_timeout([(CXDatabase *)self database], v6);
  v8 = busy;
  if (error && busy)
  {
    busy = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlite3_busy_timeout for %@ with ms=%d returned %d", self, v6, busy];
    v10 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = busy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v10 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v8 userInfo:v11];
  }

  result = v8 == 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)lastInsertedRowID
{
  database = [(CXDatabase *)self database];

  return sqlite3_last_insert_rowid(database);
}

- (int)countOfRecordsModifiedByLastQuery
{
  database = [(CXDatabase *)self database];

  return sqlite3_changes(database);
}

- (id)_statementForSQL:(id)l transient:(BOOL)transient error:(id *)error
{
  lCopy = l;
  sqlQueryToStatements = [(CXDatabase *)self sqlQueryToStatements];
  v10 = [sqlQueryToStatements objectForKeyedSubscript:lCopy];

  if (!v10)
  {
    v10 = [[CXDatabaseStatement alloc] initWithSQL:lCopy database:self error:error];
    if (!transient)
    {
      sqlQueryToStatements2 = [(CXDatabase *)self sqlQueryToStatements];
      [sqlQueryToStatements2 setObject:v10 forKeyedSubscript:lCopy];
    }
  }

  return v10;
}

- (id)namesOfColumnsInTableWithName:(id)name error:(id *)error
{
  v6 = MEMORY[0x1E695DF70];
  nameCopy = name;
  array = [v6 array];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __50__CXDatabase_namesOfColumnsInTableWithName_error___block_invoke;
  v17 = &unk_1E7C070F0;
  v9 = array;
  v18 = v9;
  v10 = MEMORY[0x1B8C78C60](&v14);
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA table_info(%@)", nameCopy, v14, v15, v16, v17];

  if (![(CXDatabase *)self selectSQL:v11 withBindings:MEMORY[0x1E695E0F0] expectedColumnCount:6 resultRowHandler:v10 error:error])
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

- (BOOL)performTransactionWithBlock:(id)block error:(id *)error
{
  blockCopy = block;
  if ([(CXDatabase *)self beginTransactionWithError:error])
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
    v8 = blockCopy[2](blockCopy, v7, error);
    if ((v13[3] & 1) == 0)
    {
      v8 = [(CXDatabase *)self commitTransactionWithError:error];
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