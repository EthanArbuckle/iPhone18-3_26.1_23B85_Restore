@interface CKMarkAssetBrokenOperationInfo
- (CKMarkAssetBrokenOperationInfo)init;
- (CKMarkAssetBrokenOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKMarkAssetBrokenOperationInfo

- (CKMarkAssetBrokenOperationInfo)init
{
  v3.receiver = self;
  v3.super_class = CKMarkAssetBrokenOperationInfo;
  result = [(CKOperationInfo *)&v3 init];
  if (result)
  {
    result->_touchRepairZone = 1;
    result->_simulateCorruptAsset = 1;
    result->_writeRepairRecord = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v46.receiver = self;
  v46.super_class = CKMarkAssetBrokenOperationInfo;
  [(CKDatabaseOperationInfo *)&v46 encodeWithCoder:v4];
  v8 = objc_msgSend_recordID(self, v6, v7);
  v9 = NSStringFromSelector(sel_recordID);
  objc_msgSend_encodeObject_forKey_(v4, v10, v8, v9);

  v13 = objc_msgSend_field(self, v11, v12);
  v14 = NSStringFromSelector(sel_field);
  objc_msgSend_encodeObject_forKey_(v4, v15, v13, v14);

  v18 = objc_msgSend_listIndex(self, v16, v17);
  v19 = NSStringFromSelector(sel_listIndex);
  objc_msgSend_encodeInteger_forKey_(v4, v20, v18, v19);

  v23 = objc_msgSend_touchRepairZone(self, v21, v22);
  v24 = NSStringFromSelector(sel_touchRepairZone);
  objc_msgSend_encodeBool_forKey_(v4, v25, v23, v24);

  v28 = objc_msgSend_simulateCorruptAsset(self, v26, v27);
  v29 = NSStringFromSelector(sel_simulateCorruptAsset);
  objc_msgSend_encodeBool_forKey_(v4, v30, v28, v29);

  v33 = objc_msgSend_bypassPCSEncryptionForTouchRepairZone(self, v31, v32);
  v34 = NSStringFromSelector(sel_bypassPCSEncryptionForTouchRepairZone);
  objc_msgSend_encodeBool_forKey_(v4, v35, v33, v34);

  v38 = objc_msgSend_writeRepairRecord(self, v36, v37);
  v39 = NSStringFromSelector(sel_writeRepairRecord);
  objc_msgSend_encodeBool_forKey_(v4, v40, v38, v39);

  v43 = objc_msgSend_uploadRequestConfiguration(self, v41, v42);
  v44 = NSStringFromSelector(sel_uploadRequestConfiguration);
  objc_msgSend_encodeObject_forKey_(v4, v45, v43, v44);

  objc_autoreleasePoolPop(v5);
}

- (CKMarkAssetBrokenOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = CKMarkAssetBrokenOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v33 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_recordID);
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v9, v7, v8);
    recordID = v5->_recordID;
    v5->_recordID = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_field);
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v12, v13);
    field = v5->_field;
    v5->_field = v15;

    v17 = NSStringFromSelector(sel_listIndex);
    v5->_listIndex = objc_msgSend_decodeIntegerForKey_(v4, v18, v17);

    v19 = NSStringFromSelector(sel_touchRepairZone);
    v5->_touchRepairZone = objc_msgSend_decodeBoolForKey_(v4, v20, v19);

    v21 = NSStringFromSelector(sel_simulateCorruptAsset);
    v5->_simulateCorruptAsset = objc_msgSend_decodeBoolForKey_(v4, v22, v21);

    v23 = NSStringFromSelector(sel_bypassPCSEncryptionForTouchRepairZone);
    v5->_bypassPCSEncryptionForTouchRepairZone = objc_msgSend_decodeBoolForKey_(v4, v24, v23);

    v25 = NSStringFromSelector(sel_writeRepairRecord);
    v5->_writeRepairRecord = objc_msgSend_decodeBoolForKey_(v4, v26, v25);

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_uploadRequestConfiguration);
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v29, v27, v28);
    uploadRequestConfiguration = v5->_uploadRequestConfiguration;
    v5->_uploadRequestConfiguration = v30;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end