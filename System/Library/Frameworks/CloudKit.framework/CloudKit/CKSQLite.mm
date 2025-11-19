@interface CKSQLite
+ (id)equalityClauseAndBindingsForDict:(id)a3;
- (BOOL)deleteExactObject:(id)a3;
- (BOOL)isCorrupt;
- (BOOL)openWithError:(id *)a3;
- (BOOL)remove;
- (CKSQLite)initWithPath:(id)a3 schema:(id)a4;
- (id)_boxedPropertyDictionary:(id)a3 forObjCClass:(id)a4;
- (id)_boxedValue:(id)a3 forObjcCProperty:(id)a4;
- (id)_performDatabaseOperation_locked:(id)a3 withErrorHandler:(id)a4;
- (id)_prepareDatabase;
- (id)_tableNameForClass:(Class)a3;
- (id)allTableNames;
- (id)columnNamesForTable:(id)a3;
- (id)creationDate;
- (id)datePropertyForKey:(id)a3;
- (id)handleDatabaseError:(id)a3;
- (id)handleDatabaseError:(id)a3 args:(char *)a4;
- (id)handleError:(id)a3;
- (id)performDatabaseOperation:(id)a3 withErrorHandler:(id)a4;
- (id)propertyForKey:(id)a3;
- (id)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6 orderBy:(id)a7 limit:(id)a8;
- (id)selectAllObjectsOfClass:(Class)a3 where:(id)a4 bindings:(id)a5 limit:(id)a6;
- (id)selectObjectOfClass:(Class)a3 where:(id)a4 bindings:(id)a5;
- (id)sqlErrorWithMessage:(id)a3;
- (int)changes;
- (int)dbUserVersion;
- (int)deleteAllObjectsOfClass:(Class)a3 where:(id)a4 bindings:(id)a5;
- (int)userVersion;
- (int64_t)insertOrReplaceInto:(id)a3 values:(id)a4;
- (int64_t)insertOrReplaceObject:(id)a3;
- (int64_t)lastInsertRowID;
- (int64_t)selectCountFrom:(id)a3 where:(id)a4 bindings:(id)a5;
- (int64_t)upsertInto:(id)a3 values:(id)a4 onConflict:(id)a5 doUpdate:(id)a6 where:(id)a7;
- (void)_dropAllTables;
- (void)_forceClosed_locked;
- (void)_forceClosed_unlocked;
- (void)_recursiveOperationLock:(id)a3;
- (void)assertInOperation:(SEL)a3;
- (void)close;
- (void)dealloc;
- (void)deleteFrom:(id)a3 matchingValues:(id)a4;
- (void)deleteFrom:(id)a3 where:(id)a4 bindings:(id)a5;
- (void)executeSQL:(id)a3 arguments:(char *)a4;
- (void)markCorrupt;
- (void)removePropertyForKey:(id)a3;
- (void)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6 orderBy:(id)a7 limit:(id)a8 offset:(id)a9 block:(id)a10;
- (void)selectAllObjectsOfClass:(Class)a3 where:(id)a4 bindings:(id)a5 orderBy:(id)a6 limit:(id)a7 block:(id)a8;
- (void)setDateProperty:(id)a3 forKey:(id)a4;
- (void)setProperty:(id)a3 forKey:(id)a4;
- (void)setTraced:(BOOL)a3;
- (void)update:(id)a3 set:(id)a4 where:(id)a5 bindings:(id)a6 limit:(id)a7;
- (void)updateAllObjectsOfClass:(Class)a3 set:(id)a4 where:(id)a5 bindings:(id)a6;
- (void)usingStatementForSQL:(id)a3 performBlock:(id)a4;
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

- (CKSQLite)initWithPath:(id)a3 schema:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v38.receiver = self;
  v38.super_class = CKSQLite;
  v11 = [(CKSQLite *)&v38 init];
  if (v11)
  {
    if (!objc_msgSend_length(v7, v9, v10))
    {
      v36 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v36, v37, a2, v11, @"CKSQLite.m", 97, @"Can't init a database with a zero-length path");
    }

    v11->_operationLock._os_unfair_lock_opaque = 0;
    v14 = objc_msgSend_copy(v7, v12, v13);
    path = v11->_path;
    v11->_path = v14;

    objc_storeStrong(&v11->_schema, a4);
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

