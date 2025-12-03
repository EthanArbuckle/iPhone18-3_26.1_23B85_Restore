@interface CKSQLite
+ (id)equalityClauseAndBindingsForDict:(id)dict;
- (BOOL)deleteExactObject:(id)object;
- (BOOL)isCorrupt;
- (BOOL)openWithError:(id *)error;
- (BOOL)remove;
- (CKSQLite)initWithPath:(id)path schema:(id)schema;
- (id)_boxedPropertyDictionary:(id)dictionary forObjCClass:(id)class;
- (id)_boxedValue:(id)value forObjcCProperty:(id)property;
- (id)_performDatabaseOperation_locked:(id)operation_locked withErrorHandler:(id)handler;
- (id)_prepareDatabase;
- (id)_tableNameForClass:(Class)class;
- (id)allTableNames;
- (id)columnNamesForTable:(id)table;
- (id)creationDate;
- (id)datePropertyForKey:(id)key;
- (id)handleDatabaseError:(id)error;
- (id)handleDatabaseError:(id)error args:(char *)args;
- (id)handleError:(id)error;
- (id)performDatabaseOperation:(id)operation withErrorHandler:(id)handler;
- (id)propertyForKey:(id)key;
- (id)select:(id)select from:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit;
- (id)selectAllObjectsOfClass:(Class)class where:(id)where bindings:(id)bindings limit:(id)limit;
- (id)selectObjectOfClass:(Class)class where:(id)where bindings:(id)bindings;
- (id)sqlErrorWithMessage:(id)message;
- (int)changes;
- (int)dbUserVersion;
- (int)deleteAllObjectsOfClass:(Class)class where:(id)where bindings:(id)bindings;
- (int)userVersion;
- (int64_t)insertOrReplaceInto:(id)into values:(id)values;
- (int64_t)insertOrReplaceObject:(id)object;
- (int64_t)lastInsertRowID;
- (int64_t)selectCountFrom:(id)from where:(id)where bindings:(id)bindings;
- (int64_t)upsertInto:(id)into values:(id)values onConflict:(id)conflict doUpdate:(id)update where:(id)where;
- (void)_dropAllTables;
- (void)_forceClosed_locked;
- (void)_forceClosed_unlocked;
- (void)_recursiveOperationLock:(id)lock;
- (void)assertInOperation:(SEL)operation;
- (void)close;
- (void)dealloc;
- (void)deleteFrom:(id)from matchingValues:(id)values;
- (void)deleteFrom:(id)from where:(id)where bindings:(id)bindings;
- (void)executeSQL:(id)l arguments:(char *)arguments;
- (void)markCorrupt;
- (void)removePropertyForKey:(id)key;
- (void)select:(id)select from:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit offset:(id)offset block:(id)self0;
- (void)selectAllObjectsOfClass:(Class)class where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block;
- (void)setDateProperty:(id)property forKey:(id)key;
- (void)setProperty:(id)property forKey:(id)key;
- (void)setTraced:(BOOL)traced;
- (void)update:(id)update set:(id)set where:(id)where bindings:(id)bindings limit:(id)limit;
- (void)updateAllObjectsOfClass:(Class)class set:(id)set where:(id)where bindings:(id)bindings;
- (void)usingStatementForSQL:(id)l performBlock:(id)block;
- (void)vacuum;
@end

@implementation CKSQLite

- (int64_t)lastInsertRowID
{
  result = self->_db;
  if (result)
  {
    return sqlite3_last_insert_rowid(result);
  }

  return result;
}

- (CKSQLite)initWithPath:(id)path schema:(id)schema
{
  v41 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  schemaCopy = schema;
  v38.receiver = self;
  v38.super_class = CKSQLite;
  v11 = [(CKSQLite *)&v38 init];
  if (v11)
  {
    if (!objc_msgSend_length(pathCopy, v9, v10))
    {
      v36 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v36, v37, a2, v11, @"CKSQLite.m", 97, @"Can't init a database with a zero-length path");
    }

    v11->_operationLock._os_unfair_lock_opaque = 0;
    v14 = objc_msgSend_copy(pathCopy, v12, v13);
    path = v11->_path;
    v11->_path = v14;

    objc_storeStrong(&v11->_schema, schema);
    *md = 0u;
    v40 = 0u;
    v17 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v16, md, 32, 0);
    v20 = objc_msgSend_schema(v11, v18, v19);
    v22 = objc_msgSend_dataUsingEncoding_(v20, v21, 4);

    v25 = objc_msgSend_bytes(v22, v23, v24);
    v28 = objc_msgSend_length(v22, v26, v27);
    CC_SHA256(v25, v28, md);
    v31 = objc_msgSend_CKUppercaseHexStringWithoutSpaces(v17, v29, v30);
    schemaVersion = v11->_schemaVersion;
    v11->_schemaVersion = v31;

    objectClassPrefix = v11->_objectClassPrefix;
    v11->_objectClassPrefix = @"CK";

    v11->_synchronousMode = 1;
    *&v11->_hasMigrated = 256;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  objc_msgSend__forceClosed_unlocked(self, v4, v5);
  objc_autoreleasePoolPop(v3);
  v6.receiver = self;
  v6.super_class = CKSQLite;
  [(CKSQLite *)&v6 dealloc];
}

