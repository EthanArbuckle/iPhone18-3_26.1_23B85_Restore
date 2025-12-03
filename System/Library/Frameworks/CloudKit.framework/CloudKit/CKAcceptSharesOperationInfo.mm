@interface CKAcceptSharesOperationInfo
- (CKAcceptSharesOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKAcceptSharesOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_shareMetadatasToAccept(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"ShareMetadatasToAccept");

  v10.receiver = self;
  v10.super_class = CKAcceptSharesOperationInfo;
  [(CKDatabaseOperationInfo *)&v10 encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);
}

- (CKAcceptSharesOperationInfo)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CKAcceptSharesOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v18, 2);
    v11 = objc_msgSend_setWithArray_(v7, v10, v9);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"ShareMetadatasToAccept");
    shareMetadatasToAccept = v5->_shareMetadatasToAccept;
    v5->_shareMetadatasToAccept = v13;

    objc_autoreleasePoolPop(v6);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end