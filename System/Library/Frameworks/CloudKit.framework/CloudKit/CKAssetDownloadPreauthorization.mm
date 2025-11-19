@interface CKAssetDownloadPreauthorization
- (BOOL)isEqual:(id)a3;
- (CKAssetDownloadPreauthorization)initWithResponseUUID:(id)a3 contentResponseHeaders:(id)a4 contentResponseBody:(id)a5;
- (unint64_t)hash;
@end

@implementation CKAssetDownloadPreauthorization

- (CKAssetDownloadPreauthorization)initWithResponseUUID:(id)a3 contentResponseHeaders:(id)a4 contentResponseBody:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v8 && v9 && v10)
  {
    v27.receiver = self;
    v27.super_class = CKAssetDownloadPreauthorization;
    v15 = [(CKAssetDownloadPreauthorization *)&v27 init];
    if (v15)
    {
      v16 = objc_msgSend_copy(v8, v13, v14);
      responseUUID = v15->_responseUUID;
      v15->_responseUUID = v16;

      v20 = objc_msgSend_CKDeepCopy(v9, v18, v19);
      contentResponseHeaders = v15->_contentResponseHeaders;
      v15->_contentResponseHeaders = v20;

      v24 = objc_msgSend_copy(v11, v22, v23);
      contentResponseBody = v15->_contentResponseBody;
      v15->_contentResponseBody = v24;
    }

    self = v15;
    v12 = self;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    isEqualToString = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CKAssetDownloadPreauthorization;
    if ([(CKAssetDownloadPreauthorization *)&v14 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = objc_msgSend_responseUUID(v4, v5, v6);
      v10 = objc_msgSend_responseUUID(self, v8, v9);
      isEqualToString = objc_msgSend_isEqualToString_(v7, v11, v10);
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_responseUUID(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

@end