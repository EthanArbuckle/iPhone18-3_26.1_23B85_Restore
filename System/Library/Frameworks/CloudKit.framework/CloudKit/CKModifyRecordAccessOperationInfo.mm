@interface CKModifyRecordAccessOperationInfo
- (CKModifyRecordAccessOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKModifyRecordAccessOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKModifyRecordAccessOperationInfo;
  v4 = a3;
  [(CKDatabaseOperationInfo *)&v7 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_recordIDsToGrant, @"RecordIDsToGrant", v7.receiver, v7.super_class);
  objc_msgSend_encodeObject_forKey_(v4, v6, self->_recordIDsToRevoke, @"RecordIDsToRevoke");
}

- (CKModifyRecordAccessOperationInfo)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CKModifyRecordAccessOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v24 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v26, 2);
    v10 = objc_msgSend_setWithArray_(v6, v9, v8);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v11, v10, @"RecordIDsToGrant");
    recordIDsToGrant = v5->_recordIDsToGrant;
    v5->_recordIDsToGrant = v12;

    v14 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v25, 2);
    v18 = objc_msgSend_setWithArray_(v14, v17, v16);
    v20 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v19, v18, @"RecordIDsToRevoke");
    recordIDsToRevoke = v5->_recordIDsToRevoke;
    v5->_recordIDsToRevoke = v20;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

@end