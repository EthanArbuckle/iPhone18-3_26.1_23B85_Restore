@interface CKDiscoverUserIdentitiesOperationInfo
- (CKDiscoverUserIdentitiesOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKDiscoverUserIdentitiesOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKDiscoverUserIdentitiesOperationInfo;
  [(CKOperationInfo *)&v10 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_userIdentityLookupInfos(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"IdentityLookupInfos");

  objc_autoreleasePoolPop(v5);
}

- (CKDiscoverUserIdentitiesOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CKDiscoverUserIdentitiesOperationInfo;
  v5 = [(CKOperationInfo *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"IdentityLookupInfos");
    userIdentityLookupInfos = v5->_userIdentityLookupInfos;
    v5->_userIdentityLookupInfos = v13;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end