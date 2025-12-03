@interface CKSQLiteCompiledStatement
+ (id)_statementForFetchingMinMax:(id)max forColumn:(id)column inTable:(id)table;
+ (id)statementForCountingRowsInTable:(id)table;
+ (id)statementForDeletingInTable:(id)table returning:(id)returning;
+ (id)statementForFetchingAllTableNamesInDatabase:(id)database;
+ (id)statementForFetchingColumns:(id)columns distinct:(BOOL)distinct inTable:(id)table;
+ (id)statementForFetchingDanglingTableNamesInDatabase:(id)database tocTableName:(id)name tocDBPropertyName:(id)propertyName;
+ (id)statementForInserting:(id)inserting orUpdating:(id)updating inTable:(id)table;
+ (id)statementForSizingColumn:(id)column inTable:(id)table;
+ (id)statementForSummingColumn:(id)column inTable:(id)table;
+ (id)statementForUpdatingColumns:(id)columns inTable:(id)table;
- (BOOL)overridePropertyInfoForProperty:(id)property newResultType:(unsigned int)type;
- (BOOL)step:(id *)step;
- (CKSQLiteCompiledStatement)initWithDatabase:(id)database sql:(id)sql;
- (CKSQLiteCompiledStatement)initWithDatabase:(id)database sql:(id)sql resultColumn:(id)column resultColumnType:(unsigned int)type;
- (CKSQLiteCompiledStatement)initWithTable:(id)table sql:(id)sql;
- (CKSQLiteCompiledStatement)initWithTable:(id)table sql:(id)sql resultColumn:(id)column resultColumnType:(unsigned int)type;
- (CKSQLiteCompiledStatement)initWithTable:(id)table sql:(id)sql tableColumnResults:(id)results;
- (CKSQLiteTable)table;
- (NSNumber)limit;
- (NSNumber)offset;
- (id)_fillFetchedValues;
- (id)addBindingVariable:(id)variable withAssociatedProperty:(id)property;
- (id)boundObjects;
- (id)cksqlcs_appendSQLConstantValueToString:(id)string;
- (id)compile;
- (id)description;
- (id)doSearchValueBinding;
- (id)fetchedColumns;
- (id)fetchedValues;
- (id)propertyDecoder:(id *)decoder;
- (id)searchBindingsDescription;
- (id)sqlValueForVariable:(id)variable;
- (void)dealloc;
- (void)enumerateResultColumnsWithFetchedValues:(id)values block:(id)block;
- (void)invalidate;
- (void)orderByProperty:(id)property ascending:(BOOL)ascending;
- (void)resetAndClearBindings;
- (void)setLimit:(id)limit;
- (void)setOffset:(id)offset;
- (void)setSearchPredicate:(id)predicate forProperties:(id)properties;
- (void)setSearchValues:(id)values;
@end

@implementation CKSQLiteCompiledStatement

- (id)_fillFetchedValues
{
  v75 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_table);
  if (self->_resultInfoCount)
  {
    v4 = 0;
    v5 = @"CKErrorDomain";
    v6 = 0x1E696A000uLL;
    v7 = 0x1E696A000uLL;
    while (1)
    {
      if (sqlite3_column_type(self->_handle, v4) == 5)
      {
        goto LABEL_4;
      }

      v10 = objc_opt_class();
      InstanceSize = class_getInstanceSize(v10);
      v13 = self + InstanceSize;
      v14 = *(&self->super.isa + 8 * self->_resultInfoCount + 4 * v4 + InstanceSize);
      if (*(&self->super.isa + 8 * self->_resultInfoCount + 4 * v4 + InstanceSize) <= 0x5Fu)
      {
        break;
      }

      if (*(&self->super.isa + 8 * self->_resultInfoCount + 4 * v4 + InstanceSize) < 0x6Bu)
      {
        goto LABEL_7;
      }

      if (*(&self->super.isa + 8 * self->_resultInfoCount + 4 * v4 + InstanceSize) <= 0x85u)
      {
        if ((v14 - 107) >= 2)
        {
          if (v14 != 132)
          {
LABEL_44:
            v19 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v12, v5, 1, @"Fetched unknown type %u", v14);
            v9 = 0;
            objc_msgSend_replacePointerAtIndex_withPointer_(self->_fetchedValues, v65, v4, 0);
            goto LABEL_11;
          }

          v45 = sqlite3_column_blob(self->_handle, v4);
          if (v45)
          {
            v48 = v45;
            v49 = sqlite3_column_bytes(self->_handle, v4);
            objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v50, v48, v49);
          }

          else
          {
            objc_msgSend_data(MEMORY[0x1E695DEF0], v46, v47);
          }
          v18 = ;
        }

        else
        {
LABEL_24:
          v22 = *(v7 + 3480);
          v23 = sqlite3_column_double(self->_handle, v4);
          v18 = objc_msgSend_numberWithDouble_(v22, v24, v25, v23);
        }

LABEL_8:
        v9 = v18;
LABEL_9:
        v19 = 0;
        goto LABEL_10;
      }

      if (v14 == 134)
      {
        v9 = sqlite3_column_blob(self->_handle, v4);
        if (!v9)
        {
          goto LABEL_9;
        }

        v59 = sqlite3_column_bytes(self->_handle, v4);
        if (v59 == 16)
        {
          v60 = objc_alloc(MEMORY[0x1E696AFB0]);
          v18 = objc_msgSend_initWithUUIDBytes_(v60, v61, v9);
          goto LABEL_8;
        }

        v66 = v59;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v67 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          v74 = v66;
          _os_log_fault_impl(&dword_1883EA000, v67, OS_LOG_TYPE_FAULT, "Invalid UUID length in database: %d", buf, 8u);
        }

