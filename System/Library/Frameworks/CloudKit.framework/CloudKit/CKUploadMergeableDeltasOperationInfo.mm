@interface CKUploadMergeableDeltasOperationInfo
- (CKUploadMergeableDeltasOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKUploadMergeableDeltasOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = CKUploadMergeableDeltasOperationInfo;
  [(CKDatabaseOperationInfo *)&v16 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_deltas(self, v6, v7);
  v9 = NSStringFromSelector(sel_deltas);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v8, v9);

  v13 = objc_msgSend_replacementRequests(self, v11, v12);
  v14 = NSStringFromSelector(sel_replacementRequests);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, v13, v14);

  objc_autoreleasePoolPop(v5);
}

- (CKUploadMergeableDeltasOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = CKUploadMergeableDeltasOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v12 = NSStringFromSelector(sel_deltas);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v13, v11, v12);
    deltas = v5->_deltas;
    v5->_deltas = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v16, v19, v17, v18, 0);
    v21 = NSStringFromSelector(sel_replacementRequests);
    v23 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v22, v20, v21);
    replacementRequests = v5->_replacementRequests;
    v5->_replacementRequests = v23;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end