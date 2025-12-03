@interface ASUSQLiteDatabaseStoreSchema
- (ASUSQLiteDatabaseStoreSchema)initWithConnection:(id)connection schemaName:(id)name tableNames:(id)names;
- (BOOL)column:(id)column existsInTable:(id)table;
- (BOOL)migrateToVersion:(int64_t)version usingBlock:(id)block;
- (BOOL)tableExists:(id)exists;
- (int64_t)currentSchemaVersion;
- (uint64_t)_migrateToVersion:(void *)version usingMapping:(int)mapping isReattempt:;
@end

@implementation ASUSQLiteDatabaseStoreSchema

- (ASUSQLiteDatabaseStoreSchema)initWithConnection:(id)connection schemaName:(id)name tableNames:(id)names
{
  connectionCopy = connection;
  nameCopy = name;
  namesCopy = names;
  v20.receiver = self;
  v20.super_class = ASUSQLiteDatabaseStoreSchema;
  v12 = [(ASUSQLiteDatabaseStoreSchema *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, connection);
    objc_storeStrong(&v13->_schemaName, name);
    v14 = [namesCopy copy];
    tableNames = v13->_tableNames;
    v13->_tableNames = v14;

    connection = v13->_connection;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__ASUSQLiteDatabaseStoreSchema_initWithConnection_schemaName_tableNames___block_invoke;
    v18[3] = &unk_278C978E8;
    v19 = v13;
    [(ASUSQLiteConnection *)connection performTransaction:v18 error:0];
  }

  return v13;
}

uint64_t __73__ASUSQLiteDatabaseStoreSchema_initWithConnection_schemaName_tableNames___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) executeStatement:@"PRAGMA user_version = 1;" error:0];
  [*(*(a1 + 32) + 8) executeStatement:@"CREATE TABLE IF NOT EXISTS schema_version (schema_name TEXT error:{schema_version INTEGER DEFAULT 0, PRIMARY KEY(schema_name));", 0}];
  return 1;
}

- (int64_t)currentSchemaVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connection = self->_connection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__ASUSQLiteDatabaseStoreSchema_currentSchemaVersion__block_invoke;
  v5[3] = &unk_278C97930;
  v5[4] = self;
  v5[5] = &v6;
  [(ASUSQLiteConnection *)connection executeQuery:@"SELECT schema_version FROM schema_version WHERE schema_name = ?" withResults:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __52__ASUSQLiteDatabaseStoreSchema_currentSchemaVersion__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  v5 = [v4 firstInt64Value];

  *(*(*(a1 + 40) + 8) + 24) = v5;
}

- (BOOL)column:(id)column existsInTable:(id)table
{
  columnCopy = column;
  tableCopy = table;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  tableCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"PRAGMA table_info(%@)", tableCopy];
  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__ASUSQLiteDatabaseStoreSchema_column_existsInTable___block_invoke;
  v12[3] = &unk_278C97748;
  v14 = &v15;
  v10 = columnCopy;
  v13 = v10;
  [(ASUSQLiteConnection *)connection executeQuery:tableCopy withResults:v12];
  LOBYTE(connection) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return connection;
}

void __53__ASUSQLiteDatabaseStoreSchema_column_existsInTable___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ASUSQLiteDatabaseStoreSchema_column_existsInTable___block_invoke_2;
  v5[3] = &unk_278C97720;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 enumerateRowsUsingBlock:v5];
}

void __53__ASUSQLiteDatabaseStoreSchema_column_existsInTable___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 stringForColumnName:@"name"];
  v6 = [v7 isEqualToString:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = v6;
  *a4 = v6;
}

- (BOOL)migrateToVersion:(int64_t)version usingBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__ASUSQLiteDatabaseStoreSchema_migrateToVersion_usingBlock___block_invoke;
  v10[3] = &unk_278C97798;
  v10[4] = self;
  v11 = blockCopy;
  versionCopy = version;
  v8 = blockCopy;
  LOBYTE(self) = [(ASUSQLiteConnection *)connection performSavepoint:v10];

  return self;
}