LABEL_4:
        v9 = 0;
        goto LABEL_9;
      }

      if (v14 != 135)
      {
        goto LABEL_44;
      }

      v34 = objc_autoreleasePoolPush();
      v9 = sqlite3_column_blob(self->_handle, v4);
      if (v9)
      {
        v35 = sqlite3_column_bytes(self->_handle, v4);
        v37 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v36, v9, v35);
        v70 = v34;
        v38 = v6;
        v39 = v5;
        v40 = *&v13[8 * v4];
        v41 = objc_opt_class();
        v43 = objc_msgSend_objectClassesForProperty_(v41, v42, v40);
        v71 = 0;
        v9 = objc_msgSend_unarchivedObjectOfClass_fromDatabaseArchive_error_(CKSQLiteDatabase, v44, v43, v37, &v71);
        v19 = v71;

        v5 = v39;
        v6 = v38;
        v34 = v70;

        v7 = 0x1E696A000;
      }

      else
      {
        v19 = 0;
      }

      objc_autoreleasePoolPop(v34);
LABEL_10:
      objc_msgSend_replacePointerAtIndex_withPointer_(self->_fetchedValues, v8, v4, v9);
LABEL_11:

      if (++v4 >= self->_resultInfoCount || v19 != 0)
      {
        goto LABEL_55;
      }
    }

    if (*(&self->super.isa + 8 * self->_resultInfoCount + 4 * v4 + InstanceSize) > 4u)
    {
      if (v14 == 5)
      {
        v62 = sqlite3_column_double(self->_handle, v4);
        v18 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v63, v64, v62);
        goto LABEL_8;
      }

      if (v14 == 8)
      {
        v51 = *(v7 + 3480);
        v52 = sqlite3_column_int64(self->_handle, v4);
        v55 = objc_msgSend_numberWithLongLong_(v51, v53, v52);
        if (v55)
        {
          objc_msgSend_tableForReferenceProperty_(WeakRetained, v54, *&v13[8 * v4]);
          v57 = v56 = v7;
          v72 = 0;
          v9 = objc_msgSend_referentForDatabaseReferenceValue_error_(v57, v58, v55, &v72);
          v19 = v72;

          v7 = v56;
        }

        else
        {
          v9 = 0;
          v19 = 0;
        }

        goto LABEL_10;
      }

      if (v14 != 9)
      {
        goto LABEL_44;
      }

      v26 = sqlite3_column_text(self->_handle, v4);
      if (v26)
      {
        v27 = v26;
        v28 = v7;
        v29 = objc_alloc(MEMORY[0x1E695DFF8]);
        v31 = objc_msgSend_stringWithUTF8String_(*(v6 + 3776), v30, v27);
        v32 = v29;
        v7 = v28;
        v9 = objc_msgSend_initWithString_(v32, v33, v31);

        goto LABEL_9;
      }
    }

    else
    {
      if (v14 == 1)
      {
LABEL_7:
        v15 = *(v7 + 3480);
        v16 = sqlite3_column_int64(self->_handle, v4);
        v18 = objc_msgSend_numberWithLongLong_(v15, v17, v16);
        goto LABEL_8;
      }

      if (v14 == 2)
      {
        goto LABEL_24;
      }

      if (v14 != 3)
      {
        goto LABEL_44;
      }

      v21 = sqlite3_column_text(self->_handle, v4);
      if (v21)
      {
        v18 = objc_msgSend_stringWithUTF8String_(*(v6 + 3776), v8, v21);
        goto LABEL_8;
      }
    }

    goto LABEL_4;
  }

  v19 = 0;
