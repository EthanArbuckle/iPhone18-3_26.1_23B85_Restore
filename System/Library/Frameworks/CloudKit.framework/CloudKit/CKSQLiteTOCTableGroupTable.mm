@interface CKSQLiteTOCTableGroupTable
+ (id)dbProperties;
- (BOOL)migrateEntryDataFromTable:(id)a3 entry:(id)a4 toEntry:(id)a5 addedProperties:(id)a6;
- (id)deletePrimaryKeyValue:(id)a3;
- (id)entryWithGroupName:(id)a3 error:(id *)a4;
- (id)expiredTableGroupsWithClass:(id)a3 expirationDate:(id)a4;
- (id)insertObject:(id)a3;
- (id)invalidateGroup:(id)a3;
- (id)makeUniqueGroupName:(id)a3;
- (id)tableGroupsWithClass:(id)a3;
- (id)updateGroupData:(id)a3;
- (id)updateLastUsedDate:(id)a3;
- (void)setTableGroup:(id)a3;
@end

@implementation CKSQLiteTOCTableGroupTable

+ (id)dbProperties
{
  v6[7] = *MEMORY[0x1E69E9840];
  v5[0] = CKSQLiteTOCTableGroupTableGroupIDPropertyName;
  v5[1] = CKSQLiteTOCTableGroupTableGroupNamePropertyName;
  v6[0] = &unk_1EFA85500;
  v6[1] = &unk_1EFA85560;
  v5[2] = CKSQLiteTOCTableGroupTableLastUsedPropertyName;
  v5[3] = CKSQLiteTOCTableGroupTableCreatingClassPropertyName;
  v6[2] = &unk_1EFA855D8;
  v6[3] = &unk_1EFA85548;
  v5[4] = @"creationDate";
  v5[5] = CKSQLiteTOCTableGroupTableGroupDataPropertyName;
  v6[4] = &unk_1EFA855D8;
  v6[5] = &unk_1EFA855F0;
  v5[6] = CKSQLiteTOCTableGroupTableFlagsName;
  v6[6] = &unk_1EFA85608;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 7);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)migrateEntryDataFromTable:(id)a3 entry:(id)a4 toEntry:(id)a5 addedProperties:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_opt_class();
  v16 = objc_msgSend_propertyInfo_(v14, v15, CKSQLiteTOCTableGroupTableCreatingClassPropertyName);
  v18 = objc_msgSend_valueForProperty_propertyInfo_inObject_(v10, v17, CKSQLiteTOCTableEntryCreatingClassName, v16, v11);
  v19 = NSClassFromString(v18);
  if (v19 && (v20 = v19, v21 = objc_opt_class(), (objc_msgSend_isSubclassOfClass_(v20, v22, v21) & 1) != 0) || (v30.receiver = self, v30.super_class = CKSQLiteTOCTableGroupTable, ![(CKSQLiteTable *)&v30 migrateEntryDataFromTable:v10 entry:v11 toEntry:v12 addedProperties:v13]))
  {
    v28 = 0;
  }

  else
  {
    if (objc_msgSend_containsObject_(v13, v23, @"creationDate"))
    {
      v26 = objc_msgSend_date(MEMORY[0x1E695DF00], v24, v25);
      objc_msgSend_setCreationDate_(v12, v27, v26);
    }

    v28 = 1;
  }

  return v28;
}

- (id)makeUniqueGroupName:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_name(v4, v6, v7);
  v11 = objc_msgSend_groupID(v4, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v5, v12, @"%@_%@", v8, v11);

  v16 = objc_msgSend_name(v4, v14, v15);
  objc_msgSend_setName_(v4, v17, v13);
  v25[0] = CKSQLiteTOCTableGroupTableGroupNamePropertyName;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v25, 1);
  v21 = objc_msgSend_updateProperties_usingObject_label_(self, v20, v19, v4, off_1EA911238);

  if (v21)
  {
    objc_msgSend_setName_(v4, v22, v16);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)insertObject:(id)a3
{
  v4 = a3;
  v5 = _CKSQLDBSerializerLock(&self->_strongDatabase->_serializer);
  v9.receiver = self;
  v9.super_class = CKSQLiteTOCTableGroupTable;
  v7 = [(CKSQLiteTable *)&v9 insertObject:v4];
  if (!v7)
  {
    objc_msgSend_setIsEmpty_(self->_strongDatabase, v6, 0);
  }

  if (v5)
  {
    v5[1].__sig = 0;
    pthread_mutex_unlock(v5);
  }

  return v7;
}

