@interface CKSQLiteTOCTableGroup
+ (id)TOCTableGroupInDatabase:(id)a3;
+ (id)TOCTableGroupInDatabase:(id)a3 options:(unint64_t)a4;
+ (id)createNewTOCInDatabase:(id)a3;
+ (id)createTOCInDatabase:(id)a3 options:(unint64_t)a4 error:(id *)a5;
+ (id)genericTOCTableGroupInDatabase:(id)a3 error:(id *)a4;
+ (id)migrationTOCInDatabase:(id)a3 error:(id *)a4;
- (BOOL)needsMigration:(id *)a3;
- (CKSQLiteTOCTableGroup)initWithName:(id)a3 options:(unint64_t)a4 database:(id)a5;
- (id)_tableClasses;
- (id)_tablesByNameInitializer;
- (id)addTOCEntriesForTOCTableGroup:(id)a3;
- (id)isUseable;
- (id)migrateDataFromGroup:(id)a3;
- (id)prepareNewlyOpenedDatabase;
- (id)resetValidation;
- (id)setLastUsedEpoch:(int64_t)a3;
- (id)tocImageInfoTable;
- (id)tocTable;
- (id)tocTableGroupTable;
- (void)databaseValidationSuccess;
- (void)removeDeletedGroups;
@end

@implementation CKSQLiteTOCTableGroup

- (id)tocTableGroupTable
{
  v4 = objc_msgSend_logicalTableName(CKSQLiteTOCTableGroupTable, a2, v2);
  v6 = objc_msgSend_tableWithName_(self, v5, v4);

  return v6;
}

- (id)tocTable
{
  v4 = objc_msgSend_logicalTableName(CKSQLiteTOCTable, a2, v2);
  v6 = objc_msgSend_tableWithName_(self, v5, v4);

  return v6;
}

- (id)addTOCEntriesForTOCTableGroup:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_tocTableGroupTable(self, v5, v6);
  v10 = objc_msgSend_date(MEMORY[0x1E695DF00], v8, v9);
  objc_msgSend_setLastUsed_(v4, v11, v10);
  objc_msgSend_setCreationDate_(v4, v12, v10);
  v16 = objc_msgSend_insertObject_(v7, v13, v4);
  if (!v16)
  {
    v17 = objc_msgSend_tocTable(self, v14, v15);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = objc_msgSend_allTables(v4, v18, v19, 0);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v30, v34, 16);
    if (v22)
    {
      v24 = v22;
      v25 = *v31;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = objc_msgSend_addEntryForTable_(v17, v23, *(*(&v30 + 1) + 8 * i));
          if (v27)
          {
            v16 = v27;
            goto LABEL_12;
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v30, v34, 16);
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_12:
  }

  v28 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)createTOCInDatabase:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v10 = objc_msgSend_TOCTableGroupInDatabase_options_(a1, v9, v8, a4);
  v13 = objc_msgSend_tocTableGroupTable(v10, v11, v12);
  isMigrationTOC = objc_msgSend_isMigrationTOC(v10, v14, v15);
  v19 = objc_msgSend_tocTable(v10, v17, v18);
  v22 = objc_msgSend_createTableSQL(v19, v20, v21);
  v56 = v8;
  v24 = objc_msgSend_executeSQL_(v8, v23, v22);
  v27 = v24;
  if (isMigrationTOC)
  {
    if (v24)
    {
LABEL_3:
      if (isMigrationTOC)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (v24)
    {
      goto LABEL_29;
    }

    v27 = objc_msgSend_addEntryForTable_(v19, v25, v19);
    if (v27)
    {
      goto LABEL_29;
    }

    v27 = objc_msgSend_setSchema_forTable_(v19, v25, v22, v19);
    if (v27)
    {
      goto LABEL_3;
    }
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = objc_msgSend_allTables(v10, v25, v26);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v57, v61, 16);
  if (v29)
  {
    v30 = v29;
    v52 = v22;
    v53 = a5;
    v54 = v13;
    v31 = *v58;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v58 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v57 + 1) + 8 * i);
        v36 = objc_autoreleasePoolPush();
        if (v33 != v19)
        {
          v37 = objc_msgSend_createTableSQL(v33, v34, v35);
          v39 = objc_msgSend_executeSQL_(v56, v38, v37);
          v27 = v39;
          if ((isMigrationTOC & 1) == 0)
          {
            if (v39)
            {
              goto LABEL_25;
            }

            v41 = objc_msgSend_addEntryForTable_(v19, v40, v33);
            if (v41)
            {
              v27 = v41;
LABEL_25:

LABEL_26:
              objc_autoreleasePoolPop(v36);
              goto LABEL_27;
            }

            v27 = objc_msgSend_setSchema_forTable_(v19, v42, v37, v33);
          }

          if (v27)
          {
            goto LABEL_26;
          }
        }

        objc_autoreleasePoolPop(v36);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v57, v61, 16);
      if (v30)
      {
        continue;
      }

      break;
    }

    v27 = 0;