- (void)assertInOperation:(SEL)a3
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

- (id)sqlErrorWithMessage:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_db(self, v5, v6);
  v9 = objc_msgSend_errorForSQLite_message_args_(CKPrettyError, v8, v7, v4, &v12);

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

- (id)_performDatabaseOperation_locked:(id)a3 withErrorHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_msgSend_assertInOperation_(self, v9, a2);
  if (objc_msgSend_invalid(self, v10, v11))
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKSQLite.m", 203, @"expected a valid instance");
  }

  v14 = _Block_copy(v8);
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
    v7[2](v7, self, v28);
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

- (void)_recursiveOperationLock:(id)a3
{
  v6 = a3;
  v4 = pthread_self();
  if (self->_operationThread == v4)
  {
    v6[2](v6, 0);
  }

  else
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_operationLock);
    self->_operationThread = v5;
    v6[2](v6, 1);
    self->_operationThread = 0;
    os_unfair_lock_unlock(&self->_operationLock);
  }
}

- (id)performDatabaseOperation:(id)a3 withErrorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1883EE1CC;
  v35 = sub_1883EF78C;
  v36 = 0;
  if (v7)
  {
    v10 = v7;
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
    v21 = v6;
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

- (id)handleError:(id)a3
{
  v6 = a3;
  objc_msgSend_assertInOperation_(self, v7, a2);
  if (objc_msgSend_invalid(self, v8, v9))
  {
    v11 = v6;
    goto LABEL_20;
  }

  v14 = objc_msgSend_CKIsCorruptDatabaseError_(MEMORY[0x1E696ABC0], v10, v6);
  errorHandlerBlock = self->_errorHandlerBlock;
  if (!errorHandlerBlock)
  {
    if (v14)
    {
      objc_msgSend__forceClosed_unlocked(self, v12, v13);
      objc_msgSend_remove(self, v21, v22);
    }

    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v12, *MEMORY[0x1E695D920], @"%@", v6);
    goto LABEL_19;
  }

  v16 = errorHandlerBlock[2](errorHandlerBlock, v6);
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
    objc_storeStrong(&self->_error, a3);
  }

  v11 = v6;
  if (v18 != 1)
  {
    objc_msgSend_setInvalid_(self, v20, 1);
    objc_storeStrong(&self->_invalidationError, a3);
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

- (id)handleDatabaseError:(id)a3 args:(char *)a4
{
  v6 = a3;
  v9 = objc_msgSend_db(self, v7, v8);
  v11 = objc_msgSend_errorForSQLite_message_args_(CKPrettyError, v10, v9, v6, a4);

  v13 = objc_msgSend_handleError_(self, v12, v11);

  return v13;
}

- (id)handleDatabaseError:(id)a3
{
  v3 = objc_msgSend_handleDatabaseError_args_(self, a2, a3, &v6);

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

- (BOOL)openWithError:(id *)a3
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
  if (a3 && v4)
  {
    *a3 = v4;
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
        v15 = v5;
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
      v15 = self;
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

- (void)setTraced:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_operationLock);
  db = self->_db;
  if (db)
  {
    if (v3)
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

  self->_traced = v3;

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

- (void)executeSQL:(id)a3 arguments:(char *)a4
{
  v22 = a3;
  objc_msgSend_assertInOperation_(self, v7, a2);
  if ((objc_msgSend_invalid(self, v8, v9) & 1) == 0)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = objc_msgSend_initWithFormat_arguments_(v10, v11, v22, a4);
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

- (void)usingStatementForSQL:(id)a3 performBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_msgSend_assertInOperation_(self, v9, a2);
  ppStmt = 0;
  v10 = v7;
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

  v8[2](v8, v19);

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

- (id)propertyForKey:(id)a3
{
  v7 = a3;
  if (!v7)
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
  v8 = v7;
  v16 = v8;
  v17 = &v18;
  v10 = objc_msgSend_performDatabaseOperation_(self, v9, v15);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11 = v8;
  if (v8)
  {
    if (v7)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_188668E84;
      v16[3] = &unk_1E70C06A8;
      v17 = v8;
      v18 = v7;
      v13 = objc_msgSend_performDatabaseOperation_(self, v12, v16);
    }

    else
    {
      objc_msgSend_removePropertyForKey_(self, v9, v8);
    }
  }

  else
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKSQLite.m", 679, @"Null key");
  }
}

- (id)datePropertyForKey:(id)a3
{
  v3 = objc_msgSend_propertyForKey_(self, a2, a3);
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

- (void)setDateProperty:(id)a3 forKey:(id)a4
{
  v11 = a4;
  if (a3)
  {
    v7 = a3;
    v8 = objc_opt_new();
    objc_msgSend_setDateFormat_(v8, v9, @"yyyy-MM-dd'T'HH:mm:ssZZZZZ");
    a3 = objc_msgSend_stringFromDate_(v8, v10, v7);
  }

  objc_msgSend_setProperty_forKey_(self, v6, a3, v11);
}

- (void)removePropertyForKey:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1886691BC;
    v13[3] = &unk_1E70C0540;
    v14 = v5;
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

- (id)columnNamesForTable:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1886694C8;
  v14[3] = &unk_1E70C06F8;
  v6 = v4;
  v15 = v6;
  v16 = self;
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

+ (id)equalityClauseAndBindingsForDict:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (objc_msgSend_count(v3, v4, v5))
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = v3;
    v8 = v3;
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

    v3 = v28;
  }

  else
  {
    v24 = [CKTuple2 alloc];
    v23 = objc_msgSend_initWithObject1_object2_(v24, v25, &stru_1EFA32970, MEMORY[0x1E695E0F0]);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6 orderBy:(id)a7 limit:(id)a8 offset:(id)a9 block:(id)a10
{
  v17 = a3;
  v45 = a4;
  v18 = a5;
  v44 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  objc_msgSend_assertInOperation_(self, v23, a2);
  v24 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (objc_msgSend_count(v17, v25, v26))
  {
    v28 = objc_msgSend_componentsJoinedByString_(v17, v27, @", ");
  }

  else
  {
    v28 = @"*";
  }

  objc_msgSend_appendFormat_(v24, v27, @"select %@ from %@", v28, v45);
  if (objc_msgSend_length(v18, v29, v30))
  {
    objc_msgSend_appendFormat_(v24, v31, @" where %@", v18);
  }

  if (v19)
  {
    v33 = objc_msgSend_componentsJoinedByString_(v19, v31, @", ");
    objc_msgSend_appendFormat_(v24, v34, @" order by %@", v33);
  }

  if (v20)
  {
    v35 = objc_msgSend_longValue(v20, v31, v32);
    objc_msgSend_appendFormat_(v24, v36, @" limit %ld", v35);
    if (v21)
    {
      v39 = objc_msgSend_longValue(v21, v37, v38);
      objc_msgSend_appendFormat_(v24, v40, @" offset %ld", v39);
    }
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_188669A80;
  v46[3] = &unk_1E70C0720;
  v47 = v44;
  v48 = v22;
  v41 = v22;
  v42 = v44;
  objc_msgSend_usingStatementForSQL_performBlock_(self, v43, v24, v46);
}

- (id)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6 orderBy:(id)a7 limit:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
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
  v20 = v14;
  v30 = v20;
  v21 = v15;
  v31 = v21;
  v22 = v16;
  v32 = v22;
  v23 = v17;
  v33 = v23;
  v24 = v18;
  v34 = v24;
  v35 = &v36;
  v26 = objc_msgSend_performDatabaseOperation_(self, v25, v29);
  v27 = v37[5];

  _Block_object_dispose(&v36, 8);

  return v27;
}

- (void)update:(id)a3 set:(id)a4 where:(id)a5 bindings:(id)a6 limit:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a3;
  objc_msgSend_assertInOperation_(self, v18, a2);
  v19 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend_appendFormat_(v19, v20, @"update %@", v17);

  if (!objc_msgSend_length(v13, v21, v22))
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v23, v24);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CKSQLite.m", 863, @"null set expression");
  }

  objc_msgSend_appendFormat_(v19, v23, @" set %@", v13);
  if (objc_msgSend_length(v14, v25, v26))
  {
    objc_msgSend_appendFormat_(v19, v27, @" where %@", v14);
  }

  if (v16)
  {
    v29 = objc_msgSend_integerValue(v16, v27, v28);
    objc_msgSend_appendFormat_(v19, v30, @" limit %ld", v29);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_18866A110;
  v35[3] = &unk_1E70C06D0;
  v36 = v15;
  v31 = v15;
  objc_msgSend_usingStatementForSQL_performBlock_(self, v32, v19, v35);
}

- (int64_t)selectCountFrom:(id)a3 where:(id)a4 bindings:(id)a5
{
  v5 = objc_msgSend_select_from_where_bindings_(self, a2, &unk_1EFA85B90, a3, a4, a5);
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

- (int64_t)insertOrReplaceInto:(id)a3 values:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_msgSend_assertInOperation_(self, v9, a2);
  v12 = objc_msgSend_allKeys(v8, v10, v11);
  v14 = objc_msgSend_sortedArrayUsingSelector_(v12, v13, sel_compare_);

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(v14, v16, v17))
  {
    v19 = 0;
    do
    {
      v20 = objc_msgSend_objectAtIndexedSubscript_(v14, v18, v19);
      v22 = objc_msgSend_objectForKeyedSubscript_(v8, v21, v20);
      objc_msgSend_setObject_atIndexedSubscript_(v15, v23, v22, v19);

      ++v19;
    }

    while (v19 < objc_msgSend_count(v14, v24, v25));
  }

  v26 = objc_alloc(MEMORY[0x1E696AD60]);
  v28 = objc_msgSend_initWithString_(v26, v27, @"insert or replace into ");
  objc_msgSend_appendString_(v28, v29, v7);
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
  v51 = self;
  v52 = &v53;
  v50 = v45;
  objc_msgSend_usingStatementForSQL_performBlock_(self, v46, v28, v49);
  v47 = v54[3];

  _Block_object_dispose(&v53, 8);
  return v47;
}

