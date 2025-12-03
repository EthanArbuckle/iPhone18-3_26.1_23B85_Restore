@interface CKFetchDatabaseChangesOperationInfo
- (CKFetchDatabaseChangesOperationInfo)init;
- (CKFetchDatabaseChangesOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v18.receiver = self;
  v18.super_class = CKFetchDatabaseChangesOperationInfo;
  [(CKDatabaseOperationInfo *)&v18 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_previousServerChangeToken(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"previousServerChangeToken");

  v12 = objc_msgSend_resultsLimit(self, v10, v11);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v13, v12, @"resultsLimit");
  AllChanges = objc_msgSend_fetchAllChanges(self, v14, v15);
  objc_msgSend_encodeBool_forKey_(coderCopy, v17, AllChanges, @"fetchAllChanges");
  objc_autoreleasePoolPop(v5);
}

- (CKFetchDatabaseChangesOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CKFetchDatabaseChangesOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"previousServerChangeToken");
    previousServerChangeToken = v5->_previousServerChangeToken;
    v5->_previousServerChangeToken = v9;

    v5->_resultsLimit = objc_msgSend_decodeIntegerForKey_(coderCopy, v11, @"resultsLimit");
    v5->_fetchAllChanges = objc_msgSend_decodeBoolForKey_(coderCopy, v12, @"fetchAllChanges");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end