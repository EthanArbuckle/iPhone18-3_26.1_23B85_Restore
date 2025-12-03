@interface APDatabaseManager
+ (id)mainDatabase;
- (APDatabaseManager)init;
- (BOOL)_bindParameters:(id)parameters toStatement:(sqlite3_stmt *)statement;
- (BOOL)_executeQueryFromString:(id)string;
- (BOOL)_isConnectionOpen;
- (BOOL)_isConnectionValidWithErrorDescription:(id)description;
- (BOOL)_setUserVersion:(int64_t)version;
- (BOOL)_updateVersionForPath:(id)path;
- (BOOL)executeQuery:(id)query withParameters:(id)parameters;
- (BOOL)executeQueryFromString:(id)string;
- (BOOL)openConnectionIfFileExistsToDatabaseWithName:(id)name;
- (BOOL)openDatabaseConnectionWithName:(id)name;
- (BOOL)setUpDatabaseWithPath:(id)path;
- (BOOL)setUpMainDatabase;
- (id)_executePragmaSelectQuery:(id)query;
- (id)executeSelectNumberQuery:(id)query withParameters:(id)parameters;
- (id)executeSelectQuery:(id)query forTable:(id)table withParameters:(id)parameters;
- (id)executeSelectQuery:(id)query forTable:(id)table withParameters:(id)parameters groupedByColumn:(id)column;
- (id)executeSelectStringsQuery:(id)query withParameters:(id)parameters;
- (id)getCursorForQuery:(id)query parameters:(id)parameters;
- (id)getTableForClass:(Class)class;
- (int)_runTransactionStatement:(int)statement;
- (int64_t)executeInsertQuery:(id)query withParameters:(id)parameters;
- (sqlite3_stmt)_prepareStatementForQuery:(id)query;
- (void)_openDBConnectionCanRepeat:(BOOL)repeat databasePath:(id)path;
- (void)closeDatabaseConnection;
- (void)incrementalVacuumIfNeeded;
- (void)optimize;
@end

@implementation APDatabaseManager

+ (id)mainDatabase
{
  if (objc_msgSend_isPromotedContentDaemon(MEMORY[0x1E696AAE8], a2, v2, v3))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1BAF23100;
    block[3] = &unk_1E7F1CA70;
    block[4] = self;
    if (qword_1EDBA4120 != -1)
    {
      dispatch_once(&qword_1EDBA4120, block);
    }

    v5 = qword_1EDBA4128;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (APDatabaseManager)init
{
  v7.receiver = self;
  v7.super_class = APDatabaseManager;
  v2 = [(APDatabaseManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(APUnfairRecursiveLock);
    lock = v2->_lock;
    v2->_lock = v3;

    dbName = v2->_dbName;
    v2->_dbName = @"N/A";

    v2->_currentVersion = -1;
    v2->_openConnectionResult = -1;
    v2->_classCDataAvaliable = 0;
  }

  return v2;
}

- (BOOL)openDatabaseConnectionWithName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_pathForName_(APDatabasePath, v5, nameCopy, v6);
  objc_msgSend__openDBConnectionCanRepeat_databasePath_(self, v8, 1, v7);
  if (objc_msgSend_setUpDatabaseWithPath_(self, v9, v7, v10))
  {
    isConnectionOpen = objc_msgSend__isConnectionOpen(self, v11, v12, v13);
  }

  else
  {
    v15 = objc_msgSend_currentVersion(self, v11, v12, v13);
    APDatabaseError(430, 0xFFFFFFFFLL, v15, nameCopy, @"SetUp failed after opening connection with name.", 0);
    isConnectionOpen = 0;
  }

  return isConnectionOpen;
}

- (BOOL)openConnectionIfFileExistsToDatabaseWithName:(id)name
{
  v5 = objc_msgSend_pathForName_(APDatabasePath, a2, name, v3);
  v9 = objc_msgSend_databaseFilePath(v5, v6, v7, v8);
  v13 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v10, v11, v12);
  if (objc_msgSend_fileExistsAtPath_(v13, v14, v9, v15))
  {
    objc_msgSend__openDBConnectionCanRepeat_databasePath_(self, v16, 1, v5);
    isConnectionOpen = objc_msgSend__isConnectionOpen(self, v17, v18, v19);
  }

  else
  {
    isConnectionOpen = 0;
  }

  return isConnectionOpen;
}

