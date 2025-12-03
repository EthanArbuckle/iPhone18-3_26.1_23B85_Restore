@interface APPolicyData
- (APPolicyData)initWithCoder:(id)coder;
- (BOOL)isEqualToAPPolicyData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APPolicyData

- (APPolicyData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = APPolicyData;
  v5 = [(APPolicyData *)&v30 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"creativeIdentifier", v8, v9, v10);
    creativeIdentifier = v5->_creativeIdentifier;
    v5->_creativeIdentifier = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v22 = objc_msgSend_setWithObjects_(v13, v17, v14, v18, v19, v20, v21, v15, v16, 0);
    v27 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v23, v22, @"policyValue", v24, v25, v26);
    policyValue = v5->_policyValue;
    v5->_policyValue = v27;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  creativeIdentifier = self->_creativeIdentifier;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, creativeIdentifier, @"creativeIdentifier", v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_policyValue, @"policyValue", v10, v11, v12);
}

- (BOOL)isEqualToAPPolicyData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_msgSend_creativeIdentifier(self, v5, v6, v7, v8, v9, v10);
    v18 = objc_msgSend_creativeIdentifier(dataCopy, v12, v13, v14, v15, v16, v17);
    if (objc_msgSend_isEqualToString_(v11, v19, v18, v20, v21, v22, v23))
    {
      v30 = objc_msgSend_policyValue(self, v24, v25, v26, v27, v28, v29);
      v37 = objc_msgSend_policyValue(dataCopy, v31, v32, v33, v34, v35, v36);
      isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v30, v38, v37, v39, v40, v41, v42);
    }

    else
    {
      isEqualToDictionary = 0;
    }
  }

  else
  {
    isEqualToDictionary = 0;
  }

  return isEqualToDictionary;
}

@end