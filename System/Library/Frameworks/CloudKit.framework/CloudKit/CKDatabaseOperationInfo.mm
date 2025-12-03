@interface CKDatabaseOperationInfo
- (CKDatabaseOperationInfo)initWithCoder:(id)coder;
- (id)activityCreate;
- (void)encodeWithCoder:(id)coder;
- (void)takeValuesFrom:(id)from;
@end

@implementation CKDatabaseOperationInfo

- (void)takeValuesFrom:(id)from
{
  fromCopy = from;
  self->_databaseScope = objc_msgSend_databaseScope(fromCopy, v5, v6);
  v7.receiver = self;
  v7.super_class = CKDatabaseOperationInfo;
  [(CKOperationInfo *)&v7 takeValuesFrom:fromCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKDatabaseOperationInfo;
  [(CKOperationInfo *)&v10 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_databaseScope(self, v6, v7);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v9, v8, @"DatabaseScope");
  objc_autoreleasePoolPop(v5);
}

- (CKDatabaseOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CKDatabaseOperationInfo;
  v5 = [(CKOperationInfo *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_databaseScope = objc_msgSend_decodeInt64ForKey_(coderCopy, v7, @"DatabaseScope");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/db-operation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

@end