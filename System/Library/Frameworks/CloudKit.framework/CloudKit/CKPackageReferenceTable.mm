@interface CKPackageReferenceTable
+ (id)dbProperties;
- (BOOL)refcountIsZeroForPackageID:(id)d error:(id *)error;
- (id)deleteReference:(id)reference;
- (id)existingAnchorWithID:(id)d error:(id *)error;
- (id)newProcessReferenceForPackage:(id)package error:(id *)error;
- (id)removeInvalidReferences;
- (unint64_t)referenceCountForPackageID:(id)d error:(id *)error;
@end

@implementation CKPackageReferenceTable

+ (id)dbProperties
{
  v6[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"referenceID";
  v5[1] = @"packageID";
  v6[0] = &unk_1EFA84FD8;
  v6[1] = &unk_1EFA85038;
  v5[2] = @"expirationDate";
  v5[3] = @"referenceType";
  v6[2] = &unk_1EFA85020;
  v6[3] = &unk_1EFA85050;
  v5[4] = @"packageDBCreationDate";
  v6[4] = &unk_1EFA85020;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 5);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)removeInvalidReferences
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18852335C;
  v4[3] = &unk_1E70BC1A0;
  v4[4] = self;
  v2 = objc_msgSend_performTransaction_(self, a2, v4);

  return v2;
}

- (unint64_t)referenceCountForPackageID:(id)d error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"PACKAGEID";
  v15[0] = d;
  v6 = MEMORY[0x1E695DF20];
  dCopy = d;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v6, v8, v15, &v14, 1);

  v11 = objc_msgSend_countOfEntriesMatching_label_error_predicate_(self, v10, v9, off_1EA90EB98, error, &unk_1EFA2E568);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)refcountIsZeroForPackageID:(id)d error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"PACKAGEID";
  v14[0] = d;
  v6 = MEMORY[0x1E695DF20];
  dCopy = d;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v6, v8, v14, &v13, 1);

  LOBYTE(error) = objc_msgSend_hasEntriesMatching_label_error_predicate_(self, v10, v9, off_1EA90EBB0, error, &unk_1EFA2E588);
  v11 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)newProcessReferenceForPackage:(id)package error:(id *)error
{
  packageCopy = package;
  if (byte_1EA90C538)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v6, v7, 2592000.0);
  v12 = objc_msgSend_newReferenceForPackage_referenceType_expirationDate_error_(self, v11, packageCopy, v9, v10, error);

  return v12;
}

- (id)existingAnchorWithID:(id)d error:(id *)error
{
  v7 = objc_msgSend_entryWithPrimaryKey_error_(self, a2, d, error);
  if (v7)
  {
    v8 = objc_msgSend_tableGroup(self, v5, v6);
    objc_msgSend_setPackageDB_(v7, v9, v8);
  }

  return v7;
}

- (id)deleteReference:(id)reference
{
  v17 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_188523CA4;
  v11[3] = &unk_1E70BC178;
  v11[4] = self;
  v5 = referenceCopy;
  v12 = v5;
  v7 = objc_msgSend_performInTransaction_(self, v6, v11);
  if (v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, "Failed to remove reference %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

@end