- (void)closeDatabaseConnection
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);
  database = self->_database;
  if (database)
  {
    sqlite3_close(database);
    self->_database = 0;
  }

  objc_msgSend_setDbName_(self, v9, @"N/A", v10);
  objc_msgSend_setCurrentVersion_(self, v12, -1, v13);
  objc_msgSend_setOpenConnectionResult_(self, v14, 0xFFFFFFFFLL, v15);
  objc_msgSend_unlock(v5, v16, v17, v18);
  v19 = APLogForCategory(0xCuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138477827;
    v23 = objc_opt_class();
    v20 = v23;
    _os_log_impl(&dword_1BADC1000, v19, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Database connection closed sucessfully.", &v22, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)executeSelectQuery:(id)query forTable:(id)table withParameters:(id)parameters
{
  queryCopy = query;
  tableCopy = table;
  parametersCopy = parameters;
  v13 = objc_msgSend_lock(self, v10, v11, v12);
  objc_msgSend_lock(v13, v14, v15, v16);
  v19 = objc_msgSend__prepareStatementForQuery_(self, v17, queryCopy, v18);
  if (v19)
  {
    v23 = v19;
    if (objc_msgSend__bindParameters_toStatement_(self, v20, parametersCopy, v19))
    {
      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (sqlite3_step(v23) != 100)
      {
        goto LABEL_31;
      }

      v78 = v13;
      v79 = parametersCopy;
      v80 = queryCopy;
      while (1)
      {
        v28 = objc_alloc(objc_msgSend_rowClass(tableCopy, v25, v26, v27, v78, v79, v80));
        v31 = objc_msgSend_initWithTable_(v28, v29, tableCopy, v30);
        v32 = sqlite3_column_count(v23);
        if (v32 >= 1)
        {
          break;
        }

LABEL_27:
        objc_msgSend_addObject_(v24, v33, v31, v34);

        if (sqlite3_step(v23) != 100)
        {
          parametersCopy = v79;
          queryCopy = v80;
          v13 = v78;
          goto LABEL_31;
        }
      }

      v35 = v32;
      v36 = 0;
      while (sqlite3_column_type(v23, v36) == 5)
      {
LABEL_26:
        if (v35 == ++v36)
        {
          goto LABEL_27;
        }
      }

      v37 = MEMORY[0x1E696AEC0];
      v38 = sqlite3_column_name(v23, v36);
      v41 = objc_msgSend_stringWithUTF8String_(v37, v39, v38, v40);
      v44 = objc_msgSend_typeForColumnName_(v31, v42, v41, v43);
      if (v44 > 3)
      {
        if (v44 <= 5)
        {
          if (v44 == 4)
          {
            v63 = sqlite3_column_double(v23, v36);
            v49 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], v64, v65, v66, v63);
          }

          else
          {
            v51 = objc_alloc(MEMORY[0x1E696AD98]);
            v52 = sqlite3_column_int(v23, v36) != 0;
            v49 = objc_msgSend_initWithBool_(v51, v53, v52, v54);
          }

          goto LABEL_24;
        }

        if (v44 == 6)
        {
          v72 = objc_alloc(MEMORY[0x1E695DEF0]);
          v73 = sqlite3_column_blob(v23, v36);
          v74 = sqlite3_column_bytes(v23, v36);
          v49 = objc_msgSend_initWithBytes_length_(v72, v75, v73, v74);
          goto LABEL_24;
        }

        if (v44 != 7)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v44 > 1)
        {
          if (v44 == 2)
          {
            v67 = objc_alloc(MEMORY[0x1E696AD98]);
            v68 = sqlite3_column_double(v23, v36);
            v49 = objc_msgSend_initWithDouble_(v67, v69, v70, v71, v68);
          }

          else
          {
            v55 = MEMORY[0x1E696AEC0];
            v56 = sqlite3_column_text(v23, v36);
            v49 = objc_msgSend_stringWithUTF8String_(v55, v57, v56, v58);
          }

          goto LABEL_24;
        }

        if (v44)
        {
          if (v44 == 1)
          {
            v45 = objc_alloc(MEMORY[0x1E696AD98]);
            v46 = sqlite3_column_int64(v23, v36);
            v49 = objc_msgSend_initWithLong_(v45, v47, v46, v48);
LABEL_24:
            v76 = v49;
            objc_msgSend_setValue_forColumnName_(v31, v50, v49, v41);
          }

LABEL_25:

          goto LABEL_26;
        }
      }

      v59 = objc_alloc(MEMORY[0x1E696AD98]);
      v60 = sqlite3_column_int(v23, v36);
      v49 = objc_msgSend_initWithInteger_(v59, v61, v60, v62);
      goto LABEL_24;
    }

    v24 = 0;
LABEL_31:
    sqlite3_finalize(v23);
  }

  else
  {
    v24 = 0;
  }

  objc_msgSend_unlock(v13, v20, v21, v22);

  return v24;
}

- (id)getCursorForQuery:(id)query parameters:(id)parameters
{
  parametersCopy = parameters;
  queryCopy = query;
  v11 = objc_msgSend_lock(self, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14);
  v17 = objc_msgSend__prepareStatementForQuery_(self, v15, queryCopy, v16);

  if (v17)
  {
    if (objc_msgSend__bindParameters_toStatement_(self, v18, parametersCopy, v17))
    {
      objc_msgSend_unlock(v11, v21, v22, v23);
      v24 = [APDatabaseCursor alloc];
      v26 = objc_msgSend_initWithStatement_lock_(v24, v25, v17, v11);
      goto LABEL_6;
    }

    sqlite3_finalize(v17);
  }

  objc_msgSend_unlock(v11, v18, v19, v20);
  v26 = 0;
LABEL_6:

  return v26;
}

