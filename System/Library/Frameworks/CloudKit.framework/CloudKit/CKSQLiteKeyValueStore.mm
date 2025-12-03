@interface CKSQLiteKeyValueStore
- (id)UUIDValueForKey:(id)key error:(id *)error;
- (id)dataValueForKey:(id)key error:(id *)error;
- (id)dateValueForKey:(id)key error:(id *)error;
- (id)numberValueForKey:(id)key error:(id *)error;
- (id)setDataValue:(id)value forKey:(id)key;
- (id)setDateValue:(id)value forKey:(id)key;
- (id)setNumberValue:(id)value forKey:(id)key;
- (id)setStringValue:(id)value forKey:(id)key;
- (id)setUUIDValue:(id)value forKey:(id)key;
- (id)stringValueForKey:(id)key error:(id *)error;
@end

@implementation CKSQLiteKeyValueStore

- (id)numberValueForKey:(id)key error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v7, v8, keyCopy);
  v12 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v9, &unk_1EFA85C20, v7, &unk_1EFA85C38, off_1EA910CE0);
  if (v12 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v10, v12) & 1) == 0)
  {
    if (error)
    {
      v13 = v12;
      *error = v12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = keyCopy;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch value for key %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = objc_msgSend_number(v7, v10, v11);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setNumberValue:(id)value forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  v8 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v8, v9, keyCopy);
  objc_msgSend_setNumber_(v8, v10, valueCopy);

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
      v20 = keyCopy;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to set value for key %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)stringValueForKey:(id)key error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v7, v8, keyCopy);
  v12 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v9, &unk_1EFA85C50, v7, &unk_1EFA85C68, off_1EA910D10);
  if (v12 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v10, v12) & 1) == 0)
  {
    if (error)
    {
      v13 = v12;
      *error = v12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = keyCopy;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch value for key %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = objc_msgSend_string(v7, v10, v11);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setStringValue:(id)value forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  v8 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v8, v9, keyCopy);
  objc_msgSend_setString_(v8, v10, valueCopy);

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
      v20 = keyCopy;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to set value for key %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)dataValueForKey:(id)key error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v7, v8, keyCopy);
  v12 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v9, &unk_1EFA85C80, v7, &unk_1EFA85C98, off_1EA910D40);
  if (v12 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v10, v12) & 1) == 0)
  {
    if (error)
    {
      v13 = v12;
      *error = v12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = keyCopy;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch value for key %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = objc_msgSend_data(v7, v10, v11);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setDataValue:(id)value forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  v8 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v8, v9, keyCopy);
  objc_msgSend_setData_(v8, v10, valueCopy);

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
      v20 = keyCopy;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to set value for key %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)dateValueForKey:(id)key error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v7, v8, keyCopy);
  v12 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v9, &unk_1EFA85CB0, v7, &unk_1EFA85CC8, off_1EA910D70);
  if (v12 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v10, v12) & 1) == 0)
  {
    if (error)
    {
      v13 = v12;
      *error = v12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = keyCopy;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch value for key %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = objc_msgSend_date(v7, v10, v11);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setDateValue:(id)value forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  v8 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v8, v9, keyCopy);
  objc_msgSend_setDate_(v8, v10, valueCopy);

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
      v20 = keyCopy;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to set value for key %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)UUIDValueForKey:(id)key error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v7, v8, keyCopy);
  v12 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v9, &unk_1EFA85CE0, v7, &unk_1EFA85CF8, off_1EA910DA0);
  if (v12 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v10, v12) & 1) == 0)
  {
    if (error)
    {
      v13 = v12;
      *error = v12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = keyCopy;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch value for key %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  v15 = objc_msgSend_UUID(v7, v10, v11);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)setUUIDValue:(id)value forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  v8 = objc_alloc_init(CKSQLiteKeyValueTableEntry);
  objc_msgSend_setKey_(v8, v9, keyCopy);
  objc_msgSend_setUUID_(v8, v10, valueCopy);

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
      v20 = keyCopy;
      v21 = 2114;
      v22 = v13;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to set value for key %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

@end