LABEL_27:
    a5 = v53;
    v13 = v54;
    v22 = v52;
  }

  else
  {
    v27 = 0;
  }

  if (isMigrationTOC)
  {
LABEL_4:
    if (!v27)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_29:
  v44 = objc_msgSend_date(MEMORY[0x1E695DF00], v25, v26);
  objc_msgSend_setLastUsed_(v10, v45, v44);
  objc_msgSend_setCreationDate_(v10, v46, v44);
  if (!v27)
  {
    v27 = objc_msgSend_insertObject_(v13, v47, v10);
  }

  if (v27)
  {
LABEL_32:
    if (a5)
    {
      v48 = v27;
      *a5 = v27;
    }

    v10 = 0;
  }

LABEL_35:
  v49 = v10;

  v50 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)createNewTOCInDatabase:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_isInMemoryDatabase(v4, v5, v6);
  v21 = 0;
  v9 = objc_msgSend_createTOCInDatabase_options_error_(a1, v8, v4, v7, &v21);
  v10 = v21;
  v13 = objc_msgSend_databaseWasCreated(v4, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_tocImageInfoTable(v9, v14, v15);
    v19 = objc_msgSend_addEntriesForCurrentProcess(v16, v17, v18);
  }

  return v10;
}

+ (id)migrationTOCInDatabase:(id)a3 error:(id *)a4
{
  v5 = a3;
  v15 = 0;
  v7 = objc_msgSend_createTOCInDatabase_options_error_(CKSQLiteMigrationTOCTableGroup, v6, v5, 0, &v15);
  v9 = v15;
  if (!v9)
  {
    v10 = objc_msgSend_TOCTableGroupInDatabase_(CKSQLiteTOCTableGroup, v8, v5);
    objc_msgSend_setGroupID_(v10, v11, 0);
    v9 = objc_msgSend_addTOCEntriesForTOCTableGroup_(v7, v12, v10);
  }

  if (a4 && v9)
  {
    v13 = v9;
    *a4 = v9;
  }

  return v7;
}

+ (id)TOCTableGroupInDatabase:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v10 = objc_msgSend_groupName(a1, v8, v9);
  v12 = objc_msgSend_initWithName_options_database_(v7, v11, v10, a4 | 0xC0000, v6);

  objc_msgSend_setGroupID_(v12, v13, &unk_1EFA85620);
  v14 = NSStringFromClass(a1);
  objc_msgSend_setCreatingClass_(v12, v15, v14);

  return v12;
}

+ (id)TOCTableGroupInDatabase:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_isInMemoryDatabase(v4, v5, v6);
  v9 = objc_msgSend_TOCTableGroupInDatabase_options_(a1, v8, v4, v7);

  return v9;
}

+ (id)genericTOCTableGroupInDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_groupName(a1, v7, v8);
  v11 = objc_msgSend_tableGroupInDatabase_withName_error_(CKSQLiteGenericTableGroup, v10, v6, v9, a4);

  return v11;
}

- (id)tocImageInfoTable
{
  v4 = objc_msgSend_logicalTableName(CKSQLiteTOCImageInfoTable, a2, v2);
  v6 = objc_msgSend_tableWithName_(self, v5, v4);

  return v6;
}

