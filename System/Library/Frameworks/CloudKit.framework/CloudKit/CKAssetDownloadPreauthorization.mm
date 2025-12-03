@interface CKAssetDownloadPreauthorization
- (BOOL)isEqual:(id)equal;
- (CKAssetDownloadPreauthorization)initWithResponseUUID:(id)d contentResponseHeaders:(id)headers contentResponseBody:(id)body;
- (unint64_t)hash;
@end

@implementation CKAssetDownloadPreauthorization

- (CKAssetDownloadPreauthorization)initWithResponseUUID:(id)d contentResponseHeaders:(id)headers contentResponseBody:(id)body
{
  dCopy = d;
  headersCopy = headers;
  bodyCopy = body;
  v11 = bodyCopy;
  selfCopy = 0;
  if (dCopy && headersCopy && bodyCopy)
  {
    v27.receiver = self;
    v27.super_class = CKAssetDownloadPreauthorization;
    v15 = [(CKAssetDownloadPreauthorization *)&v27 init];
    if (v15)
    {
      v16 = objc_msgSend_copy(dCopy, v13, v14);
      responseUUID = v15->_responseUUID;
      v15->_responseUUID = v16;

      v20 = objc_msgSend_CKDeepCopy(headersCopy, v18, v19);
      contentResponseHeaders = v15->_contentResponseHeaders;
      v15->_contentResponseHeaders = v20;

      v24 = objc_msgSend_copy(v11, v22, v23);
      contentResponseBody = v15->_contentResponseBody;
      v15->_contentResponseBody = v24;
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqualToString = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CKAssetDownloadPreauthorization;
    if ([(CKAssetDownloadPreauthorization *)&v14 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = objc_msgSend_responseUUID(equalCopy, v5, v6);
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