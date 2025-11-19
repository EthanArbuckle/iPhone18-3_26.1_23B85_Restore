@interface CXCallDirectoryStoreMigrator
- (CXCallDirectoryStoreMigrator)init;
- (id)_performMigrationsStartingAtSchemaVersion:(int64_t)a3 error:(id *)a4;
- (id)performMigrationsWithError:(id *)a3;
@end

@implementation CXCallDirectoryStoreMigrator

- (CXCallDirectoryStoreMigrator)init
{
  v7.receiver = self;
  v7.super_class = CXCallDirectoryStoreMigrator;
  v2 = [(CXCallDirectoryStoreMigrator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    storeCreationBlock = v2->_storeCreationBlock;
    v2->_storeCreationBlock = &__block_literal_global_7;

    retrieveExtensionBlock = v3->_retrieveExtensionBlock;
    v3->_retrieveExtensionBlock = &__block_literal_global_3;
  }

  return v3;
}

id __36__CXCallDirectoryStoreMigrator_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:a2];

  return v2;
}

- (id)performMigrationsWithError:(id *)a3
{
  v5 = [(CXCallDirectoryStoreMigrator *)self storeCreationBlock];
  v6 = (v5)[2](v5, a3);
  [(CXCallDirectoryStoreMigrator *)self setStore:v6];

  v7 = [(CXCallDirectoryStoreMigrator *)self store];

  if (!v7 || (-[CXCallDirectoryStoreMigrator store](self, "store"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 schemaVersion], v8, v9 == -1))
  {
    v10 = 0;
  }

  else
  {
    v10 = [(CXCallDirectoryStoreMigrator *)self _performMigrationsStartingAtSchemaVersion:v9 error:a3];
  }

  return v10;
}

- (id)_performMigrationsStartingAtSchemaVersion:(int64_t)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(CXCallDirectoryStoreMigrationResult);
  [(CXCallDirectoryStoreMigrationResult *)v7 setStartingSchemaVersion:a3];
  [(CXCallDirectoryStoreMigrationResult *)v7 setEndingSchemaVersion:5];
  [(CXCallDirectoryStoreMigrationResult *)v7 setRequiresExtensionDisablement:0];
  [(CXCallDirectoryStoreMigrationResult *)v7 setRequiresExtensionSynchronization:0];
  if (a3 <= 1)
  {
    if ((a3 + 1) >= 3)
    {
      goto LABEL_31;
    }

    v8 = [(CXCallDirectoryStoreMigrator *)self store];
    p_super = [v8 url];

    [(CXCallDirectoryStoreMigrator *)self setStore:0];
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v10 removeItemAtURL:p_super error:a4];

    if (!v11)
    {
      goto LABEL_30;
    }

    v12 = CXDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = p_super;
      _os_log_impl(&dword_1B47F3000, v12, OS_LOG_TYPE_DEFAULT, "Successfully removed DB at URL %@", buf, 0xCu);
    }

    v13 = [(CXCallDirectoryStoreMigrator *)self storeCreationBlock];
    v14 = (v13)[2](v13, a4);
    [(CXCallDirectoryStoreMigrator *)self setStore:v14];

    v15 = [(CXCallDirectoryStoreMigrator *)self store];

    if (!v15)
    {
LABEL_30:

      goto LABEL_37;
    }

    [(CXCallDirectoryStoreMigrationResult *)v7 setRequiresExtensionDisablement:1];
    [(CXCallDirectoryStoreMigrationResult *)v7 setRequiresExtensionSynchronization:1];