- (id)_tableClasses
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_options(self, a2, v2);
  v4 = objc_opt_class();
  if (v3)
  {
    v10 = v4;
    v11 = objc_opt_class();
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, &v10, 2, v10, v11, v12, v13, v14);
  }

  else
  {
    v12 = v4;
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, &v12, 3, v10, v11, v12, v13, v14);
  }
  v7 = ;
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_tablesByNameInitializer
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = objc_msgSend__tableClasses(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v29, v33, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = objc_msgSend_logicalTableName(v14, v9, v10);
        v16 = [v14 alloc];
        v18 = objc_msgSend_initWithLogicalTableName_(v16, v17, v15);
        v21 = objc_msgSend_dbTableName(v14, v19, v20);
        objc_msgSend_setDbTableName_(v18, v22, v21);

        objc_msgSend_setObject_forKey_(v3, v23, v18, v15);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v29, v33, 16);
    }

    while (v11);
  }

  v26 = objc_msgSend_copy(v3, v24, v25);
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (CKSQLiteTOCTableGroup)initWithName:(id)a3 options:(unint64_t)a4 database:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v11 = objc_msgSend_setFlag_(self, v10, 1);
  v29.receiver = self;
  v29.super_class = CKSQLiteTOCTableGroup;
  v12 = [(CKSQLiteTableGroup *)&v29 initWithName:v8 options:a4 database:v9];
  v15 = v12;
  if (v12)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = objc_msgSend_allTables(v12, v13, v14, 0);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v25, v30, 16);
    if (v18)
    {
      v20 = v18;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v16);
          }

          objc_msgSend_setTableGroup_(*(*(&v25 + 1) + 8 * v22++), v19, v15);
        }

        while (v20 != v22);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v25, v30, 16);
      }

      while (v20);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)resetValidation
{
  v5 = objc_msgSend_setLastUsedEpoch_(self, a2, 1);
  if (!v5)
  {
    v6 = objc_msgSend_tocImageInfoTable(self, v3, v4);
    v5 = objc_msgSend_resetImageInfo(v6, v7, v8);
  }

  return v5;
}

- (id)isUseable
{
  v3 = self;
  v70[1] = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v4 = objc_msgSend_allTables(self, a2, v2);
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v58, v62, 16);
  if (!v56)
  {
    goto LABEL_25;
  }

  v55 = *v59;
  v53 = v4;
  v54 = v3;
  do
  {
    v6 = 0;
    do
    {
      if (*v59 != v55)
      {
        objc_enumerationMutation(v4);
      }

      v7 = *(*(&v58 + 1) + 8 * v6);
      v57 = objc_autoreleasePoolPush();
      v10 = v7;
      if (v3)
      {
        v11 = objc_msgSend_tocTable(v3, v8, v9);
        v14 = objc_msgSend_newEntryObject(v11, v12, v13);
        v17 = objc_msgSend_dbTableName(v10, v15, v16);
        objc_msgSend_setDbTableName_(v14, v18, v17);
        v70[0] = CKSQLiteTOCTableEntryDbVersionPropertyName;
        v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v70, 1);
        v69 = CKSQLiteTOCTableEntryDbTablePropertyName;
        v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, &v69, 1);
        v24 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(v11, v23, v20, v14, v22, 0);

        if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v25, v24))
        {
          if (objc_msgSend__canMigrateWithMissingTable_(v3, v26, v10))
          {

            objc_opt_class();
            v24 = 0;
LABEL_19:

            goto LABEL_20;
          }

          v28 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v27, @"CKErrorDomain", 1, @"Missing TableGroup table in %@", v3);

          v24 = v28;
        }

        v29 = objc_opt_class();
        if (!v24)
        {
          v37 = v29;
          v38 = objc_msgSend_dbVersion(v14, v30, v31);
          v41 = objc_msgSend_unsignedIntegerValue(v38, v39, v40);

          v44 = objc_msgSend_dbVersion(v37, v42, v43);
          if (v41 == v44)
          {
            v24 = 0;
            v3 = v54;
            goto LABEL_19;
          }

          v45 = v44;
          v46 = NSStringFromClass(v37);
          v52 = v45;
          v3 = v54;
          v4 = v53;
          v24 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v47, @"CKErrorDomain", 1, @"CKSQLiteDatabase<%p>: %@ version changed: database=%lu runtime=%lu", v54, v46, v41, v52);

          if (!v24)
          {
            goto LABEL_19;
          }
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v32 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
        {
          v33 = v32;
          v36 = objc_msgSend_logicalTableName(v10, v34, v35);
          *buf = 134218498;
          v64 = v54;
          v65 = 2114;
          v66 = v36;
          v67 = 2114;
          v68 = v24;
          _os_log_error_impl(&dword_1883EA000, v33, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: TOC table %{public}@ is unusable, error: %{public}@", buf, 0x20u);

          v3 = v54;
        }

        goto LABEL_19;
      }

      v24 = 0;
