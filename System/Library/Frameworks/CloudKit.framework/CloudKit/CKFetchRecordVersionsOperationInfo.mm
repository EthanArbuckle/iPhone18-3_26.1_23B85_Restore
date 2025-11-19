@interface CKFetchRecordVersionsOperationInfo
- (CKFetchRecordVersionsOperationInfo)init;
- (CKFetchRecordVersionsOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFetchRecordVersionsOperationInfo

- (CKFetchRecordVersionsOperationInfo)init
{
  v3.receiver = self;
  v3.super_class = CKFetchRecordVersionsOperationInfo;
  result = [(CKOperationInfo *)&v3 init];
  if (result)
  {
    result->_shouldFetchAssetContent = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKFetchRecordVersionsOperationInfo;
  [(CKDatabaseOperationInfo *)&v10 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v6, self->_recordIDs, @"RecordIDs");
  objc_msgSend_encodeObject_forKey_(v4, v7, self->_desiredKeys, @"DesiredKeys");
  objc_msgSend_encodeObject_forKey_(v4, v8, self->_minimumVersionETag, @"MinimumVersionETag");
  objc_msgSend_encodeBool_forKey_(v4, v9, self->_shouldFetchAssetContent, @"shouldFetchAssetContents");
  objc_autoreleasePoolPop(v5);
}

- (CKFetchRecordVersionsOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CKFetchRecordVersionsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v29 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"RecordIDs");
    recordIDs = v5->_recordIDs;
    v5->_recordIDs = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v19 = objc_msgSend_setWithObjects_(v15, v18, v16, v17, 0);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v20, v19, @"DesiredKeys");
    desiredKeys = v5->_desiredKeys;
    v5->_desiredKeys = v21;

    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v23, @"MinimumVersionETag");
    minimumVersionETag = v5->_minimumVersionETag;
    v5->_minimumVersionETag = v25;

    v5->_shouldFetchAssetContent = objc_msgSend_decodeBoolForKey_(v4, v27, @"shouldFetchAssetContents");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end