@interface CKSQLitePackage
+ (id)existingPackageInDatabase:(id)database packageInfo:(id)info error:(id *)error;
+ (id)newPackageInDatabase:(id)database error:(id *)error;
- (id)addSection:(id)section;
- (id)description;
- (id)itemEnumerator;
- (id)prepareForSectionPlanning;
- (id)sectionAtIndex:(unint64_t)index error:(id *)error;
- (id)sectionEnumerator;
- (id)setAssetTransferOptions:(id)options;
- (id)setBoundaryKey:(id)key;
- (id)setPackageReference:(id)reference;
- (id)setSignature:(id)signature verificationKey:(id)key;
- (id)signature;
- (id)verificationKey;
- (void)createTables;
@end

@implementation CKSQLitePackage

+ (id)newPackageInDatabase:(id)database error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  v9 = objc_msgSend_db(databaseCopy, v7, v8);
  v11 = objc_msgSend_tableGroupInDatabase_withName_options_error_(CKSQLitePackage, v10, v9, @"Package", 0x100000, error);
  v14 = v11;
  if (v11)
  {
    v15 = objc_msgSend_packageID(v11, v12, v13);
    v17 = objc_msgSend_packageInfoForNewPackageWithID_error_(databaseCopy, v16, v15, error);

    if (v17)
    {
      sub_188521138(v14, databaseCopy, v17);
    }

    else
    {

      if (error && objc_msgSend_CKIsUniqueConstraintError_(MEMORY[0x1E696ABC0], v18, *error))
      {
        *error = 0;
        v14 = objc_msgSend_newPackageInDatabase_error_(self, v19, databaseCopy, error);
      }

      else
      {
        v14 = 0;
      }
    }
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v20 = ck_log_facility_package;
  if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_DEBUG))
  {
    if (error)
    {
      v23 = *error;
    }

    else
    {
      v23 = 0;
    }

    v24 = 138543618;
    v25 = v14;
    v26 = 2114;
    v27 = v23;
    _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "newPackageInDatabase returning %{public}@, error=%{public}@", &v24, 0x16u);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)existingPackageInDatabase:(id)database packageInfo:(id)info error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  infoCopy = info;
  v11 = objc_msgSend_db(databaseCopy, v9, v10);
  v14 = objc_msgSend_packageID(infoCopy, v12, v13);
  v16 = objc_msgSend_tableGroupInDatabase_withID_error_(CKSQLitePackage, v15, v11, v14, error);
  v18 = v16;
  if (error && !v16 && !*error)
  {
    *error = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v17, @"CKInternalErrorDomain", 12, @"No package with ID %@", v14);
  }

  sub_188521138(v18, databaseCopy, infoCopy);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v19 = ck_log_facility_package;
  if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_DEBUG))
  {
    if (error)
    {
      v22 = *error;
    }

    else
    {
      v22 = 0;
    }

    *buf = 138543618;
    v24 = v18;
    v25 = 2114;
    v26 = v22;
    _os_log_debug_impl(&dword_1883EA000, v19, OS_LOG_TYPE_DEBUG, "existingPackageInDatabase returning %{public}@, error=%{public}@", buf, 0x16u);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_packageID(self->_packageInfo, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"%@(%p): packageID=%@", v5, self, v8);

  return v10;
}

- (void)createTables
{
  v13.receiver = self;
  v13.super_class = CKSQLitePackage;
  [(CKSQLiteTableGroup *)&v13 createTables];
  v3 = [CKPackageItemTable alloc];
  v5 = objc_msgSend_initWithLogicalTableName_(v3, v4, @"Items");
  items = self->_items;
  self->_items = v5;

  objc_msgSend_addTable_(self, v7, self->_items);
  v8 = [CKPackageSectionTable alloc];
  v10 = objc_msgSend_initWithLogicalTableName_(v8, v9, @"Sections");
  sections = self->_sections;
  self->_sections = v10;

  objc_msgSend_addTable_(self, v12, self->_sections);
}

- (id)setPackageReference:(id)reference
{
  packageInfo = self->_packageInfo;
  referenceCopy = reference;
  v8 = objc_msgSend_packageReference(packageInfo, v6, v7);
  objc_msgSend_setPackageReference_(self->_packageInfo, v9, referenceCopy);

  v12 = objc_msgSend_updatePackageReference_(self->_packageDB, v10, self->_packageInfo);
  if (v12)
  {
    objc_msgSend_setPackageReference_(self->_packageInfo, v11, v8);
  }

  return v12;
}

