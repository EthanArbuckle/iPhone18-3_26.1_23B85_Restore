@interface CKDeclineSharesOperationInfo
- (CKDeclineSharesOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDeclineSharesOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_shareMetadatasToDecline(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"ShareMetadatasToDecline");

  v10.receiver = self;
  v10.super_class = CKDeclineSharesOperationInfo;
  [(CKDatabaseOperationInfo *)&v10 encodeWithCoder:v4];
  objc_autoreleasePoolPop(v5);
}

- (CKDeclineSharesOperationInfo)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CKDeclineSharesOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v18, 2);
    v11 = objc_msgSend_setWithArray_(v7, v10, v9);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"ShareMetadatasToDecline");
    shareMetadatasToDecline = v5->_shareMetadatasToDecline;
    v5->_shareMetadatasToDecline = v13;

    objc_autoreleasePoolPop(v6);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end