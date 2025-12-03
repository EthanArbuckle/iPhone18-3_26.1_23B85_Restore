@interface CKConcretePackage
+ (id)packageForBundleID:(id)d error:(id *)error;
+ (id)packageWithPackageRef:(id)ref;
- (CKConcretePackage)initWithCoder:(id)coder;
- (CKConcretePackage)initWithSQLitePackageRef:(id)ref;
- (CKRecord)record;
- (NSIndexSet)downloadItemIndices;
- (id)UUID;
- (id)description;
- (id)packageDatabase;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAssetTransferOptions:(id)options;
- (void)setDownloadItemIndices:(id)indices;
@end

@implementation CKConcretePackage

+ (id)packageWithPackageRef:(id)ref
{
  if (ref)
  {
    refCopy = ref;
    v4 = [CKConcretePackage alloc];
    v6 = objc_msgSend_initWithSQLitePackageRef_(v4, v5, refCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)packageForBundleID:(id)d error:(id *)error
{
  v5 = objc_msgSend_packageDatabaseForBundleID_error_(CKPackageDatabase, a2, d);
  v7 = objc_msgSend_newPackage_(v5, v6, error);
  if (v7)
  {
    v8 = [CKConcretePackage alloc];
    v10 = objc_msgSend_initWithSQLitePackageRef_(v8, v9, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CKConcretePackage)initWithSQLitePackageRef:(id)ref
{
  refCopy = ref;
  v13.receiver = self;
  v13.super_class = CKConcretePackage;
  v6 = [(CKConcretePackage *)&v13 init];
  v7 = v6;
  if (refCopy)
  {
    if (v6)
    {
      objc_storeStrong(&v6->_sqlitePackageRef, ref);
      v10 = objc_msgSend_sqlitePackage(refCopy, v8, v9);
      sqlitePackage = v7->_sqlitePackage;
      v7->_sqlitePackage = v10;
    }

    else
    {
      sqlitePackage = 0;
    }
  }

  else
  {
    sqlitePackage = v6;
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  sqlitePackage = self->_sqlitePackage;
  self->_sqlitePackage = 0;

  sqlitePackageRef = self->_sqlitePackageRef;
  self->_sqlitePackageRef = 0;

  v5.receiver = self;
  v5.super_class = CKConcretePackage;
  [(CKConcretePackage *)&v5 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_packageID(self, v6, v7);
  objc_msgSend_appendFormat_(v3, v9, @"%@(%p): packageID=%@, ", v5, self, v8);

  v12 = objc_msgSend_itemCount(self, v10, v11);
  v17 = 0;
  v14 = objc_msgSend_size_(self, v13, &v17);
  objc_msgSend_appendFormat_(v3, v15, @"itemCount=%llu, size=%llu", v12, v14);

  return v3;
}

- (void)setAssetTransferOptions:(id)options
{
  sqlitePackage = self->_sqlitePackage;
  v6 = objc_msgSend_copy(options, a2, options);
  v5 = objc_msgSend_setAssetTransferOptions_(sqlitePackage, v4, v6);
}

- (void)setDownloadItemIndices:(id)indices
{
  v4 = objc_msgSend_copy(indices, a2, indices);
  downloadItemIndices = self->_downloadItemIndices;
  self->_downloadItemIndices = v4;

  MEMORY[0x1EEE66BB8]();
}

- (NSIndexSet)downloadItemIndices
{
  v3 = self->_downloadItemIndices;
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696AC90]);
    v7 = objc_msgSend_itemCount(self, v5, v6);
    v3 = objc_msgSend_initWithIndexesInRange_(v4, v8, 0, v7);
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v36 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = CKConcretePackage;
  [(CKPackage *)&v31 encodeWithCoder:coderCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v5, v6, 300.0);
  }

  else
  {
    v7 = 0;
  }

  v30 = 0;
  v8 = objc_msgSend_anchorWithExpirationDate_error_(self, v5, v7, &v30);
  v10 = v30;
  if (v8)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"anchor");
    if (v7)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_package;
      if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_DEBUG))
      {
        sqlitePackage = self->_sqlitePackage;
        v13 = v11;
        v16 = objc_msgSend_packageID(sqlitePackage, v14, v15);
        *buf = 138543362;
        v33 = v16;
        v17 = "Encoded package for xpc with ID=%{public}@";
LABEL_20:
        _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, v17, buf, 0xCu);
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v20 = ck_log_facility_package;
      if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_DEBUG))
      {
        v27 = self->_sqlitePackage;
        v13 = v20;
        v16 = objc_msgSend_packageID(v27, v28, v29);
        *buf = 138543362;
        v33 = v16;
        v17 = "Encoded package with ID=%{public}@";
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v18 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
    {
      v22 = self->_sqlitePackage;
      v23 = v18;
      v26 = objc_msgSend_packageID(v22, v24, v25);
      *buf = 138543618;
      v33 = v26;
      v34 = 2114;
      v35 = v10;
      _os_log_error_impl(&dword_1883EA000, v23, OS_LOG_TYPE_ERROR, "Failed to encode package with ID=%{public}@: %{public}@", buf, 0x16u);
    }

    objc_msgSend_encodeObject_forKey_(coderCopy, v19, v10, @"error");
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (CKConcretePackage)initWithCoder:(id)coder
{
  v37 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"error");
  if (v7)
  {
    v8 = v7;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v8;
      _os_log_error_impl(&dword_1883EA000, v9, OS_LOG_TYPE_ERROR, "Failed to decode package due to encode error: %{public}@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  else
  {
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"anchor");
    v34 = 0;
    v15 = objc_msgSend_packageFromAnchor_error_(CKPackageDatabase, v14, v13, &v34);
    v8 = v34;
    v17 = objc_msgSend_initWithSQLitePackageRef_(self, v16, v15);
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v18 = ck_log_facility_package;
        if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_DEBUG))
        {
          v24 = v17[3];
          v25 = v18;
          v28 = objc_msgSend_packageID(v24, v26, v27);
          *buf = 138543362;
          v36 = v28;
          _os_log_debug_impl(&dword_1883EA000, v25, OS_LOG_TYPE_DEBUG, "Decoded package for xpc with ID=%{public}@", buf, 0xCu);
        }

        v20 = objc_msgSend_liftAnchor_(CKPackageDatabase, v19, v13);
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v21 = ck_log_facility_package;
        if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_DEBUG))
        {
          v29 = v17[3];
          v30 = v21;
          v33 = objc_msgSend_packageID(v29, v31, v32);
          *buf = 138543362;
          v36 = v33;
          _os_log_debug_impl(&dword_1883EA000, v30, OS_LOG_TYPE_DEBUG, "Decoded package with ID=%{public}@", buf, 0xCu);
        }
      }
    }

    self = v17;

    selfCopy = self;
  }

  v22 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)UUID
{
  v14[2] = *MEMORY[0x1E69E9840];
  v14[1] = 0;
  v3 = objc_msgSend_packageID(self->_sqlitePackage, a2, v2);
  v14[0] = objc_msgSend_unsignedLongLongValue(v3, v4, v5);

  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  v8 = objc_msgSend_initWithUUIDBytes_(v6, v7, v14);
  v11 = objc_msgSend_UUIDString(v8, v9, v10);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)packageDatabase
{
  v3 = objc_msgSend_db(self->_sqlitePackage, a2, v2);
  v5 = objc_msgSend_packageDatabaseInSQLiteDatabase_error_(CKPackageDatabase, v4, v3, 0);

  return v5;
}

- (CKRecord)record
{
  WeakRetained = objc_loadWeakRetained(&self->_record);

  return WeakRetained;
}

@end