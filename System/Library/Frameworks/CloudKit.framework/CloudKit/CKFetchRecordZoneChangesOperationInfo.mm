@interface CKFetchRecordZoneChangesOperationInfo
- (CKFetchRecordZoneChangesOperationInfo)init;
- (CKFetchRecordZoneChangesOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFetchRecordZoneChangesOperationInfo

- (CKFetchRecordZoneChangesOperationInfo)init
{
  v3.receiver = self;
  v3.super_class = CKFetchRecordZoneChangesOperationInfo;
  result = [(CKOperationInfo *)&v3 init];
  if (result)
  {
    result->_shouldFetchAssetContents = 1;
    result->_fetchAllChanges = 1;
    result->_errorReportingStyle = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v38.receiver = self;
  v38.super_class = CKFetchRecordZoneChangesOperationInfo;
  [(CKDatabaseOperationInfo *)&v38 encodeWithCoder:v4];
  v8 = objc_msgSend_recordZoneIDs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"RecordZoneIDs");

  v12 = objc_msgSend_configurationsByRecordZoneID(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"configurationsByRecordZoneID");

  AssetContents = objc_msgSend_shouldFetchAssetContents(self, v14, v15);
  objc_msgSend_encodeBool_forKey_(v4, v17, AssetContents, @"shouldFetchAssetContents");
  v20 = objc_msgSend_changeTypes(self, v18, v19);
  objc_msgSend_encodeInteger_forKey_(v4, v21, v20, @"changeTypes");
  AllChanges = objc_msgSend_fetchAllChanges(self, v22, v23);
  objc_msgSend_encodeBool_forKey_(v4, v25, AllChanges, @"fetchAllChanges");
  v28 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(self, v26, v27);
  objc_msgSend_encodeObject_forKey_(v4, v29, v28, @"assetTransferOptionsByKeyByRecordType");

  v32 = objc_msgSend_supplementalChangeTokenByZoneID(self, v30, v31);
  objc_msgSend_encodeObject_forKey_(v4, v33, v32, @"supplementalChangeTokenByZoneID");

  v36 = objc_msgSend_errorReportingStyle(self, v34, v35);
  objc_msgSend_encodeInteger_forKey_(v4, v37, v36, @"errorReportingStyle");
  objc_autoreleasePoolPop(v5);
}

- (CKFetchRecordZoneChangesOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = CKFetchRecordZoneChangesOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v47 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"RecordZoneIDs");
    recordZoneIDs = v5->_recordZoneIDs;
    v5->_recordZoneIDs = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v15, v19, v16, v17, v18, 0);
    v22 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v21, v20, @"configurationsByRecordZoneID");
    configurationsByRecordZoneID = v5->_configurationsByRecordZoneID;
    v5->_configurationsByRecordZoneID = v22;

    v5->_shouldFetchAssetContents = objc_msgSend_decodeBoolForKey_(v4, v24, @"shouldFetchAssetContents");
    v5->_changeTypes = objc_msgSend_decodeIntegerForKey_(v4, v25, @"changeTypes");
    v5->_fetchAllChanges = objc_msgSend_decodeBoolForKey_(v4, v26, @"fetchAllChanges");
    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v32 = objc_msgSend_setWithObjects_(v27, v31, v28, v29, v30, 0);
    v34 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v33, v32, @"assetTransferOptionsByKeyByRecordType");
    assetTransferOptionsByRecordTypeAndKey = v5->_assetTransferOptionsByRecordTypeAndKey;
    v5->_assetTransferOptionsByRecordTypeAndKey = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v41 = objc_msgSend_setWithObjects_(v36, v40, v37, v38, v39, 0);
    v43 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v42, v41, @"supplementalChangeTokenByZoneID");
    supplementalChangeTokenByZoneID = v5->_supplementalChangeTokenByZoneID;
    v5->_supplementalChangeTokenByZoneID = v43;

    v5->_errorReportingStyle = objc_msgSend_decodeIntegerForKey_(v4, v45, @"errorReportingStyle");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end