- (int64_t)upsertInto:(id)a3 values:(id)a4 onConflict:(id)a5 doUpdate:(id)a6 where:(id)a7
{
  v13 = a3;
  v14 = a4;
  v77 = a5;
  v15 = a6;
  v75 = a7;
  objc_msgSend_assertInOperation_(self, v16, a2);
  v19 = objc_msgSend_allKeys(v14, v17, v18);
  v21 = objc_msgSend_sortedArrayUsingSelector_(v19, v20, sel_compare_);

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(v21, v23, v24))
  {
    v26 = 0;
    do
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(v21, v25, v26);
      v29 = objc_msgSend_objectForKeyedSubscript_(v14, v28, v27);
      objc_msgSend_setObject_atIndexedSubscript_(v22, v30, v29, v26);

      ++v26;
    }

    while (v26 < objc_msgSend_count(v21, v31, v32));
  }

  v33 = objc_alloc(MEMORY[0x1E696AD60]);
  v35 = objc_msgSend_initWithString_(v33, v34, @"insert into ");
  objc_msgSend_appendString_(v35, v36, v13);
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

  v76 = v13;
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
  v57 = objc_msgSend_componentsJoinedByString_(v77, v56, @",");
  objc_msgSend_appendFormat_(v35, v58, @" on conflict (%@) ", v57);

  objc_msgSend_appendString_(v35, v59, @"do update set ");
  if (objc_msgSend_count(v15, v60, v61))
  {
    v63 = 0;
    do
    {
      v64 = objc_msgSend_objectAtIndexedSubscript_(v15, v62, v63);
      objc_msgSend_appendFormat_(v35, v65, @"%@ = excluded.%@", v64, v64);
      if (v63 != objc_msgSend_count(v15, v66, v67) - 1)
      {
        objc_msgSend_appendString_(v35, v68, @", ");
      }

      ++v63;
    }

    while (v63 < objc_msgSend_count(v15, v69, v70));
  }

  if (v75)
  {
    objc_msgSend_appendFormat_(v35, v62, @" where %@", v75);
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
  v80 = self;
  v81 = &v82;
  v79 = v71;
  objc_msgSend_usingStatementForSQL_performBlock_(self, v72, v35, v78);
  v73 = v83[3];

  _Block_object_dispose(&v82, 8);
  return v73;
}

