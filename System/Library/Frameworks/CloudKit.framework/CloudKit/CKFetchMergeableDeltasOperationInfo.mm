@interface CKFetchMergeableDeltasOperationInfo
- (CKFetchMergeableDeltasOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKFetchMergeableDeltasOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v11.receiver = self;
  v11.super_class = CKFetchMergeableDeltasOperationInfo;
  [(CKDatabaseOperationInfo *)&v11 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_mergeableValueIDs(self, v6, v7);
  v9 = NSStringFromSelector(sel_mergeableValueIDs);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v8, v9);

  objc_autoreleasePoolPop(v5);
}

- (CKFetchMergeableDeltasOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CKFetchMergeableDeltasOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v12 = NSStringFromSelector(sel_mergeableValueIDs);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v13, v11, v12);
    mergeableValueIDs = v5->_mergeableValueIDs;
    v5->_mergeableValueIDs = v14;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end