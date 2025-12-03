@interface CKSQLiteDatabase
+ (BOOL)databaseDidDealloc:(id)dealloc timeout:(double)timeout;
+ (id)databaseInDirectory:(id)directory registryDatabase:(id)database options:(unint64_t)options error:(id *)error;
+ (id)temporaryDatabaseDirectory;
+ (id)unarchivedObjectOfClass:(id)class fromDatabaseArchive:(id)archive error:(id *)error;
+ (void)initialize;
- (CKSQLiteDatabase)initWithDatabaseDirectory:(id)directory UUID:(id)d registryDatabase:(id)database options:(unint64_t)options;
- (id)_executeSQL:(const char *)l;
- (id)_migrateTOC;
- (id)allTableNames:(id *)names;
- (id)bootstrap;
- (id)createNewDatabase;
- (id)databaseFilePath;
- (id)databaseManager:(id *)manager;
- (id)deallocToken;
- (id)description;
- (id)dropTable:(id)table;
- (id)executeSQL:(id)l;
- (id)openExistingDatabase;
- (id)performDatabaseTransaction:(id)transaction;
- (id)performDatabaseTransactionWithoutForeignKeyConstraints:(id)constraints;
- (id)performInDatabaseTransaction:(id)transaction;
- (id)removeDatabaseDirectory;
- (id)resetValidation;
- (id)sqlErrorWithMessage:(id)message;
- (id)tocTableGroup;
- (id)validateOpenDatabase;
- (void)addTransactionCompletionHandler:(id)handler;
- (void)assertInTransaction;
- (void)closeDatabase;
- (void)compiledStatementWithSQL:(id)l error:(id *)error;
- (void)dealloc;
- (void)finalizeHandle:(void *)handle;
- (void)handleDatabaseBusy:(id)busy;
- (void)setupDatabaseConnection;
@end

@implementation CKSQLiteDatabase

- (id)tocTableGroup
{
  os_unfair_lock_lock(&unk_1EA912390);
  WeakRetained = objc_loadWeakRetained(&self->_tocTableGroup);
  if (!WeakRetained)
  {
    WeakRetained = objc_msgSend_TOCTableGroupInDatabase_(CKSQLiteTOCTableGroup, v3, self);
    objc_storeWeak(&self->_tocTableGroup, WeakRetained);
  }

  os_unfair_lock_unlock(&unk_1EA912390);

  return WeakRetained;
}

+ (void)initialize
{
  if (!qword_1ED4B6310)
  {
    v4 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x1E696AD18], a2, v2);
    v5 = qword_1ED4B6310;
    qword_1ED4B6310 = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = qword_1ED4B6318;
    qword_1ED4B6318 = v6;

    MEMORY[0x1EEE66BB8](v6, v7);
  }
}

+ (id)unarchivedObjectOfClass:(id)class fromDatabaseArchive:(id)archive error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(CKSQLiteDatabaseKeyedUnarchiver, a2, class, archive);
  if (!v6 && *error)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v10 = *error;
      v11 = 138412290;
      v12 = v10;
      _os_log_fault_impl(&dword_1883EA000, v7, OS_LOG_TYPE_FAULT, "Database unarchiving error (missing allowed class for NSSecureCoding?): %@", &v11, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)databaseManager:(id *)manager
{
  v5 = sub_188440C18(self);
  if (v5)
  {
    v6 = objc_msgSend_managerInDatabase_error_(CKSQLiteDatabaseManager, v4, v5, manager);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)databaseInDirectory:(id)directory registryDatabase:(id)database options:(unint64_t)options error:(id *)error
{
  v101 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  databaseCopy = database;
  context = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&unk_1ED4B6308);
  v10 = 0;
  v11 = 0;
  if (directoryCopy)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = options | 0x28;
  }

LABEL_4:
  v13 = v11;
  while (1)
  {

    v99 = 0;
    v14 = directoryCopy;
    v15 = objc_opt_self();
    if (!directoryCopy)
    {
      v24 = 0;
      goto LABEL_16;
    }

    v17 = v15;
    v18 = objc_msgSend_databaseFilePathInDirectory_(v15, v16, v14);
    *value = 0;
    *&value[8] = 0;
    v21 = objc_msgSend_fileSystemRepresentation(v18, v19, v20);
    v22 = getxattr(v21, "CKSQLiteDatabaseUUID", value, 0x10uLL, 0, 0);
    if (v22 == 16)
    {
      v25 = objc_alloc(MEMORY[0x1E696AFB0]);
      v23 = objc_msgSend_initWithUUIDBytes_(v25, v26, value);
    }

    else
    {
      if (v22 != -1)
      {
        goto LABEL_14;
      }

      if (*__error() != 93)
      {
        if (*__error() != 2)
        {
          v39 = __error();
          v40 = strerror(*v39);
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v41, @"CKErrorDomain", 1, @"Unable to get database UUID: %s", v40);
          v99 = v24 = 0;
          goto LABEL_15;
        }

LABEL_14:
        v24 = 0;
        goto LABEL_15;
      }

      v23 = sub_1886727C8(v17, v18, &v99);
    }

    v24 = v23;
LABEL_15:

LABEL_16:
    v27 = v99;
    if (v27)
    {
      v11 = v27;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v60 = context;
      v61 = databaseCopy;
      v62 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
      {
        *value = 138543362;
        *&value[4] = v11;
        _os_log_fault_impl(&dword_1883EA000, v62, OS_LOG_TYPE_FAULT, "Failed to get the UUID of an existing database: %{public}@", value, 0xCu);
      }

      os_unfair_lock_unlock(&unk_1ED4B6308);
      if (!v10)
      {
        v30 = 0;
        goto LABEL_72;
      }

      goto LABEL_43;
    }

    if (!v24)
    {
      break;
    }

    v13 = v24;
    if ((optionsCopy & 0x20) != 0)
    {
      v13 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v28, v29);
    }

    v30 = objc_msgSend_objectForKey_(qword_1ED4B6310, v28, v13);

    if (v30)
    {

      if ((optionsCopy & 8) != 0)
      {
        v66 = v30;
      }

      else
      {
        v66 = databaseCopy;
      }

      v61 = v66;
      v67 = sub_188440C18(v30);
      v70 = v67;
      if (v67 == v61)
      {
        v11 = 0;
      }

      else
      {
        v71 = objc_msgSend_databaseDirectory(v67, v68, v69);
        v74 = objc_msgSend_databaseDirectory(v61, v72, v73);
        isEqualToString = objc_msgSend_isEqualToString_(v71, v75, v74);

        if (isEqualToString)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v78 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
          {
            *value = 138543362;
            *&value[4] = v71;
            _os_log_error_impl(&dword_1883EA000, v78, OS_LOG_TYPE_ERROR, "Detected that the database at %{public}@ has been unexpectedly deleted. This process must now exit.", value, 0xCu);
          }

          if ((v30[152] & 0x40) == 0)
          {
            exit(1);
          }

          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v79, @"CKErrorDomain", 1, @"Registry database changed");
          v11 = LABEL_68:;
        }

        else
        {
          if ((v30[152] & 0x40) != 0)
          {
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v77, @"CKErrorDomain", 1, @"Mismatched registry database");
            goto LABEL_68;
          }

          objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v77, *MEMORY[0x1E695D940], @"Mismatched registry database");
          v11 = 0;
        }
      }

      v60 = context;
      if (v11)
      {
        os_unfair_lock_unlock(&unk_1ED4B6308);
        goto LABEL_72;
      }

LABEL_95:
      os_unfair_lock_unlock(&unk_1ED4B6308);
      objc_autoreleasePoolPop(v60);
      v11 = 0;
      goto LABEL_96;
    }

    v32 = objc_msgSend_objectForKey_(qword_1ED4B6318, v31, v13);
    if (!v32)
    {
      v50 = [self alloc];
      v10 = objc_msgSend_initWithDatabaseDirectory_UUID_registryDatabase_options_(v50, v51, v14, v13, databaseCopy, optionsCopy);
      v54 = objc_msgSend_openExistingDatabase(v10, v52, v53);
      if (!v54)
      {

        if (!v10)
        {
          v60 = context;
          v61 = databaseCopy;
          goto LABEL_95;
        }

        goto LABEL_84;
      }

      v11 = v54;
      if ((objc_msgSend_CKIsDiskFullError_(MEMORY[0x1E696ABC0], v55, v54) & 1) != 0 || (optionsCopy & 3) != 0)
      {

        os_unfair_lock_unlock(&unk_1ED4B6308);
        v60 = context;
        if (v10)
        {
          v61 = databaseCopy;
          goto LABEL_43;
        }

        v30 = 0;
        v61 = databaseCopy;
      }

      else
      {
        optionsCopy |= 2uLL;

LABEL_35:
        objc_msgSend_closeDatabase(v10, v28, v29);
        v58 = objc_msgSend_removeDatabaseDirectory(v10, v56, v57);
        if (v24)
        {
          goto LABEL_4;
        }

        os_unfair_lock_unlock(&unk_1ED4B6308);
        if (v10)
        {
          v60 = context;
          v61 = databaseCopy;
          goto LABEL_43;
        }

        v30 = 0;
        v60 = context;
        v61 = databaseCopy;
      }

LABEL_72:
      objc_autoreleasePoolPop(v60);
      v10 = v30;
      goto LABEL_73;
    }

    v33 = v32;
    os_unfair_lock_unlock(&unk_1ED4B6308);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v34 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v35 = v34;
      v38 = objc_msgSend_CKSanitizedPath(v14, v36, v37);
      *value = 138543362;
      *&value[4] = v38;
      _os_log_impl(&dword_1883EA000, v35, OS_LOG_TYPE_INFO, "Waiting for database to close at path: %{public}@", value, 0xCu);
    }

    dispatch_group_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
    os_unfair_lock_lock(&unk_1ED4B6308);

    v10 = 0;
  }

  if (optionsCopy)
  {
    v47 = v10;
  }

  else
  {
    v42 = [self alloc];
    v45 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v43, v44);
    v47 = objc_msgSend_initWithDatabaseDirectory_UUID_registryDatabase_options_(v42, v46, v14, v45, databaseCopy, optionsCopy);

    v11 = objc_msgSend_createNewDatabase(v47, v48, v49);
    v10 = v47;
    if (v11)
    {
      goto LABEL_35;
    }
  }

  v10 = v47;
  if (!v47)
  {
    os_unfair_lock_unlock(&unk_1ED4B6308);
    objc_autoreleasePoolPop(context);
    v11 = 0;
    v30 = 0;
    v61 = databaseCopy;
    goto LABEL_96;
  }