- (void)deleteFrom:(id)a3 where:(id)a4 bindings:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  objc_msgSend_assertInOperation_(self, v12, a2);
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"delete from %@ where %@", v11, v10);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18866AAE8;
  v17[3] = &unk_1E70C06D0;
  v18 = v9;
  v15 = v9;
  objc_msgSend_usingStatementForSQL_performBlock_(self, v16, v14, v17);
}

- (void)deleteFrom:(id)a3 matchingValues:(id)a4
{
  v35 = self;
  v36 = a3;
  v5 = a4;
  v8 = objc_msgSend_allKeys(v5, v6, v7);
  v10 = objc_msgSend_sortedArrayUsingSelector_(v8, v9, sel_compare_);

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (objc_msgSend_count(v10, v13, v14))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(v10, v15, v17, v35);
      v20 = objc_msgSend_objectForKeyedSubscript_(v5, v19, v18);

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

  objc_msgSend_deleteFrom_where_bindings_(v35, v15, v36, v12, v11, v35);
}

- (id)_tableNameForClass:(Class)a3
{
  v4 = objc_msgSend_CKSQLiteClassName(a3, a2, a3);
  if ((objc_msgSend_hasPrefix_(v4, v5, self->_objectClassPrefix) & 1) == 0)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v6, *MEMORY[0x1E695D940], @"Object class %@ does not have prefix %@", v4, self->_objectClassPrefix);
  }

  v8 = objc_msgSend_length(self->_objectClassPrefix, v6, v7);
  v10 = objc_msgSend_substringFromIndex_(v4, v9, v8);

  return v10;
}

