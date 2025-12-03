@interface CKFetchArchivedRecordsOperationInfo
- (CKFetchArchivedRecordsOperationInfo)init;
- (CKFetchArchivedRecordsOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKFetchArchivedRecordsOperationInfo

- (CKFetchArchivedRecordsOperationInfo)init
{
  v3.receiver = self;
  v3.super_class = CKFetchArchivedRecordsOperationInfo;
  result = [(CKOperationInfo *)&v3 init];
  if (result)
  {
    result->_shouldFetchAssetContents = 1;
    result->_fetchAllChanges = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v26.receiver = self;
  v26.super_class = CKFetchArchivedRecordsOperationInfo;
  [(CKDatabaseOperationInfo *)&v26 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_recordZoneIDs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"recordZoneIDs");

  v12 = objc_msgSend_configurationsByRecordZoneID(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, v12, @"configurationsByRecordZoneID");

  AssetContents = objc_msgSend_shouldFetchAssetContents(self, v14, v15);
  objc_msgSend_encodeBool_forKey_(coderCopy, v17, AssetContents, @"shouldFetchAssetContents");
  AllChanges = objc_msgSend_fetchAllChanges(self, v18, v19);
  objc_msgSend_encodeBool_forKey_(coderCopy, v21, AllChanges, @"fetchAllChanges");
  v24 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(self, v22, v23);
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, v24, @"assetTransferOptionsByRecordTypeAndKey");

  objc_autoreleasePoolPop(v5);
}

- (CKFetchArchivedRecordsOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = CKFetchArchivedRecordsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v36 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"recordZoneIDs");
    recordZoneIDs = v5->_recordZoneIDs;
    v5->_recordZoneIDs = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v15, v19, v16, v17, v18, 0);
    v22 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v21, v20, @"configurationsByRecordZoneID");
    configurationsByRecordZoneID = v5->_configurationsByRecordZoneID;
    v5->_configurationsByRecordZoneID = v22;

    v5->_shouldFetchAssetContents = objc_msgSend_decodeBoolForKey_(coderCopy, v24, @"shouldFetchAssetContents");
    v5->_fetchAllChanges = objc_msgSend_decodeBoolForKey_(coderCopy, v25, @"fetchAllChanges");
    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v31 = objc_msgSend_setWithObjects_(v26, v30, v27, v28, v29, 0);
    v33 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v32, v31, @"assetTransferOptionsByRecordTypeAndKey");
    assetTransferOptionsByRecordTypeAndKey = v5->_assetTransferOptionsByRecordTypeAndKey;
    v5->_assetTransferOptionsByRecordTypeAndKey = v33;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end