LABEL_20:

      objc_autoreleasePoolPop(v57);
      if (v24)
      {
        goto LABEL_26;
      }

      ++v6;
    }

    while (v56 != v6);
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v48, &v58, v62, 16);
    v56 = v49;
  }

  while (v49);
LABEL_25:
  v24 = 0;
LABEL_26:

  v50 = *MEMORY[0x1E69E9840];

  return v24;
}

- (BOOL)needsMigration:(id *)a3
{
  v62[3] = *MEMORY[0x1E69E9840];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = objc_msgSend_allTables(self, a2, a3);
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v48, v52, 16);
  if (v47)
  {
    v46 = *v49;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v49 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v48 + 1) + 8 * v5);
      if (self)
      {
        break;
      }

      v25 = 0;
      v37 = 0;
LABEL_20:

      v39 = v25;
      if (v39 || (v37 & 1) != 0)
      {

        if (a3 && v39)
        {
          v41 = v39;
          *a3 = v39;
        }

        goto LABEL_32;
      }

      if (v47 == ++v5)
      {
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v48, v52, 16);
        v47 = v40;
        if (v40)
        {
          goto LABEL_3;
        }

        goto LABEL_28;
      }
    }

    v9 = objc_msgSend_tocTableGroup(self, v6, v7);
    v12 = objc_msgSend_tocTable(v9, v10, v11);
    v15 = objc_msgSend_newEntryObject(v12, v13, v14);
    v18 = objc_msgSend_dbTableName(v8, v16, v17);
    objc_msgSend_setDbTableName_(v15, v19, v18);
    v62[0] = CKSQLiteTOCTableEntryDbVersionPropertyName;
    v62[1] = CKSQLiteTOCTableEntrySchemaPropertyName;
    v62[2] = CKSQLiteTOCTableEntryPropertyDataName;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, v62, 3);
    v61 = CKSQLiteTOCTableEntryDbTablePropertyName;
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, &v61, 1);
    v25 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(v12, v24, v21, v15, v23, 0);

    if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v26, v25))
    {
      if (objc_msgSend__canMigrateWithMissingTable_(self, v27, v8))
      {
        goto LABEL_14;
      }

      v30 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v29, @"CKErrorDomain", 1, @"Missing TableGroup table in %@", self);

      v25 = v30;
    }

    if (v25)
    {
LABEL_11:
      v31 = v25;
LABEL_12:
      v32 = 0;
LABEL_19:
      buf[0] = v32;

      v37 = buf[0];
      goto LABEL_20;
    }

    v33 = objc_msgSend_tableGroup(v8, v27, v28);
    v25 = objc_msgSend_validateTable_matchesTOCEntry_(v33, v34, v8, v15);

    if ((objc_msgSend_CKIsValidationError_(MEMORY[0x1E696ABC0], v35, v25) & 1) == 0)
    {
      if (!v25)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_14:

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v36 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      v54 = self;
      v55 = 2114;
      v56 = @"YES";
      v57 = 2114;
      v58 = v18;
      v59 = 2114;
      v60 = 0;
      _os_log_error_impl(&dword_1883EA000, v36, OS_LOG_TYPE_ERROR, "CKSQLiteDatabase<%p>: TOC migration check returning %{public}@ for table %{public}@, error: %{public}@", buf, 0x2Au);
    }

    v25 = 0;
    v32 = 1;
    goto LABEL_19;
  }

LABEL_28:

  v39 = 0;
  v37 = 0;
LABEL_32:

  v42 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)setLastUsedEpoch:(int64_t)a3
{
  v5 = CKProcessStartDate();
  v8 = CKBootDate();
  switch(a3)
  {
    case 2:
      objc_msgSend_dateByAddingTimeInterval_(v5, v6, v7, 1.0);
      goto LABEL_8;
    case 1:
      objc_msgSend_timeIntervalSinceDate_(v5, v6, v8);
      v9 = v10 * 0.5;
      goto LABEL_6;
    case 0:
      v9 = -1.0;
LABEL_6:
      objc_msgSend_dateByAddingTimeInterval_(v8, v6, v7, v9);
      v11 = LABEL_8:;
      objc_msgSend_setLastUsed_(self, v12, v11);
      goto LABEL_10;
  }

  v11 = 0;
  objc_msgSend_setLastUsed_(self, v6, 0);
LABEL_10:
  v15 = objc_msgSend_tocTableGroupTable(self, v13, v14);
  v17 = objc_msgSend_updateLastUsedDate_(v15, v16, self);

  return v17;
}

