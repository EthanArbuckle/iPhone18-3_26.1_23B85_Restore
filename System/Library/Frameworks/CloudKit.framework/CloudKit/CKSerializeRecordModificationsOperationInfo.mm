@interface CKSerializeRecordModificationsOperationInfo
- (CKSerializeRecordModificationsOperationInfo)init;
- (CKSerializeRecordModificationsOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKSerializeRecordModificationsOperationInfo

- (CKSerializeRecordModificationsOperationInfo)init
{
  v7.receiver = self;
  v7.super_class = CKSerializeRecordModificationsOperationInfo;
  v2 = [(CKOperationInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    recordsToSave = v2->_recordsToSave;
    v2->_recordsToSave = 0;

    recordIDsToDelete = v3->_recordIDsToDelete;
    v3->_recordIDsToDelete = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v20.receiver = self;
  v20.super_class = CKSerializeRecordModificationsOperationInfo;
  [(CKDatabaseOperationInfo *)&v20 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_recordsToSave(self, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_recordsToSave(self, v9, v10);
    v12 = NSStringFromSelector(sel_recordsToSave);
    objc_msgSend_encodeObject_forKey_(coderCopy, v13, v11, v12);
  }

  v14 = objc_msgSend_recordIDsToDelete(self, v9, v10);

  if (v14)
  {
    v17 = objc_msgSend_recordIDsToDelete(self, v15, v16);
    v18 = NSStringFromSelector(sel_recordIDsToDelete);
    objc_msgSend_encodeObject_forKey_(coderCopy, v19, v17, v18);
  }

  objc_autoreleasePoolPop(v5);
}

- (CKSerializeRecordModificationsOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = CKSerializeRecordModificationsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v12 = NSStringFromSelector(sel_recordsToSave);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v13, v11, v12);
    recordsToSave = v5->_recordsToSave;
    v5->_recordsToSave = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v16, v19, v17, v18, 0);
    v21 = NSStringFromSelector(sel_recordIDsToDelete);
    v23 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v22, v20, v21);
    recordIDsToDelete = v5->_recordIDsToDelete;
    v5->_recordIDsToDelete = v23;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end