LABEL_84:
  objc_msgSend_setupDatabaseConnection(v10, v28, v29);
  v86 = qword_1ED4B6310;
  v87 = *(v10 + 160);
  objc_msgSend_setObject_forKey_(v86, v88, v10, v87);
  objc_msgSend_setObject_forKey_(qword_1ED4B6318, v89, *(v10 + 120), v87);

  v90 = *(v10 + 144);
  v61 = databaseCopy;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v91 = ck_log_facility_sql;
  v60 = context;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
  {
    v92 = @"opened existing";
    if (v90)
    {
      v92 = @"created new";
    }

    *value = 138412546;
    *&value[4] = v92;
    *&value[12] = 2114;
    *&value[14] = v10;
    _os_log_impl(&dword_1883EA000, v91, OS_LOG_TYPE_INFO, "CKSQLiteDatabase %@ database: %{public}@", value, 0x16u);
  }

  os_unfair_lock_unlock(&unk_1ED4B6308);
  v11 = 0;
LABEL_43:
  if ((*(v10 + 152) & 0x80) != 0)
  {
    v63 = objc_msgSend_performTableGroupValidationInDatabase_(CKSQLiteTableGroup, v59, v10);

    v11 = v63;
  }

  if (*(v10 + 144) == 1 && !v11)
  {
    v98 = 0;
    v64 = objc_msgSend_databaseManager_(v10, v59, &v98);
    v11 = v98;
    if (!v11)
    {
      v11 = objc_msgSend_registerDatabase_(v64, v65, v10);
    }
  }

  objc_autoreleasePoolPop(v60);
  if (!v11)
  {
    v30 = v10;
    goto LABEL_96;
  }

LABEL_73:

  if (error)
  {
    v80 = v11;
    *error = v11;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v81 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
  {
    v82 = v81;
    v85 = objc_msgSend_CKSanitizedPath(v14, v83, v84);
    *value = 138543618;
    *&value[4] = v85;
    *&value[12] = 2112;
    *&value[14] = v11;
    _os_log_error_impl(&dword_1883EA000, v82, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase: failed to open/create database at %{public}@: %@", value, 0x16u);
  }

  v30 = 0;
LABEL_96:

  v93 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)temporaryDatabaseDirectory
{
  v14 = *MEMORY[0x1E69E9840];
  if ((byte_1EA919CC8 & 1) == 0)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CKSQLiteDatabase.m", 328, @"For unit test use only");
  }

  v3 = NSTemporaryDirectory();
  objc_msgSend_getCString_maxLength_encoding_(v3, v4, v13, 1024, 1);

  __strlcat_chk();
  mkdtemp(v13);
  v6 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v5, v13, 1);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (CKSQLiteDatabase)initWithDatabaseDirectory:(id)directory UUID:(id)d registryDatabase:(id)database options:(unint64_t)options
{
  directoryCopy = directory;
  dCopy = d;
  databaseCopy = database;
  v15 = objc_msgSend_init(self, v13, v14);
  v16 = v15;
  if (v15)
  {
    pthread_mutex_init((v15 + 8), 0);
    *(v16 + 72) = 0;
    v19 = objc_msgSend_copy(directoryCopy, v17, v18);
    v20 = *(v16 + 88);
    *(v16 + 88) = v19;

    *(v16 + 152) = options;
    v23 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x1E696AD18], v21, v22);
    v24 = *(v16 + 128);
    *(v16 + 128) = v23;

    v25 = dispatch_group_create();
    v26 = *(v16 + 120);
    *(v16 + 120) = v25;

    objc_storeStrong((v16 + 160), d);
    objc_storeStrong((v16 + 136), database);
    dispatch_group_enter(*(v16 + 120));
  }

  return v16;
}

- (void)dealloc
{
  if (self->_db)
  {
    os_unfair_lock_lock(&unk_1ED4B6308);
    objc_msgSend_closeDatabase(self, v3, v4);
    os_unfair_lock_unlock(&unk_1ED4B6308);
  }

  databaseGroup = self->_databaseGroup;
  if (databaseGroup)
  {
    dispatch_group_leave(databaseGroup);
  }

  v6.receiver = self;
  v6.super_class = CKSQLiteDatabase;
  [(CKSQLiteDatabase *)&v6 dealloc];
}

+ (BOOL)databaseDidDealloc:(id)dealloc timeout:(double)timeout
{
  v4 = (timeout * 1000000000.0);
  deallocCopy = dealloc;
  v6 = dispatch_time(0, v4);
  v7 = dispatch_group_wait(deallocCopy, v6);

  if (v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1883EA000, v8, OS_LOG_TYPE_INFO, "Timed out waiting for database dealloc", v10, 2u);
    }
  }

  return v7 == 0;
}

- (id)deallocToken
{
  os_unfair_lock_lock(&unk_1ED4B6308);
  v4 = objc_msgSend_objectForKey_(qword_1ED4B6318, v3, self->_uuid);
  os_unfair_lock_unlock(&unk_1ED4B6308);

  return v4;
}