- (void)assertInOperation:(SEL)operation
{
  os_unfair_lock_assert_owner(&self->_operationLock);
  operationThread = self->_operationThread;
  if (!operationThread)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D920];
    v8 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v6, v9, v7, @"%@ called but not in a database operation context", v8);
  }

  if (operationThread != pthread_self())
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D920];
    v13 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v10, v12, v11, @"%@ called but some other thread is running a database operation", v13);
  }
}

- (id)sqlErrorWithMessage:(id)message
{
  messageCopy = message;
  v7 = objc_msgSend_db(self, v5, v6);
  v9 = objc_msgSend_errorForSQLite_message_args_(CKPrettyError, v8, v7, messageCopy, &v12);

  return v9;
}

- (int)userVersion
{
  v4 = objc_msgSend_delegate(self, a2, v2);
  v7 = v4;
  if (!v4 || v4 == self)
  {
    userVersion = self->_userVersion;
  }

  else
  {
    userVersion = objc_msgSend_userVersion(v4, v5, v6);
  }

  return userVersion;
}

- (void)vacuum
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_188665F80;
  v2[3] = &unk_1E70C04A8;
  v2[4] = self;
  objc_msgSend__recursiveOperationLock_(self, a2, v2);
}

- (void)markCorrupt
{
  v19 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInOperation_(self, a2, a2);
  v3 = self->_path;
  v6 = objc_msgSend_UTF8String(v3, v4, v5);
  if (setxattr(v6, "CKSQLiteDatabaseInvalid", "1", 1uLL, 0, 0))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      path = self->_path;
      v12 = v7;
      v13 = __error();
      v14 = strerror(*v13);
      v15 = 138412546;
      v16 = path;
      v17 = 2080;
      v18 = v14;
      _os_log_fault_impl(&dword_1883EA000, v12, OS_LOG_TYPE_FAULT, "setxattr failed at path: %@. Removing database instead. error = %s", &v15, 0x16u);
    }

    objc_msgSend_remove(self, v8, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isCorrupt
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = self->_path;
  v6 = objc_msgSend_UTF8String(v3, v4, v5);
  v7 = getxattr(v6, "CKSQLiteDatabaseInvalid", 0, 0, 0, 0);
  if (!v7)
  {
    goto LABEL_5;
  }

  if (v7 != -1)
  {
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if (*__error() != 2 && *__error() != 93)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      path = self->_path;
      v13 = v9;
      v14 = __error();
      v15 = strerror(*v14);
      v16 = 138412546;
      v17 = path;
      v18 = 2080;
      v19 = v15;
      _os_log_fault_impl(&dword_1883EA000, v13, OS_LOG_TYPE_FAULT, "getxattr failed at path: %@. error = %s", &v16, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_5:
  v8 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_performDatabaseOperation_locked:(id)operation_locked withErrorHandler:(id)handler
{
  operation_lockedCopy = operation_locked;
  handlerCopy = handler;
  objc_msgSend_assertInOperation_(self, v9, a2);
  if (objc_msgSend_invalid(self, v10, v11))
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKSQLite.m", 203, @"expected a valid instance");
  }

  v14 = _Block_copy(handlerCopy);
  errorHandlerBlock = self->_errorHandlerBlock;
  self->_errorHandlerBlock = v14;

  v16 = objc_autoreleasePoolPush();
  if (sqlite3_exec(self->_db, "begin exclusive", 0, 0, 0))
  {
    v18 = objc_msgSend_sqlErrorWithMessage_(self, v17, @"Failed to start transaction");
    error = self->_error;
    self->_error = v18;

    self->_cancelled = 1;
    v20 = self->_error;
  }

  else
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_188666578;
    v28[3] = &unk_1E70C04D0;
    v28[4] = self;
    operation_lockedCopy[2](operation_lockedCopy, self, v28);
    v20 = self->_error;
    if (self->_cancelled || objc_msgSend_invalid(self, v21, v22))
    {
      db = self->_db;
      v24 = "rollback";
    }

    else
    {
      db = self->_db;
      v24 = "end";
    }

    sqlite3_exec(db, v24, 0, 0, 0);
  }

  objc_autoreleasePoolPop(v16);

  return v20;
}

- (void)_recursiveOperationLock:(id)lock
{
  lockCopy = lock;
  v4 = pthread_self();
  if (self->_operationThread == v4)
  {
    lockCopy[2](lockCopy, 0);
  }

  else
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_operationLock);
    self->_operationThread = v5;
    lockCopy[2](lockCopy, 1);
    self->_operationThread = 0;
    os_unfair_lock_unlock(&self->_operationLock);
  }
}

- (id)performDatabaseOperation:(id)operation withErrorHandler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1883EE1CC;
  v35 = sub_1883EF78C;
  v36 = 0;
  if (handlerCopy)
  {
    v10 = handlerCopy;
  }

  else
  {
    v10 = &unk_1EFA2FE48;
  }

  if (objc_msgSend_invalid(self, v8, v9))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v14 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v13, @"CKInternalErrorDomain", 1027, @"Database operation attempted with invalid %@ instance", v12);
    v15 = v32[5];
    v32[5] = v14;
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_188666884;
    v29 = sub_1886668B0;
    v30 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1886668B8;
    v20[3] = &unk_1E70C0518;
    v20[4] = self;
    v23 = &v31;
    v21 = operationCopy;
    v22 = v10;
    v24 = &v25;
    objc_msgSend__recursiveOperationLock_(self, v16, v20);
    v17 = v26[5];
    if (v17)
    {
      (*(v17 + 16))(v17, self, self->_invalidationError);
    }

    _Block_object_dispose(&v25, 8);
  }

  v18 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v18;
}

