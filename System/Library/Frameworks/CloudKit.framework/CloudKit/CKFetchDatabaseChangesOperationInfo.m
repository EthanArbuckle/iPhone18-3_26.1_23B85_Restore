@interface CKFetchDatabaseChangesOperationInfo
- (CKFetchDatabaseChangesOperationInfo)init;
- (CKFetchDatabaseChangesOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFetchDatabaseChangesOperationInfo

- (CKFetchDatabaseChangesOperationInfo)init
{
  v3.receiver = self;
  v3.super_class = CKFetchDatabaseChangesOperationInfo;
  result = [(CKOperationInfo *)&v3 init];
  if (result)
  {
    result->_fetchAllChanges = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v18.receiver = self;
  v18.super_class = CKFetchDatabaseChangesOperationInfo;
  [(CKDatabaseOperationInfo *)&v18 encodeWithCoder:v4];
  v8 = objc_msgSend_previousServerChangeToken(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"previousServerChangeToken");

  v12 = objc_msgSend_resultsLimit(self, v10, v11);
  objc_msgSend_encodeInteger_forKey_(v4, v13, v12, @"resultsLimit");
  AllChanges = objc_msgSend_fetchAllChanges(self, v14, v15);
  objc_msgSend_encodeBool_forKey_(v4, v17, AllChanges, @"fetchAllChanges");
  objc_autoreleasePoolPop(v5);
}

- (CKFetchDatabaseChangesOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CKFetchDatabaseChangesOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"previousServerChangeToken");
    previousServerChangeToken = v5->_previousServerChangeToken;
    v5->_previousServerChangeToken = v9;

    v5->_resultsLimit = objc_msgSend_decodeIntegerForKey_(v4, v11, @"resultsLimit");
    v5->_fetchAllChanges = objc_msgSend_decodeBoolForKey_(v4, v12, @"fetchAllChanges");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end