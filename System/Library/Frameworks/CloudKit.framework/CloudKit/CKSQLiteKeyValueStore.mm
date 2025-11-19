@interface CKSQLiteKeyValueStore
- (id)UUIDValueForKey:(id)a3 error:(id *)a4;
- (id)dataValueForKey:(id)a3 error:(id *)a4;
- (id)dateValueForKey:(id)a3 error:(id *)a4;
- (id)numberValueForKey:(id)a3 error:(id *)a4;
- (id)setDataValue:(id)a3 forKey:(id)a4;
- (id)setDateValue:(id)a3 forKey:(id)a4;
- (id)setNumberValue:(id)a3 forKey:(id)a4;
- (id)setStringValue:(id)a3 forKey:(id)a4;
- (id)setUUIDValue:(id)a3 forKey:(id)a4;
- (id)stringValueForKey:(id)a3 error:(id *)a4;
@end

@implementation CKSQLiteKeyValueStore

- (id)numberValueForKey:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v7, v8, v6);
  v12 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v9, &unk_1EFA85C20, v7, &unk_1EFA85C38, off_1EA910CE0);
  if (v12 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v10, v12) & 1) == 0)
  {
    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch value for key %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = objc_msgSend_number(v7, v10, v11);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setNumberValue:(id)a3 forKey:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v8, v9, v6);
  objc_msgSend_setNumber_(v8, v10, v7);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18867C198;
  v17[3] = &unk_1E70BC178;
  v17[4] = self;
  v11 = v8;
  v18 = v11;
  v13 = objc_msgSend_performTransaction_(self, v12, v17);
  if (v13)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to set value for key %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)stringValueForKey:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v7, v8, v6);
  v12 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v9, &unk_1EFA85C50, v7, &unk_1EFA85C68, off_1EA910D10);
  if (v12 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v10, v12) & 1) == 0)
  {
    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch value for key %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = objc_msgSend_string(v7, v10, v11);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setStringValue:(id)a3 forKey:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v8, v9, v6);
  objc_msgSend_setString_(v8, v10, v7);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18867C504;
  v17[3] = &unk_1E70BC178;
  v17[4] = self;
  v11 = v8;
  v18 = v11;
  v13 = objc_msgSend_performTransaction_(self, v12, v17);
  if (v13)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to set value for key %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)dataValueForKey:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v7, v8, v6);
  v12 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v9, &unk_1EFA85C80, v7, &unk_1EFA85C98, off_1EA910D40);
  if (v12 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v10, v12) & 1) == 0)
  {
    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch value for key %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = objc_msgSend_data(v7, v10, v11);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setDataValue:(id)a3 forKey:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v8, v9, v6);
  objc_msgSend_setData_(v8, v10, v7);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18867C870;
  v17[3] = &unk_1E70BC178;
  v17[4] = self;
  v11 = v8;
  v18 = v11;
  v13 = objc_msgSend_performTransaction_(self, v12, v17);
  if (v13)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to set value for key %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)dateValueForKey:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v7, v8, v6);
  v12 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v9, &unk_1EFA85CB0, v7, &unk_1EFA85CC8, off_1EA910D70);
  if (v12 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v10, v12) & 1) == 0)
  {
    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch value for key %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = objc_msgSend_date(v7, v10, v11);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setDateValue:(id)a3 forKey:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v8, v9, v6);
  objc_msgSend_setDate_(v8, v10, v7);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18867CBDC;
  v17[3] = &unk_1E70BC178;
  v17[4] = self;
  v11 = v8;
  v18 = v11;
  v13 = objc_msgSend_performTransaction_(self, v12, v17);
  if (v13)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to set value for key %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)UUIDValueForKey:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v7, v8, v6);
  v12 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v9, &unk_1EFA85CE0, v7, &unk_1EFA85CF8, off_1EA910DA0);
  if (v12 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v10, v12) & 1) == 0)
  {
    if (a4)
    {
      v13 = v12;
      *a4 = v12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch value for key %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = objc_msgSend_UUID(v7, v10, v11);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setUUIDValue:(id)a3 forKey:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v8, v9, v6);
  objc_msgSend_setUUID_(v8, v10, v7);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18867CF48;
  v17[3] = &unk_1E70BC178;
  v17[4] = self;
  v11 = v8;
  v18 = v11;
  v13 = objc_msgSend_performTransaction_(self, v12, v17);
  if (v13)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to set value for key %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

@end