@interface CKModifyRecordAccessOperationInfo
- (CKModifyRecordAccessOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKModifyRecordAccessOperationInfo

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CKModifyRecordAccessOperationInfo;
  coderCopy = coder;
  [(CKDatabaseOperationInfo *)&v7 encodeWithCoder:coderCopy];
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_recordIDsToGrant, @"RecordIDsToGrant", v7.receiver, v7.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_recordIDsToRevoke, @"RecordIDsToRevoke");
}

- (CKModifyRecordAccessOperationInfo)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = CKModifyRecordAccessOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v26, 2);
    v10 = objc_msgSend_setWithArray_(v6, v9, v8);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v11, v10, @"RecordIDsToGrant");
    recordIDsToGrant = v5->_recordIDsToGrant;
    v5->_recordIDsToGrant = v12;

    v14 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v25, 2);
    v18 = objc_msgSend_setWithArray_(v14, v17, v16);
    v20 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v19, v18, @"RecordIDsToRevoke");
    recordIDsToRevoke = v5->_recordIDsToRevoke;
    v5->_recordIDsToRevoke = v20;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

@end