- (id)handleError:(id)error
{
  errorCopy = error;
  objc_msgSend_assertInOperation_(self, v7, a2);
  if (objc_msgSend_invalid(self, v8, v9))
  {
    v11 = errorCopy;
    goto LABEL_20;
  }

  v14 = objc_msgSend_CKIsCorruptDatabaseError_(MEMORY[0x1E696ABC0], v10, errorCopy);
  errorHandlerBlock = self->_errorHandlerBlock;
  if (!errorHandlerBlock)
  {
    if (v14)
    {
      objc_msgSend__forceClosed_unlocked(self, v12, v13);
      objc_msgSend_remove(self, v21, v22);
    }

    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v12, *MEMORY[0x1E695D920], @"%@", errorCopy);
    goto LABEL_19;
  }

  v16 = errorHandlerBlock[2](errorHandlerBlock, errorCopy);
  v17 = 3;
  if (v16 > 3)
  {
    v17 = v16;
  }

  if (v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  if (v18 < 1)
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  error = self->_error;
  self->_cancelled = 1;
  if (!error)
  {
    objc_storeStrong(&self->_error, error);
  }

  v11 = errorCopy;
  if (v18 != 1)
  {
    objc_msgSend_setInvalid_(self, v20, 1);
    objc_storeStrong(&self->_invalidationError, error);
    if (v18 >= 3)
    {
      self->_needsMarkCorrupt = 1;
      if (v18 != 3)
      {
        self->_needsRemove = 1;
      }
    }
  }

LABEL_20:

  return v11;
}

- (id)handleDatabaseError:(id)error args:(char *)args
{
  errorCopy = error;
  v9 = objc_msgSend_db(self, v7, v8);
  v11 = objc_msgSend_errorForSQLite_message_args_(CKPrettyError, v10, v9, errorCopy, args);

  v13 = objc_msgSend_handleError_(self, v12, v11);

  return v13;
}

- (id)handleDatabaseError:(id)error
{
  v3 = objc_msgSend_handleDatabaseError_args_(self, a2, error, &v6);

  return v3;
}

- (id)_prepareDatabase
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188666D6C;
  v4[3] = &unk_1E70C0540;
  v4[4] = self;
  v2 = objc_msgSend__performDatabaseOperation_locked_withErrorHandler_(self, a2, v4, &unk_1EFA2FE68);

  return v2;
}

