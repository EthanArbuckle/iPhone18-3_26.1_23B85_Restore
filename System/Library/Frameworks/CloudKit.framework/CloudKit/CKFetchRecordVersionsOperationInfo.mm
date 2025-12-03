@interface CKFetchRecordVersionsOperationInfo
- (CKFetchRecordVersionsOperationInfo)init;
- (CKFetchRecordVersionsOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKFetchRecordVersionsOperationInfo;
  [(CKDatabaseOperationInfo *)&v10 encodeWithCoder:coderCopy];
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_recordIDs, @"RecordIDs");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_desiredKeys, @"DesiredKeys");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_minimumVersionETag, @"MinimumVersionETag");
  objc_msgSend_encodeBool_forKey_(coderCopy, v9, self->_shouldFetchAssetContent, @"shouldFetchAssetContents");
  objc_autoreleasePoolPop(v5);
}

- (CKFetchRecordVersionsOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = CKFetchRecordVersionsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v29 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"RecordIDs");
    recordIDs = v5->_recordIDs;
    v5->_recordIDs = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v19 = objc_msgSend_setWithObjects_(v15, v18, v16, v17, 0);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v20, v19, @"DesiredKeys");
    desiredKeys = v5->_desiredKeys;
    v5->_desiredKeys = v21;

    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v24, v23, @"MinimumVersionETag");
    minimumVersionETag = v5->_minimumVersionETag;
    v5->_minimumVersionETag = v25;

    v5->_shouldFetchAssetContent = objc_msgSend_decodeBoolForKey_(coderCopy, v27, @"shouldFetchAssetContents");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end