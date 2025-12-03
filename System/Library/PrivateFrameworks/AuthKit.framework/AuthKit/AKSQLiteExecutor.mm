@interface AKSQLiteExecutor
+ (id)_databaseQueue;
+ (void)performBlock:(id)block;
+ (void)performBlockAndWait:(id)wait;
- (AKSQLiteExecutor)initWithDatabasePath:(id)path migrationController:(id)controller;
- (BOOL)_finalizeStatement:(sqlite3_stmt *)statement error:(id *)error;
- (BOOL)_handleDatabaseFailureError:(id *)error;
- (BOOL)_unsafe_openDatabase:(id *)database;
- (BOOL)openDatabase:(id *)database;
- (BOOL)performQuery:(id)query;
- (BOOL)performQuery:(id)query error:(id *)error;
- (BOOL)performQuery:(id)query rowHandler:(id)handler;
- (id)_currentDataBaseError;
- (int)_executeQuery:(id)query;
- (int)_unsafe_createDataBase;
- (int64_t)performInsertQuery:(id)query;
- (int64_t)performInsertQuery:(id)query error:(id *)error;
- (sqlite3_stmt)_prepareStatementForQuery:(id)query error:(id *)error;
- (void)_printStatement:(sqlite3_stmt *)statement;
- (void)_stepThroughRowsWithQuery:(id)query statement:(sqlite3_stmt *)statement;
- (void)_unsafe_closeDatabase;
- (void)_unsafe_wipeDatabase:(id *)database;
- (void)closeDatabase;
- (void)commitTransaction;
- (void)dealloc;
- (void)performTransactionBlockAndWait:(id)wait;
- (void)wipeDatabase:(id *)database;
@end

@implementation AKSQLiteExecutor

- (AKSQLiteExecutor)initWithDatabasePath:(id)path migrationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v9 = 0;
  objc_storeStrong(&v9, controller);
  v4 = selfCopy;
  selfCopy = 0;
  v8 = [(AKSQLiteExecutor *)v4 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_databasePath, location[0]);
    selfCopy->_shouldAutomaticallyMigrate = 1;
    objc_storeStrong(&selfCopy->_migrator, v9);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(AKSQLiteExecutor *)self closeDatabase];
  v2.receiver = selfCopy;
  v2.super_class = AKSQLiteExecutor;
  [(AKSQLiteExecutor *)&v2 dealloc];
}

+ (void)performBlock:(id)block
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  +[NSXPCConnection beginTransaction];
  queue = [objc_opt_class() _databaseQueue];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100137C54;
  v8 = &unk_100320EC8;
  v9 = _objc_retain(location[0]);
  dispatch_async(queue, &v4);
  _objc_release(queue);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

+ (void)performBlockAndWait:(id)wait
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, wait);
  +[NSXPCConnection beginTransaction];
  queue = [objc_opt_class() _databaseQueue];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100137DD0;
  v8 = &unk_100320EC8;
  v9 = _objc_retain(location[0]);
  dispatch_sync(queue, &v4);
  _objc_release(queue);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

+ (id)_databaseQueue
{
  v5 = &unk_100374820;
  location = 0;
  objc_storeStrong(&location, &stru_1003244A0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374818;

  return v2;
}

- (void)performTransactionBlockAndWait:(id)wait
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, wait);
  [(AKSQLiteExecutor *)selfCopy openTransaction];
  (*(location[0] + 2))();
  [(AKSQLiteExecutor *)selfCopy commitTransaction];
  objc_storeStrong(location, 0);
}

- (void)commitTransaction
{
  if ([(AKSQLiteExecutor *)self _executeQuery:@"COMMIT TRANSACTION"])
  {
    [(AKSQLiteExecutor *)self rollbackTransaction];
  }
}

- (int)_executeQuery:(id)query
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, query);
  v12 = _AKLogSystemQuery();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v16, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v12, v11, "Executing query: %@", v16, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  v10 = 0;
  database = selfCopy->_database;
  v6 = location[0];
  v3 = location[0];
  v9 = sqlite3_exec(database, [v6 UTF8String], 0, 0, &v10);
  if (v10)
  {
    oslog = _AKLogSystemQuery();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10013826C(v15, location[0], v10);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "SQL Exec %@ failed with error %s.", v15, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    sqlite3_free(v10);
  }

  v5 = v9;
  objc_storeStrong(location, 0);
  return v5;
}

