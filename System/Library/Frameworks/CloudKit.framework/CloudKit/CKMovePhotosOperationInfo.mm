@interface CKMovePhotosOperationInfo
- (CKMovePhotosOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKMovePhotosOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v16.receiver = self;
  v16.super_class = CKMovePhotosOperationInfo;
  [(CKModifyRecordsOperationInfo *)&v16 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_moveChanges(self, v6, v7);
  v9 = NSStringFromSelector(sel_moveChanges);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v8, v9);

  v13 = objc_msgSend_sourceDatabaseScope(self, v11, v12);
  v14 = NSStringFromSelector(sel_databaseScope);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v15, v13, v14);

  objc_autoreleasePoolPop(v5);
}

- (CKMovePhotosOperationInfo)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CKMovePhotosOperationInfo;
  v5 = [(CKModifyRecordsOperationInfo *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v21, 2);
    v11 = objc_msgSend_setWithArray_(v7, v10, v9);
    v12 = NSStringFromSelector(sel_moveChanges);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v13, v11, v12);
    moveChanges = v5->_moveChanges;
    v5->_moveChanges = v14;

    v16 = NSStringFromSelector(sel_databaseScope);
    v5->_sourceDatabaseScope = objc_msgSend_decodeIntegerForKey_(coderCopy, v17, v16);

    objc_autoreleasePoolPop(v6);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

@end