LABEL_55:

  v68 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)resetAndClearBindings
{
  sqlite3_reset(self->_handle);
  sqlite3_clear_bindings(self->_handle);
  boundObjects = self->_boundObjects;
  self->_boundObjects = 0;

  searchValues = self->_searchValues;
  self->_searchValues = 0;

  self->_needsSearchBinding = 0;
  decoder = self->_decoder;
  self->_decoder = 0;

  fetchedValues = self->_fetchedValues;
  self->_fetchedValues = 0;

  if (self->_label)
  {
    WeakRetained = objc_loadWeakRetained(&self->_table);
    objc_msgSend_cacheStatement_(WeakRetained, v9, self);
  }

  else
  {

    objc_msgSend_invalidate(self, v7, v8);
  }
}

- (CKSQLiteTable)table
{
  WeakRetained = objc_loadWeakRetained(&self->_table);

  return WeakRetained;
}

- (id)compile
{
  if (!self->_db)
  {
    v4 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, a2, @"CKErrorDomain", 1, @"statement invalidated");
    goto LABEL_31;
  }

  if (self->_handle)
  {
    v4 = 0;
    goto LABEL_31;
  }

  setup = self->_setup;
  if (!setup)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKSQLiteCompiledStatement.m", 623, @"Expected to have setup info");

    setup = self->_setup;
  }

  if (setup->_wherePredicate || setup->_orderBySQL || setup->_limit || setup->_offset || setup->_returnProperties)
  {
    v6 = objc_msgSend_mutableCopy(setup->_sql, a2, v2);
    v7 = v6;
    setup = self->_setup;
    if (setup->_wherePredicate)
    {
      objc_msgSend_appendString_(v6, a2, @" WHERE ");
      v9 = objc_msgSend_cksqlcs_appendSQLToString_statement_(self->_setup->_wherePredicate, v8, v7, self);
      if (v9)
      {
        v4 = v9;
        v11 = 0;
        if (!v7)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      setup = self->_setup;
    }
  }

  else
  {
    v7 = 0;
  }

  orderBySQL = setup->_orderBySQL;
  if (orderBySQL)
  {
    objc_msgSend_appendString_(v7, a2, orderBySQL);
    setup = self->_setup;
  }

  if (setup->_limit)
  {
    objc_msgSend_appendFormat_(v7, a2, @" LIMIT %@", setup->_limit);
    setup = self->_setup;
  }

  if (setup->_offset)
  {
    objc_msgSend_appendFormat_(v7, a2, @" OFFSET %@", setup->_offset);
    setup = self->_setup;
  }

  if (objc_msgSend_count(setup->_returnProperties, a2, orderBySQL))
  {
    v13 = objc_msgSend_componentsJoinedByString_(self->_setup->_returnProperties, a2, @",");
    objc_msgSend_appendFormat_(v7, v14, @" RETURNING %@", v13);
  }

  v4 = 0;
  v11 = 1;
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_26:
  v15 = objc_msgSend_copy(v7, a2, v10);
  v16 = self->_setup;
  sql = v16->_sql;
  v16->_sql = v15;

LABEL_27:
  if (v11)
  {
    db = self->_db;
    v19 = self->_setup->_sql;
    v27 = 0;
    v20 = objc_msgSend_compiledStatementWithSQL_error_(db, a2, v19, &v27);
    v4 = v27;
    self->_handle = v20;
  }

  if (v4)
  {
    objc_msgSend_invalidate(self, v21, v22);
  }

LABEL_31:

  return v4;
}

- (id)boundObjects
{
  boundObjects = self->_boundObjects;
  if (!boundObjects)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_boundObjects;
    self->_boundObjects = v4;

    boundObjects = self->_boundObjects;
  }

  return boundObjects;
}

- (id)doSearchValueBinding
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1883EE1DC;
  v11 = sub_1883EF794;
  v12 = 0;
  searchValues = self->_searchValues;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18843EA28;
  v6[3] = &unk_1E70C0A78;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(searchValues, a2, v6);
  self->_needsSearchBinding = 0;
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)invalidate
{
  handle = self->_handle;
  if (handle)
  {
    self->_handle = 0;
    boundObjects = self->_boundObjects;
    self->_boundObjects = 0;

    objc_msgSend_finalizeHandle_(self->_db, v5, handle);
  }

  db = self->_db;
  self->_db = 0;
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CKSQLiteCompiledStatement;
  [(CKSQLiteCompiledStatement *)&v4 dealloc];
}

