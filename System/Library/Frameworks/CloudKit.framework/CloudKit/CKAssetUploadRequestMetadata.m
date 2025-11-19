@interface CKAssetUploadRequestMetadata
- (BOOL)isEqual:(id)a3;
- (CKAssetUploadRequestMetadata)initWithCoder:(id)a3;
- (CKAssetUploadRequestMetadata)initWithRepairZoneRecordID:(id)a3 databaseScope:(int64_t)a4 recordID:(id)a5 recordType:(id)a6 fieldName:(id)a7;
- (CKAssetUploadRequestMetadata)initWithRepairZoneRecordID:(id)a3 databaseScope:(int64_t)a4 recordID:(id)a5 recordType:(id)a6 fieldName:(id)a7 fileSignature:(id)a8 referenceSignature:(id)a9 listIndex:(int64_t)a10;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKAssetUploadRequestMetadata

- (CKAssetUploadRequestMetadata)initWithRepairZoneRecordID:(id)a3 databaseScope:(int64_t)a4 recordID:(id)a5 recordType:(id)a6 fieldName:(id)a7
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

- (CKAssetUploadRequestMetadata)initWithRepairZoneRecordID:(id)a3 databaseScope:(int64_t)a4 recordID:(id)a5 recordType:(id)a6 fieldName:(id)a7 fileSignature:(id)a8 referenceSignature:(id)a9 listIndex:(int64_t)a10
{
  v16 = a8;
  v17 = a9;
  v28.receiver = self;
  v28.super_class = CKAssetUploadRequestMetadata;
  v20 = [(CKUploadRequestMetadata *)&v28 initWithRepairZoneRecordID:a3 databaseScope:a4 recordID:a5 recordType:a6 fieldName:a7];
  if (v20)
  {
    v21 = objc_msgSend_copy(v16, v18, v19);
    fileSignature = v20->_fileSignature;
    v20->_fileSignature = v21;

    v25 = objc_msgSend_copy(v17, v23, v24);
    referenceSignature = v20->_referenceSignature;
    v20->_referenceSignature = v25;

    v20->_listIndex = a10;
  }

  return v20;
}

- (CKAssetUploadRequestMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CKAssetUploadRequestMetadata;
  v5 = [(CKUploadRequestMetadata *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = NSStringFromSelector(sel_listIndex);
    v5->_listIndex = objc_msgSend_decodeIntegerForKey_(v4, v8, v7);

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_fileSignature);
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v9, v10);
    fileSignature = v5->_fileSignature;
    v5->_fileSignature = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_referenceSignature);
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v14, v15);
    referenceSignature = v5->_referenceSignature;
    v5->_referenceSignature = v17;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v21.receiver = self;
  v21.super_class = CKAssetUploadRequestMetadata;
  [(CKUploadRequestMetadata *)&v21 encodeWithCoder:v4];
  v8 = objc_msgSend_listIndex(self, v6, v7);
  v9 = NSStringFromSelector(sel_listIndex);
  objc_msgSend_encodeInteger_forKey_(v4, v10, v8, v9);

  v13 = objc_msgSend_fileSignature(self, v11, v12);
  v14 = NSStringFromSelector(sel_fileSignature);
  objc_msgSend_encodeObject_forKey_(v4, v15, v13, v14);

  v18 = objc_msgSend_referenceSignature(self, v16, v17);
  v19 = NSStringFromSelector(sel_referenceSignature);
  objc_msgSend_encodeObject_forKey_(v4, v20, v18, v19);

  objc_autoreleasePoolPop(v5);
}

- (unint64_t)hash
{
  v20.receiver = self;
  v20.super_class = CKAssetUploadRequestMetadata;
  v3 = [(CKUploadRequestMetadata *)&v20 hash];
  v6 = objc_msgSend_listIndex(self, v4, v5);
  v9 = objc_msgSend_fileSignature(self, v7, v8);
  v12 = v6 ^ objc_msgSend_hash(v9, v10, v11);
  v15 = objc_msgSend_referenceSignature(self, v13, v14);
  v18 = v12 ^ objc_msgSend_hash(v15, v16, v17);

  return v18 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CKAssetUploadRequestMetadata;
  if ([(CKUploadRequestMetadata *)&v28 isEqual:v4])
  {
    v5 = v4;
    v8 = objc_msgSend_listIndex(self, v6, v7);
    if (v8 == objc_msgSend_listIndex(v5, v9, v10) && (objc_msgSend_fileSignature(self, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_fileSignature(v5, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_isEqual_(v13, v17, v16), v16, v13, v18))
    {
      v21 = objc_msgSend_referenceSignature(self, v19, v20);
      v24 = objc_msgSend_referenceSignature(v5, v22, v23);
      isEqual = objc_msgSend_isEqual_(v21, v25, v24);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

@end