- (id)getTableForClass:(Class)class
{
  v5 = objc_alloc_init(class);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [class alloc];
    v13 = objc_msgSend_initWithDatabaseManager_(v10, v11, self, v12);
    if (v13)
    {
      goto LABEL_6;
    }

    v14 = 432;
  }

  else
  {
    v14 = 431;
  }

  v15 = objc_msgSend_currentVersion(self, v7, v8, v9);
  v19 = objc_msgSend_dbName(self, v16, v17, v18);
  APDatabaseError(v14, 0xFFFFFFFFLL, v15, v19, &stru_1F38FD5F0, 0);

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)executeSelectQuery:(id)query forTable:(id)table withParameters:(id)parameters groupedByColumn:(id)column
{
  v107[1] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  tableCopy = table;
  parametersCopy = parameters;
  columnCopy = column;
  v15 = objc_msgSend_lock(self, v12, v13, v14);
  objc_msgSend_lock(v15, v16, v17, v18);
  v21 = objc_msgSend__prepareStatementForQuery_(self, v19, queryCopy, v20);
  if (v21)
  {
    v25 = v21;
    if (objc_msgSend__bindParameters_toStatement_(self, v22, parametersCopy, v21))
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (sqlite3_step(v25) != 100)
      {
        goto LABEL_38;
      }

      v101 = v15;
      v102 = parametersCopy;
      v103 = queryCopy;
      v104 = v26;
      while (1)
      {
        v30 = objc_alloc(objc_msgSend_rowClass(tableCopy, v27, v28, v29, v101, v102, v103));
        v33 = objc_msgSend_initWithTable_(v30, v31, tableCopy, v32);
        v34 = sqlite3_column_count(v25);
        if (v34 >= 1)
        {
          break;
        }

        v39 = @"N/A";
LABEL_31:
        v26 = v104;
        v83 = objc_msgSend_objectForKey_(v104, v35, v39, v36);
        if (v83)
        {
          v87 = v83;
          v88 = objc_msgSend_mutableCopy(v83, v84, v85, v86);
          objc_msgSend_addObject_(v88, v89, v33, v90);
          v93 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v91, v88, v92);

          objc_msgSend_setObject_forKey_(v104, v94, v93, v39);
        }

        else
        {
          v107[0] = v33;
          v93 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v84, v107, 1);
          objc_msgSend_setObject_forKey_(v104, v95, v93, v39);
        }

        if (sqlite3_step(v25) != 100)
        {
          parametersCopy = v102;
          queryCopy = v103;
          v15 = v101;
          goto LABEL_38;
        }
      }

      v37 = v34;
      v38 = 0;
      v39 = @"N/A";
      while (sqlite3_column_type(v25, v38) == 5)
      {
LABEL_28:
        if (v37 == ++v38)
        {
          goto LABEL_31;
        }
      }

      v40 = MEMORY[0x1E696AEC0];
      v41 = sqlite3_column_name(v25, v38);
      v44 = objc_msgSend_stringWithUTF8String_(v40, v42, v41, v43);
      v47 = objc_msgSend_typeForColumnName_(v33, v45, v44, v46);
      if (v47 > 3)
      {
        if (v47 <= 5)
        {
          if (v47 == 4)
          {
            v70 = sqlite3_column_double(v25, v38);
            v52 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], v71, v72, v73, v70);
          }

          else
          {
            v54 = objc_alloc(MEMORY[0x1E696AD98]);
            v55 = sqlite3_column_int(v25, v38) != 0;
            v52 = objc_msgSend_initWithBool_(v54, v56, v55, v57);
          }

          goto LABEL_25;
        }

        if (v47 == 6)
        {
          v79 = objc_alloc(MEMORY[0x1E695DEF0]);
          v80 = sqlite3_column_blob(v25, v38);
          v81 = sqlite3_column_bytes(v25, v38);
          v52 = objc_msgSend_initWithBytes_length_(v79, v82, v80, v81);
          goto LABEL_25;
        }

        if (v47 != 7)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v47 > 1)
        {
          if (v47 != 2)
          {
            v58 = MEMORY[0x1E696AEC0];
            v59 = sqlite3_column_text(v25, v38);
            v62 = objc_msgSend_stringWithUTF8String_(v58, v60, v59, v61);
            objc_msgSend_setValue_forColumnName_(v33, v63, v62, v44);
            if (objc_msgSend_isEqualToString_(v44, v64, columnCopy, v65))
            {
              v62 = v62;

              v39 = v62;
            }

            goto LABEL_26;
          }

          v74 = objc_alloc(MEMORY[0x1E696AD98]);
          v75 = sqlite3_column_double(v25, v38);
          v52 = objc_msgSend_initWithDouble_(v74, v76, v77, v78, v75);
LABEL_25:
          v62 = v52;
          objc_msgSend_setValue_forColumnName_(v33, v53, v52, v44);
LABEL_26:

          goto LABEL_27;
        }

        if (v47)
        {
          if (v47 == 1)
          {
            v48 = objc_alloc(MEMORY[0x1E696AD98]);
            v49 = sqlite3_column_int64(v25, v38);
            v52 = objc_msgSend_initWithLong_(v48, v50, v49, v51);
            goto LABEL_25;
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      v66 = objc_alloc(MEMORY[0x1E696AD98]);
      v67 = sqlite3_column_int(v25, v38);
      v52 = objc_msgSend_initWithInteger_(v66, v68, v67, v69);
      goto LABEL_25;
    }

    v26 = 0;
LABEL_38:
    sqlite3_finalize(v25);
    objc_msgSend_unlock(v15, v96, v97, v98);
  }

  else
  {
    objc_msgSend_unlock(v15, v22, v23, v24);
    v26 = 0;
  }

  v99 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)executeSelectStringsQuery:(id)query withParameters:(id)parameters
{
  queryCopy = query;
  parametersCopy = parameters;
  v11 = objc_msgSend_lock(self, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14);
  v17 = objc_msgSend__prepareStatementForQuery_(self, v15, queryCopy, v16);
  if (v17)
  {
    v21 = v17;
    if (objc_msgSend__bindParameters_toStatement_(self, v18, parametersCopy, v17))
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      while (sqlite3_step(v21) == 100)
      {
        v23 = MEMORY[0x1E696AEC0];
        v24 = sqlite3_column_text(v21, 0);
        v27 = objc_msgSend_stringWithUTF8String_(v23, v25, v24, v26);
        objc_msgSend_addObject_(v22, v28, v27, v29);
      }
    }

    else
    {
      v22 = 0;
    }

    sqlite3_finalize(v21);
  }

  else
  {
    v22 = 0;
  }

  objc_msgSend_unlock(v11, v18, v19, v20);

  return v22;
}

- (BOOL)executeQuery:(id)query withParameters:(id)parameters
{
  parametersCopy = parameters;
  queryCopy = query;
  v11 = objc_msgSend_lock(self, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14);
  v17 = objc_msgSend__prepareStatementForQuery_(self, v15, queryCopy, v16);

  if (!v17)
  {
    v22 = 0;
    goto LABEL_9;
  }

  if (objc_msgSend__bindParameters_toStatement_(self, v18, parametersCopy, v17))
  {
    v21 = sqlite3_step(v17);
    v22 = 1;
    if ((v21 - 100) < 2)
    {
      goto LABEL_7;
    }

    v23 = v21;
    if (v21 == 9)
    {
      goto LABEL_7;
    }

    v24 = MEMORY[0x1E696AEC0];
    v25 = sqlite3_errstr(v21);
    v28 = objc_msgSend_stringWithFormat_(v24, v26, @"Execute query error: %s", v27, v25);
    v32 = objc_msgSend_currentVersion(self, v29, v30, v31);
    v36 = objc_msgSend_dbName(self, v33, v34, v35);
    APDatabaseError(433, v23, v32, v36, v28, 0);
  }

  v22 = 0;
LABEL_7:
  sqlite3_finalize(v17);
LABEL_9:
  objc_msgSend_unlock(v11, v18, v19, v20);

  return v22;
}

- (int64_t)executeInsertQuery:(id)query withParameters:(id)parameters
{
  parametersCopy = parameters;
  queryCopy = query;
  v11 = objc_msgSend_lock(self, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14);
  v17 = objc_msgSend__prepareStatementForQuery_(self, v15, queryCopy, v16);

  if (v17)
  {
    if (objc_msgSend__bindParameters_toStatement_(self, v18, parametersCopy, v17))
    {
      v21 = sqlite3_step(v17);
      if ((v21 - 100) < 2 || (v22 = v21, v21 == 9))
      {
        insert_rowid = sqlite3_last_insert_rowid(self->_database);
LABEL_9:
        sqlite3_finalize(v17);
        goto LABEL_10;
      }

      v24 = MEMORY[0x1E696AEC0];
      v25 = sqlite3_errstr(v21);
      v28 = objc_msgSend_stringWithFormat_(v24, v26, @"Execute insert query error: %s", v27, v25);
      v32 = objc_msgSend_currentVersion(self, v29, v30, v31);
      v36 = objc_msgSend_dbName(self, v33, v34, v35);
      APDatabaseError(434, v22, v32, v36, v28, 0);
    }

    insert_rowid = -1;
    goto LABEL_9;
  }

  insert_rowid = -1;
LABEL_10:
  objc_msgSend_unlock(v11, v18, v19, v20);

  return insert_rowid;
}