- (BOOL)openWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE1CC;
  v12 = sub_1883EF78C;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18866759C;
  v7[3] = &unk_1E70C0568;
  v7[5] = &v8;
  v7[6] = a2;
  v7[4] = self;
  objc_msgSend__recursiveOperationLock_(self, a2, v7);
  v4 = v9[5];
  if (error && v4)
  {
    *error = v4;
    v4 = v9[5];
  }

  v5 = v4 == 0;
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)_forceClosed_locked
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_operationLock);
  db = self->_db;
  if (db)
  {
    if (sqlite3_close(db))
    {
      v5 = objc_msgSend_sqlErrorWithMessage_(self, v4, @"sqlite3_close() failed");
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v6 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        selfCopy = v5;
        _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Error closing database: %@", &v14, 0xCu);
      }
    }

    self->_db = 0;
    self->_openCount = 0;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
    {
      path = self->_path;
      v10 = v7;
      v13 = objc_msgSend_CKSanitizedPath(path, v11, v12);
      v14 = 134218242;
      selfCopy = self;
      v16 = 2112;
      v17 = v13;
      _os_log_debug_impl(&dword_1883EA000, v10, OS_LOG_TYPE_DEBUG, "Closed db (%p) at %@", &v14, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_forceClosed_unlocked
{
  os_unfair_lock_lock(&self->_operationLock);
  objc_msgSend__forceClosed_locked(self, v3, v4);

  os_unfair_lock_unlock(&self->_operationLock);
}

- (void)close
{
  os_unfair_lock_lock(&self->_operationLock);
  openCount = self->_openCount;
  if (openCount)
  {
    v6 = openCount - 1;
    if (v6)
    {
      self->_openCount = v6;
    }

    else
    {
      objc_msgSend__forceClosed_locked(self, v3, v4);
    }
  }

  os_unfair_lock_unlock(&self->_operationLock);
}

- (BOOL)remove
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188667FDC;
  v4[3] = &unk_1E70C0590;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend__recursiveOperationLock_(self, a2, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setTraced:(BOOL)traced
{
  tracedCopy = traced;
  os_unfair_lock_lock(&self->_operationLock);
  db = self->_db;
  if (db)
  {
    if (tracedCopy)
    {
      v6 = sub_188668260;
      v7 = 9;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    sqlite3_trace_v2(db, v7, v6, self);
  }

  self->_traced = tracedCopy;

  os_unfair_lock_unlock(&self->_operationLock);
}

- (int)changes
{
  objc_msgSend_assertInOperation_(self, a2, a2);
  db = self->_db;
  if (db)
  {

    LODWORD(db) = sqlite3_changes(db);
  }

  return db;
}

- (void)executeSQL:(id)l arguments:(char *)arguments
{
  lCopy = l;
  objc_msgSend_assertInOperation_(self, v7, a2);
  if ((objc_msgSend_invalid(self, v8, v9) & 1) == 0)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = objc_msgSend_initWithFormat_arguments_(v10, v11, lCopy, arguments);
    db = self->_db;
    v16 = objc_msgSend_UTF8String(v12, v14, v15);
    v17 = sqlite3_exec(db, v16, 0, 0, 0);
    if (v17)
    {
      v19 = objc_msgSend_sqlErrorWithMessage_(self, v18, @"Error executing SQL: %@ (%d)", v12, v17);
      v21 = objc_msgSend_handleError_(self, v20, v19);
    }
  }
}

- (void)usingStatementForSQL:(id)l performBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  objc_msgSend_assertInOperation_(self, v9, a2);
  ppStmt = 0;
  v10 = lCopy;
  db = self->_db;
  v14 = objc_msgSend_UTF8String(v10, v12, v13);
  if (sqlite3_prepare_v2(db, v14, -1, &ppStmt, 0))
  {
    v16 = objc_msgSend_sqlErrorWithMessage_(self, v15, @"Error preparing statement: %@", v10, ppStmt);
    v18 = objc_msgSend_handleError_(self, v17, v16);

    v19 = 0;
  }

  else
  {
    v20 = [CKSQLiteStatement alloc];
    v19 = sub_1886805D4(&v20->super.isa, self, v10, ppStmt);
  }

  blockCopy[2](blockCopy, v19);

  sub_18840103C(v19);
}

- (id)allTableNames
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1883EE1CC;
  v13 = sub_1883EF78C;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[4] = &v9;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1886687B8;
  v8[3] = &unk_1E70C05E0;
  v8[4] = &v9;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188668900;
  v7[3] = &unk_1E70C0608;
  v4 = objc_msgSend_performDatabaseOperation_withErrorHandler_(self, v3, v8, v7);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (void)_dropAllTables
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1886689A8;
  v3[3] = &unk_1E70C0540;
  v3[4] = self;
  v2 = objc_msgSend_performDatabaseOperation_withErrorHandler_(self, a2, v3, &unk_1EFA2FE88);
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CKSQLite.m", 665, @"Null key");
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1883EE1CC;
  v22 = sub_1883EF78C;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_188668C44;
  v15[3] = &unk_1E70C0658;
  v8 = keyCopy;
  v16 = v8;
  v17 = &v18;
  v10 = objc_msgSend_performDatabaseOperation_(self, v9, v15);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  v11 = keyCopy;
  if (keyCopy)
  {
    if (propertyCopy)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_188668E84;
      v16[3] = &unk_1E70C06A8;
      v17 = keyCopy;
      v18 = propertyCopy;
      v13 = objc_msgSend_performDatabaseOperation_(self, v12, v16);
    }

    else
    {
      objc_msgSend_removePropertyForKey_(self, v9, keyCopy);
    }
  }

  else
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKSQLite.m", 679, @"Null key");
  }
}

