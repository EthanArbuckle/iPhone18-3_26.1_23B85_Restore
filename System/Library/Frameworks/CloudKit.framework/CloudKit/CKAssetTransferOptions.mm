@interface CKAssetTransferOptions
- (CKAssetTransferOptions)initWithCoder:(id)coder;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKAssetTransferOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_sparseAware(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"AssetTransferOptionSparseAware");

  v11 = objc_msgSend_shouldFetchAssetContent(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"AssetTransferOptionShouldFetchAssetContent");

  v15 = objc_msgSend_shouldFetchAssetContentInMemory(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"AssetTransferOptionShouldFetchAssetContentInMemory");

  v19 = objc_msgSend_useMMCSEncryptionV2(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"AssetTransferOptionUseMMCSEncryptionV2");

  objc_autoreleasePoolPop(v4);
}

- (CKAssetTransferOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = CKAssetTransferOptions;
  v5 = [(CKAssetTransferOptions *)&v24 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"AssetTransferOptionSparseAware");
    sparseAware = v5->_sparseAware;
    v5->_sparseAware = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"AssetTransferOptionShouldFetchAssetContent");
    shouldFetchAssetContent = v5->_shouldFetchAssetContent;
    v5->_shouldFetchAssetContent = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"AssetTransferOptionShouldFetchAssetContentInMemory");
    shouldFetchAssetContentInMemory = v5->_shouldFetchAssetContentInMemory;
    v5->_shouldFetchAssetContentInMemory = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v20, v19, @"AssetTransferOptionUseMMCSEncryptionV2");
    useMMCSEncryptionV2 = v5->_useMMCSEncryptionV2;
    v5->_useMMCSEncryptionV2 = v21;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, 6);
  v5 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v4, 3);
  v8 = objc_msgSend_sparseAware(self, v6, v7);
  v11 = objc_msgSend_BOOLValue(v8, v9, v10);

  if (v11)
  {
    objc_msgSend_addObject_(v5, v12, @"sparse-aware");
  }

  v14 = objc_msgSend_shouldFetchAssetContent(self, v12, v13);
  v17 = objc_msgSend_BOOLValue(v14, v15, v16);

  if (v17)
  {
    objc_msgSend_addObject_(v5, v18, @"fetch-asset-content");
  }

  v20 = objc_msgSend_shouldFetchAssetContentInMemory(self, v18, v19);
  v23 = objc_msgSend_BOOLValue(v20, v21, v22);

  if (v23)
  {
    objc_msgSend_addObject_(v5, v24, @"fetch-asset-content-in-memory");
  }

  v26 = objc_msgSend_useMMCSEncryptionV2(self, v24, v25);
  v29 = v26;
  if (v26)
  {
    if (objc_msgSend_BOOLValue(v26, v27, v28))
    {
      objc_msgSend_addObject_(v5, v30, @"force-v2-encryption");
    }

    else
    {
      objc_msgSend_addObject_(v5, v30, @"force-v1-encryption");
    }
  }

  if (objc_msgSend_count(v5, v27, v28))
  {
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_msgSend_componentsJoinedByString_(v5, v31, @"|");
    v35 = objc_msgSend_stringWithFormat_(v32, v34, @"flags=%@", v33);
    objc_msgSend_addObject_(v3, v36, v35);
  }

  v37 = objc_msgSend_componentsJoinedByString_(v3, v31, @", ");

  return v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CKAssetTransferOptions);
  v7 = objc_msgSend_sparseAware(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  sparseAware = v4->_sparseAware;
  v4->_sparseAware = v10;

  v14 = objc_msgSend_shouldFetchAssetContent(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  shouldFetchAssetContent = v4->_shouldFetchAssetContent;
  v4->_shouldFetchAssetContent = v17;

  v21 = objc_msgSend_shouldFetchAssetContentInMemory(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  shouldFetchAssetContentInMemory = v4->_shouldFetchAssetContentInMemory;
  v4->_shouldFetchAssetContentInMemory = v24;

  v28 = objc_msgSend_useMMCSEncryptionV2(self, v26, v27);
  v31 = objc_msgSend_copy(v28, v29, v30);
  useMMCSEncryptionV2 = v4->_useMMCSEncryptionV2;
  v4->_useMMCSEncryptionV2 = v31;

  return v4;
}

@end