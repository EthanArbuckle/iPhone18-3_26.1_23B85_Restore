@interface CKQueryOperationInfo
- (CKQueryOperationInfo)init;
- (CKQueryOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKQueryOperationInfo

- (CKQueryOperationInfo)init
{
  v3.receiver = self;
  v3.super_class = CKQueryOperationInfo;
  result = [(CKOperationInfo *)&v3 init];
  if (result)
  {
    result->_shouldFetchAssetContent = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v38.receiver = self;
  v38.super_class = CKQueryOperationInfo;
  [(CKDatabaseOperationInfo *)&v38 encodeWithCoder:v4];
  v8 = objc_msgSend_query(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"query");

  v12 = objc_msgSend_zoneID(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"zoneID");

  v16 = objc_msgSend_cursor(self, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"cursor");

  v20 = objc_msgSend_resultsLimit(self, v18, v19);
  objc_msgSend_encodeInt64_forKey_(v4, v21, v20, @"limit");
  v24 = objc_msgSend_desiredKeys(self, v22, v23);
  objc_msgSend_encodeObject_forKey_(v4, v25, v24, @"desiredKeys");

  v28 = objc_msgSend_assetTransferOptionsByKey(self, v26, v27);
  objc_msgSend_encodeObject_forKey_(v4, v29, v28, @"assetTransferOptionsByKey");

  AssetContent = objc_msgSend_shouldFetchAssetContent(self, v30, v31);
  objc_msgSend_encodeBool_forKey_(v4, v33, AssetContent, @"fetchAssetContent");
  AllResults = objc_msgSend_fetchAllResults(self, v34, v35);
  objc_msgSend_encodeBool_forKey_(v4, v37, AllResults, @"fetchAllResults");
  objc_autoreleasePoolPop(v5);
}

- (CKQueryOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = CKQueryOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v40 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"query");
    query = v5->_query;
    v5->_query = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"zoneID");
    zoneID = v5->_zoneID;
    v5->_zoneID = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"cursor");
    cursor = v5->_cursor;
    v5->_cursor = v17;

    v5->_resultsLimit = objc_msgSend_decodeInt64ForKey_(v4, v19, @"limit");
    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v24 = objc_msgSend_setWithObjects_(v20, v23, v21, v22, 0);
    v26 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v25, v24, @"desiredKeys");
    desiredKeys = v5->_desiredKeys;
    v5->_desiredKeys = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v33 = objc_msgSend_setWithObjects_(v28, v32, v29, v30, v31, 0);
    v35 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v34, v33, @"assetTransferOptionsByKey");
    assetTransferOptionsByKey = v5->_assetTransferOptionsByKey;
    v5->_assetTransferOptionsByKey = v35;

    v5->_shouldFetchAssetContent = objc_msgSend_decodeBoolForKey_(v4, v37, @"fetchAssetContent");
    v5->_fetchAllResults = objc_msgSend_decodeBoolForKey_(v4, v38, @"fetchAllResults");
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end