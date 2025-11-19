@interface CKDatabaseOperationInfo
- (CKDatabaseOperationInfo)initWithCoder:(id)a3;
- (id)activityCreate;
- (void)encodeWithCoder:(id)a3;
- (void)takeValuesFrom:(id)a3;
@end

@implementation CKDatabaseOperationInfo

- (void)takeValuesFrom:(id)a3
{
  v4 = a3;
  self->_databaseScope = objc_msgSend_databaseScope(v4, v5, v6);
  v7.receiver = self;
  v7.super_class = CKDatabaseOperationInfo;
  [(CKOperationInfo *)&v7 takeValuesFrom:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKDatabaseOperationInfo;
  [(CKOperationInfo *)&v10 encodeWithCoder:v4];
  v8 = objc_msgSend_databaseScope(self, v6, v7);
  objc_msgSend_encodeInt64_forKey_(v4, v9, v8, @"DatabaseScope");
  objc_autoreleasePoolPop(v5);
}

- (CKDatabaseOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKDatabaseOperationInfo;
  v5 = [(CKOperationInfo *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_databaseScope = objc_msgSend_decodeInt64ForKey_(v4, v7, @"DatabaseScope");
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