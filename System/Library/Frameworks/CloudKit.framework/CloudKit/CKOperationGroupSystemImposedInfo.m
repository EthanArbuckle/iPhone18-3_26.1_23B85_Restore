@interface CKOperationGroupSystemImposedInfo
- (CKOperationGroupSystemImposedInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKOperationGroupSystemImposedInfo

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_networkServiceTypePerConfig(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v17, v8, v7, @"ServiceTypePerConfig");

  v11 = objc_msgSend_expectedSendSize(self, v9, v10);
  objc_msgSend_encodeInt64_forKey_(v17, v12, v11, @"ExpectedSendSize");
  v15 = objc_msgSend_expectedReceiveSize(self, v13, v14);
  objc_msgSend_encodeInt64_forKey_(v17, v16, v15, @"ExpectedReceiveSize");
  objc_autoreleasePoolPop(v4);
}

- (CKOperationGroupSystemImposedInfo)initWithCoder:(id)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CKOperationGroupSystemImposedInfo;
  v5 = [(CKOperationGroupSystemImposedInfo *)&v19 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v20, 3);
    v11 = objc_msgSend_setWithArray_(v7, v10, v9);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"ServiceTypePerConfig");
    networkServiceTypePerConfig = v5->_networkServiceTypePerConfig;
    v5->_networkServiceTypePerConfig = v13;

    v5->_expectedSendSize = objc_msgSend_decodeInt64ForKey_(v4, v15, @"ExpectedSendSize");
    v5->_expectedReceiveSize = objc_msgSend_decodeInt64ForKey_(v4, v16, @"ExpectedReceiveSize");
    objc_autoreleasePoolPop(v6);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

@end