- (id)migrateDataFromGroup:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = objc_msgSend__tableClasses(self, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v30, v34, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v31;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = objc_msgSend_logicalTableName(*(*(&v30 + 1) + 8 * v13), v9, v10);
      v16 = objc_msgSend_tableWithName_(self, v15, v14);
      v18 = objc_msgSend_tableWithName_(v4, v17, v14);
      v20 = v18;
      if (!v16 || v18 == 0)
      {
        v22 = 0;
      }

      else
      {
        v29 = 0;
        v23 = objc_msgSend_migrateDataFromTable_error_(v16, v19, v18, &v29);
        v24 = v29;
        v22 = v24;
        if ((v23 & 1) == 0 && !v24)
        {
          v22 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKErrorDomain", 1, @"TOC migration failed for table: %@", v14);
        }
      }

      if (v22)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v30, v34, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v22 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)removeDeletedGroups
{
  v4 = objc_msgSend_db(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18869519C;
  v8[3] = &unk_1E70BC178;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v7 = objc_msgSend_performDatabaseTransactionWithoutForeignKeyConstraints_(v5, v6, v8);
}

- (id)prepareNewlyOpenedDatabase
{
  v121 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_tocTableGroupTable(self, a2, v2);
  v103 = CKSQLiteTOCTableGroupTableLastUsedPropertyName;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, &v103, 1);
  v8 = objc_msgSend_fetchProperties_inObject_label_(v4, v7, v6, self, 0);

  if (v8)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Error fetching TOC last used date: %{public}@", &buf, 0xCu);
    }

    v14 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v12, v13);
    objc_msgSend_setLastUsed_(self, v15, v14);
  }

  if (self)
  {
    v16 = objc_msgSend_tocTableGroupTable(self, v9, v10);
    *v120 = CKSQLiteTOCTableGroupTableCreatingClassPropertyName;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, v120, 1);
    v102 = 0;
    v20 = objc_msgSend_fetchDistinctProperties_label_error_(v16, v19, v18, 0, &v102);
    v21 = v102;

    v92 = v21;
    if (v21)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v24 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v21;
        _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "-removeExpiredGroups failed to fetch classes: %{public}@", &buf, 0xCu);
      }
    }

    else
    {
      v91 = v8;
      isFirstInstanceSinceBoot = objc_msgSend_isFirstInstanceSinceBoot(self, v22, v23);
      v96 = objc_msgSend_tocTableGroupTable(self, v25, v26);
      v97 = objc_opt_class();
      *v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v90 = v20;
      obj = v20;
      v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, v116, &buf, 16);
      if (v99)
      {
        v98 = *v117;
        v28 = @"Creating class %@ is not a CKSQLiteTableGroup subclass";
        if (!v97)
        {
          v28 = @"Creating class %@ not found";
        }

        v94 = v28;
        do
        {
          for (i = 0; i != v99; ++i)
          {
            if (*v117 != v98)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*&v116[8] + 8 * i);
            v31 = objc_autoreleasePoolPush();
            v34 = objc_msgSend_creatingClass(v30, v32, v33);
            v35 = v34;
            if (v34)
            {
              v36 = NSClassFromString(v34);
              v100 = v35;
              v101 = v31;
              if (v36 && (v38 = v36, objc_msgSend_isSubclassOfClass_(v36, v37, v97)))
              {
                if (isFirstInstanceSinceBoot && objc_msgSend_rebootShouldClearData(v38, v37, v39))
                {
                  v40 = objc_msgSend_tableGroupsWithClass_(v96, v37, v35);
                  v41 = @"rebooted";
                }

                else
                {
                  v44 = objc_msgSend_expirationDate(v38, v37, v39);
                  if (v44)
                  {
                    v40 = objc_msgSend_expiredTableGroupsWithClass_expirationDate_(v96, v43, v35, v44);
                    v41 = @"expired";
                  }

                  else
                  {
                    v40 = 0;
                    v41 = 0;
                  }
                }
              }

              else
              {
                v41 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v37, v94, v35);
                v40 = objc_msgSend_tableGroupsWithClass_(v96, v42, v35);
                v38 = v97;
              }

              v110 = 0u;
              v111 = 0u;
              *v108 = 0u;
              v109 = 0u;
              v45 = v40;
              v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, v108, &v104, 16);
              if (v47)
              {
                v50 = v47;
                v51 = *v109;
                do
                {
                  for (j = 0; j != v50; ++j)
                  {
                    if (*v109 != v51)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v53 = *(*&v108[8] + 8 * j);
                    v54 = objc_msgSend_db(self, v48, v49);
                    objc_msgSend_expireGroup_reason_database_(v38, v55, v53, v41, v54);
                  }

                  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, v108, &v104, 16);
                }

                while (v50);
              }

              v35 = v100;
              v31 = v101;
            }

            objc_autoreleasePoolPop(v31);
          }

          v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, v116, &buf, 16);
        }

        while (v99);
      }

      v20 = v90;
      v8 = v91;
    }
  }

  objc_msgSend_removeDeletedGroups(self, v9, v10);
  if (objc_msgSend_isFirstInstanceInProcess(self, v57, v58))
  {
    if (self)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v113 = sub_188695408;
      v114 = &unk_1E70BC1A0;
      v115 = self;
      v61 = objc_msgSend_performTransaction_(self, v59, &buf);
      if (v61)
      {
        v63 = v61;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v64 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
        {
          LODWORD(v104) = 138543362;
          *(&v104 + 4) = v63;
          _os_log_fault_impl(&dword_1883EA000, v64, OS_LOG_TYPE_FAULT, "Failed to remove empty table group: %{public}@", &v104, 0xCu);
        }
      }

      *&v104 = MEMORY[0x1E69E9820];
      *(&v104 + 1) = 3221225472;
      v105 = sub_1886954E4;
      v106 = &unk_1E70BC1A0;
      v107 = self;
      v66 = objc_msgSend_performTransaction_(self, v62, &v104);
      if (v66)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v67 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
        {
          *v116 = 138543362;
          *&v116[4] = v66;
          _os_log_fault_impl(&dword_1883EA000, v67, OS_LOG_TYPE_FAULT, "Database table check failed: %{public}@", v116, 0xCu);
        }
      }

      *v116 = MEMORY[0x1E69E9820];
      *&v116[8] = 3221225472;
      *&v117 = sub_1886955CC;
      *(&v117 + 1) = &unk_1E70BC1A0;
      *&v118 = self;
      v68 = objc_msgSend_performTransaction_(self, v65, v116);

      if (v68)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v71 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
        {
          *v108 = 138543362;
          *&v108[4] = v68;
          _os_log_fault_impl(&dword_1883EA000, v71, OS_LOG_TYPE_FAULT, "Failed to remove orphaned TOC entries: %{public}@", v108, 0xCu);
        }
      }

      v72 = objc_msgSend_db(self, v69, v70);
      *v108 = MEMORY[0x1E69E9820];
      *&v108[8] = 3221225472;
      *&v109 = sub_1886956A8;
      *(&v109 + 1) = &unk_1E70BC1A0;
      v73 = v72;
      *&v110 = v73;
      v75 = objc_msgSend_performDatabaseTransactionWithoutForeignKeyConstraints_(v73, v74, v108);

      if (v75)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v76 = ck_log_facility_sql;
        if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
        {
          *v120 = 138543362;
          *&v120[4] = v75;
          _os_log_fault_impl(&dword_1883EA000, v76, OS_LOG_TYPE_FAULT, "failed to remove orphaned database tables: %{public}@", v120, 0xCu);
        }
      }
    }

    v77 = objc_msgSend_date(MEMORY[0x1E695DF00], v59, v60);
    objc_msgSend_setLastUsed_(self, v78, v77);

    v81 = objc_msgSend_tocTableGroupTable(self, v79, v80);
    v83 = objc_msgSend_updateLastUsedDate_(v81, v82, self);

    if (v83)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v84 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v83;
        _os_log_error_impl(&dword_1883EA000, v84, OS_LOG_TYPE_ERROR, "Error updating TOC last used date: %{public}@", &buf, 0xCu);
      }
    }
  }

  if (!v8)
  {
    v85 = objc_msgSend_tocImageInfoTable(self, v59, v60);
    v8 = objc_msgSend_databaseMatchesCurrentProcess(v85, v86, v87);
  }

  v88 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)databaseValidationSuccess
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_tocImageInfoTable(self, a2, v2);
  v6 = objc_msgSend_updateForCurrentProcess(v3, v4, v5);

  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Failed to mark database validation success: %{public}@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end