- (id)datePropertyForKey:(id)key
{
  v3 = objc_msgSend_propertyForKey_(self, a2, key);
  if (objc_msgSend_length(v3, v4, v5))
  {
    v6 = objc_opt_new();
    objc_msgSend_setDateFormat_(v6, v7, @"yyyy-MM-dd'T'HH:mm:ssZZZZZ");
    v9 = objc_msgSend_dateFromString_(v6, v8, v3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setDateProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  if (property)
  {
    propertyCopy = property;
    v8 = objc_opt_new();
    objc_msgSend_setDateFormat_(v8, v9, @"yyyy-MM-dd'T'HH:mm:ssZZZZZ");
    property = objc_msgSend_stringFromDate_(v8, v10, propertyCopy);
  }

  objc_msgSend_setProperty_forKey_(self, v6, property, keyCopy);
}

- (void)removePropertyForKey:(id)key
{
  keyCopy = key;
  v8 = keyCopy;
  if (keyCopy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1886691BC;
    v13[3] = &unk_1E70C0540;
    v14 = keyCopy;
    v10 = objc_msgSend_performDatabaseOperation_(self, v9, v13);
  }

  else
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CKSQLite.m", 721, @"Null key");
  }
}

- (id)creationDate
{
  v2 = objc_msgSend_propertyForKey_(self, a2, @"Created");
  v5 = v2;
  if (v2)
  {
    v6 = MEMORY[0x1E695DF00];
    objc_msgSend_floatValue(v2, v3, v4);
    v10 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v6, v8, v9, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)columnNamesForTable:(id)table
{
  v22 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1886694C8;
  v14[3] = &unk_1E70C06F8;
  v6 = tableCopy;
  v15 = v6;
  selfCopy = self;
  v7 = v5;
  v17 = v7;
  v9 = objc_msgSend_performDatabaseOperation_(self, v8, v14);
  if (v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v9;
      _os_log_error_impl(&dword_1883EA000, v10, OS_LOG_TYPE_ERROR, "Error fetching column names for table %{public}@: %{public}@", buf, 0x16u);
    }

    v7 = 0;
  }

  v11 = v7;

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)equalityClauseAndBindingsForDict:(id)dict
{
  v34 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  if (objc_msgSend_count(dictCopy, v4, v5))
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = dictCopy;
    v8 = dictCopy;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v29, v33, 16);
    if (v10)
    {
      v12 = v10;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = objc_msgSend_objectForKeyedSubscript_(v8, v11, v15);
          if (objc_msgSend_count(v7, v17, v18))
          {
            objc_msgSend_appendFormat_(v6, v19, @" AND %@ = ?", v15);
          }

          else
          {
            objc_msgSend_appendFormat_(v6, v19, @"%@ = ?", v15);
          }

          objc_msgSend_addObject_(v7, v20, v16);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v29, v33, 16);
      }

      while (v12);
    }

    v21 = [CKTuple2 alloc];
    v23 = objc_msgSend_initWithObject1_object2_(v21, v22, v6, v7);

    dictCopy = v28;
  }

  else
  {
    v24 = [CKTuple2 alloc];
    v23 = objc_msgSend_initWithObject1_object2_(v24, v25, &stru_1EFA32970, MEMORY[0x1E695E0F0]);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)select:(id)select from:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit offset:(id)offset block:(id)self0
{
  selectCopy = select;
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  byCopy = by;
  limitCopy = limit;
  offsetCopy = offset;
  blockCopy = block;
  objc_msgSend_assertInOperation_(self, v23, a2);
  v24 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (objc_msgSend_count(selectCopy, v25, v26))
  {
    v28 = objc_msgSend_componentsJoinedByString_(selectCopy, v27, @", ");
  }

  else
  {
    v28 = @"*";
  }

  objc_msgSend_appendFormat_(v24, v27, @"select %@ from %@", v28, fromCopy);
  if (objc_msgSend_length(whereCopy, v29, v30))
  {
    objc_msgSend_appendFormat_(v24, v31, @" where %@", whereCopy);
  }

  if (byCopy)
  {
    v33 = objc_msgSend_componentsJoinedByString_(byCopy, v31, @", ");
    objc_msgSend_appendFormat_(v24, v34, @" order by %@", v33);
  }

  if (limitCopy)
  {
    v35 = objc_msgSend_longValue(limitCopy, v31, v32);
    objc_msgSend_appendFormat_(v24, v36, @" limit %ld", v35);
    if (offsetCopy)
    {
      v39 = objc_msgSend_longValue(offsetCopy, v37, v38);
      objc_msgSend_appendFormat_(v24, v40, @" offset %ld", v39);
    }
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_188669A80;
  v46[3] = &unk_1E70C0720;
  v47 = bindingsCopy;
  v48 = blockCopy;
  v41 = blockCopy;
  v42 = bindingsCopy;
  objc_msgSend_usingStatementForSQL_performBlock_(self, v43, v24, v46);
}

- (id)select:(id)select from:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit
{
  selectCopy = select;
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  byCopy = by;
  limitCopy = limit;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1883EE1CC;
  v40 = sub_1883EF78C;
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_188669D9C;
  v29[3] = &unk_1E70C0770;
  v20 = selectCopy;
  v30 = v20;
  v21 = fromCopy;
  v31 = v21;
  v22 = whereCopy;
  v32 = v22;
  v23 = bindingsCopy;
  v33 = v23;
  v24 = byCopy;
  v34 = v24;
  v35 = &v36;
  v26 = objc_msgSend_performDatabaseOperation_(self, v25, v29);
  v27 = v37[5];

  _Block_object_dispose(&v36, 8);

  return v27;
}

- (void)update:(id)update set:(id)set where:(id)where bindings:(id)bindings limit:(id)limit
{
  setCopy = set;
  whereCopy = where;
  bindingsCopy = bindings;
  limitCopy = limit;
  updateCopy = update;
  objc_msgSend_assertInOperation_(self, v18, a2);
  v19 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend_appendFormat_(v19, v20, @"update %@", updateCopy);

  if (!objc_msgSend_length(setCopy, v21, v22))
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v23, v24);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CKSQLite.m", 863, @"null set expression");
  }

  objc_msgSend_appendFormat_(v19, v23, @" set %@", setCopy);
  if (objc_msgSend_length(whereCopy, v25, v26))
  {
    objc_msgSend_appendFormat_(v19, v27, @" where %@", whereCopy);
  }

  if (limitCopy)
  {
    v29 = objc_msgSend_integerValue(limitCopy, v27, v28);
    objc_msgSend_appendFormat_(v19, v30, @" limit %ld", v29);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_18866A110;
  v35[3] = &unk_1E70C06D0;
  v36 = bindingsCopy;
  v31 = bindingsCopy;
  objc_msgSend_usingStatementForSQL_performBlock_(self, v32, v19, v35);
}

- (int64_t)selectCountFrom:(id)from where:(id)where bindings:(id)bindings
{
  v5 = objc_msgSend_select_from_where_bindings_(self, a2, &unk_1EFA85B90, from, where, bindings);
  v7 = v5;
  if (v5)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 0);
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"n");
    v13 = objc_msgSend_unsignedIntegerValue(v10, v11, v12);
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

