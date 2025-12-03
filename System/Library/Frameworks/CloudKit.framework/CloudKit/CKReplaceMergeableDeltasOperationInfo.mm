@interface CKReplaceMergeableDeltasOperationInfo
- (CKReplaceMergeableDeltasOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKReplaceMergeableDeltasOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v9.receiver = self;
  v9.super_class = CKReplaceMergeableDeltasOperationInfo;
  [(CKDatabaseOperationInfo *)&v9 encodeWithCoder:coderCopy];
  replaceDeltasRequests = self->_replaceDeltasRequests;
  v7 = NSStringFromSelector(sel_replaceDeltasRequests);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, replaceDeltasRequests, v7);

  objc_autoreleasePoolPop(v5);
}

- (CKReplaceMergeableDeltasOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CKReplaceMergeableDeltasOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v12 = NSStringFromSelector(sel_replaceDeltasRequests);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v13, v11, v12);
    replaceDeltasRequests = v5->_replaceDeltasRequests;
    v5->_replaceDeltasRequests = v14;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end