- (id)fetchedValues
{
  v3 = objc_msgSend_copy(self->_fetchedValues, a2, v2);

  return v3;
}

+ (id)statementForFetchingAllTableNamesInDatabase:(id)database
{
  databaseCopy = database;
  v6 = objc_msgSend_allocWithResultCapacity_(self, v5, 1);
  v8 = objc_msgSend_initWithDatabase_sql_resultColumn_resultColumnType_(v6, v7, databaseCopy, @"SELECT name FROM sqlite_master WHERE type = 'table' AND name NOT LIKE 'sqlite_%%'", @"name", 3);

  return v8;
}

+ (id)statementForFetchingDanglingTableNamesInDatabase:(id)database tocTableName:(id)name tocDBPropertyName:(id)propertyName
{
  v8 = MEMORY[0x1E696AEC0];
  databaseCopy = database;
  v11 = objc_msgSend_stringWithFormat_(v8, v10, @"SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%%' AND name NOT IN (SELECT %@ FROM %@)", propertyName, name);
  v13 = objc_msgSend_allocWithResultCapacity_(self, v12, 1);
  v15 = objc_msgSend_initWithDatabase_sql_resultColumn_resultColumnType_(v13, v14, databaseCopy, v11, @"name", 3);

  return v15;
}

+ (id)statementForCountingRowsInTable:(id)table
{
  v4 = MEMORY[0x1E696AD60];
  tableCopy = table;
  v8 = objc_msgSend_dbTableName(tableCopy, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"SELECT COUNT (*) FROM '%@'", v8);

  v12 = objc_msgSend_allocWithResultCapacity_(self, v11, 1);
  v14 = objc_msgSend_initWithTable_sql_resultColumn_resultColumnType_(v12, v13, tableCopy, v10, @"count", 1);

  return v14;
}

+ (id)statementForSummingColumn:(id)column inTable:(id)table
{
  v6 = MEMORY[0x1E696AD60];
  tableCopy = table;
  columnCopy = column;
  v11 = objc_msgSend_dbTableName(tableCopy, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v6, v12, @"SELECT SUM (%@) FROM '%@'", columnCopy, v11);

  v15 = objc_msgSend_allocWithResultCapacity_(self, v14, 1);
  v17 = objc_msgSend_initWithTable_sql_resultColumn_resultColumnType_(v15, v16, tableCopy, v13, @"sum", 1);

  return v17;
}

+ (id)statementForSizingColumn:(id)column inTable:(id)table
{
  v6 = MEMORY[0x1E696AD60];
  tableCopy = table;
  columnCopy = column;
  v11 = objc_msgSend_dbTableName(tableCopy, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v6, v12, @"SELECT LENGTH (%@) FROM '%@'", columnCopy, v11);

  v15 = objc_msgSend_allocWithResultCapacity_(self, v14, 1);
  v17 = objc_msgSend_initWithTable_sql_resultColumn_resultColumnType_(v15, v16, tableCopy, v13, @"size", 1);

  return v17;
}