- (int64_t)insertOrReplaceInto:(id)into values:(id)values
{
  intoCopy = into;
  valuesCopy = values;
  objc_msgSend_assertInOperation_(self, v9, a2);
  v12 = objc_msgSend_allKeys(valuesCopy, v10, v11);
  v14 = objc_msgSend_sortedArrayUsingSelector_(v12, v13, sel_compare_);

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(v14, v16, v17))
  {
    v19 = 0;
    do
    {
      v20 = objc_msgSend_objectAtIndexedSubscript_(v14, v18, v19);
      v22 = objc_msgSend_objectForKeyedSubscript_(valuesCopy, v21, v20);
      objc_msgSend_setObject_atIndexedSubscript_(v15, v23, v22, v19);

      ++v19;
    }

    while (v19 < objc_msgSend_count(v14, v24, v25));
  }

  v26 = objc_alloc(MEMORY[0x1E696AD60]);
  v28 = objc_msgSend_initWithString_(v26, v27, @"insert or replace into ");
  objc_msgSend_appendString_(v28, v29, intoCopy);
  objc_msgSend_appendString_(v28, v30, @" (");
  v33 = objc_msgSend_count(v14, v31, v32);
  if (v33)
  {
    v35 = v33;
    for (i = 0; i != v35; ++i)
    {
      v37 = objc_msgSend_objectAtIndexedSubscript_(v14, v34, i);
      objc_msgSend_appendString_(v28, v38, v37);

      if (i != objc_msgSend_count(v14, v39, v40) - 1)
      {
        objc_msgSend_appendString_(v28, v34, @",");
      }
    }

    objc_msgSend_appendString_(v28, v34, @" values ("));
    for (j = 0; j != v35; ++j)
    {
      if (j == objc_msgSend_count(v14, v41, v42) - 1)
      {
        objc_msgSend_appendString_(v28, v44, @"?");
      }

      else
      {
        objc_msgSend_appendString_(v28, v44, @"?,");
      }
    }
  }

  else
  {
    objc_msgSend_appendString_(v28, v34, @" values ("));
  }

  objc_msgSend_appendString_(v28, v41, @""));
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_18866A4F8;
  v49[3] = &unk_1E70C0798;
  v45 = v15;
  selfCopy = self;
  v52 = &v53;
  v50 = v45;
  objc_msgSend_usingStatementForSQL_performBlock_(self, v46, v28, v49);
  v47 = v54[3];

  _Block_object_dispose(&v53, 8);
  return v47;
}

- (int64_t)upsertInto:(id)into values:(id)values onConflict:(id)conflict doUpdate:(id)update where:(id)where
{
  intoCopy = into;
  valuesCopy = values;
  conflictCopy = conflict;
  updateCopy = update;
  whereCopy = where;
  objc_msgSend_assertInOperation_(self, v16, a2);
  v19 = objc_msgSend_allKeys(valuesCopy, v17, v18);
  v21 = objc_msgSend_sortedArrayUsingSelector_(v19, v20, sel_compare_);

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(v21, v23, v24))
  {
    v26 = 0;
    do
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(v21, v25, v26);
      v29 = objc_msgSend_objectForKeyedSubscript_(valuesCopy, v28, v27);
      objc_msgSend_setObject_atIndexedSubscript_(v22, v30, v29, v26);

      ++v26;
    }

    while (v26 < objc_msgSend_count(v21, v31, v32));
  }

  v33 = objc_alloc(MEMORY[0x1E696AD60]);
  v35 = objc_msgSend_initWithString_(v33, v34, @"insert into ");
  objc_msgSend_appendString_(v35, v36, intoCopy);
  objc_msgSend_appendString_(v35, v37, @" (");
  if (objc_msgSend_count(v21, v38, v39))
  {
    v41 = 0;
    do
    {
      v42 = objc_msgSend_objectAtIndexedSubscript_(v21, v40, v41);
      objc_msgSend_appendString_(v35, v43, v42);

      if (v41 != objc_msgSend_count(v21, v44, v45) - 1)
      {
        objc_msgSend_appendString_(v35, v46, @",");
      }

      ++v41;
    }

    while (v41 < objc_msgSend_count(v21, v46, v47));
  }

  v76 = intoCopy;
  objc_msgSend_appendString_(v35, v40, @" values ("));
  if (objc_msgSend_count(v21, v48, v49))
  {
    v52 = 0;
    do
    {
      if (v52 == objc_msgSend_count(v21, v50, v51) - 1)
      {
        objc_msgSend_appendString_(v35, v53, @"?");
      }

      else
      {
        objc_msgSend_appendString_(v35, v53, @"?,");
      }

      ++v52;
    }

    while (v52 < objc_msgSend_count(v21, v54, v55));
  }

  objc_msgSend_appendString_(v35, v50, @""));
  v57 = objc_msgSend_componentsJoinedByString_(conflictCopy, v56, @",");
  objc_msgSend_appendFormat_(v35, v58, @" on conflict (%@) ", v57);

  objc_msgSend_appendString_(v35, v59, @"do update set ");
  if (objc_msgSend_count(updateCopy, v60, v61))
  {
    v63 = 0;
    do
    {
      v64 = objc_msgSend_objectAtIndexedSubscript_(updateCopy, v62, v63);
      objc_msgSend_appendFormat_(v35, v65, @"%@ = excluded.%@", v64, v64);
      if (v63 != objc_msgSend_count(updateCopy, v66, v67) - 1)
      {
        objc_msgSend_appendString_(v35, v68, @", ");
      }

      ++v63;
    }

    while (v63 < objc_msgSend_count(updateCopy, v69, v70));
  }

  if (whereCopy)
  {
    objc_msgSend_appendFormat_(v35, v62, @" where %@", whereCopy);
  }

  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = sub_18866A96C;
  v78[3] = &unk_1E70C0798;
  v71 = v22;
  selfCopy = self;
  v81 = &v82;
  v79 = v71;
  objc_msgSend_usingStatementForSQL_performBlock_(self, v72, v35, v78);
  v73 = v83[3];

  _Block_object_dispose(&v82, 8);
  return v73;
}

