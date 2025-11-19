@interface CKPackageDatabase
+ (id)_bundleIdForCurrentProcess;
+ (id)_usingAnchor:(id)a3 performBlock:(id)a4;
+ (id)descriptionOfAnchor:(id)a3;
+ (id)liftAnchor:(id)a3;
+ (id)packageDatabaseForBundleID:(id)a3 error:(id *)a4;
+ (id)packageDatabasePathForBundleID:(id)a3;
+ (id)packageFromAnchor:(id)a3 error:(id *)a4;
+ (unint64_t)packageCount:(id *)a3;
- (id)anchorWithPackageInfo:(id)a3 expirationDate:(id)a4 error:(id *)a5;
- (id)bundleID;
- (id)existingPackage:(id)a3 error:(id *)a4;
- (id)finishInitializing;
- (id)newPackage:(id *)a3;
- (id)packageReferenceFromAnchorDictionary:(id)a3 error:(id *)a4;
- (id)refcountBecameZeroForPackage:(id)a3 packageID:(id)a4;
- (void)createTables;
@end

@implementation CKPackageDatabase

- (void)createTables
{
  v13.receiver = self;
  v13.super_class = CKPackageDatabase;
  [(CKSQLiteTableGroup *)&v13 createTables];
  v3 = [CKPackageDirectoryTable alloc];
  v5 = objc_msgSend_initWithLogicalTableName_(v3, v4, @"PackageDirectory");
  directoryTable = self->_directoryTable;
  self->_directoryTable = v5;

  objc_msgSend_addTable_(self, v7, self->_directoryTable);
  v8 = [CKPackageReferenceTable alloc];
  v10 = objc_msgSend_initWithLogicalTableName_(v8, v9, @"ReferenceTable");
  referenceTable = self->_referenceTable;
  self->_referenceTable = v10;

  objc_msgSend_addTable_(self, v12, self->_referenceTable);
}

