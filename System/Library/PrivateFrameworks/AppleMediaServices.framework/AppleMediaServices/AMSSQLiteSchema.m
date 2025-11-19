@interface AMSSQLiteSchema
- (AMSSQLiteSchema)initWithConnection:(id)a3;
- (BOOL)column:(id)a3 existsInTable:(id)a4;
- (BOOL)migrateToVersion:(int64_t)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)tableExists:(id)a3;
- (int64_t)currentUserVersion;
- (void)_setUserVersion:(int64_t)a3;
@end

@implementation AMSSQLiteSchema

uint64_t __37__AMSSQLiteSchema_currentUserVersion__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 firstInt64Value];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int64_t)currentUserVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connection = self->_connection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AMSSQLiteSchema_currentUserVersion__block_invoke;
  v5[3] = &unk_1E73BC3D0;
  v5[4] = &v6;
  [(AMSSQLiteConnection *)connection executeQuery:@"PRAGMA user_version;" withResults:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (AMSSQLiteSchema)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSSQLiteSchema;
  v6 = [(AMSSQLiteSchema *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (BOOL)column:(id)a3 existsInTable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  connection = self->_connection;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA table_info(%@)", v7];;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__AMSSQLiteSchema_column_existsInTable___block_invoke;
  v12[3] = &unk_1E73BC3A8;
  v14 = &v15;
  v10 = v6;
  v13 = v10;
  [(AMSSQLiteConnection *)connection executeQuery:v9 withResults:v12];

  LOBYTE(connection) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return connection;
}

void __40__AMSSQLiteSchema_column_existsInTable___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AMSSQLiteSchema_column_existsInTable___block_invoke_2;
  v5[3] = &unk_1E73BC380;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 enumerateRowsUsingBlock:v5];
}

void __40__AMSSQLiteSchema_column_existsInTable___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 stringForColumnName:@"name"];
  v6 = [v7 isEqualToString:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = v6;
  *a4 = v6;
}

- (BOOL)migrateToVersion:(int64_t)a3 usingBlock:(id)a4 error:(id *)a5
{
  v8 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__64;
  v22 = __Block_byref_object_dispose__64;
  v23 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__AMSSQLiteSchema_migrateToVersion_usingBlock_error___block_invoke;
  v13[3] = &unk_1E73BC3F8;
  v13[4] = self;
  v10 = v8;
  v14 = v10;
  v15 = &v24;
  v16 = &v18;
  v17 = a3;
  [(AMSSQLiteConnection *)connection performTransaction:v13];
  if (a5)
  {
    *a5 = v19[5];
  }

  v11 = *(v25 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

uint64_t __53__AMSSQLiteSchema_migrateToVersion_usingBlock_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [[AMSSQLiteSchemaMigration alloc] initWithConnection:*(*(a1 + 32) + 8)];
  (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = [(AMSSQLiteSchemaMigration *)v2 success];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) _setUserVersion:*(a1 + 64)];
  }

  else
  {
    v3 = [(AMSSQLiteSchemaMigration *)v2 error];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = [(AMSSQLiteSchemaMigration *)v2 error];
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to run database migration. Error: %@", &v12, 0x16u);
    }
  }

  v10 = *(*(*(a1 + 48) + 8) + 24);

  return v10;
}

- (BOOL)tableExists:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  connection = self->_connection;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__AMSSQLiteSchema_tableExists___block_invoke;
  v8[3] = &unk_1E73BBFF0;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(AMSSQLiteConnection *)connection executeQuery:@"SELECT name FROM sqlite_master where name = '?'" withResults:v8];
  LOBYTE(connection) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return connection;
}

void __31__AMSSQLiteSchema_tableExists___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (void)_setUserVersion:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA user_version = %lld", a3];;
  [(AMSSQLiteConnection *)self->_connection executeStatement:v4 error:0];
}

@end