+ (id)statementForUpdatingColumns:(id)columns inTable:(id)table
{
  v33 = *MEMORY[0x1E69E9840];
  columnsCopy = columns;
  tableCopy = table;
  v7 = MEMORY[0x1E696AD60];
  v10 = objc_msgSend_dbTableName(tableCopy, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v7, v11, @"UPDATE '%@' SET ", v10);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = columnsCopy;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v28, v32, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v29;
    v19 = 1;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v28 + 1) + 8 * i);
        if ((v19 & 1) == 0)
        {
          objc_msgSend_appendString_(v12, v16, @",");
        }

        objc_msgSend_appendFormat_(v12, v16, @"%@=:%@", v21, v21);
        v19 = 0;
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v28, v32, 16);
      v19 = 0;
    }

    while (v17);
  }

  v22 = [self alloc];
  v24 = objc_msgSend_initWithTable_sql_(v22, v23, tableCopy, v12);

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)statementForInserting:(id)inserting orUpdating:(id)updating inTable:(id)table
{
  v54 = *MEMORY[0x1E69E9840];
  insertingCopy = inserting;
  updatingCopy = updating;
  tableCopy = table;
  v11 = MEMORY[0x1E696AD60];
  v14 = objc_msgSend_dbTableName(tableCopy, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v11, v15, @"INSERT INTO '%@' ("), v14;

  v18 = objc_msgSend_componentsJoinedByString_(insertingCopy, v17, @",");
  objc_msgSend_appendString_(v16, v19, v18);

  objc_msgSend_appendString_(v16, v20, @" VALUES (:"));
  v22 = objc_msgSend_componentsJoinedByString_(insertingCopy, v21, @",:");
  objc_msgSend_appendString_(v16, v23, v22);

  objc_msgSend_appendString_(v16, v24, @""));
  if (objc_msgSend_count(updatingCopy, v25, v26))
  {
    selfCopy = self;
    v48 = insertingCopy;
    objc_msgSend_appendString_(v16, v27, @" ON CONFLICT DO UPDATE SET ");
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = updatingCopy;
    v29 = updatingCopy;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v49, v53, 16);
    if (v31)
    {
      v33 = v31;
      v34 = *v50;
      v35 = 1;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v50 != v34)
          {
            objc_enumerationMutation(v29);
          }

          v37 = *(*(&v49 + 1) + 8 * i);
          if ((v35 & 1) == 0)
          {
            objc_msgSend_appendString_(v16, v32, @", ");
          }

          objc_msgSend_appendFormat_(v16, v32, @"%@=excluded.%@", v37, v37);
          v35 = 0;
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v49, v53, 16);
        v35 = 0;
      }

      while (v33);
    }

    updatingCopy = v47;
    insertingCopy = v48;
    self = selfCopy;
  }

  v38 = objc_msgSend_primaryKey(tableCopy, v27, v28);
  objc_msgSend_appendFormat_(v16, v39, @" RETURNING %@", v38);
  v41 = objc_msgSend_allocWithResultCapacity_(self, v40, 1);
  v43 = objc_msgSend_initWithTable_sql_resultColumn_resultColumnType_(v41, v42, tableCopy, v16, v38, 1);

  v44 = *MEMORY[0x1E69E9840];

  return v43;
}

+ (id)statementForFetchingColumns:(id)columns distinct:(BOOL)distinct inTable:(id)table
{
  distinctCopy = distinct;
  columnsCopy = columns;
  v9 = MEMORY[0x1E696AD60];
  tableCopy = table;
  v12 = objc_msgSend_stringWithFormat_(v9, v11, @"SELECT ");
  v14 = v12;
  if (distinctCopy)
  {
    objc_msgSend_appendString_(v12, v13, @"DISTINCT ");
  }

  else
  {
    objc_msgSend_appendString_(v12, v13, @"ALL ");
  }

  if (objc_msgSend_count(columnsCopy, v15, v16))
  {
    v18 = objc_msgSend_componentsJoinedByString_(columnsCopy, v17, @",");
    objc_msgSend_appendString_(v14, v19, v18);
  }

  else
  {
    objc_msgSend_appendString_(v14, v17, @"(1)");
  }

  v22 = objc_msgSend_dbTableName(tableCopy, v20, v21);
  objc_msgSend_appendFormat_(v14, v23, @" FROM '%@'", v22);

  v26 = objc_msgSend_count(columnsCopy, v24, v25);
  v28 = objc_msgSend_allocWithResultCapacity_(self, v27, v26);
  v30 = objc_msgSend_initWithTable_sql_tableColumnResults_(v28, v29, tableCopy, v14, columnsCopy);

  return v30;
}

+ (id)_statementForFetchingMinMax:(id)max forColumn:(id)column inTable:(id)table
{
  v8 = MEMORY[0x1E696AD60];
  tableCopy = table;
  columnCopy = column;
  maxCopy = max;
  v14 = objc_msgSend_dbTableName(tableCopy, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v8, v15, @"SELECT %@(%@) FROM '%@'", maxCopy, columnCopy, v14);

  v18 = objc_msgSend_allocWithResultCapacity_(self, v17, 1);
  v19 = objc_opt_class();
  v21 = objc_msgSend_propertyInfo_(v19, v20, columnCopy);
  v23 = objc_msgSend_initWithTable_sql_resultColumn_resultColumnType_(v18, v22, tableCopy, v16, columnCopy, v21);

  return v23;
}

+ (id)statementForDeletingInTable:(id)table returning:(id)returning
{
  returningCopy = returning;
  v7 = MEMORY[0x1E696AD60];
  tableCopy = table;
  v11 = objc_msgSend_dbTableName(tableCopy, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v7, v12, @"DELETE FROM '%@'", v11);

  v16 = objc_msgSend_count(returningCopy, v14, v15);
  v18 = objc_msgSend_allocWithResultCapacity_(self, v17, v16);
  v20 = objc_msgSend_initWithTable_sql_tableColumnResults_(v18, v19, tableCopy, v13, returningCopy);

  v21 = v20[3];
  v22 = *(v21 + 48);
  *(v21 + 48) = returningCopy;

  return v20;
}