- (id)finishInitializing
{
  v11.receiver = self;
  v11.super_class = CKPackageDatabase;
  v3 = [(CKSQLiteTableGroup *)&v11 finishInitializing];
  if (!v3)
  {
    if (!objc_msgSend_isFirstInstanceInProcess(self, v4, v5) || (objc_msgSend_removeInvalidReferences(self->_referenceTable, v7, v8), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (objc_msgSend_isFirstInstanceSinceBoot(self, v7, v8))
      {
        v3 = objc_msgSend_removeExpiredPackages(self->_directoryTable, v9, v10);
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (id)newPackage:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1883ED854;
  v15 = sub_1883EF580;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1885240E4;
  v10[3] = &unk_1E70BC218;
  v10[4] = self;
  v10[5] = &v11;
  v4 = objc_msgSend_performTransaction_(self, a2, v10);
  v5 = v4;
  if (a3 && v4)
  {
    v6 = v4;
    *a3 = v5;
    v7 = v12[5];
    v12[5] = 0;
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);
  return v8;
}

- (id)existingPackage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1883ED854;
  v22 = sub_1883EF580;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_188524340;
  v15[3] = &unk_1E70BC0C0;
  v15[4] = self;
  v7 = v6;
  v16 = v7;
  v17 = &v18;
  v9 = objc_msgSend_performTransaction_(self, v8, v15);
  v10 = v9;
  if (a4 && v9)
  {
    v11 = v9;
    *a4 = v10;
    v12 = v19[5];
    v19[5] = 0;
  }

  v13 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v13;
}

- (id)anchorWithPackageInfo:(id)a3 expirationDate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1883ED854;
  v28 = sub_1883EF580;
  v29 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1885245E0;
  v19[3] = &unk_1E70BC240;
  v10 = v8;
  v20 = v10;
  v21 = self;
  v11 = v9;
  v22 = v11;
  v23 = &v24;
  v13 = objc_msgSend_performTransaction_(self, v12, v19);
  v14 = v13;
  if (v13)
  {
    if (a5)
    {
      v15 = v13;
      *a5 = v14;
    }

    v16 = v25[5];
    v25[5] = 0;
  }

  v17 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v17;
}

+ (id)_usingAnchor:(id)a3 performBlock:(id)a4
{
  v6 = a4;
  v17 = 0;
  v7 = sub_1885248A0(a1, a3, &v17);
  v9 = v17;
  if (v7)
  {
    v11 = objc_msgSend_objectForKey_(v7, v8, @"bundleID");
    if (v11)
    {
      v16 = v9;
      v12 = objc_msgSend_packageDatabaseForBundleID_error_(CKPackageDatabase, v10, v11, &v16);
      v13 = v16;

      if (v12)
      {
        v14 = v6[2](v6, v12, v7);

        v13 = v14;
      }

      v9 = v13;
    }
  }

  return v9;
}

- (id)packageReferenceFromAnchorDictionary:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = objc_msgSend_objectForKey_(v6, v7, @"referenceID");
  v26 = 0;
  v10 = objc_msgSend_referenceWithID_error_(self, v9, v8, &v26);
  v11 = v26;
  v13 = v11;
  if (v10)
  {
    v14 = objc_msgSend_objectForKey_(v6, v12, @"packageDBCreationDate");
    v17 = objc_msgSend_creationDate(self, v15, v16);
    isEqualToDate = objc_msgSend_isEqualToDate_(v14, v18, v17);

    if ((isEqualToDate & 1) == 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v20 = ck_log_facility_package;
      if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1883EA000, v20, OS_LOG_TYPE_ERROR, "Date mismatch in package anchor (package database was recreated).", buf, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    if (v11)
    {
      goto LABEL_12;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "reference entry missing for anchor: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  if (!(v10 | v13))
  {
    v13 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v21, @"CKErrorDomain", 12, @"Package reference for anchor not found");
LABEL_12:
    v10 = 0;
  }

  if (a4 && v13)
  {
    v22 = v13;
    *a4 = v13;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)packageFromAnchor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1883ED854;
  v18 = sub_1883EF580;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188524F94;
  v13[3] = &unk_1E70BC268;
  v13[4] = &v14;
  v8 = objc_msgSend__usingAnchor_performBlock_(a1, v7, v6, v13);
  v9 = v8;
  if (a4 && v8)
  {
    v10 = v8;
    *a4 = v9;
  }

  v11 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v11;
}

+ (id)liftAnchor:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_1883ED854;
  v11[4] = sub_1883EF580;
  v12 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188525250;
  v10[3] = &unk_1E70BC268;
  v10[4] = v11;
  v6 = objc_msgSend__usingAnchor_performBlock_(a1, v5, v4, v10);
  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Error lifing package anchor: %{public}@", buf, 0xCu);
    }
  }

  _Block_object_dispose(v11, 8);

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)descriptionOfAnchor:(id)a3
{
  if (a3)
  {
    v14 = 0;
    v3 = sub_1885248A0(a1, a3, &v14);
    v5 = v14;
    if (v3)
    {
      v6 = objc_msgSend_objectForKey_(v3, v4, @"packageID");
      v8 = objc_msgSend_objectForKey_(v3, v7, @"bundleID");
      v10 = objc_msgSend_objectForKey_(v3, v9, @"expirationDate");
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"CKPackage anchor to packageID=%@, for %@, expires %@", v6, v8, v10);
    }

    else
    {
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"Package anchor decode error: %@", v5);
    }
  }

  else
  {
    v12 = @"<nil>";
  }

  return v12;
}

