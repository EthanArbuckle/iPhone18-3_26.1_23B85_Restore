@interface CKFetchRecordsOperationInfo
- (CKFetchRecordsOperationInfo)init;
- (CKFetchRecordsOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFetchRecordsOperationInfo

- (CKFetchRecordsOperationInfo)init
{
  v3.receiver = self;
  v3.super_class = CKFetchRecordsOperationInfo;
  result = [(CKOperationInfo *)&v3 init];
  if (result)
  {
    result->_shouldFetchAssetContent = 1;
    result->_shouldFetchMergeableValues = 1;
    result->_shouldRequestEncryptedAssetOwnerIdentifier = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v58.receiver = self;
  v58.super_class = CKFetchRecordsOperationInfo;
  [(CKDatabaseOperationInfo *)&v58 encodeWithCoder:v4];
  v8 = objc_msgSend_recordIDs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"recordIDs");

  CurrentUserOperation = objc_msgSend_isFetchCurrentUserOperation(self, v10, v11);
  objc_msgSend_encodeBool_forKey_(v4, v13, CurrentUserOperation, @"isFetchCurrentUser");
  AssetContent = objc_msgSend_shouldFetchAssetContent(self, v14, v15);
  objc_msgSend_encodeBool_forKey_(v4, v17, AssetContent, @"shouldFetchAssetContent");
  AssetContentInMemory = objc_msgSend_shouldFetchAssetContentInMemory(self, v18, v19);
  objc_msgSend_encodeBool_forKey_(v4, v21, AssetContentInMemory, @"shouldFetchAssetContentInMemory");
  v24 = objc_msgSend_dropInMemoryAssetContentASAP(self, v22, v23);
  objc_msgSend_encodeBool_forKey_(v4, v25, v24, @"dropInMemoryAssetContentASAP");
  v28 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(self, v26, v27);
  objc_msgSend_encodeObject_forKey_(v4, v29, v28, @"assetTransferOptionsByRecordTypeAndKey");

  MergeableValues = objc_msgSend_shouldFetchMergeableValues(self, v30, v31);
  objc_msgSend_encodeBool_forKey_(v4, v33, MergeableValues, @"shouldFetchMergeableValues");
  v36 = objc_msgSend_desiredKeys(self, v34, v35);
  objc_msgSend_encodeObject_forKey_(v4, v37, v36, @"desiredKeys");

  v40 = objc_msgSend_recordIDsToETags(self, v38, v39);
  objc_msgSend_encodeObject_forKey_(v4, v41, v40, @"ETag");

  v44 = objc_msgSend_recordIDsToVersionETags(self, v42, v43);
  objc_msgSend_encodeObject_forKey_(v4, v45, v44, @"VersionETag");

  v48 = objc_msgSend_desiredPackageFileIndices(self, v46, v47);
  objc_msgSend_encodeObject_forKey_(v4, v49, v48, @"DesiredPackageFileIndices");

  v52 = objc_msgSend_webSharingIdentityDataByRecordID(self, v50, v51);
  objc_msgSend_encodeObject_forKey_(v4, v53, v52, @"WebSharingIdentities");

  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v54, v55);
  objc_msgSend_encodeBool_forKey_(v4, v57, shouldCloneFileInAssetCache, @"ShouldCloneFileInAssetCache");
  objc_autoreleasePoolPop(v5);
}

- (CKFetchRecordsOperationInfo)initWithCoder:(id)a3
{
  v77[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v76.receiver = self;
  v76.super_class = CKFetchRecordsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v76 initWithCoder:v4];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v11, v10, @"recordIDs");
    recordIDs = v5->_recordIDs;
    v5->_recordIDs = v12;

    v5->_isFetchCurrentUserOperation = objc_msgSend_decodeBoolForKey_(v4, v14, @"isFetchCurrentUser");
    v5->_shouldFetchAssetContent = objc_msgSend_decodeBoolForKey_(v4, v15, @"shouldFetchAssetContent");
    v5->_shouldFetchAssetContentInMemory = objc_msgSend_decodeBoolForKey_(v4, v16, @"shouldFetchAssetContentInMemory");
    v5->_dropInMemoryAssetContentASAP = objc_msgSend_decodeBoolForKey_(v4, v17, @"dropInMemoryAssetContentASAP");
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v23 = objc_msgSend_setWithObjects_(v18, v22, v19, v20, v21, 0);
    v25 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v24, v23, @"assetTransferOptionsByRecordTypeAndKey");
    assetTransferOptionsByRecordTypeAndKey = v5->_assetTransferOptionsByRecordTypeAndKey;
    v5->_assetTransferOptionsByRecordTypeAndKey = v25;

    v5->_shouldFetchMergeableValues = objc_msgSend_decodeBoolForKey_(v4, v27, @"shouldFetchMergeableValues");
    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v32 = objc_msgSend_setWithObjects_(v28, v31, v29, v30, 0);
    v34 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v33, v32, @"desiredKeys");
    desiredKeys = v5->_desiredKeys;
    v5->_desiredKeys = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v41 = objc_msgSend_setWithObjects_(v36, v40, v37, v38, v39, 0);
    v43 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v42, v41, @"ETag");
    recordIDsToETags = v5->_recordIDsToETags;
    v5->_recordIDsToETags = v43;

    v45 = MEMORY[0x1E695DFD8];
    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v50 = objc_msgSend_setWithObjects_(v45, v49, v46, v47, v48, 0);
    v52 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v51, v50, @"VersionETag");
    recordIDsToVersionETags = v5->_recordIDsToVersionETags;
    v5->_recordIDsToVersionETags = v52;

    v54 = MEMORY[0x1E695DFD8];
    v55 = objc_opt_class();
    v56 = objc_opt_class();
    v57 = objc_opt_class();
    v58 = objc_opt_class();
    v60 = objc_msgSend_setWithObjects_(v54, v59, v55, v56, v57, v58, 0);
    v62 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v61, v60, @"DesiredPackageFileIndices");
    desiredPackageFileIndices = v5->_desiredPackageFileIndices;
    v5->_desiredPackageFileIndices = v62;

    v64 = MEMORY[0x1E695DFD8];
    v77[0] = objc_opt_class();
    v77[1] = objc_opt_class();
    v77[2] = objc_opt_class();
    v66 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v65, v77, 3);
    v68 = objc_msgSend_setWithArray_(v64, v67, v66);
    v70 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v69, v68, @"WebSharingIdentities");
    webSharingIdentityDataByRecordID = v5->_webSharingIdentityDataByRecordID;
    v5->_webSharingIdentityDataByRecordID = v70;

    v5->_shouldCloneFileInAssetCache = objc_msgSend_decodeBoolForKey_(v4, v72, @"ShouldCloneFileInAssetCache");
    objc_autoreleasePoolPop(context);
  }

  v73 = *MEMORY[0x1E69E9840];
  return v5;
}

@end