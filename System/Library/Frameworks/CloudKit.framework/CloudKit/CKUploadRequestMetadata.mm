@interface CKUploadRequestMetadata
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (CKUploadRequestMetadata)initWithCoder:(id)coder;
- (CKUploadRequestMetadata)initWithRepairZoneRecordID:(id)d databaseScope:(int64_t)scope recordID:(id)iD recordType:(id)type fieldName:(id)name;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKUploadRequestMetadata

+ (void)initialize
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 2);
  sub_1886CEE50(self, v3, v5, 0, 1);

  v6 = *MEMORY[0x1E69E9840];
}

- (CKUploadRequestMetadata)initWithRepairZoneRecordID:(id)d databaseScope:(int64_t)scope recordID:(id)iD recordType:(id)type fieldName:(id)name
{
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  nameCopy = name;
  v35.receiver = self;
  v35.super_class = CKUploadRequestMetadata;
  v16 = [(CKUploadRequestMetadata *)&v35 init];
  v19 = v16;
  if (v16)
  {
    v16->_databaseScope = scope;
    v20 = objc_msgSend_copy(iDCopy, v17, v18);
    recordID = v19->_recordID;
    v19->_recordID = v20;

    v24 = objc_msgSend_copy(typeCopy, v22, v23);
    recordType = v19->_recordType;
    v19->_recordType = v24;

    v28 = objc_msgSend_copy(nameCopy, v26, v27);
    fieldName = v19->_fieldName;
    v19->_fieldName = v28;

    v32 = objc_msgSend_copy(dCopy, v30, v31);
    repairZoneRecordID = v19->_repairZoneRecordID;
    v19->_repairZoneRecordID = v32;
  }

  return v19;
}

- (CKUploadRequestMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = CKUploadRequestMetadata;
  v5 = [(CKUploadRequestMetadata *)&v30 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = NSStringFromSelector(sel_databaseScope);
    v5->_databaseScope = objc_msgSend_decodeIntegerForKey_(coderCopy, v8, v7);

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_recordID);
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v9, v10);
    recordID = v5->_recordID;
    v5->_recordID = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_recordType);
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v14, v15);
    recordType = v5->_recordType;
    v5->_recordType = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_fieldName);
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v19, v20);
    fieldName = v5->_fieldName;
    v5->_fieldName = v22;

    v24 = objc_opt_class();
    v25 = NSStringFromSelector(sel_repairZoneRecordID);
    v27 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v26, v24, v25);
    repairZoneRecordID = v5->_repairZoneRecordID;
    v5->_repairZoneRecordID = v27;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AD98];
  v7 = objc_msgSend_databaseScope(self, v5, v6);
  v9 = objc_msgSend_numberWithInteger_(v4, v8, v7);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v10, v9, @"databaseScope");

  v13 = objc_msgSend_recordType(self, v11, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v14, v13, @"recordType");

  v17 = objc_msgSend_fieldName(self, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v18, v17, @"fieldName");

  v21 = objc_msgSend_recordID(self, v19, v20);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v22, v21, @"recordID");

  v25 = objc_msgSend_repairZoneRecordID(self, v23, v24);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v26, v25, @"repairZoneRecordID");

  v29 = objc_msgSend_properties(v3, v27, v28);

  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_databaseScope(self, v5, v6);
  v8 = NSStringFromSelector(sel_databaseScope);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v9, v7, v8);

  v12 = objc_msgSend_recordID(self, v10, v11);
  v13 = NSStringFromSelector(sel_recordID);
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, v12, v13);

  v17 = objc_msgSend_recordType(self, v15, v16);
  v18 = NSStringFromSelector(sel_recordType);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v17, v18);

  v22 = objc_msgSend_fieldName(self, v20, v21);
  v23 = NSStringFromSelector(sel_fieldName);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v22, v23);

  v27 = objc_msgSend_repairZoneRecordID(self, v25, v26);
  v28 = NSStringFromSelector(sel_repairZoneRecordID);
  objc_msgSend_encodeObject_forKey_(coderCopy, v29, v27, v28);

  objc_autoreleasePoolPop(v4);
}

- (unint64_t)hash
{
  v4 = objc_msgSend_databaseScope(self, a2, v2);
  v7 = objc_msgSend_recordID(self, v5, v6);
  v10 = objc_msgSend_hash(v7, v8, v9) ^ v4;
  v13 = objc_msgSend_recordType(self, v11, v12);
  v16 = objc_msgSend_hash(v13, v14, v15);
  v19 = objc_msgSend_fieldName(self, v17, v18);
  v22 = v10 ^ v16 ^ objc_msgSend_hash(v19, v20, v21);
  v25 = objc_msgSend_repairZoneRecordID(self, v23, v24);
  v28 = objc_msgSend_hash(v25, v26, v27);

  return v22 ^ v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v44 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
    {
      v7 = equalCopy;
      v10 = objc_msgSend_databaseScope(self, v8, v9);
      if (v10 != objc_msgSend_databaseScope(v7, v11, v12))
      {
        goto LABEL_10;
      }

      v15 = objc_msgSend_recordID(self, v13, v14);
      v18 = objc_msgSend_recordID(v7, v16, v17);
      isEqual = objc_msgSend_isEqual_(v15, v19, v18);

      if (!isEqual)
      {
        goto LABEL_10;
      }

      v23 = objc_msgSend_recordType(self, v21, v22);
      v26 = objc_msgSend_recordType(v7, v24, v25);
      v28 = objc_msgSend_isEqual_(v23, v27, v26);

      if (!v28)
      {
        goto LABEL_10;
      }

      v31 = objc_msgSend_fieldName(self, v29, v30);
      v34 = objc_msgSend_fieldName(v7, v32, v33);
      v36 = objc_msgSend_isEqual_(v31, v35, v34);

      if (v36)
      {
        v39 = objc_msgSend_repairZoneRecordID(self, v37, v38);
        v42 = objc_msgSend_repairZoneRecordID(v7, v40, v41);
        v44 = objc_msgSend_isEqual_(v39, v43, v42);
      }

      else
      {
LABEL_10:
        v44 = 0;
      }
    }

    else
    {
      v44 = 0;
    }
  }

  return v44;
}

@end