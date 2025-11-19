@interface CKAssetReuploadExpectedProperties
- (CKAssetReuploadExpectedProperties)initWithCoder:(id)a3;
- (CKAssetReuploadExpectedProperties)initWithFileSignature:(id)a3 referenceSignature:(id)a4 assetKey:(id)a5;
- (id)CKPropertiesDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKAssetReuploadExpectedProperties

- (CKAssetReuploadExpectedProperties)initWithFileSignature:(id)a3 referenceSignature:(id)a4 assetKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = CKAssetReuploadExpectedProperties;
  v13 = [(CKAssetReuploadExpectedProperties *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
    fileSignature = v13->_fileSignature;
    v13->_fileSignature = v14;

    v18 = objc_msgSend_copy(v9, v16, v17);
    referenceSignature = v13->_referenceSignature;
    v13->_referenceSignature = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    assetKey = v13->_assetKey;
    v13->_assetKey = v22;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_fileSignature(self, v5, v6);
  v8 = NSStringFromSelector(sel_fileSignature);
  objc_msgSend_encodeObject_forKey_(v20, v9, v7, v8);

  v12 = objc_msgSend_referenceSignature(self, v10, v11);
  v13 = NSStringFromSelector(sel_referenceSignature);
  objc_msgSend_encodeObject_forKey_(v20, v14, v12, v13);

  v17 = objc_msgSend_assetKey(self, v15, v16);
  v18 = NSStringFromSelector(sel_assetKey);
  objc_msgSend_encodeObject_forKey_(v20, v19, v17, v18);

  objc_autoreleasePoolPop(v4);
}

- (CKAssetReuploadExpectedProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CKAssetReuploadExpectedProperties;
  v5 = [(CKAssetReuploadExpectedProperties *)&v23 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_fileSignature);
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v9, v7, v8);
    fileSignature = v5->_fileSignature;
    v5->_fileSignature = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_referenceSignature);
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v12, v13);
    referenceSignature = v5->_referenceSignature;
    v5->_referenceSignature = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_assetKey);
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v17, v18);
    assetKey = v5->_assetKey;
    v5->_assetKey = v20;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, 2);
  v4 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_fileSignature(self, v5, v6);
  v10 = objc_msgSend_CKHexString(v7, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"fileSignature=%@", v10);
  objc_msgSend_addObject_(v3, v13, v12);

  v14 = MEMORY[0x1E696AEC0];
  v17 = objc_msgSend_referenceSignature(self, v15, v16);
  v20 = objc_msgSend_CKHexString(v17, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v14, v21, @"referenceSignature=%@", v20);
  objc_msgSend_addObject_(v3, v23, v22);

  v26 = objc_msgSend_assetKey(self, v24, v25);

  if (v26)
  {
    objc_msgSend_addObject_(v3, v27, @"hasAssetKey");
  }

  v28 = objc_msgSend_componentsJoinedByString_(v3, v27, @", ");

  return v28;
}

@end