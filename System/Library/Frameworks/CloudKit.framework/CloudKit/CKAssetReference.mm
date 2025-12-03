@interface CKAssetReference
- (BOOL)isEqual:(id)equal;
- (CKAssetReference)initWithCoder:(id)coder;
- (CKAssetReference)initWithExistingRecordID:(id)d databaseScope:(int64_t)scope fieldName:(id)name fileSignature:(id)signature;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKAssetReference

- (CKAssetReference)initWithExistingRecordID:(id)d databaseScope:(int64_t)scope fieldName:(id)name fileSignature:(id)signature
{
  dCopy = d;
  nameCopy = name;
  signatureCopy = signature;
  v47 = 0;
  v13 = _CKCheckArgument("recordID", dCopy, 0, 0, 0, &v47);
  v14 = v47;
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

  v46 = 0;
  v15 = _CKCheckArgument("fieldName", nameCopy, 0, 0, 0, &v46);
  v14 = v46;
  if ((v15 & 1) == 0 || (v14, v45 = 0, v16 = _CKCheckArgument("fileSignature", signatureCopy, 0, 0, 0, &v45), v14 = v45, (v16 & 1) == 0))
  {
LABEL_9:
    v33 = v14;
    v34 = [CKException alloc];
    v37 = objc_msgSend_code(v33, v35, v36);
    v40 = objc_msgSend_localizedDescription(v33, v38, v39);
    v42 = objc_msgSend_initWithCode_format_(v34, v41, v37, @"%@", v40);
    v43 = v42;

    objc_exception_throw(v42);
  }

  if ((objc_msgSend_isValidSignature_(CKSignatureGenerator, v17, signatureCopy) & 1) == 0)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v18, *MEMORY[0x1E695D940], @"Invalid fileSignature");
  }

  v44.receiver = self;
  v44.super_class = CKAssetReference;
  v21 = [(CKAssetReference *)&v44 init];
  if (v21)
  {
    v22 = objc_msgSend_copy(dCopy, v19, v20);
    recordID = v21->_recordID;
    v21->_recordID = v22;

    v21->_databaseScope = scope;
    v26 = objc_msgSend_copy(nameCopy, v24, v25);
    fieldName = v21->_fieldName;
    v21->_fieldName = v26;

    v30 = objc_msgSend_copy(signatureCopy, v28, v29);
    fileSignature = v21->_fileSignature;
    v21->_fileSignature = v30;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v34 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_recordID(self, v6, v7);
      v11 = objc_msgSend_recordID(v5, v9, v10);
      isEqual = objc_msgSend_isEqual_(v8, v12, v11);

      if (!isEqual)
      {
        goto LABEL_9;
      }

      v16 = objc_msgSend_databaseScope(self, v14, v15);
      if (v16 != objc_msgSend_databaseScope(v5, v17, v18))
      {
        goto LABEL_9;
      }

      v21 = objc_msgSend_fieldName(self, v19, v20);
      v24 = objc_msgSend_fieldName(v5, v22, v23);
      v26 = objc_msgSend_isEqual_(v21, v25, v24);

      if (v26)
      {
        v29 = objc_msgSend_fileSignature(self, v27, v28);
        v32 = objc_msgSend_fileSignature(v5, v30, v31);
        v34 = objc_msgSend_isEqual_(v29, v33, v32);
      }

      else
      {
LABEL_9:
        v34 = 0;
      }
    }

    else
    {
      v34 = 0;
    }
  }

  return v34;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_recordID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_databaseScope(self, v8, v9) ^ v7;
  v13 = objc_msgSend_fieldName(self, v11, v12);
  v16 = objc_msgSend_hash(v13, v14, v15);
  v19 = objc_msgSend_fileSignature(self, v17, v18);
  v22 = v16 ^ objc_msgSend_hash(v19, v20, v21);

  return v10 ^ v22;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_recordID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"RecordID");

  v11 = objc_msgSend_databaseScope(self, v9, v10);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v12, v11, @"DatabaseScope");
  v15 = objc_msgSend_fieldName(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"FieldName");

  v19 = objc_msgSend_fileSignature(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"FileSignature");

  objc_autoreleasePoolPop(v4);
}

- (CKAssetReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CKAssetReference;
  v5 = [(CKAssetReference *)&v21 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"RecordID");
    recordID = v5->_recordID;
    v5->_recordID = v9;

    v5->_databaseScope = objc_msgSend_decodeIntegerForKey_(coderCopy, v11, @"DatabaseScope");
    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"FieldName");
    fieldName = v5->_fieldName;
    v5->_fieldName = v14;

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"FileSignature");
    fileSignature = v5->_fileSignature;
    v5->_fileSignature = v18;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end