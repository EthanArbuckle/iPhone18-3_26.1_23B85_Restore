@interface _WKWebExtensionRegisteredScriptsSQLiteStore
- (BOOL)_isDatabaseEmpty;
- (_WKWebExtensionRegisteredScriptsSQLiteStore)initWithUniqueIdentifier:(id)identifier directory:(id)directory usesInMemoryDatabase:(BOOL)database;
- (id)_databaseURL;
- (id)_getKeysAndValuesFromRowEnumerator:(id)enumerator;
- (id)_getScriptsWithOutErrorMessage:(id *)message;
- (int)_createFreshDatabaseSchema;
- (int)_resetDatabaseSchema;
- (void)_insertScript:(id)script inDatabase:(id)database errorMessage:(id *)message;
- (void)addScripts:(id)scripts completionHandler:(id)handler;
- (void)deleteScriptsWithIDs:(id)ds completionHandler:(id)handler;
- (void)getScriptsWithCompletionHandler:(id)handler;
- (void)updateScripts:(id)scripts completionHandler:(id)handler;
@end

@implementation _WKWebExtensionRegisteredScriptsSQLiteStore

- (_WKWebExtensionRegisteredScriptsSQLiteStore)initWithUniqueIdentifier:(id)identifier directory:(id)directory usesInMemoryDatabase:(BOOL)database
{
  v9.receiver = self;
  v9.super_class = _WKWebExtensionRegisteredScriptsSQLiteStore;
  v5 = [(_WKWebExtensionSQLiteStore *)&v9 initWithUniqueIdentifier:identifier directory:directory usesInMemoryDatabase:database];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (void)updateScripts:(id)scripts completionHandler:(id)handler
{
  scriptsCopy = scripts;
  handlerCopy = handler;
  v8 = WebKit::mapObjects<NSArray>(scriptsCopy, &__block_literal_global_0);
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = __79___WKWebExtensionRegisteredScriptsSQLiteStore_updateScripts_completionHandler___block_invoke_2;
  v11[3] = &unk_1F10E6150;
  objc_copyWeak(&v14, &location);
  v9 = handlerCopy;
  v13 = v9;
  v10 = scriptsCopy;
  v12 = v10;
  [(_WKWebExtensionRegisteredScriptsSQLiteStore *)self deleteScriptsWithIDs:v8 completionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)deleteScriptsWithIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    objc_initWeak(&location, self);
    databaseQueue = self->super._databaseQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = __86___WKWebExtensionRegisteredScriptsSQLiteStore_deleteScriptsWithIDs_completionHandler___block_invoke;
    v9[3] = &unk_1F10E6188;
    objc_copyWeak(&v12, &location);
    v11 = handlerCopy;
    v10 = dsCopy;
    dispatch_async(databaseQueue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)addScripts:(id)scripts completionHandler:(id)handler
{
  scriptsCopy = scripts;
  handlerCopy = handler;
  v8 = WebKit::filterObjects<NSArray>(scriptsCopy, &__block_literal_global_18);

  if ([v8 count])
  {
    objc_initWeak(&location, self);
    databaseQueue = self->super._databaseQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __76___WKWebExtensionRegisteredScriptsSQLiteStore_addScripts_completionHandler___block_invoke_2;
    v10[3] = &unk_1F10E6188;
    objc_copyWeak(&v13, &location);
    v12 = handlerCopy;
    v11 = v8;
    dispatch_async(databaseQueue, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)getScriptsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  databaseQueue = self->super._databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __79___WKWebExtensionRegisteredScriptsSQLiteStore_getScriptsWithCompletionHandler___block_invoke;
  block[3] = &unk_1F10E61E0;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_getScriptsWithOutErrorMessage:(id *)message
{
  dispatch_assert_queue_V2(self->super._databaseQueue);
  if ([(_WKWebExtensionSQLiteStore *)self _openDatabaseIfNecessaryReturningErrorMessage:message createIfNecessary:0])
  {
    v5 = WebKit::SQLiteDatabaseFetch<>(self->super._database, @"SELECT * FROM registered_scripts");
    v6 = [(_WKWebExtensionRegisteredScriptsSQLiteStore *)self _getKeysAndValuesFromRowEnumerator:v5];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (id)_getKeysAndValuesFromRowEnumerator:(id)enumerator
{
  v30 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  if ((_MergedGlobals_39 & 1) == 0)
  {
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    qword_1ED6417B0 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    _MergedGlobals_39 = 1;
  }

  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = enumeratorCopy;
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
        v8 = qword_1ED6417B0;
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
            _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Failed to deserialize registered content script for extension %{private}@.", buf, 0xCu);
          }
        }

        else
        {
          [array addObject:v10];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v4);
  }

  return array;
}

- (void)_insertScript:(id)script inDatabase:(id)database errorMessage:(id *)message
{
  v23 = *MEMORY[0x1E69E9840];
  scriptCopy = script;
  databaseCopy = database;
  dispatch_assert_queue_V2(self->super._databaseQueue);
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:scriptCopy requiringSecureCoding:1 error:0];
  messageCopy = message;
  v11 = [scriptCopy objectForKeyedSubscript:@"id"];
  v12 = databaseCopy;
  v13 = @"INSERT INTO registered_scripts (key, script) VALUES (?, ?)";
  *buf = 0;
  v14 = [[_WKWebExtensionSQLiteStatement alloc] initWithDatabase:v12 query:@"INSERT INTO registered_scripts (key error:script) VALUES (?, ?)", buf];
  v15 = *buf;
  v16 = v15;
  if (v14)
  {
    v17 = v14;
    [(_WKWebExtensionSQLiteStatement *)v17 bindString:v11 atParameterIndex:1];
    [(_WKWebExtensionSQLiteStatement *)v17 bindData:v10 atParameterIndex:2];

    execute = [(_WKWebExtensionSQLiteStatement *)v17 execute];
    [(_WKWebExtensionSQLiteStatement *)v17 invalidate];
    if ((execute - 100) >= 2 && execute)
    {
      [v12 reportErrorWithCode:execute statement:-[_WKWebExtensionSQLiteStatement handle](v17 error:{"handle"), 0}];
    }
  }

  else
  {
    LODWORD(execute) = [v15 code];
  }

  if (execute != 101)
  {
    v19 = qword_1ED640AB8;
    if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = self->super._uniqueIdentifier;
      *buf = 138477827;
      *&buf[4] = uniqueIdentifier;
      _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "Failed to insert registered content script for extension %{private}@.", buf, 0xCu);
    }

    *messageCopy = @"Failed to add content script.";
  }
}

