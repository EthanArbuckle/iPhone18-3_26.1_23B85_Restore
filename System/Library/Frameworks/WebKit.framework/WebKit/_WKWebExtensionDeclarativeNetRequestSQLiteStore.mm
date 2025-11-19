@interface _WKWebExtensionDeclarativeNetRequestSQLiteStore
- (BOOL)_isDatabaseEmpty;
- (_WKWebExtensionDeclarativeNetRequestSQLiteStore)initWithUniqueIdentifier:(id)a3 storageType:(BOOL)a4 directory:(id)a5 usesInMemoryDatabase:(BOOL)a6;
- (id)_databaseURL;
- (id)_getKeysAndValuesFromRowEnumerator:(id)a3;
- (id)_getRulesWithRuleIDs:(id)a3 errorMessage:(id *)a4;
- (id)_insertRule:(id)a3 inDatabase:(id)a4;
- (int)_createFreshDatabaseSchema;
- (int)_resetDatabaseSchema;
- (void)addRules:(id)a3 completionHandler:(id)a4;
- (void)deleteRules:(id)a3 completionHandler:(id)a4;
- (void)getRulesWithRuleIDs:(id)a3 completionHandler:(id)a4;
- (void)updateRulesByRemovingIDs:(id)a3 addRules:(id)a4 completionHandler:(id)a5;
@end

@implementation _WKWebExtensionDeclarativeNetRequestSQLiteStore

- (_WKWebExtensionDeclarativeNetRequestSQLiteStore)initWithUniqueIdentifier:(id)a3 storageType:(BOOL)a4 directory:(id)a5 usesInMemoryDatabase:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = _WKWebExtensionDeclarativeNetRequestSQLiteStore;
  v12 = [(_WKWebExtensionSQLiteStore *)&v19 initWithUniqueIdentifier:v10 directory:v11 usesInMemoryDatabase:v6];
  v13 = v12;
  if (v12)
  {
    if (v8)
    {
      v14 = @"session";
    }

    else
    {
      v14 = @"dynamic";
    }

    objc_storeStrong(&v12->_storageType, v14);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_rules", v13->_storageType];
    tableName = v13->_tableName;
    v13->_tableName = v15;

    v17 = v13;
  }

  return v13;
}

- (void)updateRulesByRemovingIDs:(id)a3 addRules:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = __103___WKWebExtensionDeclarativeNetRequestSQLiteStore_updateRulesByRemovingIDs_addRules_completionHandler___block_invoke;
  v13[3] = &unk_1F10E60A0;
  objc_copyWeak(&v16, &location);
  v14 = v8;
  v15 = v9;
  v11 = v8;
  v12 = v9;
  [(_WKWebExtensionDeclarativeNetRequestSQLiteStore *)self deleteRules:v10 completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)addRules:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    objc_initWeak(&location, self);
    databaseQueue = self->super._databaseQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = __78___WKWebExtensionDeclarativeNetRequestSQLiteStore_addRules_completionHandler___block_invoke;
    v9[3] = &unk_1F10E60D8;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    v10 = v6;
    dispatch_async(databaseQueue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)deleteRules:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    objc_initWeak(&location, self);
    databaseQueue = self->super._databaseQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = __81___WKWebExtensionDeclarativeNetRequestSQLiteStore_deleteRules_completionHandler___block_invoke;
    v9[3] = &unk_1F10E60D8;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    v10 = v6;
    dispatch_async(databaseQueue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)getRulesWithRuleIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  databaseQueue = self->super._databaseQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = __89___WKWebExtensionDeclarativeNetRequestSQLiteStore_getRulesWithRuleIDs_completionHandler___block_invoke;
  v11[3] = &unk_1F10E60D8;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(databaseQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)_getRulesWithRuleIDs:(id)a3 errorMessage:(id *)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->super._databaseQueue);
  if ([(_WKWebExtensionSQLiteStore *)self _openDatabaseIfNecessaryReturningErrorMessage:a4 createIfNecessary:0])
  {
    if ([v6 count])
    {
      v7 = [MEMORY[0x1E695DF70] array];
      for (i = 0; i < [v6 count]; ++i)
      {
        [v7 addObject:@"?"];
      }

      v10 = [v7 componentsJoinedByString:{@", "}];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT * FROM %@ WHERE id IN (%@)", self->_tableName, v10];
      v12 = [[_WKWebExtensionSQLiteStatement alloc] initWithDatabase:self->super._database query:v11];
      v13 = 0;
      while (v13 < [v6 count])
      {
        v14 = [v6 objectAtIndexedSubscript:v13];
        -[_WKWebExtensionSQLiteStatement bindInt64:atParameterIndex:](v12, "bindInt64:atParameterIndex:", [v14 integerValue], ++v13);
      }

      v15 = [(_WKWebExtensionSQLiteStatement *)v12 fetch];
    }

    else
    {
      database = self->super._database;
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT * FROM %@", self->_tableName];
      v15 = WebKit::SQLiteDatabaseFetch<>(database, v7);
    }

    v9 = [(_WKWebExtensionDeclarativeNetRequestSQLiteStore *)self _getKeysAndValuesFromRowEnumerator:v15];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)_getKeysAndValuesFromRowEnumerator:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = a3;
  if ((_MergedGlobals_12 & 1) == 0)
  {
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    qword_1EB01CE78 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    _MergedGlobals_12 = 1;
  }

  v21 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v19;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = MEMORY[0x1E696ACD0];
        v8 = qword_1EB01CE78;
        v9 = [*(*(&v23 + 1) + 8 * i) dataAtIndex:1];
        v22 = 0;
        v10 = [v7 unarchivedObjectOfClasses:v8 fromData:v9 error:&v22];
        v11 = v22;

        if (v11)
        {
          v12 = qword_1ED640AB8;
          if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
          {
            uniqueIdentifier = self->super._uniqueIdentifier;
            *buf = 138477827;
            v28 = uniqueIdentifier;
            _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Failed to deserialize dynamic declarative net request rule for extension %{private}@.", buf, 0xCu);
          }
        }

        else
        {
          [v21 addObject:v10];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v4);
  }

  return v21;
}