- (void)setupDatabaseConnection
{
  v19 = *MEMORY[0x1E69E9840];
  sqlite3_extended_result_codes(self->_db, 1);
  v5 = objc_msgSend__executeSQL_(self, v3, "pragma synchronous = normal");
  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_fault_impl(&dword_1883EA000, v6, OS_LOG_TYPE_FAULT, "Error setting pragma synchronous = normal: %{public}@", buf, 0xCu);
    }
  }

  v7 = objc_msgSend__executeSQL_(self, v4, "pragma foreign_keys = ON");

  if (v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v18 = v7;
      _os_log_fault_impl(&dword_1883EA000, v8, OS_LOG_TYPE_FAULT, "Error setting pragma foreign_keys = ON: %{public}@", buf, 0xCu);
    }
  }

  if (sqlite3_db_config(self->_db, 1022, 0, 0))
  {
    v10 = objc_msgSend_sqlErrorWithMessage_(self, v9, @"sqlite3_db_config(SQLITE_DBCONFIG_ENABLE_COMMENTS) failed");
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_fault_impl(&dword_1883EA000, v11, OS_LOG_TYPE_FAULT, "Failed to disable sql comments: %{public}@", buf, 0xCu);
    }
  }

  db = self->_db;
  if (_sqlite3_maintain_load_factor())
  {
    v14 = objc_msgSend_sqlErrorWithMessage_(self, v13, @"_sqlite3_maintain_load_factor failed");
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v18 = v14;
      _os_log_fault_impl(&dword_1883EA000, v15, OS_LOG_TYPE_FAULT, "Failed to enable automatic incremental vacuum: %{public}@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)openExistingDatabase
{
  v43[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_databaseFilePath(self, a2, v2);
  v7 = objc_msgSend_fileSystemRepresentation(v4, v5, v6);
  v8 = v7;
  if (self)
  {
    v9 = getxattr(v7, "CKSQLiteDatabaseCorrupt", 0, 0, 0, 0);
    if (v9)
    {
      if (v9 != -1)
      {
        v15 = objc_msgSend_databaseCorruptError(CKPrettyError, v10, v11);
LABEL_7:
        v16 = v15;
        if (v15)
        {
          goto LABEL_17;
        }

        goto LABEL_8;
      }

      if (*__error() != 93)
      {
        v12 = __error();
        v13 = strerror(*v12);
        v15 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKErrorDomain", 1, @"getxattr() failed at path: %s. error = %s", v8, v13);
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = sub_188673C14;
  v38 = &unk_1E70C0C50;
  selfCopy = self;
  v40 = v8;
  v41 = 3211266;
  v19 = v36;
  if (self)
  {
    if ((objc_msgSend_options(self, v17, v18) & 0x200) != 0)
    {
      v22 = objc_msgSend_databaseDirectory(self, v20, v21);
      v25 = objc_msgSend_fileSystemRepresentation(v22, v23, v24);
      v26 = open(v25, 0);
      v28 = v26;
      if (v26 == -1 || flock(v26, 2))
      {
        v42 = *MEMORY[0x1E696A368];
        v43[0] = v22;
        v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, v43, &v42, 1);
        v30 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A798];
        v32 = __error();
        v16 = objc_msgSend_errorWithDomain_code_userInfo_(v30, v33, v31, *v32, v29);
      }

      else
      {
        v16 = v37(v19);
      }

      close(v28);
    }

    else
    {
      v16 = v37(v19);
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_17:
  v34 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_migrateTOC
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1886740B0;
  v4[3] = &unk_1E70BC1A0;
  v4[4] = self;
  v2 = objc_msgSend_performDatabaseTransactionWithoutForeignKeyConstraints_(self, a2, v4);

  return v2;
}

- (id)validateOpenDatabase
{
  v4 = objc_msgSend_tocTableGroup(self, a2, v2);
  v7 = objc_msgSend_isUseable(v4, v5, v6);
  if (v7 || (v16 = 0, v9 = objc_msgSend_needsMigration_(v4, v8, &v16), (v7 = v16) != 0) || v9 && (objc_msgSend__migrateTOC(self, v10, v11), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v7;
  }

  else
  {
    v12 = objc_msgSend_prepareNewlyOpenedDatabase(v4, v10, v11);
    if (objc_msgSend_CKIsValidationError_(MEMORY[0x1E696ABC0], v15, v12))
    {
      self->_options |= 0x80uLL;

      v12 = 0;
    }
  }

  v13 = v12;

  return v13;
}

- (id)bootstrap
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18867443C;
  v4[3] = &unk_1E70BC1A0;
  v4[4] = self;
  v2 = objc_msgSend_performDatabaseTransaction_(self, a2, v4);

  return v2;
}

- (id)createNewDatabase
{
  v34 = *MEMORY[0x1E69E9840];
  databaseDirectory = self->_databaseDirectory;
  if (!databaseDirectory)
  {
    goto LABEL_5;
  }

  v29 = 0;
  CKCreateDirectoryAtPathWithAttributes(databaseDirectory, 0, &v29);
  v5 = v29;
  if (v5)
  {
LABEL_15:
    v14 = v5;
    goto LABEL_16;
  }

  if (self->_databaseDirectory)
  {
    v6 = objc_msgSend_databaseFilePath(self, a2, v2);
    v7 = 0;
    v10 = objc_msgSend_fileSystemRepresentation(v6, v8, v9);
  }

  else
  {
LABEL_5:
    v7 = 1;
    v6 = @":memory:";
    v10 = objc_msgSend_fileSystemRepresentation(@":memory:", a2, v2);
  }

  p_db = &self->_db;
  if (sqlite3_open_v2(v10, &self->_db, 3211270, 0))
  {
    v14 = objc_msgSend_sqlErrorWithMessage_(self, v12, @"Error opening db at %@", self->_databaseDirectory);
  }

  else
  {
    if (v7)
    {
      v15 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v12, v13);
      uuid = self->_uuid;
      self->_uuid = v15;

      goto LABEL_12;
    }

    v28 = 0;
    v18 = sub_1886727C8(CKSQLiteDatabase, v6, &v28);
    v14 = v28;
    v19 = self->_uuid;
    self->_uuid = v18;
  }

  if (v14)
  {
LABEL_16:
    p_db = &self->_db;
    goto LABEL_17;
  }

LABEL_12:
  v20 = objc_msgSend__executeSQL_(self, v17, "pragma journal_mode = WAL");
  if (v20)
  {
    v22 = v20;
    v14 = objc_msgSend_sqlErrorWithMessage_(self, v21, @"Error setting pragma journal_mode = WAL");

    if (v14)
    {
      goto LABEL_16;
    }
  }

  v5 = objc_msgSend__executeSQL_(self, v21, "pragma encoding = 'UTF-16'");
  if (v5)
  {
    goto LABEL_15;
  }

  self->_databaseWasCreated = 1;
  v14 = objc_msgSend_bootstrap(self, v23, v24);
  if (!v14)
  {
    self->_isEmpty = 1;
    goto LABEL_21;
  }

LABEL_17:
  sqlite3_close(*p_db);
  *p_db = 0;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v25 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    selfCopy = self;
    v32 = 2114;
    v33 = v14;
    _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: Error creating database: %{public}@", buf, 0x16u);
  }

LABEL_21:
  v26 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)closeDatabase
{
  v41 = *MEMORY[0x1E69E9840];
  if (!self->_db)
  {
LABEL_16:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = objc_msgSend_databaseFilePath(self, a2, v2);
  v5 = sqlite3_close(self->_db);
  self->_db = 0;
  if (!v5)
  {
    uuid = self->_uuid;
    if (uuid)
    {
      objc_msgSend_removeObjectForKey_(qword_1ED4B6310, v6, uuid);
      objc_msgSend_removeObjectForKey_(qword_1ED4B6318, v8, self->_uuid);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
    {
      if (self->_isEmpty)
      {
        v15 = @" (empty)";
      }

      else
      {
        v15 = &stru_1EFA32970;
      }

      v16 = qword_1ED4B6310;
      v17 = v9;
      *buf = 138543874;
      selfCopy2 = self;
      v37 = 2114;
      selfCopy3 = v15;
      v39 = 2048;
      v40 = objc_msgSend_count(v16, v18, v19);
      _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Closed db %{public}@%{public}@. allDatabases.count is now %lu.", buf, 0x20u);
    }

    if (self->_isEmpty || self->_removeWhenClosed)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v10 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        selfCopy2 = self;
        v37 = 2114;
        selfCopy3 = self;
        _os_log_impl(&dword_1883EA000, v10, OS_LOG_TYPE_INFO, "CKSQLiteDatabase<%p>: Removing empty database: %{public}@", buf, 0x16u);
      }

      v13 = objc_msgSend_removeDatabaseDirectory(self, v11, v12);
    }

    goto LABEL_16;
  }

  v20 = objc_msgSend_sqlErrorWithMessage_(self, v6, @"sqlite3_close() failed");
  v23 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v21, v22);
  v24 = [CKSignificantIssue alloc];
  v25 = [CKSourceCodeLocation alloc];
  v27 = objc_msgSend_initWithFilePath_lineNumber_(v25, v26, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteDatabase.m", 676);
  v29 = objc_msgSend_initWithSourceCodeLocation_format_(v24, v28, v27, @"Failed to close database %@, error = %@", self, v20);
  objc_msgSend_handleSignificantIssue_actions_(v23, v30, v29, 0);

  v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, @"Failed to close database %@, error = %@", self, v20);
  objc_msgSend_UTF8String(v32, v33, v34);
  _os_crash();
  __break(1u);
}

- (id)removeDatabaseDirectory
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, v2);
  v9 = objc_msgSend_databaseDirectory(self, v5, v6);
  if (v9 && (objc_msgSend_databaseFilePath(self, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend_fileExistsAtPath_(v4, v11, v10), v10, v12))
  {
    v15 = objc_msgSend_CKSanitizedPath(v9, v13, v14);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      selfCopy = v15;
      _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "CKSQLiteDatabase: Removing db at %{public}@", buf, 0xCu);
    }

    v22 = 0;
    objc_msgSend_removeItemAtPath_error_(v4, v17, v9, &v22);
    v18 = v22;
    if (v18)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v19 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        selfCopy = self;
        v25 = 2114;
        v26 = v15;
        v27 = 2114;
        v28 = v18;
        _os_log_error_impl(&dword_1883EA000, v19, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: Removal of database at %{public}@ failed: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"%@(%p)", v5, self);

  if (self->_databaseDirectory)
  {
    v10 = objc_msgSend_databaseFilePath(self, v8, v9);
    v13 = objc_msgSend_CKSanitizedPath(v10, v11, v12);
    objc_msgSend_appendFormat_(v7, v14, @" path=%@", v13);
  }

  else
  {
    objc_msgSend_appendString_(v7, v8, @" (in memory)");
  }

  return v7;
}

- (id)databaseFilePath
{
  v3 = objc_opt_class();
  databaseDirectory = self->_databaseDirectory;

  return objc_msgSend_databaseFilePathInDirectory_(v3, v4, databaseDirectory);
}

- (id)sqlErrorWithMessage:(id)message
{
  v56 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  db = self->_db;
  if (db)
  {
    v9 = objc_msgSend_errorForSQLite_message_args_(CKPrettyError, v4, db, messageCopy, &v58);
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = objc_msgSend_initWithFormat_arguments_(v10, v11, messageCopy, &v58);
    v9 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v13, @"CKInternalErrorDomain", 1027, 0, @"database is closed (%@)", v12);
  }

  if (self->_db && objc_msgSend_CKSQLiteCode(v9, v7, v8) == 11)
  {
    v16 = objc_msgSend_databaseFilePath(self, v14, v15);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v54 = 2114;
      v55 = v16;
      _os_log_error_impl(&dword_1883EA000, v17, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: Database corrupt: %{public}@", buf, 0x16u);
    }

    v20 = objc_msgSend_fileSystemRepresentation(v16, v18, v19);
    if (setxattr(v20, "CKSQLiteDatabaseCorrupt", "1", 1uLL, 0, 0))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v23 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v31 = v23;
        v32 = __error();
        v33 = strerror(*v32);
        *buf = 138412546;
        selfCopy = v16;
        v54 = 2080;
        v55 = v33;
        _os_log_error_impl(&dword_1883EA000, v31, OS_LOG_TYPE_ERROR, "setxattr failed at path: %@. Removing database instead. error = %s", buf, 0x16u);
      }

      v26 = objc_msgSend_removeDatabaseDirectory(self, v24, v25);
    }

    if ((objc_msgSend_options(self, v21, v22) & 4) == 0)
    {
      v34 = objc_msgSend_sharedOptions(CKBehaviorOptions, v27, v28);
      isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v34, v35, v36);

      if (isAppleInternalInstall)
      {
        v40 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v38, v39);
        v41 = [CKSignificantIssue alloc];
        v42 = [CKSourceCodeLocation alloc];
        v44 = objc_msgSend_initWithFilePath_lineNumber_(v42, v43, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteDatabase.m", 782);
        v46 = objc_msgSend_initWithSourceCodeLocation_format_(v41, v45, v44, @"Database corrupt");
        objc_msgSend_handleSignificantIssue_actions_(v40, v47, v46, 0);

        v49 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v48, @"Database corrupt");
        objc_msgSend_UTF8String(v49, v50, v51);
        _os_crash();
        __break(1u);
      }

      exit(1);
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)allTableNames:(id *)names
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18867517C;
  v12[3] = &unk_1E70BC178;
  v12[4] = self;
  v6 = v5;
  v13 = v6;
  v8 = objc_msgSend_performDatabaseTransaction_(self, v7, v12);
  if (v8)
  {

    if (names)
    {
      v9 = v8;
      v6 = 0;
      *names = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  v10 = v6;

  return v6;
}

- (id)_executeSQL:(const char *)l
{
  v5 = sqlite3_exec(self->_db, l, 0, 0, 0);
  if (v5)
  {
    v7 = objc_msgSend_sqlErrorWithMessage_(self, v6, @"Error executing SQL: %s (%d)", l, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)executeSQL:(id)l
{
  lCopy = l;
  v9 = objc_msgSend_UTF8String(l, v6, v7);

  return objc_msgSend__executeSQL_(self, v8, v9);
}

- (void)compiledStatementWithSQL:(id)l error:(id *)error
{
  lCopy = l;
  ppStmt = 0;
  db = self->_db;
  v8 = lCopy;
  v11 = objc_msgSend_UTF8String(v8, v9, v10);
  if (sqlite3_prepare_v2(db, v11, -1, &ppStmt, 0))
  {
    v13 = objc_msgSend_sqlErrorWithMessage_(self, v12, @"Error preparing statement: %@", lCopy);
    v16 = v13;
    if (error)
    {
      v17 = v13;
      *error = v16;
    }

    v18 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v14, v15);
    v19 = [CKSignificantIssue alloc];
    v20 = [CKSourceCodeLocation alloc];
    v22 = objc_msgSend_initWithFilePath_lineNumber_(v20, v21, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteDatabase.m", 852);
    v24 = objc_msgSend_initWithSourceCodeLocation_format_(v19, v23, v22, @"CKSQLiteDatabase: %@", v16);
    objc_msgSend_handleSignificantIssue_actions_(v18, v25, v24, 3);
  }

  v26 = ppStmt;

  return v26;
}

- (void)finalizeHandle:(void *)handle
{
  v10 = *MEMORY[0x1E69E9840];
  if (sqlite3_finalize(handle))
  {
    v5 = objc_msgSend_sqlErrorWithMessage_(self, v4, @"Error finalizing compiled statement");
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_fault_impl(&dword_1883EA000, v6, OS_LOG_TYPE_FAULT, "[SQLiteDatabase finalizeHandle]: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)dropTable:(id)table
{
  v17 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"DROP TABLE '%@'", tableCopy);
  v8 = objc_msgSend_executeSQL_(self, v7, v6);
  if (objc_msgSend_CKIsNoSuchTableError_(MEMORY[0x1E696ABC0], v9, v8))
  {

    v8 = 0;
  }

  else if (v8)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = tableCopy;
      v15 = 2114;
      v16 = v8;
      _os_log_error_impl(&dword_1883EA000, v10, OS_LOG_TYPE_ERROR, "Failed to drop table %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)resetValidation
{
  v3 = objc_msgSend_tocTableGroup(self, a2, v2);
  v6 = objc_msgSend_resetValidation(v3, v4, v5);

  return v6;
}

- (void)assertInTransaction
{
  accessThread = self->_serializer.accessThread;
  if (accessThread != pthread_self())
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, "void CKSQLDAssertSerialized(CKSQLDBRecursiveSerializer * _Nonnull)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v7, v10, v9, @"CKSQLiteDatabaseSerializer.h", 94, @"Expected to be serialized");
  }

  if (!self->_transactionNestCount)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v11, a2, self, @"CKSQLiteDatabase.m", 924, @"Expected to be in a transaction");
  }
}

- (void)handleDatabaseBusy:(id)busy
{
  v18 = *MEMORY[0x1E69E9840];
  busyCopy = busy;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
  {
    databaseDirectory = self->_databaseDirectory;
    v9 = v5;
    v12 = objc_msgSend_CKSanitizedPath(databaseDirectory, v10, v11);
    v14 = 134218242;
    selfCopy = self;
    v16 = 2114;
    v17 = v12;
    _os_log_impl(&dword_1883EA000, v9, OS_LOG_TYPE_INFO, "SQLitDatabase(%p): Database busy at %{public}@", &v14, 0x16u);
  }

  objc_msgSend_sleepForTimeInterval_(MEMORY[0x1E696AF00], v6, v7, 0.1);

  v13 = *MEMORY[0x1E69E9840];
}

- (id)performDatabaseTransaction:(id)transaction
{
  v65 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  v54 = transactionCopy;
  v55 = _CKSQLDBSerializerLock(&self->_serializer);
  if (self->_transactionNestCount)
  {
    v5 = transactionCopy;
    ++self->_transactionNestCount;
    p_transactionCompletionHandlers = &self->_transactionCompletionHandlers;
    transactionCompletionHandlers = self->_transactionCompletionHandlers;
    v53 = transactionCompletionHandlers;
    v8 = self->_transactionCompletionHandlers;
    self->_transactionCompletionHandlers = 0;

    snprintf(__str, 0x20uLL, "SAVEPOINT S%lu", self->_transactionNestCount);
    v10 = objc_msgSend__executeSQL_(self, v9, __str);
    if (v10 || (v11 = objc_autoreleasePoolPush(), v5[2](v5), v10 = objc_claimAutoreleasedReturnValue(), objc_autoreleasePoolPop(v11), v10))
    {
      snprintf(__str, 0x20uLL, "ROLLBACK TO S%lu", self->_transactionNestCount);
      v13 = objc_msgSend__executeSQL_(self, v12, __str);
      if (v13)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v14 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          selfCopy5 = self;
          v62 = 2114;
          v63 = v13;
          _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: ROLLBACK failed with %{public}@", buf, 0x16u);
        }
      }

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    snprintf(__str, 0x20uLL, "RELEASE S%lu", self->_transactionNestCount);
    v18 = objc_msgSend__executeSQL_(self, v16, __str);
    if (!v18)
    {
      goto LABEL_16;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy5 = self;
      v62 = 2114;
      v63 = v18;
      _os_log_error_impl(&dword_1883EA000, v19, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: RELEASE failed with %{public}@", buf, 0x16u);
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    else if (!v15)
    {
LABEL_16:
      v20 = *p_transactionCompletionHandlers;
      if (*p_transactionCompletionHandlers)
      {
        if (v10)
        {
          v21 = v20;
          objc_storeStrong(&self->_transactionCompletionHandlers, transactionCompletionHandlers);
          v24 = objc_msgSend_reverseObjectEnumerator(v21, v22, v23);
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v56, buf, 16);
          if (v26)
          {
            v27 = *v57;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v57 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                (*(*(*(&v56 + 1) + 8 * i) + 16))();
              }

              v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v29, &v56, buf, 16);
            }

            while (v26);
          }
        }

        else if (v53)
        {
          objc_msgSend_addObjectsFromArray_(v53, v17, v20);
          objc_storeStrong(&self->_transactionCompletionHandlers, transactionCompletionHandlers);
        }
      }

      else
      {
        objc_storeStrong(&self->_transactionCompletionHandlers, transactionCompletionHandlers);
      }

      --self->_transactionNestCount;
      v33 = v10;

      goto LABEL_59;
    }

    v10 = v18;
    goto LABEL_16;
  }

  v31 = transactionCopy;
  v32 = 0;
  ++self->_transactionNestCount;
  while (1)
  {
    v33 = objc_msgSend__executeSQL_(self, v30, "BEGIN EXCLUSIVE TRANSACTION");

    if (!v33)
    {
      break;
    }

    if (!objc_msgSend_CKIsBusyDatabaseError_(MEMORY[0x1E696ABC0], v34, v33))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v38 = ck_log_facility_sql;
      if (!os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 134218242;
      selfCopy5 = self;
      v62 = 2114;
      v63 = v33;
      v39 = "CKSQLiteDatabase<%p>: failed to begin transaction: %{public}@";
LABEL_68:
      _os_log_error_impl(&dword_1883EA000, v38, OS_LOG_TYPE_ERROR, v39, buf, 0x16u);
      goto LABEL_40;
    }

    objc_msgSend_handleDatabaseBusy_(self, v35, v33);
    v32 = v33;
  }

  v36 = objc_autoreleasePoolPush();
  v33 = v31[2](v31);
  objc_autoreleasePoolPop(v36);
  if (!v33)
  {
    v33 = objc_msgSend__executeSQL_(self, v37, "COMMIT TRANSACTION");
    if (!v33)
    {
      goto LABEL_46;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v38 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy5 = self;
      v62 = 2114;
      v63 = v33;
      v39 = "CKSQLiteDatabase<%p>: transaction commit failed with %{public}@";
      goto LABEL_68;
    }
  }

LABEL_40:
  v40 = objc_msgSend__executeSQL_(self, v37, "ROLLBACK TRANSACTION");
  if (v40)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v41 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy5 = self;
      v62 = 2114;
      v63 = v40;
      _os_log_error_impl(&dword_1883EA000, v41, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: transaction rollback failed with %{public}@", buf, 0x16u);
    }
  }

LABEL_46:
  v42 = self->_transactionCompletionHandlers;
  --self->_transactionNestCount;
  v43 = v42;
  if (v43)
  {
    v44 = self->_transactionCompletionHandlers;
    self->_transactionCompletionHandlers = 0;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v45 = v43;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v56, buf, 16);
    if (v47)
    {
      v48 = *v57;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v57 != v48)
          {
            objc_enumerationMutation(v45);
          }

          (*(*(*(&v56 + 1) + 8 * j) + 16))();
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v50, &v56, buf, 16);
      }

      while (v47);
    }
  }

