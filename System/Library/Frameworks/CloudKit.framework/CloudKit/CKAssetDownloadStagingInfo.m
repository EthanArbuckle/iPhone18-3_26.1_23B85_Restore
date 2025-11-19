@interface CKAssetDownloadStagingInfo
- (CKAssetDownloadStagingInfo)initWithCoder:(id)a3;
- (CKAssetDownloadStagingInfo)initWithItemID:(id)a3 trackingUUID:(id)a4 signature:(id)a5;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKAssetDownloadStagingInfo

- (CKAssetDownloadStagingInfo)initWithItemID:(id)a3 trackingUUID:(id)a4 signature:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = CKAssetDownloadStagingInfo;
  v13 = [(CKAssetDownloadStagingInfo *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
    itemID = v13->_itemID;
    v13->_itemID = v14;

    v18 = objc_msgSend_copy(v9, v16, v17);
    trackingUUID = v13->_trackingUUID;
    v13->_trackingUUID = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    signature = v13->_signature;
    v13->_signature = v22;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_itemID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v4, v8, v7, @"itemID");

  v11 = objc_msgSend_trackingUUID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"trackingUUID");

  v16 = objc_msgSend_signature(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v4, v15, v16, @"signature");
}

- (CKAssetDownloadStagingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CKAssetDownloadStagingInfo;
  v5 = [(CKAssetDownloadStagingInfo *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"itemID");
    itemID = v5->_itemID;
    v5->_itemID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"trackingUUID");
    trackingUUID = v5->_trackingUUID;
    v5->_trackingUUID = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"signature");
    signature = v5->_signature;
    v5->_signature = v16;
  }

  return v5;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_itemID(self, v5, v6);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v8, @"itemID", v7, 0);

  v11 = objc_msgSend_trackingUUID(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v12, @"trackingUUID", v11, 0);

  v16 = objc_msgSend_signature(self, v13, v14);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v15, @"signature", v16, 0);
}

@end