- (id)refcountBecameZeroForPackage:(id)a3 packageID:(id)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_package;
  if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v31 = v7;
    _os_log_impl(&dword_1883EA000, v8, OS_LOG_TYPE_INFO, "Deleting package with packageID=%{public}@ (zero refcount)", buf, 0xCu);
  }

  v34 = @"PACKAGEID";
  v35[0] = v7;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v35, &v34, 1);
  referenceTable = self->_referenceTable;
  v29 = 0;
  objc_msgSend_deleteEntriesMatching_label_error_predicate_(referenceTable, v12, v10, 0, &v29, &unk_1EFA2E5A8);
  v13 = v29;
  if (v13 || (objc_msgSend_deletePrimaryKeyValue_(self->_directoryTable, v14, v7), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v13;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v18 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = v7;
      v32 = 2114;
      v33 = v17;
      _os_log_error_impl(&dword_1883EA000, v18, OS_LOG_TYPE_ERROR, "Failed to delete package with packageID=%{public}@: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v6)
    {
      v21 = v6;
      v17 = 0;
      v23 = objc_msgSend_purgeGroup_(CKSQLitePackage, v22, v21);
    }

    else
    {
      v24 = objc_msgSend_db(self, v15, v16);
      v28 = 0;
      v21 = objc_msgSend_tableGroupInDatabase_withID_error_(CKSQLitePackage, v25, v24, v7, &v28);
      v17 = v28;

      if (!v21)
      {
        goto LABEL_11;
      }

      v23 = objc_msgSend_purgeGroup_(CKSQLitePackage, v26, v21);
    }

    v27 = v23;
  }

LABEL_11:

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (unint64_t)packageCount:(id *)a3
{
  v4 = objc_msgSend_packageDatabaseForBundleID_error_(CKPackageDatabase, a2, 0, a3);
  v6 = objc_msgSend_packageCount_(v4, v5, a3);

  return v6;
}

+ (id)_bundleIdForCurrentProcess
{
  v3 = objc_msgSend_sharedManager(CKProcessScopedStateManager, a2, v2);
  v6 = objc_msgSend_untrustedEntitlements(v3, v4, v5);
  v9 = objc_msgSend_applicationBundleID(v6, v7, v8);

  return v9;
}

+ (id)packageDatabasePathForBundleID:(id)a3
{
  v5 = a3;
  if (v5)
  {
    goto LABEL_5;
  }

  if ((byte_1EA90C538 & 1) == 0)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, a1, @"CKSQLitePackageDatabase.m", 650, @"Adopter only");
  }

  v5 = objc_msgSend__bundleIdForCurrentProcess(a1, v6, v7);
  if (v5)
  {
LABEL_5:
    v9 = v5;
    if (__sTestOverridesAvailable[0] != 1)
    {
      goto LABEL_8;
    }

    if (!objc_msgSend_isEqualToString_(v5, v6, @"com.apple.cloudkit.CloudKitUnitTestsHost"))
    {
      goto LABEL_8;
    }

    v10 = CKGetHomeDirEscapingSandbox();
    v12 = objc_msgSend_URLByAppendingPathComponent_(v10, v11, @"Library");
    v14 = objc_msgSend_URLByAppendingPathComponent_(v12, v13, @"Caches");
    v16 = objc_msgSend_URLByAppendingPathComponent_(v14, v15, @"com.apple.cloudd");
    v18 = objc_msgSend_URLByAppendingPathComponent_(v16, v17, @"CloudKitUnitTestsHostPackageDir");

    v21 = objc_msgSend_path(v18, v19, v20);

    if (!v21)
    {
LABEL_8:
      v23 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
      v21 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, 0);
    }

    v25 = objc_msgSend_stringByAppendingPathComponent_(v21, v22, @"CloudKit");
    v27 = objc_msgSend_stringByAppendingPathComponent_(v25, v26, v9);

    v29 = objc_msgSend_stringByAppendingPathComponent_(v27, v28, @"Packages");

    return v29;
  }

  else
  {
    v33 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v6, v8);
    v34 = [CKSignificantIssue alloc];
    v35 = [CKSourceCodeLocation alloc];
    v37 = objc_msgSend_initWithFilePath_lineNumber_(v35, v36, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/Asset/Package/CKSQLitePackageDatabase.m", 653);
    v39 = objc_msgSend_initWithSourceCodeLocation_format_(v34, v38, v37, @"Could not retrieve application bundle ID because the %@ entitlement is missing", @"application-identifier");
    objc_msgSend_handleSignificantIssue_actions_(v33, v40, v39, 0);

    v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v41, @"Could not retrieve application bundle ID because the %@ entitlement is missing", @"application-identifier");
    objc_msgSend_UTF8String(v42, v43, v44);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

+ (id)packageDatabaseForBundleID:(id)a3 error:(id *)a4
{
  v5 = objc_msgSend_packageDatabasePathForBundleID_(a1, a2, a3);
  v7 = objc_msgSend_databaseInDirectory_registryDatabase_options_error_(CKSQLiteDatabase, v6, v5, 0, 512, a4);
  v9 = objc_msgSend_packageDatabaseInSQLiteDatabase_error_(CKPackageDatabase, v8, v7, a4);

  return v9;
}

- (id)bundleID
{
  v4 = objc_msgSend_db(self, a2, v2);
  if (objc_msgSend_isInMemoryDatabase(v4, v5, v6))
  {
    v9 = objc_opt_class();
    v12 = objc_msgSend__bundleIdForCurrentProcess(v9, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_db(self, v7, v8);
    v16 = objc_msgSend_databaseDirectory(v13, v14, v15);
    v19 = objc_msgSend_pathComponents(v16, v17, v18);

    v22 = objc_msgSend_count(v19, v20, v21);
    v12 = objc_msgSend_objectAtIndex_(v19, v23, v22 - 2);
  }

  return v12;
}

@end