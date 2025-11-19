@interface PFCloudKitMetadataMigrationContext
- (PFCloudKitMetadataMigrationContext)init;
- (void)addSQLEntityToCreate:(uint64_t)a1;
- (void)dealloc;
@end

@implementation PFCloudKitMetadataMigrationContext

- (PFCloudKitMetadataMigrationContext)init
{
  v4.receiver = self;
  v4.super_class = PFCloudKitMetadataMigrationContext;
  v2 = [(PFCloudKitMetadataMigrationContext *)&v4 init];
  if (v2)
  {
    v2->_migrationStatements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_sqlEntitiesToCreate = objc_alloc_init(MEMORY[0x1E695DF70]);
    *&v2->_hasWorkToDo = 0;
    v2->_constrainedEntitiesToPreflight = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_columnsToDrop = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_storeTableNameToColumnNames = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  self->_migrationStatements = 0;

  self->_sqlEntitiesToCreate = 0;
  self->_currentModel = 0;

  self->_sqlModel = 0;
  self->_storeMetadataModel = 0;

  self->_storeSQLModel = 0;
  self->_storeMetadataVersionHashes = 0;

  self->_storeMetadataVersion = 0;
  self->_storeMetadataVersionHashes = 0;

  v3.receiver = self;
  v3.super_class = PFCloudKitMetadataMigrationContext;
  [(PFCloudKitMetadataMigrationContext *)&v3 dealloc];
}

- (void)addSQLEntityToCreate:(uint64_t)a1
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [*(a1 + 16) addObject:a2];
    *(a1 + 48) = 1;
    v4 = objc_alloc(MEMORY[0x1E695DFA8]);
    if (a2)
    {
      v5 = a2;
      while (v5)
      {
        v6 = v5;
        v5 = v5[21];
        if (v5 == v6)
        {
          v7 = v6[9];
          goto LABEL_7;
        }
      }
    }

    v7 = 0;
LABEL_7:
    v8 = [v4 initWithCapacity:{objc_msgSend(v7, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    if (a2)
    {
      v9 = a2;
      while (v9)
      {
        v10 = v9;
        v9 = v9[21];
        if (v9 == v10)
        {
          v11 = v10[9];
          goto LABEL_12;
        }
      }
    }

    v11 = 0;
LABEL_12:
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v8 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "columnName", v17)}];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    [a1 addColumnNames:v8 forTableName:{objc_msgSend(a2, "tableName", v17)}];
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end