- (BOOL)setUpMainDatabase
{
  v4 = objc_msgSend_pathForName_(APDatabasePath, a2, @"APDatabase", v2);
  LOBYTE(self) = objc_msgSend_setUpDatabaseWithPath_(self, v5, v4, v6);

  return self;
}

- (BOOL)setUpDatabaseWithPath:(id)path
{
  pathCopy = path;
  v8 = objc_msgSend_lock(self, v5, v6, v7);
  objc_msgSend_lock(v8, v9, v10, v11);
  isConnectionValidWithErrorDescription = objc_msgSend__isConnectionValidWithErrorDescription_(self, v12, @"No connection on Set Up DB with path.", v13);
  objc_msgSend_unlock(v8, v15, v16, v17);
  if (isConnectionValidWithErrorDescription)
  {
    v21 = 3;
    while (1)
    {
      if (v21 == 1)
      {
        v22 = objc_msgSend_currentVersion(self, v18, v19, v20);
        v26 = objc_msgSend_dbName(self, v23, v24, v25);
        APDatabaseError(443, 0xFFFFFFFFLL, v22, v26, @"Reacreating Database File.", 0);

        objc_msgSend_closeDatabaseConnection(self, v27, v28, v29);
        objc_msgSend_removeDatabaseAtPath_(APDatabaseFileUtilities, v30, pathCopy, v31);
        objc_msgSend__openDBConnectionCanRepeat_databasePath_(self, v32, 1, pathCopy);
      }

      if (objc_msgSend__updateVersionForPath_(self, v18, pathCopy, v20))
      {
        break;
      }

      if (!--v21)
      {
        objc_msgSend_closeDatabaseConnection(self, v18, v19, v20);
        v33 = 0;
        goto LABEL_9;
      }
    }
  }

  v33 = 1;
LABEL_9:

  return v33;
}

- (int)_runTransactionStatement:(int)statement
{
  if ((statement - 1) <= 3)
  {
    LODWORD(self) = sqlite3_exec(self->_database, off_1E7F1D450[statement - 1], 0, 0, 0);
  }

  return self;
}

- (void)incrementalVacuumIfNeeded
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);
  if (objc_msgSend__isConnectionValidWithErrorDescription_(self, v9, @"No connection on incremental vacuum.", v10))
  {
    v14 = objc_msgSend__executePragmaSelectQuery_(self, v11, @"PRAGMA freelist_count", v13);
    v17 = objc_msgSend__executePragmaSelectQuery_(self, v15, @"PRAGMA page_count", v16);
    v21 = v17;
    if (v14 && v17)
    {
      objc_msgSend_doubleValue(v17, v18, v19, v20);
      v23 = v22 * 0.05;
      objc_msgSend_doubleValue(v14, v24, v25, v26);
      v28 = v27;
      v29 = fmax(v23, 256.0);
      v30 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_opt_class();
        v32 = v31;
        v36 = objc_msgSend_integerValue(v14, v33, v34, v35);
        v37 = @"WILL NOT";
        *v47 = 138478339;
        *&v47[4] = v31;
        if (v28 >= v29)
        {
          v37 = @"WILL";
        }

        *&v47[12] = 2048;
        *&v47[14] = v36;
        v48 = 2112;
        v49 = v37;
        _os_log_impl(&dword_1BADC1000, v30, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Database has %ld free pages, %@. vacuum.", v47, 0x20u);
      }

      if (v28 >= v29)
      {
        v38 = APLogForCategory(0xCuLL);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = objc_opt_class();
          *v47 = 138477827;
          *&v47[4] = v39;
          v40 = v39;
          _os_log_impl(&dword_1BADC1000, v38, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Database vacuuming started.", v47, 0xCu);
        }

        objc_msgSend__executeQueryFromString_(self, v41, @"PRAGMA incremental_vacuum", v42);
        v43 = APLogForCategory(0xCuLL);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = objc_opt_class();
          *v47 = 138477827;
          *&v47[4] = v44;
          v45 = v44;
          _os_log_impl(&dword_1BADC1000, v43, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Database vacuuming complete.", v47, 0xCu);
        }
      }
    }

    objc_msgSend_unlock(v5, v18, v19, v20, *v47);
  }

  else
  {
    objc_msgSend_unlock(v5, v11, v12, v13);
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)optimize
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);
  if (objc_msgSend__isConnectionValidWithErrorDescription_(self, v9, @"No connection on optimize.", v10))
  {
    v14 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 138477827;
      *&v19[4] = objc_opt_class();
      v15 = *&v19[4];
      _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Database optimize.", v19, 0xCu);
    }

    objc_msgSend__executeQueryFromString_(self, v16, @"PRAGMA optimize", v17);
  }

  objc_msgSend_unlock(v5, v11, v12, v13, *v19);

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)executeQueryFromString:(id)string
{
  stringCopy = string;
  v8 = objc_msgSend_lock(self, v5, v6, v7);
  objc_msgSend_lock(v8, v9, v10, v11);
  if (objc_msgSend__isConnectionValidWithErrorDescription_(self, v12, @"No connection on execute query from string.", v13))
  {
    v17 = objc_msgSend__executeQueryFromString_(self, v14, stringCopy, v16);
  }

  else
  {
    v17 = 0;
  }

  objc_msgSend_unlock(v8, v14, v15, v16);

  return v17;
}

- (id)executeSelectNumberQuery:(id)query withParameters:(id)parameters
{
  parametersCopy = parameters;
  queryCopy = query;
  v11 = objc_msgSend_lock(self, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14);
  v17 = objc_msgSend__prepareStatementForQuery_(self, v15, queryCopy, v16);

  if (v17)
  {
    if (objc_msgSend__bindParameters_toStatement_(self, v18, parametersCopy, v17) && sqlite3_step(v17) == 100)
    {
      v21 = MEMORY[0x1E696AD98];
      v22 = sqlite3_column_double(v17, 0);
      v26 = objc_msgSend_numberWithDouble_(v21, v23, v24, v25, v22);
    }

    else
    {
      v26 = 0;
    }

    sqlite3_finalize(v17);
  }

  else
  {
    v26 = 0;
  }

  objc_msgSend_unlock(v11, v18, v19, v20);

  return v26;
}

