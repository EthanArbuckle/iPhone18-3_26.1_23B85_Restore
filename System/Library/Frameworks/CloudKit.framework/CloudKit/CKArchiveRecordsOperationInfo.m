@interface CKArchiveRecordsOperationInfo
- (CKArchiveRecordsOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKArchiveRecordsOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKArchiveRecordsOperationInfo;
  [(CKDatabaseOperationInfo *)&v10 encodeWithCoder:v4];
  v8 = objc_msgSend_recordIDs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"recordIDs");

  objc_autoreleasePoolPop(v5);
}

- (CKArchiveRecordsOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CKArchiveRecordsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"recordIDs");
    recordIDs = v5->_recordIDs;
    v5->_recordIDs = v13;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end