- (void)deleteFrom:(id)from where:(id)where bindings:(id)bindings
{
  bindingsCopy = bindings;
  whereCopy = where;
  fromCopy = from;
  objc_msgSend_assertInOperation_(self, v12, a2);
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"delete from %@ where %@", fromCopy, whereCopy);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18866AAE8;
  v17[3] = &unk_1E70C06D0;
  v18 = bindingsCopy;
  v15 = bindingsCopy;
  objc_msgSend_usingStatementForSQL_performBlock_(self, v16, v14, v17);
}

- (void)deleteFrom:(id)from matchingValues:(id)values
{
  selfCopy = self;
  fromCopy = from;
  valuesCopy = values;
  v8 = objc_msgSend_allKeys(valuesCopy, v6, v7);
  v10 = objc_msgSend_sortedArrayUsingSelector_(v8, v9, sel_compare_);

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (objc_msgSend_count(v10, v13, v14))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(v10, v15, v17, selfCopy);
      v20 = objc_msgSend_objectForKeyedSubscript_(valuesCopy, v19, v18);

      v22 = objc_msgSend_objectAtIndexedSubscript_(v10, v21, v17);
      objc_msgSend_appendString_(v12, v23, v22);

      if (v20 && (objc_msgSend_null(MEMORY[0x1E695DFB0], v24, v25), v26 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v26, v27, v20), v26, (isEqual & 1) == 0))
      {
        objc_msgSend_setObject_atIndexedSubscript_(v11, v24, v20, v16++);
        objc_msgSend_appendString_(v12, v31, @"=?");
      }

      else
      {
        objc_msgSend_appendString_(v12, v24, @" is NULL");
      }

      if (v17 != objc_msgSend_count(v10, v29, v30) - 1)
      {
        objc_msgSend_appendString_(v12, v32, @" AND ");
      }

      ++v17;
    }

    while (v17 < objc_msgSend_count(v10, v33, v34));
  }

  objc_msgSend_deleteFrom_where_bindings_(selfCopy, v15, fromCopy, v12, v11, selfCopy);
}

- (id)_tableNameForClass:(Class)class
{
  v4 = objc_msgSend_CKSQLiteClassName(class, a2, class);
  if ((objc_msgSend_hasPrefix_(v4, v5, self->_objectClassPrefix) & 1) == 0)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v6, *MEMORY[0x1E695D940], @"Object class %@ does not have prefix %@", v4, self->_objectClassPrefix);
  }

  v8 = objc_msgSend_length(self->_objectClassPrefix, v6, v7);
  v10 = objc_msgSend_substringFromIndex_(v4, v9, v8);

  return v10;
}

- (int64_t)insertOrReplaceObject:(id)object
{
  objectCopy = object;
  v5 = objc_opt_class();
  v7 = objc_msgSend__tableNameForClass_(self, v6, v5);
  v10 = objc_msgSend_dictionaryPropertyEncoding(objectCopy, v8, v9);

  v12 = objc_msgSend_insertOrReplaceInto_values_(self, v11, v7, v10);
  return v12;
}

- (BOOL)deleteExactObject:(id)object
{
  objectCopy = object;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v8 = objc_msgSend__tableNameForClass_(self, v7, v6);
  v11 = objc_msgSend_dictionaryPropertyEncoding(objectCopy, v9, v10);
  objc_msgSend_deleteFrom_matchingValues_(self, v12, v8, v11);
  LODWORD(self) = objc_msgSend_changes(self, v13, v14);

  objc_autoreleasePoolPop(v5);
  return self == 1;
}

- (int)deleteAllObjectsOfClass:(Class)class where:(id)where bindings:(id)bindings
{
  whereCopy = where;
  bindingsCopy = bindings;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18866B000;
  v15[3] = &unk_1E70C07E8;
  v15[4] = self;
  classCopy = class;
  v10 = whereCopy;
  v16 = v10;
  v11 = bindingsCopy;
  v17 = v11;
  v18 = &v20;
  v13 = objc_msgSend_performDatabaseOperation_(self, v12, v15);
  LODWORD(self) = *(v21 + 6);

  _Block_object_dispose(&v20, 8);
  return self;
}