- (int64_t)performInsertQuery:(id)query
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, query);
  v5 = [AKSQLiteQuery queryWithString:location[0]];
  v4 = [(AKSQLiteExecutor *)selfCopy performInsertQuery:v5 error:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)performQuery:(id)query
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, query);
  v4 = [(AKSQLiteExecutor *)selfCopy performQuery:location[0] rowHandler:0];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)performQuery:(id)query rowHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, query);
  v10 = 0;
  objc_storeStrong(&v10, handler);
  v9 = [AKSQLiteQuery queryWithString:location[0]];
  v6 = v9;
  v8 = _objc_retain(v10);
  [(AKSQLiteQuery *)v6 setRowHandler:?];
  v7 = [(AKSQLiteExecutor *)selfCopy performQuery:v9 error:0];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (BOOL)performQuery:(id)query error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, query);
  errorCopy = error;
  v11 = 0;
  v10 = 0;
  v8 = [(AKSQLiteExecutor *)selfCopy _unsafe_openDatabase:&v10];
  objc_storeStrong(&v11, v10);
  if ((v8 & 1) != 0 && (v9 = [(AKSQLiteExecutor *)selfCopy _prepareStatementForQuery:location[0] error:errorCopy]) != 0)
  {
    bindHandler = [location[0] bindHandler];
    _objc_release(bindHandler);
    if (bindHandler && (v5 = [location[0] bindHandler], v5[2](v5, v9), _objc_release(v5), (objc_msgSend(location[0], "bindingFailure") & 1) != 0))
    {
      v15 = 0;
    }

    else
    {
      [(AKSQLiteExecutor *)selfCopy _printStatement:v9];
      [(AKSQLiteExecutor *)selfCopy _stepThroughRowsWithQuery:location[0] statement:v9];
      v15 = [(AKSQLiteExecutor *)selfCopy _finalizeStatement:v9 error:errorCopy];
    }
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (int64_t)performInsertQuery:(id)query error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, query);
  insert_rowid = -1;
  if (![(AKSQLiteExecutor *)selfCopy _unsafe_openDatabase:error])
  {
    goto LABEL_10;
  }

  v8 = [(AKSQLiteExecutor *)selfCopy _prepareStatementForQuery:location[0] error:error];
  if (!v8)
  {
    goto LABEL_10;
  }

  bindHandler = [location[0] bindHandler];
  _objc_release(bindHandler);
  if (!bindHandler || (v5 = [location[0] bindHandler], v5[2](v5, v8), _objc_release(v5), (objc_msgSend(location[0], "bindingFailure") & 1) == 0))
  {
    [(AKSQLiteExecutor *)selfCopy _printStatement:v8];
    if (sqlite3_step(v8) == 101)
    {
      insert_rowid = sqlite3_last_insert_rowid(selfCopy->_database);
    }

    if (![(AKSQLiteExecutor *)selfCopy _finalizeStatement:v8 error:error])
    {
      v12 = -1;
      goto LABEL_11;
    }

LABEL_10:
    v12 = insert_rowid;
    goto LABEL_11;
  }

  v12 = -1;
LABEL_11:
  objc_storeStrong(location, 0);
  return v12;
}

- (void)_printStatement:(sqlite3_stmt *)statement
{
  selfCopy = self;
  v6 = a2;
  pStmt = statement;
  v4 = sqlite3_expanded_sql(statement);
  if (v4)
  {
    oslog = _AKLogSystemQuery();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_100038C7C(v8, v4);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Executing query: %s", v8, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    sqlite3_free(v4);
  }
}