- (BOOL)_updateVersionForPath:(id)path
{
  v153 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v8 = objc_msgSend_lock(self, v5, v6, v7);
  objc_msgSend_lock(v8, v9, v10, v11);
  v15 = objc_msgSend__userVersion(self, v12, v13, v14);
  v19 = v15;
  if (v15)
  {
    v20 = objc_msgSend_intValue(v15, v16, v17, v18);
    objc_msgSend_setCurrentVersion_(self, v21, v20, v22);
    v23 = [APDatabaseMigration alloc];
    v26 = objc_msgSend_initWithDatabasePath_(v23, v24, pathCopy, v25);
    Version = objc_msgSend_lastVersion(v26, v27, v28, v29);
    v34 = objc_msgSend_integerValue(v19, v31, v32, v33);
    v35 = APLogForCategory(0xCuLL);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (v34 == Version)
    {
      if (v36)
      {
        v37 = objc_opt_class();
        v38 = v37;
        *buf = 138478083;
        v148 = v37;
        v149 = 2050;
        v150 = objc_msgSend_integerValue(v19, v39, v40, v41);
        _os_log_impl(&dword_1BADC1000, v35, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Database up to date version %{public}ld.", buf, 0x16u);
      }

      objc_msgSend_unlock(v8, v42, v43, v44);
      v45 = 1;
    }

    else
    {
      if (v36)
      {
        v54 = objc_opt_class();
        v55 = v54;
        *buf = 138478339;
        v148 = v54;
        v149 = 2050;
        v150 = objc_msgSend_integerValue(v19, v56, v57, v58);
        v151 = 2048;
        v152 = Version;
        _os_log_impl(&dword_1BADC1000, v35, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Start Database migration from v%{public}ld to v%ld.", buf, 0x20u);
      }

      v62 = objc_msgSend_intValue(v19, v59, v60, v61);
      v68 = objc_msgSend_getMigrationQueriesFromVersion_(v26, v63, v62, v64);
      if (v68)
      {
        v137 = Version;
        v140 = v26;
        v141 = pathCopy;
        objc_msgSend__executeQueryFromString_(self, v65, @"PRAGMA locking_mode = EXCLUSIVE", v67);
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        v139 = v68;
        v69 = v68;
        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v142, v146, 16);
        if (v71)
        {
          v74 = v71;
          v75 = 0;
          v76 = *v143;
LABEL_12:
          v77 = 0;
          v78 = v75;
          v138 = v75 + v74;
          while (1)
          {
            if (*v143 != v76)
            {
              objc_enumerationMutation(v69);
            }

            v79 = *(*(&v142 + 1) + 8 * v77);
            if (objc_msgSend_containsString_(v79, v72, @"{TableName}", v73))
            {
              v83 = objc_msgSend_intValue(v19, v80, v81, v82);
              if ((objc_msgSend__handleEventTablesDynamicMigrationWithQuery_version_(self, v84, v79, v83) & 1) == 0)
              {
                objc_msgSend__executeQueryFromString_(self, v72, @"PRAGMA locking_mode = NORMAL", v73);
                objc_msgSend_unlock(v8, v132, v133, v134);
LABEL_26:
                v26 = v140;

                v45 = 0;
                pathCopy = v141;
                goto LABEL_27;
              }
            }

            else if ((objc_msgSend__executeQueryFromString_(self, v80, v79, v82) & 1) == 0)
            {
              v114 = MEMORY[0x1E696AEC0];
              v115 = objc_msgSend_intValue(v19, v72, v85, v73);
              v118 = objc_msgSend_stringWithFormat_(v114, v116, @"Migration failed from version %d, Query number: %d", v117, v115, v78);
              v122 = objc_msgSend_currentVersion(self, v119, v120, v121);
              v126 = objc_msgSend_dbName(self, v123, v124, v125);
              APDatabaseError(438, 0xFFFFFFFFLL, v122, v126, v118, 0);

              objc_msgSend__executeQueryFromString_(self, v127, @"PRAGMA locking_mode = NORMAL", v128);
              objc_msgSend_unlock(v8, v129, v130, v131);

              goto LABEL_26;
            }

            v78 = (v78 + 1);
            if (v74 == ++v77)
            {
              v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v72, &v142, v146, 16);
              v75 = v138;
              if (v74)
              {
                goto LABEL_12;
              }

              break;
            }
          }
        }

        objc_msgSend_setCurrentVersion_(self, v86, v137, v87);
        objc_msgSend__setUserVersion_(self, v88, v137, v89);
        objc_msgSend__executeQueryFromString_(self, v90, @"PRAGMA locking_mode = NORMAL", v91);
        v92 = APLogForCategory(0xCuLL);
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          v93 = objc_opt_class();
          *buf = 138478083;
          v148 = v93;
          v149 = 2048;
          v150 = v137;
          v94 = v93;
          _os_log_impl(&dword_1BADC1000, v92, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Database migration complete v%ld.", buf, 0x16u);
        }

        objc_msgSend_unlock(v8, v95, v96, v97);
        v45 = 1;
        v26 = v140;
        pathCopy = v141;
LABEL_27:
        v68 = v139;
      }

      else
      {
        v98 = MEMORY[0x1E696AEC0];
        v99 = objc_msgSend_intValue(v19, v65, v66, v67);
        v102 = objc_msgSend_stringWithFormat_(v98, v100, @"Migration queries is nil, from version %d", v101, v99);
        v106 = objc_msgSend_currentVersion(self, v103, v104, v105);
        v110 = objc_msgSend_dbName(self, v107, v108, v109);
        APDatabaseError(438, 0xFFFFFFFFLL, v106, v110, v102, 0);

        objc_msgSend_unlock(v8, v111, v112, v113);
        v45 = 0;
      }
    }
  }

  else
  {
    v46 = objc_msgSend_currentVersion(self, v16, v17, v18);
    v50 = objc_msgSend_dbName(self, v47, v48, v49);
    APDatabaseError(438, 0xFFFFFFFFLL, v46, v50, @"Error getting current version.", 0);

    objc_msgSend_unlock(v8, v51, v52, v53);
    v45 = 0;
  }

  v135 = *MEMORY[0x1E69E9840];
  return v45;
}