- (id)selectAllObjectsOfClass:(Class)class where:(id)where bindings:(id)bindings limit:(id)limit
{
  v43 = *MEMORY[0x1E69E9840];
  whereCopy = where;
  bindingsCopy = bindings;
  limitCopy = limit;
  v14 = objc_msgSend_classForHandle_(CKObjCClass, v13, class);
  v16 = objc_msgSend__tableNameForClass_(self, v15, class);
  v19 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_18866B3EC;
  v32[3] = &unk_1E70C0838;
  v20 = v16;
  v33 = v20;
  v21 = whereCopy;
  v34 = v21;
  v22 = bindingsCopy;
  v35 = v22;
  v23 = limitCopy;
  v36 = v23;
  selfCopy = self;
  v24 = v14;
  v38 = v24;
  classCopy = class;
  v25 = v19;
  v39 = v25;
  v27 = objc_msgSend_performDatabaseOperation_(self, v26, v32);
  if (v27)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v42 = v27;
      _os_log_error_impl(&dword_1883EA000, v28, OS_LOG_TYPE_ERROR, "Database select failed with error: %{public}@", buf, 0xCu);
    }

    v25 = 0;
  }

  v29 = v25;

  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)selectAllObjectsOfClass:(Class)class where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block
{
  whereCopy = where;
  bindingsCopy = bindings;
  byCopy = by;
  limitCopy = limit;
  blockCopy = block;
  v19 = objc_autoreleasePoolPush();
  v21 = objc_msgSend_classForHandle_(CKObjCClass, v20, class);
  v23 = objc_msgSend__tableNameForClass_(self, v22, class);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_18866B71C;
  v27[3] = &unk_1E70C0860;
  v27[4] = self;
  v28 = v21;
  classCopy = class;
  v24 = blockCopy;
  v29 = v24;
  v25 = v21;
  objc_msgSend_selectFrom_where_bindings_orderBy_limit_block_(self, v26, v23, whereCopy, bindingsCopy, byCopy, limitCopy, v27);

  objc_autoreleasePoolPop(v19);
}

- (id)selectObjectOfClass:(Class)class where:(id)where bindings:(id)bindings
{
  v7 = objc_msgSend_selectAllObjectsOfClass_where_bindings_(self, a2, class, where, bindings);
  if (objc_msgSend_count(v7, v8, v9))
  {
    if (objc_msgSend_count(v7, v10, v11) != 1)
    {
      v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
      v19 = objc_msgSend_count(v7, v17, v18);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v20, a2, self, @"CKSQLite.m", 1107, @"%lu results matching query", v19);
    }

    v14 = objc_msgSend_objectAtIndexedSubscript_(v7, v12, 0);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)updateAllObjectsOfClass:(Class)class set:(id)set where:(id)where bindings:(id)bindings
{
  bindingsCopy = bindings;
  whereCopy = where;
  setCopy = set;
  v15 = objc_msgSend__tableNameForClass_(self, v13, class);
  objc_msgSend_update_set_where_bindings_limit_(self, v14, v15, setCopy, whereCopy, bindingsCopy, 0);
}

- (id)_boxedPropertyDictionary:(id)dictionary forObjCClass:(id)class
{
  classCopy = class;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18866BA0C;
  v11[3] = &unk_1E70C0888;
  v11[4] = self;
  v12 = classCopy;
  v7 = classCopy;
  v9 = objc_msgSend_CKMapValues_(dictionary, v8, v11);

  return v9;
}

- (id)_boxedValue:(id)value forObjcCProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v9 = objc_msgSend_type(propertyCopy, v7, v8);
  if (!v9)
  {
    v44 = 0;
    goto LABEL_21;
  }

  v10 = v9[1];

  if (v10 != 15)
  {
    goto LABEL_22;
  }

  v13 = objc_msgSend_type(propertyCopy, v11, v12);
  v16 = objc_msgSend_className(v13, v14, v15);
  if (!objc_msgSend_isEqualToString_(v16, v17, @"NSDate"))
  {

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    v25 = objc_msgSend_type(propertyCopy, v19, v20);
    v28 = objc_msgSend_className(v25, v26, v27);
    if (objc_msgSend_isEqualToString_(v28, v29, @"NSError"))
    {
      objc_opt_class();
      v30 = objc_opt_isKindOfClass();

      if (v30)
      {
        v33 = MEMORY[0x1E696ACD0];
        v34 = objc_opt_class();
        v24 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v33, v35, v34, valueCopy, 0);
        goto LABEL_23;
      }
    }

    else
    {
    }

    v36 = objc_msgSend_type(propertyCopy, v31, v32);
    v39 = objc_msgSend_className(v36, v37, v38);
    if (objc_msgSend_isEqualToString_(v39, v40, @"NSURL"))
    {
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();

      if (v41)
      {
        v24 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v42, valueCopy);
        goto LABEL_23;
      }
    }

    else
    {
    }

    v44 = objc_msgSend_type(propertyCopy, v42, v43);
    v47 = objc_msgSend_className(v44, v45, v46);
    if (!objc_msgSend_isEqualToString_(v47, v48, @"NSUUID"))
    {
      goto LABEL_20;
    }

    objc_opt_class();
    v49 = objc_opt_isKindOfClass();

    if (v49)
    {
      v47 = valueCopy;
      if (objc_msgSend_length(v47, v50, v51) == 16)
      {
        v52 = objc_alloc(MEMORY[0x1E696AFB0]);
        v53 = v47;
        v56 = objc_msgSend_bytes(v53, v54, v55);
        v58 = objc_msgSend_initWithUUIDBytes_(v52, v57, v56);

        valueCopy = v47;
        goto LABEL_24;
      }

      valueCopy = 0;
      v44 = v47;
LABEL_20:

LABEL_21:
    }

LABEL_22:
    v24 = valueCopy;
    valueCopy = v24;
    goto LABEL_23;
  }

  v21 = MEMORY[0x1E695DF00];
  objc_msgSend_doubleValue(valueCopy, v19, v20);
  v24 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v21, v22, v23);
LABEL_23:
  v58 = v24;
LABEL_24:

  return v58;
}

- (int)dbUserVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18866BE04;
  v5[3] = &unk_1E70C05E0;
  v5[4] = &v6;
  v2 = objc_msgSend_performDatabaseOperation_(self, a2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end