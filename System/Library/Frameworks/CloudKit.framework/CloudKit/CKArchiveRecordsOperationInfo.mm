@interface CKArchiveRecordsOperationInfo
- (CKArchiveRecordsOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKArchiveRecordsOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKArchiveRecordsOperationInfo;
  [(CKDatabaseOperationInfo *)&v10 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_recordIDs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"recordIDs");

  objc_autoreleasePoolPop(v5);
}

- (CKArchiveRecordsOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CKArchiveRecordsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v16 initWithCoder:coderCopy];
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

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end