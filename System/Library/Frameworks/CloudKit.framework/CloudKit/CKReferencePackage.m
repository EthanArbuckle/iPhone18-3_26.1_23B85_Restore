@interface CKReferencePackage
- (CKReferencePackage)initWithCoder:(id)a3;
- (CKReferencePackage)initWithPackageReference:(id)a3 uuid:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setAssetTransferOptions:(id)a3;
@end

@implementation CKReferencePackage

- (CKReferencePackage)initWithPackageReference:(id)a3 uuid:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CKReferencePackage;
  v9 = [(CKReferencePackage *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_packageReference, a3);
    v13 = v8;
    if (!v8)
    {
      v13 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v11, v12);
    }

    objc_storeStrong(&v10->_uuid, v13);
    if (!v8)
    {
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CKReferencePackage;
  [(CKPackage *)&v10 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_packageReference, @"reference");
  objc_msgSend_encodeObject_forKey_(v4, v6, self->_uuid, @"uuid");
  boundaryKey = self->_boundaryKey;
  if (boundaryKey)
  {
    objc_msgSend_encodeObject_forKey_(v4, v7, boundaryKey, @"boundaryKey");
  }

  assetTransferOptions = self->_assetTransferOptions;
  if (assetTransferOptions)
  {
    objc_msgSend_encodeObject_forKey_(v4, v7, assetTransferOptions, @"assetTransferOptions");
  }
}

- (CKReferencePackage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"reference");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v9, v8, @"uuid");
  v12 = objc_msgSend_initWithPackageReference_uuid_(self, v11, v7, v10);
  if (v12)
  {
    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"boundaryKey");
    boundaryKey = v12->_boundaryKey;
    v12->_boundaryKey = v15;

    v17 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v18, v17, @"assetTransferOptions");
    assetTransferOptions = v12->_assetTransferOptions;
    v12->_assetTransferOptions = v19;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_UUID(self, v6, v7);
  v11 = objc_msgSend_packageReference(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v3, v12, @"%@(%p): uuid: %@, reference: %@", v5, self, v8, v11);

  return v13;
}

- (void)setAssetTransferOptions:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  assetTransferOptions = self->_assetTransferOptions;
  self->_assetTransferOptions = v4;

  v8 = objc_msgSend_useMMCSEncryptionV2(self->_assetTransferOptions, v6, v7);

  if (v8)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_package;
    if (os_log_type_enabled(ck_log_facility_package, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1883EA000, v9, OS_LOG_TYPE_INFO, "Warning: asset transfer option set for usesMMCSEncryptionV2 will be ignored for package re-reference", v11, 2u);
    }

    objc_msgSend_setUseMMCSEncryptionV2_(self->_assetTransferOptions, v10, 0);
  }
}

@end