- (CKSQLiteCompiledStatement)initWithDatabase:(id)database sql:(id)sql
{
  databaseCopy = database;
  sqlCopy = sql;
  v14.receiver = self;
  v14.super_class = CKSQLiteCompiledStatement;
  v9 = [(CKSQLiteCompiledStatement *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_db, database);
    v11 = objc_alloc_init(CKSQLiteCompiledStatementSetup);
    setup = v10->_setup;
    v10->_setup = v11;

    objc_storeStrong(&v10->_setup->_sql, sql);
  }

  return v10;
}

- (CKSQLiteCompiledStatement)initWithTable:(id)table sql:(id)sql
{
  tableCopy = table;
  sqlCopy = sql;
  v10 = objc_msgSend_db(tableCopy, v8, v9);
  v12 = objc_msgSend_initWithDatabase_sql_(self, v11, v10, sqlCopy);

  if (v12)
  {
    objc_storeWeak(&v12->_table, tableCopy);
  }

  return v12;
}

- (CKSQLiteCompiledStatement)initWithDatabase:(id)database sql:(id)sql resultColumn:(id)column resultColumnType:(unsigned int)type
{
  typeCopy = type;
  columnCopy = column;
  v12 = objc_msgSend_initWithDatabase_sql_(self, v11, database, sql);
  sub_18866F29C(v12, columnCopy, typeCopy);

  return v12;
}

- (CKSQLiteCompiledStatement)initWithTable:(id)table sql:(id)sql resultColumn:(id)column resultColumnType:(unsigned int)type
{
  typeCopy = type;
  columnCopy = column;
  v12 = objc_msgSend_initWithTable_sql_(self, v11, table, sql);
  sub_18866F29C(v12, columnCopy, typeCopy);

  return v12;
}

- (CKSQLiteCompiledStatement)initWithTable:(id)table sql:(id)sql tableColumnResults:(id)results
{
  tableCopy = table;
  resultsCopy = results;
  v11 = objc_msgSend_initWithTable_sql_(self, v10, tableCopy, sql);
  v12 = v11;
  if (v11)
  {
    objc_storeWeak((v11 + 88), tableCopy);
    v13 = objc_opt_class();
    v12->_resultInfoCount = objc_msgSend_count(resultsCopy, v14, v15);
    v16 = objc_opt_class();
    InstanceSize = class_getInstanceSize(v16);
    resultInfoCount = v12->_resultInfoCount;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_18866F4F0;
    v21[3] = &unk_1E70C0A50;
    v21[4] = v12 + InstanceSize;
    v21[5] = v12 + 8 * resultInfoCount + InstanceSize;
    v21[6] = v13;
    objc_msgSend_enumerateObjectsUsingBlock_(resultsCopy, v19, v21);
  }

  return v12;
}

- (BOOL)overridePropertyInfoForProperty:(id)property newResultType:(unsigned int)type
{
  propertyCopy = property;
  v7 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v7);
  resultInfoCount = self->_resultInfoCount;
  if (resultInfoCount)
  {
    v11 = 0;
    v12 = self + InstanceSize;
    v13 = &self->super.isa + 8 * resultInfoCount + InstanceSize;
    while (!objc_msgSend_isEqualToString_(*&v12[8 * v11], v9, propertyCopy))
    {
      if (++v11 >= self->_resultInfoCount)
      {
        goto LABEL_5;
      }
    }

    *&v13[4 * v11] = type;
    v14 = 1;
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14;
}

- (void)setLimit:(id)limit
{
  limitCopy = limit;
  setup = self->_setup;
  if (!setup)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKSQLiteCompiledStatement.m", 400, @"Expected to have setup info");

    setup = self->_setup;
  }

  limit = setup->_limit;
  setup->_limit = limitCopy;
}

- (NSNumber)limit
{
  setup = self->_setup;
  if (!setup)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CKSQLiteCompiledStatement.m", 405, @"Expected to have setup info");

    setup = self->_setup;
  }

  limit = setup->_limit;

  return limit;
}

- (void)setOffset:(id)offset
{
  offsetCopy = offset;
  setup = self->_setup;
  if (!setup)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKSQLiteCompiledStatement.m", 410, @"Expected to have setup info");

    setup = self->_setup;
  }

  offset = setup->_offset;
  setup->_offset = offsetCopy;
}