uint64_t __60__ASUSQLiteDatabaseStoreSchema_migrateToVersion_usingBlock___block_invoke(void *a1)
{
  v2 = [[ASUSQLiteDatabaseStoreMigrator alloc] initWithConnection:*(a1[4] + 8) tableNames:*(a1[4] + 24)];
  (*(a1[5] + 16))();
  if ([(ASUSQLiteDatabaseStoreMigrator *)v2 success])
  {
    v3 = a1[4];
    v4 = *(v3 + 8);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__ASUSQLiteDatabaseStoreSchema_migrateToVersion_usingBlock___block_invoke_2;
    v8[3] = &unk_278C97A98;
    v5 = a1[6];
    v8[4] = v3;
    v8[5] = v5;
    v6 = [v4 executeStatement:@"INSERT OR REPLACE INTO schema_version (schema_name error:schema_version) VALUES (? bindings:{?)", 0, v8}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __60__ASUSQLiteDatabaseStoreSchema_migrateToVersion_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  [v4 bindInt64:*(a1 + 40) atPosition:2];
}

- (uint64_t)_migrateToVersion:(void *)version usingMapping:(int)mapping isReattempt:
{
  v28 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  if (self)
  {
    currentSchemaVersion = [self currentSchemaVersion];
    if (currentSchemaVersion < a2)
    {
      while (1)
      {
        v22 = 0;
        v23 = -1;
        versionCopy[2](versionCopy, currentSchemaVersion, &v23, &v22);
        v9 = v23;
        if (v23 <= currentSchemaVersion || v23 > a2)
        {
          break;
        }

        if (!v22)
        {
          v13 = ASULogHandleForCategory(1);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *buf = 134218240;
          v25 = currentSchemaVersion;
          v26 = 2048;
          v27 = v23;
          v15 = "No migration block provided to migrate schema version %lli -> %lli";
          goto LABEL_32;
        }

        v11 = [self migrateToVersion:v23 usingBlock:?];
        v12 = ASULogHandleForCategory(1);
        v13 = v12;
        if ((v11 & 1) == 0)
        {
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *buf = 134218240;
          v25 = currentSchemaVersion;
          v26 = 2048;
          v27 = v23;
          v15 = "Database migration function failed for %lli => %lli";
          goto LABEL_32;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v25 = currentSchemaVersion;
          v26 = 2048;
          v27 = v23;
          _os_log_impl(&dword_2400F8000, v13, OS_LOG_TYPE_DEFAULT, "Database migration function succeeded for %lli => %lli", buf, 0x16u);
        }

        currentSchemaVersion = v23;
        if (currentSchemaVersion >= a2)
        {
          goto LABEL_21;
        }
      }

      v14 = ASULogHandleForCategory(1);
      v13 = v14;
      if (v9 != -1)
      {
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        *buf = 134218240;
        v25 = v23;
        v26 = 2048;
        v27 = currentSchemaVersion;
        v15 = "Invalid version %lli provided; currentVersion: %lli";
LABEL_32:
        _os_log_error_impl(&dword_2400F8000, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);
        goto LABEL_20;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v25 = v23;
        _os_log_impl(&dword_2400F8000, v13, OS_LOG_TYPE_DEFAULT, "Version mapping not provided for %lli", buf, 0xCu);
      }

LABEL_20:
    }

LABEL_21:
    if (currentSchemaVersion == a2)
    {
      self = 1;
    }

    else if (mapping)
    {
      v16 = ASULogHandleForCategory(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2400F8000, v16, OS_LOG_TYPE_DEFAULT, "Not reattempting to reset schema", buf, 2u);
      }

      self = 0;
    }

    else
    {
      v17 = *(self + 8);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __75__ASUSQLiteDatabaseStoreSchema__migrateToVersion_usingMapping_isReattempt___block_invoke;
      v20[3] = &unk_278C97F10;
      v20[4] = self;
      v21 = versionCopy;
      self = [v17 performTransaction:v20 error:0];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return self;
}

uint64_t __75__ASUSQLiteDatabaseStoreSchema__migrateToVersion_usingMapping_isReattempt___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) migrateToVersion:0 usingBlock:&__block_literal_global_0])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = *(*(a1 + 32) + 24);
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v15 + 1) + 8 * v6);
          v14 = 0;
          v8 = [@"DROP TABLE IF EXISTS " stringByAppendingString:v7];
          if (([*(*(a1 + 32) + 8) executeStatement:v8 error:&v14] & 1) == 0)
          {
            v12 = ASULogHandleForCategory(1);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v20 = v14;
              _os_log_error_impl(&dword_2400F8000, v12, OS_LOG_TYPE_ERROR, "Failed to drop table: %{public}@", buf, 0xCu);
            }

            goto LABEL_19;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v9 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2400F8000, v9, OS_LOG_TYPE_DEFAULT, "Successfully reset schema; requesting migration from version 0", buf, 2u);
    }

    result = [(ASUSQLiteDatabaseStoreSchema *)*(a1 + 32) _migrateToVersion:*(a1 + 40) usingMapping:1 isReattempt:?];
  }

  else
  {
    v11 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2400F8000, v11, OS_LOG_TYPE_ERROR, "Failed to set schema version back to 0; rolling back transaction", buf, 2u);
    }

LABEL_19:
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)tableExists:(id)exists
{
  existsCopy = exists;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ASUSQLiteDatabaseStoreSchema_tableExists___block_invoke;
  v8[3] = &unk_278C97930;
  v6 = existsCopy;
  v9 = v6;
  v10 = &v11;
  [(ASUSQLiteConnection *)connection executeQuery:@"SELECT name FROM sqlite_master where name = ?" withResults:v8];
  LOBYTE(connection) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return connection;
}

void __44__ASUSQLiteDatabaseStoreSchema_tableExists___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  LOBYTE(v3) = [v4 hasRows];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

@end