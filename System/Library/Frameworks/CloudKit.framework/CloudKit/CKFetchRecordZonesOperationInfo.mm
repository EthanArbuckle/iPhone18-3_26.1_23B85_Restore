@interface CKFetchRecordZonesOperationInfo
- (CKFetchRecordZonesOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKFetchRecordZonesOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v18.receiver = self;
  v18.super_class = CKFetchRecordZonesOperationInfo;
  [(CKDatabaseOperationInfo *)&v18 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_recordZoneIDs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"recordZoneIDs");

  AllRecordZonesOperation = objc_msgSend_isFetchAllRecordZonesOperation(self, v10, v11);
  objc_msgSend_encodeBool_forKey_(coderCopy, v13, AllRecordZonesOperation, @"isFetchAllRecordZonesOperation");
  v16 = objc_msgSend_ignorePCSFailures(self, v14, v15);
  objc_msgSend_encodeBool_forKey_(coderCopy, v17, v16, @"ignorePCSFailures");
  objc_autoreleasePoolPop(v5);
}

- (CKFetchRecordZonesOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CKFetchRecordZonesOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"recordZoneIDs");
    recordZoneIDs = v5->_recordZoneIDs;
    v5->_recordZoneIDs = v13;

    v5->_isFetchAllRecordZonesOperation = objc_msgSend_decodeBoolForKey_(coderCopy, v15, @"isFetchAllRecordZonesOperation");
    v5->_ignorePCSFailures = objc_msgSend_decodeBoolForKey_(coderCopy, v16, @"ignorePCSFailures");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end