@interface CKPackageUploadRequestMetadata
- (BOOL)isEqual:(id)equal;
- (CKPackageUploadRequestMetadata)initWithCoder:(id)coder;
- (CKPackageUploadRequestMetadata)initWithRepairZoneRecordID:(id)d databaseScope:(int64_t)scope recordID:(id)iD recordType:(id)type fieldName:(id)name;
- (CKPackageUploadRequestMetadata)initWithRepairZoneRecordID:(id)d databaseScope:(int64_t)scope recordID:(id)iD recordType:(id)type fieldName:(id)name fileSignatures:(id)signatures referenceSignatures:(id)referenceSignatures;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKPackageUploadRequestMetadata

- (CKPackageUploadRequestMetadata)initWithRepairZoneRecordID:(id)d databaseScope:(int64_t)scope recordID:(id)iD recordType:(id)type fieldName:(id)name
{
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  nameCopy = name;
  v15 = [CKException alloc];
  v16 = *MEMORY[0x1E695D940];
  v17 = NSStringFromSelector(a2);
  v19 = objc_msgSend_initWithName_format_(v15, v18, v16, @"%@ is unavailable", v17);
  v20 = v19;

  objc_exception_throw(v19);
}

- (CKPackageUploadRequestMetadata)initWithRepairZoneRecordID:(id)d databaseScope:(int64_t)scope recordID:(id)iD recordType:(id)type fieldName:(id)name fileSignatures:(id)signatures referenceSignatures:(id)referenceSignatures
{
  signaturesCopy = signatures;
  referenceSignaturesCopy = referenceSignatures;
  v27.receiver = self;
  v27.super_class = CKPackageUploadRequestMetadata;
  v19 = [(CKUploadRequestMetadata *)&v27 initWithRepairZoneRecordID:d databaseScope:scope recordID:iD recordType:type fieldName:name];
  if (v19)
  {
    v20 = objc_msgSend_CKDeepCopy(signaturesCopy, v17, v18);
    fileSignatures = v19->_fileSignatures;
    v19->_fileSignatures = v20;

    v24 = objc_msgSend_CKDeepCopy(referenceSignaturesCopy, v22, v23);
    referenceSignatures = v19->_referenceSignatures;
    v19->_referenceSignatures = v24;
  }

  return v19;
}

- (CKPackageUploadRequestMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = CKPackageUploadRequestMetadata;
  v5 = [(CKUploadRequestMetadata *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v12 = NSStringFromSelector(sel_fileSignatures);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v13, v11, v12);
    fileSignatures = v5->_fileSignatures;
    v5->_fileSignatures = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v16, v19, v17, v18, 0);
    v21 = NSStringFromSelector(sel_referenceSignatures);
    v23 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v22, v20, v21);
    referenceSignatures = v5->_referenceSignatures;
    v5->_referenceSignatures = v23;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = CKPackageUploadRequestMetadata;
  [(CKUploadRequestMetadata *)&v16 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_fileSignatures(self, v6, v7);
  v9 = NSStringFromSelector(sel_fileSignatures);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v8, v9);

  v13 = objc_msgSend_referenceSignatures(self, v11, v12);
  v14 = NSStringFromSelector(sel_referenceSignatures);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, v13, v14);

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v23.receiver = self;
  v23.super_class = CKPackageUploadRequestMetadata;
  if ([(CKUploadRequestMetadata *)&v23 isEqual:equalCopy])
  {
    v5 = equalCopy;
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