- (id)setAssetTransferOptions:(id)options
{
  packageInfo = self->_packageInfo;
  optionsCopy = options;
  v8 = objc_msgSend_assetTransferOptions(packageInfo, v6, v7);
  objc_msgSend_setAssetTransferOptions_(self->_packageInfo, v9, optionsCopy);

  v12 = objc_msgSend_updateAssetTransferOptions_(self->_packageDB, v10, self->_packageInfo);
  if (v12)
  {
    objc_msgSend_setAssetTransferOptions_(self->_packageInfo, v11, v8);
  }

  return v12;
}

- (id)setBoundaryKey:(id)key
{
  packageInfo = self->_packageInfo;
  keyCopy = key;
  v8 = objc_msgSend_boundaryKey(packageInfo, v6, v7);
  objc_msgSend_setBoundaryKey_(self->_packageInfo, v9, keyCopy);

  v12 = objc_msgSend_updateBoundaryKey_(self->_packageDB, v10, self->_packageInfo);
  if (v12)
  {
    objc_msgSend_setBoundaryKey_(self->_packageInfo, v11, v8);
  }

  return v12;
}

- (id)setSignature:(id)signature verificationKey:(id)key
{
  packageInfo = self->_packageInfo;
  keyCopy = key;
  signatureCopy = signature;
  v11 = objc_msgSend_signature(packageInfo, v9, v10);
  v14 = objc_msgSend_verificationKey(self->_packageInfo, v12, v13);
  objc_msgSend_setSignature_(self->_packageInfo, v15, signatureCopy);

  objc_msgSend_setVerificationKey_(self->_packageInfo, v16, keyCopy);
  v19 = objc_msgSend_updateSignatureAndVerificationKey_(self->_packageDB, v17, self->_packageInfo);
  if (v19)
  {
    objc_msgSend_setSignature_(self->_packageInfo, v18, v11);
    objc_msgSend_setVerificationKey_(self->_packageInfo, v20, v14);
  }

  return v19;
}

- (id)signature
{
  v5 = objc_msgSend_signature(self->_packageInfo, a2, v2);
  if (!v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Warning: nil package signature, trying to fetch from database", buf, 2u);
    }

    v10 = objc_msgSend_fetchSignatureAndVerificationKey_(self->_packageDB, v7, self->_packageInfo);
    if (v10)
    {
      v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKSQLitePackage.m", 552, @"error fetching package signature: %@", v10);
    }

    v5 = objc_msgSend_signature(self->_packageInfo, v8, v9);
  }

  return v5;
}

- (id)verificationKey
{
  v5 = objc_msgSend_verificationKey(self->_packageInfo, a2, v2);
  if (!v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v6, OS_LOG_TYPE_ERROR, "Warning: nil package verificationKey, trying to fetch from database", buf, 2u);
    }

    v10 = objc_msgSend_fetchSignatureAndVerificationKey_(self->_packageDB, v7, self->_packageInfo);
    if (v10)
    {
      v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKSQLitePackage.m", 568, @"error fetching package verificationKey: %@", v10);
    }

    v5 = objc_msgSend_verificationKey(self->_packageInfo, v8, v9);
  }

  return v5;
}

- (id)sectionAtIndex:(unint64_t)index error:(id *)error
{
  v5 = objc_msgSend_entryWithIndex_error_(self->_sections, a2, index, error);
  objc_msgSend_setPackage_(v5, v6, self);

  return v5;
}

- (id)prepareForSectionPlanning
{
  v4 = objc_msgSend_sectionCount(self, a2, v2);
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_188521E20;
    v7[3] = &unk_1E70BC1A0;
    v7[4] = self;
    v4 = objc_msgSend_performTransaction_(self, v5, v7);
  }

  return v4;
}

- (id)addSection:(id)section
{
  sectionCopy = section;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188521F34;
  v9[3] = &unk_1E70BC178;
  v9[4] = self;
  v10 = sectionCopy;
  v5 = sectionCopy;
  v7 = objc_msgSend_performInTransaction_(self, v6, v9);

  return v7;
}

- (id)sectionEnumerator
{
  v3 = [CKPackageSectionTableEntryEnumerator alloc];
  v5 = objc_msgSend_initWithPackage_packageTable_(v3, v4, self, self->_sections);

  return v5;
}

- (id)itemEnumerator
{
  v3 = [CKPackageTableEntryEnumerator alloc];
  v5 = objc_msgSend_initWithPackageTable_(v3, v4, self->_items);

  return v5;
}

@end