- (BOOL)_setUserVersion:(int64_t)version
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"PRAGMA user_version = %ld", v3, version);
  v8 = objc_msgSend__prepareStatementForQuery_(self, v6, v5, v7);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = sqlite3_step(v8);
  if (v10 != 101)
  {
    v12 = v10;
    v13 = MEMORY[0x1E696AEC0];
    v14 = sqlite3_errstr(v10);
    v17 = objc_msgSend_stringWithFormat_(v13, v15, @"Set user version error: %s", v16, v14);
    v21 = objc_msgSend_currentVersion(self, v18, v19, v20);
    v25 = objc_msgSend_dbName(self, v22, v23, v24);
    APDatabaseError(439, v12, v21, v25, v17, 0);

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  sqlite3_finalize(v9);
  v11 = 1;
LABEL_6:

  return v11;
}

- (id)_executePragmaSelectQuery:(id)query
{
  v5 = objc_msgSend__prepareStatementForQuery_(self, a2, query, v3);
  if (v5)
  {
    v6 = v5;
    v7 = sqlite3_step(v5);
    if (v7 == 100)
    {
      v8 = sqlite3_column_int(v6, 0);
      v11 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v9, v8, v10);
    }

    else
    {
      v12 = v7;
      v13 = MEMORY[0x1E696AEC0];
      v14 = sqlite3_errstr(v7);
      v17 = objc_msgSend_stringWithFormat_(v13, v15, @"Execute Pragma Select Query error: %s", v16, v14);
      v21 = objc_msgSend_currentVersion(self, v18, v19, v20);
      v25 = objc_msgSend_dbName(self, v22, v23, v24);
      APDatabaseError(433, v12, v21, v25, v17, 0);

      v11 = 0;
    }

    sqlite3_finalize(v6);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_openDBConnectionCanRepeat:(BOOL)repeat databasePath:(id)path
{
  repeatCopy = repeat;
  v124 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = APLogForCategory(0xCuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v13 = objc_msgSend_databaseName(pathCopy, v10, v11, v12);
    *buf = 138478083;
    v121 = v8;
    v122 = 2113;
    v123 = v13;
    _os_log_impl(&dword_1BADC1000, v7, OS_LOG_TYPE_DEFAULT, "[%{private}@]: %{private}@ request to open connection.", buf, 0x16u);
  }

  v17 = objc_msgSend_databaseName(pathCopy, v14, v15, v16);
  objc_msgSend_setDbName_(self, v18, v17, v19);

  v23 = objc_msgSend_databaseFilePath(pathCopy, v20, v21, v22);
  v27 = v23;
  if (v23)
  {
    v28 = v23;
    v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);
    v36 = objc_msgSend_lock(self, v33, v34, v35);
    objc_msgSend_lock(v36, v37, v38, v39);
    if (self->_database)
    {
      v40 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = objc_opt_class();
        *buf = 138477827;
        v121 = v41;
        v42 = v41;
        _os_log_impl(&dword_1BADC1000, v40, OS_LOG_TYPE_ERROR, "[%{private}@]: Open database called when connection is already open.", buf, 0xCu);
      }

      objc_msgSend_unlock(v36, v43, v44, v45);
    }

    else
    {
      v50 = sqlite3_open(v32, &self->_database);
      objc_msgSend_setOpenConnectionResult_(self, v51, v50, v52);
      v55 = objc_msgSend__executePragmaSelectQuery_(self, v53, @"PRAGMA auto_vacuum", v54);
      if (objc_msgSend_intValue(v55, v56, v57, v58) == 2)
      {
        v61 = v55;
      }

      else
      {
        objc_msgSend__executeQueryFromString_(self, v59, @"PRAGMA auto_vacuum = INCREMENTAL", v60);
        objc_msgSend__executeQueryFromString_(self, v62, @"VACUUM", v63);
        v61 = objc_msgSend__executePragmaSelectQuery_(self, v64, @"PRAGMA auto_vacuum", v65);

        if (objc_msgSend_intValue(v61, v66, v67, v68) != 2)
        {
          v69 = APLogForCategory(0xCuLL);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 = objc_opt_class();
            v119 = v70;
            v74 = objc_msgSend_dbName(self, v71, v72, v73);
            *buf = 138478083;
            v121 = v70;
            v122 = 2113;
            v123 = v74;
            v75 = v74;
            _os_log_impl(&dword_1BADC1000, v69, OS_LOG_TYPE_DEFAULT, "[%{private}@]: %{private}@ Error couldn't set incremental vacuum.", buf, 0x16u);
          }
        }
      }

      objc_msgSend__executeQueryFromString_(self, v59, @"PRAGMA foreign_keys = ON", v60);
      if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v76, v77, v78))
      {
        sqlite3_extended_result_codes(self->_database, 1);
      }

      objc_msgSend__executeQueryFromString_(self, v79, @"PRAGMA journal_mode = WAL", v80);
      objc_msgSend__executeQueryFromString_(self, v81, @"PRAGMA synchronous = NORMAL", v82);
      sqlite3_busy_timeout(self->_database, 500);
      objc_msgSend_unlock(v36, v83, v84, v85);
      if (v50)
      {
        v86 = MEMORY[0x1E696AEC0];
        v87 = sqlite3_errstr(v50);
        v90 = objc_msgSend_stringWithFormat_(v86, v88, @"Open connection query error: %s", v89, v87);
        v94 = objc_msgSend_currentVersion(self, v91, v92, v93);
        v98 = objc_msgSend_dbName(self, v95, v96, v97);
        APDatabaseError(440, v50, v94, v98, v90, 0);

        objc_msgSend_closeDatabaseConnection(self, v99, v100, v101);
        if (v50 == 14 || v50 == 11)
        {
          objc_msgSend_removeDatabaseAtPath_(APDatabaseFileUtilities, v102, pathCopy, v103);
          v107 = objc_msgSend_currentVersion(self, v104, v105, v106);
          v111 = objc_msgSend_dbName(self, v108, v109, v110);
          APDatabaseError(443, 0xFFFFFFFFLL, v107, v111, @"Reacreating Database File on open connection.", 0);
        }

        if (repeatCopy)
        {
          objc_msgSend__openDBConnectionCanRepeat_databasePath_(self, v102, 0, pathCopy);
        }
      }

      else
      {
        v90 = APLogForCategory(0xCuLL);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v112 = objc_opt_class();
          v113 = v112;
          v117 = objc_msgSend_dbName(self, v114, v115, v116);
          *buf = 138478083;
          v121 = v112;
          v122 = 2113;
          v123 = v117;
          _os_log_impl(&dword_1BADC1000, v90, OS_LOG_TYPE_DEFAULT, "[%{private}@]: %{private}@ connection opened sucessfully.", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v46 = objc_msgSend_currentVersion(self, v24, v25, v26);
    v36 = objc_msgSend_dbName(self, v47, v48, v49);
    APDatabaseError(444, 0xFFFFFFFFLL, v46, v36, @"No Database path when trying to open connection.", 0);
  }

  v118 = *MEMORY[0x1E69E9840];
}