- (int64_t)insertOrReplaceObject:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend__tableNameForClass_(self, v6, v5);
  v10 = objc_msgSend_dictionaryPropertyEncoding(v4, v8, v9);

  v12 = objc_msgSend_insertOrReplaceInto_values_(self, v11, v7, v10);
  return v12;
}

- (BOOL)deleteExactObject:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v8 = objc_msgSend__tableNameForClass_(self, v7, v6);
  v11 = objc_msgSend_dictionaryPropertyEncoding(v4, v9, v10);
  objc_msgSend_deleteFrom_matchingValues_(self, v12, v8, v11);
  LODWORD(self) = objc_msgSend_changes(self, v13, v14);

  objc_autoreleasePoolPop(v5);
  return self == 1;
}

- (int)deleteAllObjectsOfClass:(Class)a3 where:(id)a4 bindings:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18866B000;
  v15[3] = &unk_1E70C07E8;
  v15[4] = self;
  v19 = a3;
  v10 = v8;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  v18 = &v20;
  v13 = objc_msgSend_performDatabaseOperation_(self, v12, v15);
  LODWORD(self) = *(v21 + 6);

  _Block_object_dispose(&v20, 8);
  return self;
}

- (id)selectAllObjectsOfClass:(Class)a3 where:(id)a4 bindings:(id)a5 limit:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v14 = objc_msgSend_classForHandle_(CKObjCClass, v13, a3);
  v16 = objc_msgSend__tableNameForClass_(self, v15, a3);
  v19 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_18866B3EC;
  v32[3] = &unk_1E70C0838;
  v20 = v16;
  v33 = v20;
  v21 = v10;
  v34 = v21;
  v22 = v11;
  v35 = v22;
  v23 = v12;
  v36 = v23;
  v37 = self;
  v24 = v14;
  v38 = v24;
  v40 = a3;
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

