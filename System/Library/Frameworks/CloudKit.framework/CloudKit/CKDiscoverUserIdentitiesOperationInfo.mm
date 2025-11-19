@interface CKDiscoverUserIdentitiesOperationInfo
- (CKDiscoverUserIdentitiesOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDiscoverUserIdentitiesOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKDiscoverUserIdentitiesOperationInfo;
  [(CKOperationInfo *)&v10 encodeWithCoder:v4];
  v8 = objc_msgSend_userIdentityLookupInfos(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"IdentityLookupInfos");

  objc_autoreleasePoolPop(v5);
}

- (CKDiscoverUserIdentitiesOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CKDiscoverUserIdentitiesOperationInfo;
  v5 = [(CKOperationInfo *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"IdentityLookupInfos");
    userIdentityLookupInfos = v5->_userIdentityLookupInfos;
    v5->_userIdentityLookupInfos = v13;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end