LABEL_59:
  if (v55)
  {
    v55[1].__sig = 0;
    pthread_mutex_unlock(v55);
  }

  v51 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)performInDatabaseTransaction:(id)transaction
{
  transactionCopy = transaction;
  v6 = _CKSQLDBSerializerLock(&self->_serializer);
  if (self->_transactionNestCount)
  {
    transactionCopy[2](transactionCopy);
  }

  else
  {
    objc_msgSend_performDatabaseTransaction_(self, v5, transactionCopy);
  }
  v7 = ;
  if (v6)
  {
    v6[1].__sig = 0;
    pthread_mutex_unlock(v6);
  }

  return v7;
}

- (id)performDatabaseTransactionWithoutForeignKeyConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v8 = _CKSQLDBSerializerLock(&self->_serializer);
  if (self->_transactionNestCount)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CKSQLiteDatabase.m", 1116, @"must not be in a transaction");
  }

  v10 = objc_msgSend__executeSQL_(self, v6, "pragma foreign_keys = OFF");
  if (v10 || (objc_msgSend_performDatabaseTransaction_(self, v9, constraintsCopy), v10 = objc_claimAutoreleasedReturnValue(), self->_transactionNestCount) || (objc_msgSend__executeSQL_(self, v11, "pragma foreign_keys = ON"), !objc_claimAutoreleasedReturnValue()))
  {
    if (v8)
    {
      v8[1].__sig = 0;
      pthread_mutex_unlock(v8);
    }

    return v10;
  }

  else
  {
    v17 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v12, v13);
    v18 = [CKSignificantIssue alloc];
    v19 = [CKSourceCodeLocation alloc];
    v21 = objc_msgSend_initWithFilePath_lineNumber_(v19, v20, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteDatabase.m", 1125);
    v23 = objc_msgSend_initWithSourceCodeLocation_format_(v18, v22, v21, @"Failed to reenable foreign key constraints: %@", v10);
    objc_msgSend_handleSignificantIssue_actions_(v17, v24, v23, 0);

    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, @"Failed to reenable foreign key constraints: %@", v10);
    objc_msgSend_UTF8String(v26, v27, v28);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

- (void)addTransactionCompletionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock = handlerCopy;
  if (!self->_transactionNestCount)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CKSQLiteDatabase.m", 1135, @"Must be in a transaction");

    handlerCopy = aBlock;
  }

  transactionCompletionHandlers = self->_transactionCompletionHandlers;
  if (!transactionCompletionHandlers)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = self->_transactionCompletionHandlers;
    self->_transactionCompletionHandlers = v9;

    handlerCopy = aBlock;
    transactionCompletionHandlers = self->_transactionCompletionHandlers;
  }

  v11 = _Block_copy(handlerCopy);
  objc_msgSend_addObject_(transactionCompletionHandlers, v12, v11);
}

@end