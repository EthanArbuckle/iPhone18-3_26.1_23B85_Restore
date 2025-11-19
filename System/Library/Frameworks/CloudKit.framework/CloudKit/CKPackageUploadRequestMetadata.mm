@interface CKPackageUploadRequestMetadata
- (BOOL)isEqual:(id)a3;
- (CKPackageUploadRequestMetadata)initWithCoder:(id)a3;
- (CKPackageUploadRequestMetadata)initWithRepairZoneRecordID:(id)a3 databaseScope:(int64_t)a4 recordID:(id)a5 recordType:(id)a6 fieldName:(id)a7;
- (CKPackageUploadRequestMetadata)initWithRepairZoneRecordID:(id)a3 databaseScope:(int64_t)a4 recordID:(id)a5 recordType:(id)a6 fieldName:(id)a7 fileSignatures:(id)a8 referenceSignatures:(id)a9;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKPackageUploadRequestMetadata

- (CKPackageUploadRequestMetadata)initWithRepairZoneRecordID:(id)a3 databaseScope:(int64_t)a4 recordID:(id)a5 recordType:(id)a6 fieldName:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [CKException alloc];
  v16 = *MEMORY[0x1E695D940];
  v17 = NSStringFromSelector(a2);
  v19 = objc_msgSend_initWithName_format_(v15, v18, v16, @"%@ is unavailable", v17);
  v20 = v19;

  objc_exception_throw(v19);
}

- (CKPackageUploadRequestMetadata)initWithRepairZoneRecordID:(id)a3 databaseScope:(int64_t)a4 recordID:(id)a5 recordType:(id)a6 fieldName:(id)a7 fileSignatures:(id)a8 referenceSignatures:(id)a9
{
  v15 = a8;
  v16 = a9;
  v27.receiver = self;
  v27.super_class = CKPackageUploadRequestMetadata;
  v19 = [(CKUploadRequestMetadata *)&v27 initWithRepairZoneRecordID:a3 databaseScope:a4 recordID:a5 recordType:a6 fieldName:a7];
  if (v19)
  {
    v20 = objc_msgSend_CKDeepCopy(v15, v17, v18);
    fileSignatures = v19->_fileSignatures;
    v19->_fileSignatures = v20;

    v24 = objc_msgSend_CKDeepCopy(v16, v22, v23);
    referenceSignatures = v19->_referenceSignatures;
    v19->_referenceSignatures = v24;
  }

  return v19;
}

- (CKPackageUploadRequestMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CKPackageUploadRequestMetadata;
  v5 = [(CKUploadRequestMetadata *)&v26 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v12 = NSStringFromSelector(sel_fileSignatures);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v13, v11, v12);
    fileSignatures = v5->_fileSignatures;
    v5->_fileSignatures = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v16, v19, v17, v18, 0);
    v21 = NSStringFromSelector(sel_referenceSignatures);
    v23 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v22, v20, v21);
    referenceSignatures = v5->_referenceSignatures;
    v5->_referenceSignatures = v23;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = CKPackageUploadRequestMetadata;
  [(CKUploadRequestMetadata *)&v16 encodeWithCoder:v4];
  v8 = objc_msgSend_fileSignatures(self, v6, v7);
  v9 = NSStringFromSelector(sel_fileSignatures);
  objc_msgSend_encodeObject_forKey_(v4, v10, v8, v9);

  v13 = objc_msgSend_referenceSignatures(self, v11, v12);
  v14 = NSStringFromSelector(sel_referenceSignatures);
  objc_msgSend_encodeObject_forKey_(v4, v15, v13, v14);

  objc_autoreleasePoolPop(v5);
}

- (unint64_t)hash
{
  v17.receiver = self;
  v17.super_class = CKPackageUploadRequestMetadata;
  v3 = [(CKUploadRequestMetadata *)&v17 hash];
  v6 = objc_msgSend_fileSignatures(self, v4, v5);
  v9 = objc_msgSend_hash(v6, v7, v8);
  v12 = objc_msgSend_referenceSignatures(self, v10, v11);
  v15 = v9 ^ objc_msgSend_hash(v12, v13, v14);

  return v15 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CKPackageUploadRequestMetadata;
  if ([(CKUploadRequestMetadata *)&v23 isEqual:v4])
  {
    v5 = v4;
    v8 = objc_msgSend_fileSignatures(self, v6, v7);
    v11 = objc_msgSend_fileSignatures(v5, v9, v10);
    isEqual = objc_msgSend_isEqual_(v8, v12, v11);

    if (isEqual)
    {
      v16 = objc_msgSend_referenceSignatures(self, v14, v15);
      v19 = objc_msgSend_referenceSignatures(v5, v17, v18);
      v21 = objc_msgSend_isEqual_(v16, v20, v19);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end