- (void)_stepThroughRowsWithQuery:(id)query statement:(sqlite3_stmt *)statement
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, query);
  statementCopy = statement;
  while (sqlite3_step(statementCopy) == 100)
  {
    rowHandler = [location[0] rowHandler];
    _objc_release(rowHandler);
    if (rowHandler)
    {
      v7 = 0;
      rowHandler2 = [location[0] rowHandler];
      rowHandler2[2](rowHandler2, statementCopy, &v7);
      _objc_release(rowHandler2);
      if (v7)
      {
        break;
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (sqlite3_stmt)_prepareStatementForQuery:(id)query error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, query);
  errorCopy = error;
  v10 = 0;
  db = selfCopy->_database;
  queryString = [location[0] queryString];
  v4 = queryString;
  v9 = sqlite3_prepare_v2(db, [queryString UTF8String], -1, &v10, 0);
  _objc_release(queryString);
  if (v9)
  {
    [(AKSQLiteExecutor *)selfCopy _handleDatabaseFailureError:errorCopy];
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  objc_storeStrong(location, 0);
  return v14;
}

- (BOOL)_finalizeStatement:(sqlite3_stmt *)statement error:(id *)error
{
  selfCopy = self;
  v9 = a2;
  statementCopy = statement;
  errorCopy = error;
  if (sqlite3_finalize(statement))
  {
    [(AKSQLiteExecutor *)selfCopy _handleDatabaseFailureError:errorCopy];
    return 0;
  }

  else
  {
    v6 = sqlite3_changes(selfCopy->_database);
    oslog = _AKLogSystemQuery();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A654(v12, v6);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Rows changed: %d", v12, 8u);
    }

    objc_storeStrong(&oslog, 0);
    return 1;
  }
}

- (BOOL)_handleDatabaseFailureError:(id *)error
{
  selfCopy = self;
  v15 = a2;
  errorCopy = error;
  _currentDataBaseError = [(AKSQLiteExecutor *)self _currentDataBaseError];
  if (_currentDataBaseError)
  {
    location = _AKLogSystemQuery();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v18, _currentDataBaseError);
      _os_log_error_impl(&_mh_execute_header, location, v11, "Database error detected: %@", v18, 0xCu);
    }

    objc_storeStrong(&location, 0);
    if (errorCopy)
    {
      v9 = _currentDataBaseError;
      v3 = _currentDataBaseError;
      *errorCopy = v9;
    }
  }

  userInfo = [_currentDataBaseError userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"AKSQLErrorCode"];
  integerValue = [v6 integerValue];
  _objc_release(v6);
  _objc_release(userInfo);
  if (integerValue == 10)
  {
    goto LABEL_14;
  }

  if (integerValue != 11)
  {
    if (integerValue != 14)
    {
      if (integerValue != 24 && integerValue != 26)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

LABEL_14:
    [(AKSQLiteExecutor *)selfCopy _unsafe_closeDatabase];
    goto LABEL_15;
  }

LABEL_11:
  v10 = _AKLogSystemQuery();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v17, _currentDataBaseError);
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Database corruption detected: %@", v17, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  [(AKSQLiteExecutor *)selfCopy _unsafe_closeDatabase];
  [(AKSQLiteExecutor *)selfCopy _unsafe_wipeDatabase:0];
LABEL_15:
  v5 = _currentDataBaseError != 0;
  objc_storeStrong(&_currentDataBaseError, 0);
  return v5;
}

- (id)_currentDataBaseError
{
  selfCopy = self;
  v11 = a2;
  v10 = sqlite3_errcode(self->_database);
  location = 0;
  if (v10 == 101 || v10 <= 0)
  {
    v13 = 0;
  }

  else
  {
    v2 = [NSString stringWithUTF8String:sqlite3_errmsg(selfCopy->_database)];
    v3 = location;
    location = v2;
    _objc_release(v3);
    v6 = AKSQLErrorDomain;
    v14[0] = NSLocalizedFailureErrorKey;
    v15[0] = location;
    v14[1] = @"AKSQLErrorCode";
    v8 = [NSNumber numberWithInt:v10];
    v15[1] = v8;
    v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v13 = [NSError errorWithDomain:v6 code:-6001 userInfo:?];
    _objc_release(v7);
    _objc_release(v8);
  }

  objc_storeStrong(&location, 0);
  v4 = v13;

  return v4;
}