- (sqlite3_stmt)_prepareStatementForQuery:(id)query
{
  queryCopy = query;
  if (objc_msgSend__isConnectionValidWithErrorDescription_(self, v5, @"No connection on prepare statement.", v6))
  {
    ppStmt = 0;
    database = self->_database;
    v8 = queryCopy;
    v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
    v13 = sqlite3_prepare_v2(database, v12, -1, &ppStmt, 0);
    if (!v13)
    {
      v28 = ppStmt;
      goto LABEL_5;
    }

    v14 = v13;
    v15 = MEMORY[0x1E696AEC0];
    v16 = sqlite3_errstr(v13);
    v19 = objc_msgSend_stringWithFormat_(v15, v17, @"Prepare statement error: %s", v18, v16);
    v23 = objc_msgSend_currentVersion(self, v20, v21, v22);
    v27 = objc_msgSend_dbName(self, v24, v25, v26);
    APDatabaseError(441, v14, v23, v27, v19, 0);
  }

  v28 = 0;
LABEL_5:

  return v28;
}

- (BOOL)_bindParameters:(id)parameters toStatement:(sqlite3_stmt *)statement
{
  v150 = *MEMORY[0x1E69E9840];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  obj = parameters;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v143, v149, 16);
  if (v6)
  {
    v10 = v6;
    v11 = 1;
    v12 = *v144;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v144 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v143 + 1) + 8 * v13);
      v15 = objc_msgSend_value(v14, v7, v8, v9);

      if (v15)
      {
        v19 = objc_msgSend_type(v14, v16, v17, v18);
        if (v19 > 3)
        {
          if (v19 <= 5)
          {
            if (v19 == 4)
            {
              v75 = objc_msgSend_value(v14, v7, v8, v9);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                v129 = APLogForCategory(0xCuLL);
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_56;
                }

                goto LABEL_57;
              }

              v25 = objc_msgSend_value(v14, v77, v78, v79);
              objc_msgSend_timeIntervalSince1970(v25, v80, v81, v82);
              v84 = sqlite3_bind_double(statement, v11, v83);
              if (!v84)
              {
                goto LABEL_39;
              }

              v31 = v84;
              v85 = MEMORY[0x1E696AEC0];
              v138 = sqlite3_errstr(v84);
              objc_msgSend_stringWithFormat_(v85, v86, @"Bind Date error: %s", v87, v138);
            }

            else
            {
              v35 = objc_msgSend_value(v14, v7, v8, v9);
              objc_opt_class();
              v36 = objc_opt_isKindOfClass();

              if ((v36 & 1) == 0)
              {
                v129 = APLogForCategory(0xCuLL);
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_56;
                }

                goto LABEL_57;
              }

              v25 = objc_msgSend_value(v14, v37, v38, v39);
              v43 = objc_msgSend_intValue(v25, v40, v41, v42);
              v44 = sqlite3_bind_int(statement, v11, v43);
              if (!v44)
              {
                goto LABEL_39;
              }

              v31 = v44;
              v45 = MEMORY[0x1E696AEC0];
              v135 = sqlite3_errstr(v44);
              objc_msgSend_stringWithFormat_(v45, v46, @"Bind Bool error: %s", v47, v135);
            }

            goto LABEL_38;
          }

          if (v19 == 6)
          {
            v101 = objc_msgSend_value(v14, v7, v8, v9);
            objc_opt_class();
            v102 = objc_opt_isKindOfClass();

            if ((v102 & 1) == 0)
            {
              v129 = APLogForCategory(0xCuLL);
              if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_56;
              }

LABEL_57:

              v128 = 0;
              goto LABEL_58;
            }

            v25 = objc_msgSend_value(v14, v103, v104, v105);
            v106 = v25;
            v110 = objc_msgSend_bytes(v106, v107, v108, v109);
            v114 = objc_msgSend_length(v25, v111, v112, v113);
            v115 = sqlite3_bind_blob(statement, v11, v110, v114, 0xFFFFFFFFFFFFFFFFLL);
            if (!v115)
            {
              goto LABEL_39;
            }

            v31 = v115;
            v116 = MEMORY[0x1E696AEC0];
            v140 = sqlite3_errstr(v115);
            objc_msgSend_stringWithFormat_(v116, v117, @"Bind Blob error: %s", v118, v140);
            v119 = LABEL_38:;
            v123 = objc_msgSend_currentVersion(self, v120, v121, v122);
            v127 = objc_msgSend_dbName(self, v124, v125, v126);
            APDatabaseError(442, v31, v123, v127, v119, 0);

            goto LABEL_39;
          }

          if (v19 == 7)
          {
LABEL_26:
            v62 = objc_msgSend_value(v14, v7, v8, v9);
            objc_opt_class();
            v63 = objc_opt_isKindOfClass();

            if ((v63 & 1) == 0)
            {
              v129 = APLogForCategory(0xCuLL);
              if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_56;
              }

              goto LABEL_57;
            }

            v25 = objc_msgSend_value(v14, v64, v65, v66);
            v70 = objc_msgSend_intValue(v25, v67, v68, v69);
            v71 = sqlite3_bind_int(statement, v11, v70);
            if (!v71)
            {
              goto LABEL_39;
            }

            v31 = v71;
            v72 = MEMORY[0x1E696AEC0];
            v137 = sqlite3_errstr(v71);
            objc_msgSend_stringWithFormat_(v72, v73, @"Bind Integer error: %s", v74, v137);
            goto LABEL_38;
          }
        }

        else
        {
          if (v19 > 1)
          {
            if (v19 == 2)
            {
              v88 = objc_msgSend_value(v14, v7, v8, v9);
              objc_opt_class();
              v89 = objc_opt_isKindOfClass();

              if ((v89 & 1) == 0)
              {
                v129 = APLogForCategory(0xCuLL);
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_56;
                }

                goto LABEL_57;
              }

              v25 = objc_msgSend_value(v14, v90, v91, v92);
              objc_msgSend_doubleValue(v25, v93, v94, v95);
              v97 = sqlite3_bind_double(statement, v11, v96);
              if (!v97)
              {
                goto LABEL_39;
              }

              v31 = v97;
              v98 = MEMORY[0x1E696AEC0];
              v139 = sqlite3_errstr(v97);
              objc_msgSend_stringWithFormat_(v98, v99, @"Bind Real error: %s", v100, v139);
            }

            else
            {
              v48 = objc_msgSend_value(v14, v7, v8, v9);
              objc_opt_class();
              v49 = objc_opt_isKindOfClass();

              if ((v49 & 1) == 0)
              {
                v129 = APLogForCategory(0xCuLL);
                if (!os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_57;
                }

                goto LABEL_56;
              }

              v25 = objc_msgSend_value(v14, v50, v51, v52);
              v53 = v25;
              v57 = objc_msgSend_UTF8String(v53, v54, v55, v56);
              v58 = sqlite3_bind_text(statement, v11, v57, -1, 0);
              if (!v58)
              {
                goto LABEL_39;
              }

              v31 = v58;
              v59 = MEMORY[0x1E696AEC0];
              v136 = sqlite3_errstr(v58);
              objc_msgSend_stringWithFormat_(v59, v60, @"Bind Text error: %s", v61, v136);
            }

            goto LABEL_38;
          }

          if (!v19)
          {
            goto LABEL_26;
          }

          if (v19 == 1)
          {
            v20 = objc_msgSend_value(v14, v7, v8, v9);
            objc_opt_class();
            v21 = objc_opt_isKindOfClass();

            if ((v21 & 1) == 0)
            {
              v129 = APLogForCategory(0xCuLL);
              if (!os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_57;
              }

LABEL_56:
              v130 = objc_opt_class();
              *buf = 138477827;
              v148 = v130;
              v131 = v130;
              _os_log_impl(&dword_1BADC1000, v129, OS_LOG_TYPE_ERROR, "[%{private}@]: Error - Bind parameter column type class type mismatch.", buf, 0xCu);

              goto LABEL_57;
            }

            v25 = objc_msgSend_value(v14, v22, v23, v24);
            v29 = objc_msgSend_longValue(v25, v26, v27, v28);
            v30 = sqlite3_bind_int64(statement, v11, v29);
            if (v30)
            {
              v31 = v30;
              v32 = MEMORY[0x1E696AEC0];
              v134 = sqlite3_errstr(v30);
              objc_msgSend_stringWithFormat_(v32, v33, @"Bind Integer64 error: %s", v34, v134);
              goto LABEL_38;
            }

LABEL_39:
          }
        }
      }

      else
      {
        sqlite3_bind_null(statement, v11);
      }

      ++v11;
      if (v10 == ++v13)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v143, v149, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v128 = 1;
