@interface CKFetchShareMetadataOperationInfo
- (CKFetchShareMetadataOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFetchShareMetadataOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v30.receiver = self;
  v30.super_class = CKFetchShareMetadataOperationInfo;
  [(CKOperationInfo *)&v30 encodeWithCoder:v4];
  v8 = objc_msgSend_shareURLsToFetch(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"URLsToFetch");

  RootRecord = objc_msgSend_shouldFetchRootRecord(self, v10, v11);
  objc_msgSend_encodeBool_forKey_(v4, v13, RootRecord, @"ShouldFetchRootRecord");
  v16 = objc_msgSend_rootRecordDesiredKeys(self, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"RootRecordDesiredKeys");

  v20 = objc_msgSend_shareInvitationTokensByShareURL(self, v18, v19);
  objc_msgSend_encodeObject_forKey_(v4, v21, v20, @"ShareInvitationTokensByShareURL");

  v24 = objc_msgSend_overwriteContainerPCSServiceIfManatee(self, v22, v23);
  objc_msgSend_encodeBool_forKey_(v4, v25, v24, @"OverwriteContainerPCSServiceIfManatee");
  v28 = objc_msgSend_skipShareDecryption(self, v26, v27);
  objc_msgSend_encodeBool_forKey_(v4, v29, v28, @"SkipShareDecryption");
  objc_autoreleasePoolPop(v5);
}

- (CKFetchShareMetadataOperationInfo)initWithCoder:(id)a3
{
  v38[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = CKFetchShareMetadataOperationInfo;
  v5 = [(CKOperationInfo *)&v36 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v38, 2);
    v11 = objc_msgSend_setWithArray_(v7, v10, v9);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"URLsToFetch");
    shareURLsToFetch = v5->_shareURLsToFetch;
    v5->_shareURLsToFetch = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v19 = objc_msgSend_setWithObjects_(v15, v18, v16, v17, 0);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v20, v19, @"RootRecordDesiredKeys");
    rootRecordDesiredKeys = v5->_rootRecordDesiredKeys;
    v5->_rootRecordDesiredKeys = v21;

    v5->_shouldFetchRootRecord = objc_msgSend_decodeBoolForKey_(v4, v23, @"ShouldFetchRootRecord");
    v24 = MEMORY[0x1E695DFD8];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v37[2] = objc_opt_class();
    v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v25, v37, 3);
    v28 = objc_msgSend_setWithArray_(v24, v27, v26);
    v30 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v29, v28, @"ShareInvitationTokensByShareURL");
    shareInvitationTokensByShareURL = v5->_shareInvitationTokensByShareURL;
    v5->_shareInvitationTokensByShareURL = v30;

    v5->_overwriteContainerPCSServiceIfManatee = objc_msgSend_decodeBoolForKey_(v4, v32, @"OverwriteContainerPCSServiceIfManatee");
    v5->_skipShareDecryption = objc_msgSend_decodeBoolForKey_(v4, v33, @"SkipShareDecryption");
    objc_autoreleasePoolPop(v6);
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

@end