- (BOOL)openDatabase:(id *)database
{
  selfCopy = self;
  v26 = a2;
  databaseCopy = database;
  v20 = 0;
  v21 = &v20;
  v22 = 0x20000000;
  v23 = 32;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = sub_100003C44;
  v18 = sub_100011320;
  v19 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100139428;
  v11 = &unk_1003244F0;
  v12[1] = &v20;
  v12[0] = _objc_retain(self);
  v12[2] = &v13;
  [AKSQLiteExecutor performBlockAndWait:&v7];
  if (databaseCopy)
  {
    v6 = v14[5];
    v3 = v6;
    *databaseCopy = v6;
  }

  v5 = *(v21 + 24);
  objc_storeStrong(v12, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  _Block_object_dispose(&v20, 8);
  return v5 & 1;
}

- (BOOL)_unsafe_openDatabase:(id *)database
{
  selfCopy = self;
  v17 = a2;
  databaseCopy = database;
  _databaseQueue = [objc_opt_class() _databaseQueue];
  dispatch_assert_queue_V2(_databaseQueue);
  _objc_release(_databaseQueue);
  if (selfCopy->_database)
  {
    return 1;
  }

  _unsafe_createDataBase = [(AKSQLiteExecutor *)selfCopy _unsafe_createDataBase];
  if (_unsafe_createDataBase)
  {
    if (databaseCopy)
    {
      v7 = AKSQLErrorDomain;
      v20 = @"AKSQLErrorCode";
      v10 = [NSNumber numberWithInt:_unsafe_createDataBase];
      v21 = v10;
      v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v9 = [NSError errorWithDomain:v7 code:-6001 userInfo:?];
      v3 = v9;
      *databaseCopy = v9;
      _objc_release(v8);
      _objc_release(v10);
    }

    return 0;
  }

  else
  {
    [(AKSQLiteExecutor *)selfCopy performQuery:@"pragma foreign_keys=on" rowHandler:0];
    if (selfCopy->_shouldAutomaticallyMigrate)
    {
      if (selfCopy->_migrator)
      {
        [(AKSQLiteMigration *)selfCopy->_migrator setExecutor:selfCopy];
        [(AKSQLiteMigration *)selfCopy->_migrator migrateSchemaIfNecessary];
      }

      else
      {
        location = _AKLogSystem();
        v13 = 16;
        if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
        {
          log = location;
          type = v13;
          sub_10001CEEC(v12);
          _os_log_error_impl(&_mh_execute_header, log, type, "Wanted to migrate database, but migrator is nil!", v12, 2u);
        }

        objc_storeStrong(&location, 0);
      }
    }

    return 1;
  }
}

- (int)_unsafe_createDataBase
{
  selfCopy = self;
  location[1] = a2;
  _databaseQueue = [objc_opt_class() _databaseQueue];
  dispatch_assert_queue_V2(_databaseQueue);
  _objc_release(_databaseQueue);
  location[0] = _AKLogSystemQuery();
  v26 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v32, selfCopy->_databasePath);
    _os_log_debug_impl(&_mh_execute_header, location[0], v26, "Attempting to open database at path: %@", v32, 0xCu);
  }

  objc_storeStrong(location, 0);
  stringByDeletingLastPathComponent = [(NSString *)selfCopy->_databasePath stringByDeletingLastPathComponent];
  v23 = 0;
  LOBYTE(v9) = 0;
  if (stringByDeletingLastPathComponent)
  {
    v24 = +[NSFileManager defaultManager];
    v23 = 1;
    v9 = ![(NSFileManager *)v24 fileExistsAtPath:stringByDeletingLastPathComponent];
  }

  if (v23)
  {
    _objc_release(v24);
  }

  if (v9)
  {
    v22 = _AKLogSystem();
    v21 = 2;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v7 = v22;
      v8 = v21;
      sub_10001CEEC(v20);
      _os_log_debug_impl(&_mh_execute_header, v7, v8, "Creating path for database...", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    v19 = 0;
    v5 = +[NSFileManager defaultManager];
    v17 = v19;
    v6 = [(NSFileManager *)v5 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v17];
    objc_storeStrong(&v19, v17);
    _objc_release(v5);
    v18 = v6;
    if ((v6 & 1) == 0)
    {
      v16 = _AKLogSystem();
      v15 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v19 localizedDescription];
        sub_1000194D4(v31, localizedDescription);
        _os_log_error_impl(&_mh_execute_header, v16, v15, "Failed to create database. Error: %@", v31, 0xCu);
        _objc_release(localizedDescription);
      }

      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v19, 0);
  }

  v14 = sqlite3_open_v2([(NSString *)selfCopy->_databasePath UTF8String], &selfCopy->_database, 6, 0);
  if (v14)
  {
    oslog = _AKLogSystemQuery();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v30, selfCopy, selfCopy->_databasePath);
      _os_log_error_impl(&_mh_execute_header, oslog, v12, "%@: Failed to open file at path %@", v30, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v11 = _AKLogSystemQuery();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v29, selfCopy->_databasePath);
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Database opened at path: %@", v29, 0xCu);
    }

    objc_storeStrong(&v11, 0);
  }

  v3 = v14;
  objc_storeStrong(&stringByDeletingLastPathComponent, 0);
  return v3;
}

