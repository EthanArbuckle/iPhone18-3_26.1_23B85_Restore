@interface CKFetchWebAuthTokenOperationInfo
- (CKFetchWebAuthTokenOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFetchWebAuthTokenOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKFetchWebAuthTokenOperationInfo;
  [(CKDatabaseOperationInfo *)&v10 encodeWithCoder:v4];
  v8 = objc_msgSend_APIToken(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"APIToken");

  objc_autoreleasePoolPop(v5);
}

- (CKFetchWebAuthTokenOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CKFetchWebAuthTokenOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"APIToken");
    APIToken = v5->_APIToken;
    v5->_APIToken = v9;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end