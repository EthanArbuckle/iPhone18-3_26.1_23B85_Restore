@interface PCNativeAsset
- (PCNativeAsset)init;
- (PCNativeAsset)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeAsset

- (PCNativeAsset)init
{
  v3.receiver = self;
  v3.super_class = PCNativeAsset;
  result = [(PCNativeAsset *)&v3 init];
  if (result)
  {
    result->_location = -1;
  }

  return result;
}

- (PCNativeAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = objc_msgSend_init(self, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    v12 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"name", v14, v15, v16);
    name = v11->_name;
    v11->_name = v17;

    v11->_location = objc_msgSend_decodeInt32ForKey_(coderCopy, v19, @"location", v20, v21, v22, v23);
    v24 = objc_alloc(MEMORY[0x1E695DFD8]);
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v32 = objc_msgSend_initWithObjects_(v24, v27, v25, v28, v29, v30, v31, v26, 0);
    v37 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v33, v32, @"assetInformation", v34, v35, v36);
    assetInformation = v11->_assetInformation;
    v11->_assetInformation = v37;

    v11->_adamID = objc_msgSend_decodeInt64ForKey_(coderCopy, v39, @"adamID", v40, v41, v42, v43);
    v44 = objc_opt_class();
    v49 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v45, v44, @"treatment", v46, v47, v48);
    treatment = v11->_treatment;
    v11->_treatment = v49;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = objc_msgSend_name(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"name", v13, v14, v15);

  v22 = objc_msgSend_location(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v23, v22, @"location", v24, v25, v26);
  v33 = objc_msgSend_assetInformation(self, v27, v28, v29, v30, v31, v32);
  objc_msgSend_encodeObject_forKey_(coderCopy, v34, v33, @"assetInformation", v35, v36, v37);

  v44 = objc_msgSend_adamID(self, v38, v39, v40, v41, v42, v43);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v45, v44, @"adamID", v46, v47, v48);
  v59 = objc_msgSend_treatment(self, v49, v50, v51, v52, v53, v54);
  objc_msgSend_encodeObject_forKey_(coderCopy, v55, v59, @"treatment", v56, v57, v58);
}

@end