- (void)wipeDatabase:(id *)database
{
  selfCopy = self;
  v21 = a2;
  databaseCopy = database;
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = sub_100003C44;
  v18 = sub_100011320;
  v19 = 0;
  location = _AKLogSystemQuery();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v23, selfCopy->_databasePath);
    _os_log_debug_impl(&_mh_execute_header, location, v11, "Attempting to wipe database at path: %@", v23, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100139EFC;
  v9 = &unk_100324518;
  v10[0] = _objc_retain(selfCopy);
  v10[1] = &v13;
  [AKSQLiteExecutor performBlockAndWait:&v5];
  if (databaseCopy)
  {
    v4 = v14[5];
    v3 = v4;
    *databaseCopy = v4;
  }

  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
}

- (void)_unsafe_wipeDatabase:(id *)database
{
  selfCopy = self;
  v14 = a2;
  databaseCopy = database;
  [(AKSQLiteExecutor *)self _unsafe_closeDatabase];
  v12 = 0;
  v6 = +[NSFileManager defaultManager];
  databasePath = selfCopy->_databasePath;
  v11 = v12;
  v7 = [(NSFileManager *)v6 removeItemAtPath:databasePath error:&v11];
  objc_storeStrong(&v12, v11);
  _objc_release(v6);
  if (v7)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v16, selfCopy->_databasePath);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Database %@ wiped...", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    if (databaseCopy)
    {
      v5 = v12;
      v4 = v12;
      *databaseCopy = v5;
    }

    v10 = _AKLogSystemQuery();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v17, v12);
      _os_log_error_impl(&_mh_execute_header, v10, v9, "Failed to wipe database with error: %@", v17, 0xCu);
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v12, 0);
}

- (void)closeDatabase
{
  v7[2] = self;
  v7[1] = a2;
  v2 = _NSConcreteStackBlock;
  v3 = -1073741824;
  v4 = 0;
  v5 = sub_10013A234;
  v6 = &unk_10031F8B0;
  v7[0] = _objc_retain(self);
  [AKSQLiteExecutor performBlockAndWait:?];
  objc_storeStrong(v7, 0);
}

- (void)_unsafe_closeDatabase
{
  selfCopy = self;
  location[1] = a2;
  _databaseQueue = [objc_opt_class() _databaseQueue];
  dispatch_assert_queue_V2(_databaseQueue);
  _objc_release(_databaseQueue);
  if (selfCopy->_database)
  {
    location[0] = _AKLogSystemQuery();
    v5 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v9, selfCopy->_databasePath);
      _os_log_debug_impl(&_mh_execute_header, location[0], v5, "Closing database at path: %@", v9, 0xCu);
    }

    objc_storeStrong(location, 0);
    v4 = sqlite3_close(selfCopy->_database);
    oslog = _AKLogSystemQuery();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A654(v8, v4);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Closed database with result: %d", v8, 8u);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_database = 0;
  }
}

@end