- (void)selectAllObjectsOfClass:(Class)a3 where:(id)a4 bindings:(id)a5 orderBy:(id)a6 limit:(id)a7 block:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = objc_autoreleasePoolPush();
  v21 = objc_msgSend_classForHandle_(CKObjCClass, v20, a3);
  v23 = objc_msgSend__tableNameForClass_(self, v22, a3);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_18866B71C;
  v27[3] = &unk_1E70C0860;
  v27[4] = self;
  v28 = v21;
  v30 = a3;
  v24 = v18;
  v29 = v24;
  v25 = v21;
  objc_msgSend_selectFrom_where_bindings_orderBy_limit_block_(self, v26, v23, v14, v15, v16, v17, v27);

  objc_autoreleasePoolPop(v19);
}

- (id)selectObjectOfClass:(Class)a3 where:(id)a4 bindings:(id)a5
{
  v7 = objc_msgSend_selectAllObjectsOfClass_where_bindings_(self, a2, a3, a4, a5);
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

- (void)updateAllObjectsOfClass:(Class)a3 set:(id)a4 where:(id)a5 bindings:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v15 = objc_msgSend__tableNameForClass_(self, v13, a3);
  objc_msgSend_update_set_where_bindings_limit_(self, v14, v15, v12, v11, v10, 0);
}

- (id)_boxedPropertyDictionary:(id)a3 forObjCClass:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18866BA0C;
  v11[3] = &unk_1E70C0888;
  v11[4] = self;
  v12 = v6;
  v7 = v6;
  v9 = objc_msgSend_CKMapValues_(a3, v8, v11);

  return v9;
}

- (id)_boxedValue:(id)a3 forObjcCProperty:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_type(v6, v7, v8);
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

  v13 = objc_msgSend_type(v6, v11, v12);
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
    v25 = objc_msgSend_type(v6, v19, v20);
    v28 = objc_msgSend_className(v25, v26, v27);
    if (objc_msgSend_isEqualToString_(v28, v29, @"NSError"))
    {
      objc_opt_class();
      v30 = objc_opt_isKindOfClass();

      if (v30)
      {
        v33 = MEMORY[0x1E696ACD0];
        v34 = objc_opt_class();
        v24 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v33, v35, v34, v5, 0);
        goto LABEL_23;
      }
    }

    else
    {
    }

    v36 = objc_msgSend_type(v6, v31, v32);
    v39 = objc_msgSend_className(v36, v37, v38);
    if (objc_msgSend_isEqualToString_(v39, v40, @"NSURL"))
    {
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();

      if (v41)
      {
        v24 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v42, v5);
        goto LABEL_23;
      }
    }

    else
    {
    }

    v44 = objc_msgSend_type(v6, v42, v43);
    v47 = objc_msgSend_className(v44, v45, v46);
    if (!objc_msgSend_isEqualToString_(v47, v48, @"NSUUID"))
    {
      goto LABEL_20;
    }

    objc_opt_class();
    v49 = objc_opt_isKindOfClass();

    if (v49)
    {
      v47 = v5;
      if (objc_msgSend_length(v47, v50, v51) == 16)
      {
        v52 = objc_alloc(MEMORY[0x1E696AFB0]);
        v53 = v47;
        v56 = objc_msgSend_bytes(v53, v54, v55);
        v58 = objc_msgSend_initWithUUIDBytes_(v52, v57, v56);

        v5 = v47;
        goto LABEL_24;
      }

      v5 = 0;
      v44 = v47;
LABEL_20:

LABEL_21:
    }

LABEL_22:
    v24 = v5;
    v5 = v24;
    goto LABEL_23;
  }

  v21 = MEMORY[0x1E695DF00];
  objc_msgSend_doubleValue(v5, v19, v20);
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