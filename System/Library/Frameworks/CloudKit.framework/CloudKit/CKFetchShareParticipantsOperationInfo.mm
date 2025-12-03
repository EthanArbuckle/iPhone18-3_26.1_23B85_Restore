@interface CKFetchShareParticipantsOperationInfo
- (CKFetchShareParticipantsOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKFetchShareParticipantsOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_userIdentityLookupInfos, @"UserIdentityInfos");
  v7.receiver = self;
  v7.super_class = CKFetchShareParticipantsOperationInfo;
  [(CKOperationInfo *)&v7 encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);
}

- (CKFetchShareParticipantsOperationInfo)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CKFetchShareParticipantsOperationInfo;
  v5 = [(CKOperationInfo *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v18, 2);
    v11 = objc_msgSend_setWithArray_(v7, v10, v9);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"UserIdentityInfos");
    objc_msgSend_setUserIdentityLookupInfos_(v5, v14, v13);

    objc_autoreleasePoolPop(v6);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end