- (NSNumber)offset
{
  setup = self->_setup;
  if (!setup)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CKSQLiteCompiledStatement.m", 415, @"Expected to have setup info");

    setup = self->_setup;
  }

  offset = setup->_offset;

  return offset;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"%@<%p> label=%@", v5, self, self->_label);

  setup = self->_setup;
  if (setup)
  {
    objc_msgSend_appendFormat_(v7, v8, @" sql=%@", setup->_sql);
  }

  boundObjects = self->_boundObjects;
  if (boundObjects)
  {
    v11 = objc_msgSend_arrayByApplyingSelector_(boundObjects, v8, sel_description);
    v13 = objc_msgSend_componentsJoinedByString_(v11, v12, @", ");
    objc_msgSend_appendFormat_(v7, v14, @" Bindings: %@", v13);
  }

  return v7;
}

- (id)fetchedColumns
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = objc_msgSend_initWithCapacity_(v3, v4, self->_resultInfoCount);
  v6 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v6);
  if (self->_resultInfoCount)
  {
    v9 = 0;
    v10 = self + InstanceSize;
    do
    {
      objc_msgSend_addObject_(v5, v8, *&v10[8 * v9++]);
    }

    while (v9 < self->_resultInfoCount);
  }

  return v5;
}

- (id)propertyDecoder:(id *)decoder
{
  decoder = self->_decoder;
  if (!decoder)
  {
    v6 = [CKSQLiteCompiledStatementDecoder alloc];
    v8 = objc_msgSend_initWithStatement_(v6, v7, self);
    v9 = self->_decoder;
    self->_decoder = v8;

    decoder = self->_decoder;
  }

  v10 = objc_msgSend_fillProperties(decoder, a2, decoder);
  v11 = v10;
  if (decoder && v10)
  {
    v12 = v10;
    *decoder = v11;
    v13 = self->_decoder;
    self->_decoder = 0;
  }

  v14 = self->_decoder;
  v15 = v14;

  return v14;
}

- (void)setSearchPredicate:(id)predicate forProperties:(id)properties
{
  predicateCopy = predicate;
  propertiesCopy = properties;
  if (!self->_setup)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKSQLiteCompiledStatement.m", 484, @"Expected to have setup info");
  }

  if (self->_handle)
  {
    v16 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v8, v9);
    v17 = [CKSignificantIssue alloc];
    v18 = [CKSourceCodeLocation alloc];
    v20 = objc_msgSend_initWithFilePath_lineNumber_(v18, v19, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteCompiledStatement.m", 486);
    v22 = objc_msgSend_initWithSourceCodeLocation_format_(v17, v21, v20, @"cannot add a search predicate to a compiled statement");
    objc_msgSend_handleSignificantIssue_actions_(v16, v23, v22, 0);

    v25 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24, @"cannot add a search predicate to a compiled statement");
    objc_msgSend_UTF8String(v25, v26, v27);
    _os_crash();
    __break(1u);
  }

  else
  {
    setup = self->_setup;
    wherePredicate = setup->_wherePredicate;
    setup->_wherePredicate = predicateCopy;
    v28 = predicateCopy;

    searchProperties = self->_searchProperties;
    self->_searchProperties = propertiesCopy;
  }
}

- (id)addBindingVariable:(id)variable withAssociatedProperty:(id)property
{
  variableCopy = variable;
  propertyCopy = property;
  WeakRetained = objc_loadWeakRetained(&self->_table);
  v9 = objc_opt_class();
  v11 = objc_msgSend_propertyInfo_(v9, v10, propertyCopy);

  if (v11)
  {
    bindingTypesByVariable = self->_bindingTypesByVariable;
    if (!bindingTypesByVariable)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = self->_bindingTypesByVariable;
      self->_bindingTypesByVariable = v14;

      bindingTypesByVariable = self->_bindingTypesByVariable;
    }

    if (v11 == 8)
    {
      objc_msgSend_setObject_forKey_(bindingTypesByVariable, v12, propertyCopy, variableCopy);
    }

    else
    {
      v17 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v12, v11);
      objc_msgSend_setObject_forKey_(bindingTypesByVariable, v18, v17, variableCopy);
    }

    v16 = 0;
  }

  else
  {
    v16 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v12, @"CKErrorDomain", 1, @"type not found for property %@ (associated with predicate variable %@)", propertyCopy, variableCopy);
  }

  return v16;
}

- (void)setSearchValues:(id)values
{
  valuesCopy = values;
  objc_storeStrong(&self->_searchValues, values);
  if (objc_msgSend_count(valuesCopy, v5, v6))
  {
    self->_needsSearchBinding = 1;
  }
}

- (id)sqlValueForVariable:(id)variable
{
  if (self->_handle)
  {
    v3 = objc_msgSend_objectForKey_(self->_searchValues, a2, variable);
    if (v3)
    {
      v6 = v3;
      objc_msgSend_description(v3, v4, v5);
    }

    else
    {
      v6 = @"(nil)";
      objc_msgSend_description(@"(nil)", v4, v5);
    }
    v7 = ;
  }

  else
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"@%@", variable);
  }

  return v7;
}