- (id)deletePrimaryKeyValue:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188692C80;
  v9[3] = &unk_1E70BC178;
  v10 = v4;
  v11 = self;
  v5 = v4;
  v7 = objc_msgSend_performInTransaction_(self, v6, v9);

  return v7;
}

- (void)setTableGroup:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKSQLiteTOCTableGroupTable;
  v4 = a3;
  [(CKSQLiteTable *)&v9 setTableGroup:v4];
  v7 = objc_msgSend_db(v4, v5, v6, v9.receiver, v9.super_class);

  strongDatabase = self->_strongDatabase;
  self->_strongDatabase = v7;
}

- (id)entryWithGroupName:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [CKSQLiteTableGroupEntry alloc];
  v9 = objc_msgSend_initWithName_(v7, v8, v6);
  objc_msgSend_setName_(v9, v10, v6);

  v19[0] = CKSQLiteTOCTableGroupTableGroupNamePropertyName;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v19, 1);
  v14 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v13, 0, v9, v12, off_1EA911268);

  if (v14)
  {

    if (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v15, v14))
    {

      v14 = 0;
    }

    else if (a4)
    {
      v16 = v14;
      v9 = 0;
      *a4 = v14;
      goto LABEL_7;
    }

    v9 = 0;
  }

LABEL_7:

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)invalidateGroup:(id)a3
{
  v30[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_name(v4, v5, v6);
  objc_msgSend_setName_(v4, v8, 0);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_setCreatingClass_(v4, v11, v10);

  v14 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v12, v13);
  objc_msgSend_setLastUsed_(v4, v15, v14);

  v30[0] = CKSQLiteTOCTableGroupTableGroupNamePropertyName;
  v30[1] = CKSQLiteTOCTableGroupTableCreatingClassPropertyName;
  v30[2] = CKSQLiteTOCTableGroupTableLastUsedPropertyName;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v30, 3);
  v19 = objc_msgSend_updateProperties_usingObject_label_(self, v18, v17, v4, off_1EA911280);

  if (v19)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v21 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = v7;
      v28 = 2114;
      v29 = v19;
      _os_log_error_impl(&dword_1883EA000, v21, OS_LOG_TYPE_ERROR, "failed to invalidate group %{publid}@: %{public}@", buf, 0x16u);
    }
  }

  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"<invalidated %@>", v7);
  objc_msgSend_setName_(v4, v23, v22);

  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)updateLastUsedDate:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = CKSQLiteTOCTableGroupTableLastUsedPropertyName;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, &v12, 1);
  v9 = objc_msgSend_updateProperties_usingObject_label_(self, v8, v7, v5, off_1EA911298, v12, v13);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)updateGroupData:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = CKSQLiteTOCTableGroupTableGroupDataPropertyName;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, &v12, 1);
  v9 = objc_msgSend_updateProperties_usingObject_label_(self, v8, v7, v5, off_1EA9112B0, v12, v13);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)tableGroupsWithClass:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1883EE22C;
  v18 = sub_1883EF7BC;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188693430;
  v10[3] = &unk_1E70BC0C0;
  v5 = v4;
  v11 = v5;
  v12 = self;
  v13 = &v14;
  v7 = objc_msgSend_performInTransaction_(self, v6, v10);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)expiredTableGroupsWithClass:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1883EE22C;
  v23 = sub_1883EF7BC;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_18869377C;
  v14[3] = &unk_1E70BC240;
  v8 = v6;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v17 = self;
  v18 = &v19;
  v11 = objc_msgSend_performInTransaction_(self, v10, v14);
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

@end