LABEL_14:
    v22 = [(CXCallDirectoryStoreMigrator *)self store];
    v23 = [v22 database];
    p_super = [v23 namesOfColumnsInTableWithName:@"Extension" error:a4];

    if (p_super)
    {
      if (([p_super containsObject:@"state"]& 1) != 0)
      {
LABEL_18:
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __80__CXCallDirectoryStoreMigrator__performMigrationsStartingAtSchemaVersion_error___block_invoke;
        v50[3] = &unk_1E7C070F0;
        v50[4] = self;
        v28 = MEMORY[0x1B8C78C60](v50);
        v29 = [(CXCallDirectoryStoreMigrator *)self store];
        v30 = [v29 database];
        v31 = [v30 selectSQL:@"SELECT id withBindings:bundle_id FROM Extension" expectedColumnCount:MEMORY[0x1E695E0F0] resultRowHandler:2 error:{v28, a4}];

        if (v31 && (-[CXCallDirectoryStoreMigrator store](self, "store"), v32 = objc_claimAutoreleasedReturnValue(), [v32 database], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "executeSQL:withBindings:error:", @"UPDATE SchemaVersion SET version = ?", &unk_1F2CA5FA8, a4), v33, v32, (v34 & 1) != 0))
        {
          v35 = 1;
        }

        else
        {

          v35 = 0;
          v7 = 0;
        }

        if (!v35)
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE Extension ADD COLUMN state INTEGER NOT NULL DEFAULT %ld", 1];
      v25 = [(CXCallDirectoryStoreMigrator *)self store];
      v26 = [v25 database];
      v27 = [v26 executeSQL:v24 error:a4];

      if (v27)
      {

        goto LABEL_18;
      }
    }

    else
    {
      v24 = v7;
    }

    goto LABEL_37;
  }

  if (a3 == 2)
  {
    goto LABEL_14;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

LABEL_24:
  v36 = [(CXCallDirectoryStoreMigrator *)self store];
  v37 = [v36 database];
  p_super = [v37 namesOfColumnsInTableWithName:@"Extension" error:a4];

  if (!p_super)
  {
    goto LABEL_30;
  }

  if (([p_super containsObject:@"state_last_modified"]& 1) == 0)
  {
    v38 = [(CXCallDirectoryStoreMigrator *)self store];
    v39 = [v38 database];
    v40 = [v39 executeSQL:@"ALTER TABLE Extension ADD COLUMN state_last_modified REAL NOT NULL DEFAULT 0.0" error:a4];

    if (!v40)
    {
      goto LABEL_30;
    }
  }

  v41 = [(CXCallDirectoryStoreMigrator *)self store];
  v42 = [v41 database];
  v43 = [v42 executeSQL:@"UPDATE Extension SET state_last_modified = ((julianday('now') - 2440587.5)*86400.0)" error:a4];

  if (!v43)
  {
    goto LABEL_30;
  }

  v44 = [(CXCallDirectoryStoreMigrator *)self store];
  v45 = [v44 database];
  v46 = [v45 executeSQL:@"UPDATE SchemaVersion SET version = ?" withBindings:&unk_1F2CA5FC0 error:a4];

  if ((v46 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_11:
  v16 = [(CXCallDirectoryStoreMigrator *)self store];
  v17 = [v16 database];
  v18 = [v17 executeSQL:@"CREATE INDEX idx_PhoneNumberIdentificationEntry_FK_Label ON PhoneNumberIdentificationEntry(label_id)" error:a4];

  if (!v18 || (-[CXCallDirectoryStoreMigrator store](self, "store"), v19 = objc_claimAutoreleasedReturnValue(), [v19 database], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "executeSQL:withBindings:error:", @"UPDATE SchemaVersion SET version = ?", &unk_1F2CA5FD8, a4), v20, v19, !v21))
  {
    p_super = &v7->super;
LABEL_37:
    v7 = 0;
LABEL_38:

    goto LABEL_39;
  }

LABEL_31:
  if (v7)
  {
    v47 = [(CXCallDirectoryStoreMigrationResult *)v7 startingSchemaVersion];
    if (v47 < [(CXCallDirectoryStoreMigrationResult *)v7 endingSchemaVersion])
    {
      p_super = CXDefaultLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v52 = 5;
        _os_log_impl(&dword_1B47F3000, p_super, OS_LOG_TYPE_DEFAULT, "Successfully migrated to schema version %ld", buf, 0xCu);
      }

      goto LABEL_38;
    }
  }

LABEL_39:
  v48 = *MEMORY[0x1E69E9840];

  return v7;
}

void __80__CXCallDirectoryStoreMigrator__performMigrationsStartingAtSchemaVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 longLongValue];

  v6 = [v3 objectAtIndexedSubscript:1];

  v7 = [*(a1 + 32) retrieveExtensionBlock];
  v19 = 0;
  v8 = (v7)[2](v7, v6, &v19);
  v9 = v19;

  if (!v8)
  {
    v16 = CXDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __80__CXCallDirectoryStoreMigrator__performMigrationsStartingAtSchemaVersion_error___block_invoke_cold_1(v6, v9, v16);
    }

    v15 = v9;
    goto LABEL_9;
  }

  if ([v8 isEnabledViaPlugInKit])
  {
    v10 = [*(a1 + 32) store];
    v11 = [v10 database];
    v26[0] = &unk_1F2CA5F48;
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    v26[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v18 = v9;
    v14 = [v11 executeSQL:@"UPDATE Extension SET state = ? WHERE (id = ?)" withBindings:v13 error:&v18];
    v15 = v18;

    if (v14)
    {
LABEL_10:
      v9 = v15;
      goto LABEL_11;
    }

    v16 = CXDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v21 = v6;
      v22 = 2048;
      v23 = v5;
      v24 = 2112;
      v25 = v15;
      _os_log_error_impl(&dword_1B47F3000, v16, OS_LOG_TYPE_ERROR, "Error setting state to Enabled for extension with identifier '%@' (ID %lld): %@", buf, 0x20u);
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
}

void __80__CXCallDirectoryStoreMigrator__performMigrationsStartingAtSchemaVersion_error___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B47F3000, log, OS_LOG_TYPE_ERROR, "Error retrieving NSExtension with identifier '%@': %@. Not migrating enabled status", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end