LABEL_58:

  v132 = *MEMORY[0x1E69E9840];
  return v128;
}

- (BOOL)_executeQueryFromString:(id)string
{
  errmsg = 0;
  database = self->_database;
  stringCopy = string;
  v10 = objc_msgSend_UTF8String(string, v7, v8, v9);
  v11 = sqlite3_exec(database, v10, 0, 0, &errmsg);
  v12 = v11;
  if (v11)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = sqlite3_errstr(v11);
    v17 = objc_msgSend_stringWithFormat_(v13, v15, @"Execute Query From String error: %s", v16, v14);
    v21 = objc_msgSend_currentVersion(self, v18, v19, v20);
    v25 = objc_msgSend_dbName(self, v22, v23, v24);
    APDatabaseError(433, v12, v21, v25, v17, 0);

    sqlite3_free(errmsg);
  }

  return v12 == 0;
}

- (BOOL)_isConnectionOpen
{
  selfCopy = self;
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);
  LOBYTE(selfCopy) = selfCopy->_database != 0;
  objc_msgSend_unlock(v5, v9, v10, v11);

  return selfCopy;
}

- (BOOL)_isConnectionValidWithErrorDescription:(id)description
{
  v45[2] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v5, v6, v7))
  {
    v11 = MEMORY[0x1E696AEC0];
    if (objc_msgSend_classCDataAvaliable(self, v8, v9, v10))
    {
      objc_msgSend_stringWithFormat_(v11, v12, @"%@", v13, @"YES");
    }

    else
    {
      objc_msgSend_stringWithFormat_(v11, v12, @"%@", v13, @"NO");
    }
    v14 = ;
    v15 = MEMORY[0x1E696AEC0];
    if (objc_msgSend_deviceUnlockedSinceBoot(APDeviceLockedTask, v16, v17, v18))
    {
      objc_msgSend_stringWithFormat_(v15, v19, @"%@", v20, @"YES");
    }

    else
    {
      objc_msgSend_stringWithFormat_(v15, v19, @"%@", v20, @"NO");
    }
    v21 = ;
    v44[0] = @"ClassCDataAvaliable";
    v44[1] = @"DeviceUnlockedSinceBoot";
    v45[0] = v14;
    v45[1] = v21;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v45, v44, 2);
  }

  else
  {
    v23 = 0;
  }

  if (self->_database)
  {
    v24 = objc_msgSend_openConnectionResult(self, v8, v9, v10);
    if (!v24)
    {
      v41 = 1;
      goto LABEL_16;
    }

    v28 = v24;
    v29 = objc_msgSend_currentVersion(self, v25, v26, v27);
    v33 = objc_msgSend_dbName(self, v30, v31, v32);
    v34 = 445;
    v35 = v28;
    v36 = v29;
  }

  else
  {
    v37 = objc_msgSend_currentVersion(self, v8, v9, v10);
    v33 = objc_msgSend_dbName(self, v38, v39, v40);
    v34 = 435;
    v35 = 0xFFFFFFFFLL;
    v36 = v37;
  }

  APDatabaseError(v34, v35, v36, v33, descriptionCopy, v23);

  v41 = 0;
LABEL_16:

  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

@end