@interface CKReplaceMergeableDeltasOperationInfo
- (CKReplaceMergeableDeltasOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKReplaceMergeableDeltasOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v9.receiver = self;
  v9.super_class = CKReplaceMergeableDeltasOperationInfo;
  [(CKDatabaseOperationInfo *)&v9 encodeWithCoder:v4];
  replaceDeltasRequests = self->_replaceDeltasRequests;
  v7 = NSStringFromSelector(sel_replaceDeltasRequests);
  objc_msgSend_encodeObject_forKey_(v4, v8, replaceDeltasRequests, v7);

  objc_autoreleasePoolPop(v5);
}

- (CKReplaceMergeableDeltasOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CKReplaceMergeableDeltasOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v12 = NSStringFromSelector(sel_replaceDeltasRequests);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v13, v11, v12);
    replaceDeltasRequests = v5->_replaceDeltasRequests;
    v5->_replaceDeltasRequests = v14;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end