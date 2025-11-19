@interface ASUSQLiteSchema
- (ASUSQLiteSchema)initWithConnection:(id)a3;
- (BOOL)column:(id)a3 existsInTable:(id)a4;
- (BOOL)migrateToVersion:(int64_t)a3 usingBlock:(id)a4;
- (BOOL)tableExists:(id)a3;
- (int64_t)currentUserVersion;
@end

@implementation ASUSQLiteSchema

- (ASUSQLiteSchema)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASUSQLiteSchema;
  v6 = [(ASUSQLiteSchema *)&v9 init];
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
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA table_info(%@)", v7];;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__ASUSQLiteSchema_column_existsInTable___block_invoke;
  v12[3] = &unk_278C97748;
  v14 = &v15;
  v10 = v6;
  v13 = v10;
  [(ASUSQLiteConnection *)connection executeQuery:v9 withResults:v12];

  LOBYTE(connection) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return connection;
}

void __40__ASUSQLiteSchema_column_existsInTable___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ASUSQLiteSchema_column_existsInTable___block_invoke_2;
  v5[3] = &unk_278C97720;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 enumerateRowsUsingBlock:v5];
}

void __40__ASUSQLiteSchema_column_existsInTable___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 stringForColumnName:@"name"];
  v6 = [v7 isEqualToString:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = v6;
  *a4 = v6;
}

- (int64_t)currentUserVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connection = self->_connection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ASUSQLiteSchema_currentUserVersion__block_invoke;
  v5[3] = &unk_278C97770;
  v5[4] = &v6;
  [(ASUSQLiteConnection *)connection executeQuery:@"PRAGMA user_version;" withResults:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __37__ASUSQLiteSchema_currentUserVersion__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 firstInt64Value];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)migrateToVersion:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__ASUSQLiteSchema_migrateToVersion_usingBlock___block_invoke;
  v10[3] = &unk_278C97798;
  v11 = v6;
  v12 = a3;
  v10[4] = self;
  v8 = v6;
  LOBYTE(self) = [(ASUSQLiteConnection *)connection performTransaction:v10 error:0];

  return self;
}

uint64_t __47__ASUSQLiteSchema_migrateToVersion_usingBlock___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [[ASUSQLiteSchemaMigration alloc] initWithConnection:*(a1[4] + 8)];
  v3 = ASULogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1[4] + 8) options];
    v5 = [v4 databasePath];
    v6 = a1[6];
    *buf = 138543618;
    v16 = v5;
    v17 = 2048;
    v18 = v6;
    _os_log_impl(&dword_2400F8000, v3, OS_LOG_TYPE_DEFAULT, "Migrating %{public}@ to %llu", buf, 0x16u);
  }

  (*(a1[5] + 16))();
  v7 = [(ASUSQLiteSchemaMigration *)v2 success];
  if (!v7)
  {
    v9 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1[4] + 8) options];
      v13 = [v12 databasePath];
      v14 = a1[6];
      *buf = 138543618;
      v16 = v13;
      v17 = 2048;
      v18 = v14;
      _os_log_error_impl(&dword_2400F8000, v9, OS_LOG_TYPE_ERROR, "Migrating %{public}@ to %llu failed!", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v8 = a1[4];
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA user_version = %lld", a1[6]];;
    [*(v8 + 8) executeStatement:v9 error:0];
LABEL_8:
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)tableExists:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  connection = self->_connection;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT name FROM sqlite_master where name = '%@'", v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__ASUSQLiteSchema_tableExists___block_invoke;
  v8[3] = &unk_278C97770;
  v8[4] = &v9;
  [(ASUSQLiteConnection *)connection executeQuery:v6 withResults:v8];

  LOBYTE(connection) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return connection;
}

uint64_t __31__ASUSQLiteSchema_tableExists___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 hasRows];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end