- (id)_insertRule:(id)a3 inDatabase:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21 = a4;
  dispatch_assert_queue_V2(self->super._databaseQueue);
  v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  v7 = WebKit::objectForKey<NSNumber>(v6, @"id");
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"INSERT INTO %@ (id, rule) VALUES (?, ?)", self->_tableName];
  v9 = [v7 integerValue];
  v10 = v21;
  v11 = v8;
  *buf = 0;
  v12 = [[_WKWebExtensionSQLiteStatement alloc] initWithDatabase:v10 query:v11 error:buf];
  v13 = *buf;
  v14 = v13;
  if (v12)
  {
    v15 = v12;
    [(_WKWebExtensionSQLiteStatement *)v15 bindInt64:v9 atParameterIndex:1];
    [(_WKWebExtensionSQLiteStatement *)v15 bindData:v22 atParameterIndex:2];

    v16 = [(_WKWebExtensionSQLiteStatement *)v15 execute];
    [(_WKWebExtensionSQLiteStatement *)v15 invalidate];
    if ((v16 - 100) >= 2 && v16)
    {
      [v10 reportErrorWithCode:v16 statement:-[_WKWebExtensionSQLiteStatement handle](v15 error:{"handle"), 0}];
    }
  }

  else
  {
    LODWORD(v16) = [v13 code];
  }

  if (v16 == 101)
  {
    v17 = 0;
  }

  else
  {
    v18 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = self->super._uniqueIdentifier;
      *buf = 138477827;
      *&buf[4] = uniqueIdentifier;
      _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "Failed to insert dynamic declarative net request rule for extension %{private}@.", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to add %@ rule.", self->_storageType];
  }

  return v17;
}

- (id)_databaseURL
{
  if (self->super._useInMemoryDatabase)
  {
    +[_WKWebExtensionSQLiteDatabase inMemoryDatabaseURL];
  }

  else
  {
    [(NSURL *)self->super._directory URLByAppendingPathComponent:@"DeclarativeNetRequestRules.db" isDirectory:0];
  }
  v2 = ;

  return v2;
}

- (int)_createFreshDatabaseSchema
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._databaseQueue);
  database = self->super._database;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CREATE TABLE %@ (id INTEGER PRIMARY KEY NOT NULL, rule BLOB NOT NULL)", self->_tableName];
  v5 = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(database, 0, v4);

  if (v5 != 101)
  {
    v6 = qword_1ED640AB8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      tableName = self->_tableName;
      uniqueIdentifier = self->super._uniqueIdentifier;
      v10 = [(_WKWebExtensionSQLiteDatabase *)self->super._database lastErrorMessage];
      *buf = 138413059;
      v12 = tableName;
      v13 = 2113;
      v14 = uniqueIdentifier;
      v15 = 2114;
      v16 = v10;
      v17 = 1024;
      v18 = v5;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Failed to create %@ database for extension %{private}@: %{public}@ (%d)", buf, 0x26u);
    }
  }

  return v5;
}

- (int)_resetDatabaseSchema
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._databaseQueue);
  database = self->super._database;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TABLE IF EXISTS %@", self->_tableName];
  v5 = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(database, 0, v4);

  if (v5 != 101)
  {
    v6 = qword_1ED640AB8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      tableName = self->_tableName;
      uniqueIdentifier = self->super._uniqueIdentifier;
      v10 = [(_WKWebExtensionSQLiteDatabase *)self->super._database lastErrorMessage];
      *buf = 138413059;
      v12 = tableName;
      v13 = 2113;
      v14 = uniqueIdentifier;
      v15 = 2114;
      v16 = v10;
      v17 = 1024;
      v18 = v5;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Failed to reset %@ database schema for extension %{private}@: %{public}@ (%d)", buf, 0x26u);
    }
  }

  return v5;
}

- (BOOL)_isDatabaseEmpty
{
  dispatch_assert_queue_V2(self->super._databaseQueue);
  database = self->super._database;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT COUNT(*) FROM %@", self->_tableName];
  v5 = WebKit::SQLiteDatabaseFetch<>(database, v4);

  v6 = [v5 nextObject];
  LOBYTE(database) = [v6 int64AtIndex:0] == 0;

  return database;
}

@end