- (id)searchBindingsDescription
{
  setup = self->_setup;
  if (setup)
  {
    if (setup->_wherePredicate)
    {
      v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v6 = objc_msgSend_cksqlcs_appendSQLToString_statement_(self->_setup->_wherePredicate, v5, v4, self);
    }

    else
    {
      v4 = @"()";
    }
  }

  else
  {
    v4 = @"(<search bindings not available>)";
  }

  return v4;
}

- (void)orderByProperty:(id)property ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  propertyCopy = property;
  if (!self->_handle)
  {
    v22 = propertyCopy;
    setup = self->_setup;
    if (!setup)
    {
      v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CKSQLiteCompiledStatement.m", 601, @"Expected to have setup info");

      setup = self->_setup;
    }

    orderBySQL = setup->_orderBySQL;
    if (orderBySQL)
    {
      objc_msgSend_appendString_(orderBySQL, v8, @",");
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E696AD60]);
      v15 = objc_msgSend_initWithString_(v13, v14, @" ORDER BY ");
      v16 = self->_setup;
      v17 = v16->_orderBySQL;
      v16->_orderBySQL = v15;
    }

    objc_msgSend_appendString_(self->_setup->_orderBySQL, v12, v22);
    v19 = self->_setup->_orderBySQL;
    if (ascendingCopy)
    {
      objc_msgSend_appendString_(v19, v18, @" ASC");
    }

    else
    {
      objc_msgSend_appendString_(v19, v18, @" DESC");
    }

    propertyCopy = v22;
  }
}

- (BOOL)step:(id *)step
{
  if (!self->_fetchedValues)
  {
    v5 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x1E696AE08], a2, step);
    fetchedValues = self->_fetchedValues;
    self->_fetchedValues = v5;

    objc_msgSend_setCount_(self->_fetchedValues, v7, self->_resultInfoCount);
  }

  if (!self->_handle && (objc_msgSend_compile(self, a2, step), (v8 = objc_claimAutoreleasedReturnValue()) != 0) || self->_needsSearchBinding && (objc_msgSend_doSearchValueBinding(self, a2, step), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v8;
    goto LABEL_12;
  }

  handle = self->_handle;
  if (handle)
  {
    v12 = sqlite3_step(handle);
    if (v12 == 100)
    {
      v13 = objc_msgSend__fillFetchedValues(self, v10, v11);
      if (!v13)
      {
        v15 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      if (v12 == 101)
      {
        goto LABEL_9;
      }

      v13 = objc_msgSend_sqlErrorWithMessage_(self->_db, v10, @"sqlite3_step() failed");
      if (!v13)
      {
        goto LABEL_17;
      }
    }

LABEL_12:
    if (step)
    {
      v14 = v13;
      v15 = 0;
      *step = v13;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_9:
  v13 = 0;
LABEL_17:
  v15 = 0;
LABEL_18:
  WeakRetained = objc_loadWeakRetained(&self->_table);
  v19 = objc_msgSend_logOperations(WeakRetained, v17, v18);

  if ((v19 & 1) == 0)
  {
    setup = self->_setup;
    self->_setup = 0;
  }

  return v15;
}

- (void)enumerateResultColumnsWithFetchedValues:(id)values block:(id)block
{
  valuesCopy = values;
  blockCopy = block;
  v8 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v8);
  resultInfoCount = self->_resultInfoCount;
  v18 = 0;
  if (resultInfoCount)
  {
    v12 = 0;
    v13 = self + InstanceSize;
    v14 = &self->super.isa + 8 * resultInfoCount + InstanceSize;
    do
    {
      v15 = *&v13[8 * v12];
      v16 = *&v14[4 * v12];
      v17 = objc_msgSend_pointerAtIndex_(valuesCopy, v10, v12);
      blockCopy[2](blockCopy, v15, v16, v17, &v18);
      ++v12;
    }

    while (v12 < self->_resultInfoCount && (v18 & 1) == 0);
  }
}

- (id)cksqlcs_appendSQLConstantValueToString:(id)string
{
  stringCopy = string;
  if (self->_needsSearchBinding)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CKSQLiteCompiledStatement.m", 933, @"Cannot generate constant SQL for a statement with value bindings");
  }

  v8 = objc_msgSend_compile(self, v5, v6);
  objc_msgSend_appendFormat_(stringCopy, v9, @"(%@)", self->_setup->_sql);

  return 0;
}

@end