- (id)_databaseURL
{
  if (self->super._useInMemoryDatabase)
  {
    +[_WKWebExtensionSQLiteDatabase inMemoryDatabaseURL];
  }

  else
  {
    [(NSURL *)self->super._directory URLByAppendingPathComponent:@"RegisteredContentScripts.db" isDirectory:0];
  }
  v2 = ;

  return v2;
}

- (int)_createFreshDatabaseSchema
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._databaseQueue);
  v3 = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(self->super._database, 0, @"CREATE TABLE registered_scripts (key TEXT PRIMARY KEY NOT NULL, script BLOB NOT NULL)");
  if (v3 != 101)
  {
    v4 = qword_1ED640AB8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = self->super._uniqueIdentifier;
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->super._database lastErrorMessage];
      v8 = 138478339;
      v9 = uniqueIdentifier;
      v10 = 2114;
      v11 = lastErrorMessage;
      v12 = 1024;
      v13 = v3;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Failed to create registered_scripts database for extension %{private}@: %{public}@ (%d)", &v8, 0x1Cu);
    }
  }

  return v3;
}

- (int)_resetDatabaseSchema
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._databaseQueue);
  v3 = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(self->super._database, 0, @"DROP TABLE IF EXISTS registered_scripts");
  if (v3 != 101)
  {
    v4 = qword_1ED640AB8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = self->super._uniqueIdentifier;
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->super._database lastErrorMessage];
      v8 = 138478339;
      v9 = uniqueIdentifier;
      v10 = 2114;
      v11 = lastErrorMessage;
      v12 = 1024;
      v13 = v3;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Failed to reset registered_scripts database schema for extension %{private}@: %{public}@ (%d)", &v8, 0x1Cu);
    }
  }

  return v3;
}

- (BOOL)_isDatabaseEmpty
{
  dispatch_assert_queue_V2(self->super._databaseQueue);
  v3 = WebKit::SQLiteDatabaseFetch<>(self->super._database, @"SELECT COUNT(*) FROM registered_scripts");
  nextObject = [v3 nextObject];
  v5 = [nextObject int64AtIndex:0] == 0;

  return v5;
}

@end