@interface CKModifyWebSharingOperationInfo
- (CKModifyWebSharingOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKModifyWebSharingOperationInfo

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CKModifyWebSharingOperationInfo;
  coderCopy = coder;
  [(CKDatabaseOperationInfo *)&v8 encodeWithCoder:coderCopy];
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_recordIDsToShare, @"RecordIDsToShare", v8.receiver, v8.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_recordIDsToUnshare, @"RecordIDsToUnshare");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_recordIDsToShareReadWrite, @"RecordIDsToShareReadWrite");
}

- (CKModifyWebSharingOperationInfo)initWithCoder:(id)coder
{
  v35[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = CKModifyWebSharingOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v32 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v35, 2);
    v10 = objc_msgSend_setWithArray_(v6, v9, v8);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v11, v10, @"RecordIDsToShare");
    recordIDsToShare = v5->_recordIDsToShare;
    v5->_recordIDsToShare = v12;

    v14 = MEMORY[0x1E695DFD8];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v34, 2);
    v18 = objc_msgSend_setWithArray_(v14, v17, v16);
    v20 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v19, v18, @"RecordIDsToUnshare");
    recordIDsToUnshare = v5->_recordIDsToUnshare;
    v5->_recordIDsToUnshare = v20;

    v22 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v23, v33, 2);
    v26 = objc_msgSend_setWithArray_(v22, v25, v24);
    v28 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v27, v26, @"RecordIDsToShareReadWrite");
    recordIDsToShareReadWrite = v5->_recordIDsToShareReadWrite;
    v5->_recordIDsToShareReadWrite = v28;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

@end