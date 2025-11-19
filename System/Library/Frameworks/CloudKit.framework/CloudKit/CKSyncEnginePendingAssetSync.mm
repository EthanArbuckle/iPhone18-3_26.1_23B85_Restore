@interface CKSyncEnginePendingAssetSync
- (BOOL)isEqual:(id)a3;
- (CKSyncEnginePendingAssetSync)initWithAsset:(id)a3 type:(int64_t)a4;
- (CKSyncEnginePendingAssetSync)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKSyncEnginePendingAssetSync

- (CKSyncEnginePendingAssetSync)initWithAsset:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CKSyncEnginePendingAssetSync;
  v8 = [(CKSyncEnginePendingAssetSync *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_asset, a3);
    v9->_type = a4;
  }

  return v9;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_asset(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v7, @"asset", v8, 0);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_asset(self, v6, v7);
      v11 = objc_msgSend_asset(v5, v9, v10);
      if (objc_msgSend_isEqual_(v8, v12, v11))
      {
        v15 = objc_msgSend_type(self, v13, v14);
        v18 = v15 == objc_msgSend_type(v5, v16, v17);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_asset(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_type(self, v8, v9);

  return v10 ^ v7;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v6 = objc_msgSend_asset(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(v12, v7, v6, @"asset");

  v10 = objc_msgSend_type(self, v8, v9);
  objc_msgSend_encodeInteger_forKey_(v12, v11, v10, @"type");
}

- (CKSyncEnginePendingAssetSync)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"asset");
  asset = self->_asset;
  self->_asset = v7;

  v10 = objc_msgSend_decodeIntegerForKey_(v4, v9, @"type");
  self->_type = v10;
  v12 = self->_asset;

  return objc_msgSend_initWithAsset_type_(self, v11, v12, v10);
}

@end