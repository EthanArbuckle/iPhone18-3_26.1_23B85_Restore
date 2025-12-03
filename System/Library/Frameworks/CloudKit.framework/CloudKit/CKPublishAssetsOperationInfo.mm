@interface CKPublishAssetsOperationInfo
- (CKPublishAssetsOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKPublishAssetsOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v22.receiver = self;
  v22.super_class = CKPublishAssetsOperationInfo;
  [(CKDatabaseOperationInfo *)&v22 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_recordIDs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"recordIDs");

  v12 = objc_msgSend_fileNamesByAssetFieldNames(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, v12, @"fileNamesByAssetFieldNames");

  v16 = objc_msgSend_requestedTTL(self, v14, v15);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v17, v16, @"requestedTTL");
  v20 = objc_msgSend_URLOptions(self, v18, v19);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v21, v20, @"URLOptions");
  objc_autoreleasePoolPop(v5);
}

- (CKPublishAssetsOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = CKPublishAssetsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"recordIDs");
    recordIDs = v5->_recordIDs;
    v5->_recordIDs = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v19 = objc_msgSend_setWithObjects_(v15, v18, v16, v17, 0);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v20, v19, @"fileNamesByAssetFieldNames");
    fileNamesByAssetFieldNames = v5->_fileNamesByAssetFieldNames;
    v5->_fileNamesByAssetFieldNames = v21;

    v5->_requestedTTL = objc_msgSend_decodeInt64ForKey_(coderCopy, v23, @"requestedTTL");
    v5->_URLOptions = objc_msgSend_decodeInt64ForKey_(coderCopy, v24, @"URLOptions");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end