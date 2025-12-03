@interface APDatabaseTable
- (APDatabaseManager)manager;
- (APDatabaseTable)initWithDatabaseManager:(id)manager;
- (BOOL)_tableExists;
- (Class)rowClass;
- (NSString)tableName;
- (id)selectAll;
@end

@implementation APDatabaseTable

- (APDatabaseTable)initWithDatabaseManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = APDatabaseTable;
  v5 = [(APDatabaseTable *)&v12 init];
  v6 = v5;
  if (v5 && (objc_storeWeak(&v5->_manager, managerCopy), !objc_msgSend__tableExists(v6, v7, v8, v9)))
  {
    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

- (APDatabaseManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (NSString)tableName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (Class)rowClass
{
  APSimulateCrash(5, @"Error: Path 'rowClass' to be implemented for each subclass.", 0);

  return objc_opt_class();
}

- (id)selectAll
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_manager(self, a2, v2, v3);
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v11 = objc_msgSend_stringWithFormat_(v6, v9, @"SELECT rowid, * FROM %@", v10, v8);

    v13 = objc_msgSend_executeSelectQuery_forTable_withParameters_(v5, v12, v11, self, MEMORY[0x1E695E0F0]);
  }

  else
  {
    v14 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v19 = objc_opt_class();
      v15 = v19;
      _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_ERROR, "[%{private}@]: Database manager is nil when trying to select all.", buf, 0xCu);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)_tableExists
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_manager(self, a2, v2, v3);
  if (v5)
  {
    v6 = [APDatabaseColumn alloc];
    v10 = objc_msgSend_tableName(self, v7, v8, v9);
    v12 = objc_msgSend_initWithName_forColumnType_withValue_(v6, v11, @"name", 3, v10);

    v24 = v12;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, &v24, 1);
    v16 = objc_msgSend_executeSelectStringsQuery_withParameters_(v5, v15, @"SELECT name FROM sqlite_master WHERE type='table' AND name=?", v14);

    v20 = objc_msgSend_count(v16, v17, v18, v19) != 0;
  }

  else
  {
    v12 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v26 = objc_opt_class();
      v21 = v26;
      _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "[%{private}@]: Database manager is nil when trying to select all.", buf, 0xCu);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

@end