@interface CKModifyRecordsOperationInfo
- (CKModifyRecordsOperationInfo)init;
- (CKModifyRecordsOperationInfo)initWithCoder:(id)a3;
- (void)_commonInit;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKModifyRecordsOperationInfo

- (CKModifyRecordsOperationInfo)init
{
  v7.receiver = self;
  v7.super_class = CKModifyRecordsOperationInfo;
  v2 = [(CKOperationInfo *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend__commonInit(v2, v3, v4);
  }

  return v5;
}

- (void)_commonInit
{
  self->_atomic = 1;
  self->_shouldModifyRecordsInDatabase = 1;
  self->_alwaysFetchPCSFromServer = 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v70.receiver = self;
  v70.super_class = CKModifyRecordsOperationInfo;
  [(CKDatabaseOperationInfo *)&v70 encodeWithCoder:v4];
  v8 = objc_msgSend_recordsToSave(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"records");

  v12 = objc_msgSend_recordIDsToDelete(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"recordIDs");

  v16 = objc_msgSend_clientChangeTokenData(self, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"clientChangeToken");

  v20 = objc_msgSend_savePolicy(self, v18, v19);
  objc_msgSend_encodeInt64_forKey_(v4, v21, v20, @"savePolicy");
  shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(self, v22, v23);
  objc_msgSend_encodeBool_forKey_(v4, v25, shouldOnlySaveAssetContent, @"shouldOnlySaveAssetContent");
  v28 = objc_msgSend_recordIDsToDeleteToEtags(self, v26, v27);
  objc_msgSend_encodeObject_forKey_(v4, v29, v28, @"recordIDsToEtags");

  v32 = objc_msgSend_atomic(self, v30, v31);
  objc_msgSend_encodeBool_forKey_(v4, v33, v32, @"atomic");
  v36 = objc_msgSend_conflictLosersToResolveByRecordID(self, v34, v35);
  objc_msgSend_encodeObject_forKey_(v4, v37, v36, @"conflictLosersToResolveByRecordID");

  v40 = objc_msgSend_pluginFieldsForRecordDeletesByID(self, v38, v39);
  objc_msgSend_encodeObject_forKey_(v4, v41, v40, @"pluginFieldsForRecordDeletesByID");

  shouldReportRecordsInFlight = objc_msgSend_shouldReportRecordsInFlight(self, v42, v43);
  objc_msgSend_encodeBool_forKey_(v4, v45, shouldReportRecordsInFlight, @"shouldReportRecordsInFlight");
  v48 = objc_msgSend_assetUUIDToExpectedProperties(self, v46, v47);
  objc_msgSend_encodeObject_forKey_(v4, v49, v48, @"assetUUIDToExpectedProperties");

  v52 = objc_msgSend_packageUUIDToExpectedProperties(self, v50, v51);
  objc_msgSend_encodeObject_forKey_(v4, v53, v52, @"packageUUIDToExpectedProperties");

  v56 = objc_msgSend_originatingFromDaemon(self, v54, v55);
  objc_msgSend_encodeBool_forKey_(v4, v57, v56, @"originatingFromDaemon");
  v60 = objc_msgSend_markAsParticipantNeedsNewInvitationToken(self, v58, v59);
  objc_msgSend_encodeBool_forKey_(v4, v61, v60, @"markAsParticipantNeedsNewInvitationToken");
  PCSFromServer = objc_msgSend_alwaysFetchPCSFromServer(self, v62, v63);
  objc_msgSend_encodeBool_forKey_(v4, v65, PCSFromServer, @"alwaysFetchPCSFromServer");
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v66, v67);
  objc_msgSend_encodeBool_forKey_(v4, v69, shouldCloneFileInAssetCache, @"ShouldCloneFileInAssetCache");
  objc_autoreleasePoolPop(v5);
}

- (CKModifyRecordsOperationInfo)initWithCoder:(id)a3
{
  v88[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v86.receiver = self;
  v86.super_class = CKModifyRecordsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v86 initWithCoder:v4];
  v8 = v5;
  if (v5)
  {
    objc_msgSend__commonInit(v5, v6, v7);
    context = objc_autoreleasePoolPush();
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v9, v12, v10, v11, 0);
    v15 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v14, v13, @"records");
    recordsToSave = v8->_recordsToSave;
    v8->_recordsToSave = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v21 = objc_msgSend_setWithObjects_(v17, v20, v18, v19, 0);
    v23 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v22, v21, @"recordIDs");
    recordIDsToDelete = v8->_recordIDsToDelete;
    v8->_recordIDsToDelete = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v28 = objc_msgSend_setWithObjects_(v25, v27, v26, 0);
    v30 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v29, v28, @"clientChangeToken");
    clientChangeTokenData = v8->_clientChangeTokenData;
    v8->_clientChangeTokenData = v30;

    v8->_savePolicy = objc_msgSend_decodeInt64ForKey_(v4, v32, @"savePolicy");
    v8->_shouldOnlySaveAssetContent = objc_msgSend_decodeBoolForKey_(v4, v33, @"shouldOnlySaveAssetContent");
    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v39 = objc_msgSend_setWithObjects_(v34, v38, v35, v36, v37, 0);
    v41 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v40, v39, @"recordIDsToEtags");
    recordIDsToDeleteToEtags = v8->_recordIDsToDeleteToEtags;
    v8->_recordIDsToDeleteToEtags = v41;

    v8->_atomic = objc_msgSend_decodeBoolForKey_(v4, v43, @"atomic");
    v44 = MEMORY[0x1E695DFD8];
    v88[0] = objc_opt_class();
    v88[1] = objc_opt_class();
    v88[2] = objc_opt_class();
    v88[3] = objc_opt_class();
    v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v45, v88, 4);
    v48 = objc_msgSend_setWithArray_(v44, v47, v46);
    v50 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v49, v48, @"conflictLosersToResolveByRecordID");
    conflictLosersToResolveByRecordID = v8->_conflictLosersToResolveByRecordID;
    v8->_conflictLosersToResolveByRecordID = v50;

    v52 = CKAcceptableValueClasses();
    v87[0] = objc_opt_class();
    v87[1] = objc_opt_class();
    v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v53, v87, 2);
    v56 = objc_msgSend_setByAddingObjectsFromArray_(v52, v55, v54);
    v58 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v57, v56, @"pluginFieldsForRecordDeletesByID");
    pluginFieldsForRecordDeletesByID = v8->_pluginFieldsForRecordDeletesByID;
    v8->_pluginFieldsForRecordDeletesByID = v58;

    v8->_shouldReportRecordsInFlight = objc_msgSend_decodeBoolForKey_(v4, v60, @"shouldReportRecordsInFlight");
    v61 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v63 = objc_opt_class();
    v64 = objc_opt_class();
    v66 = objc_msgSend_setWithObjects_(v61, v65, v62, v63, v64, 0);
    v68 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v67, v66, @"assetUUIDToExpectedProperties");
    assetUUIDToExpectedProperties = v8->_assetUUIDToExpectedProperties;
    v8->_assetUUIDToExpectedProperties = v68;

    v70 = MEMORY[0x1E695DFD8];
    v71 = objc_opt_class();
    v72 = objc_opt_class();
    v73 = objc_opt_class();
    v75 = objc_msgSend_setWithObjects_(v70, v74, v71, v72, v73, 0);
    v77 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v76, v75, @"packageUUIDToExpectedProperties");
    packageUUIDToExpectedProperties = v8->_packageUUIDToExpectedProperties;
    v8->_packageUUIDToExpectedProperties = v77;

    v8->_originatingFromDaemon = objc_msgSend_decodeBoolForKey_(v4, v79, @"originatingFromDaemon");
    v8->_markAsParticipantNeedsNewInvitationToken = objc_msgSend_decodeBoolForKey_(v4, v80, @"markAsParticipantNeedsNewInvitationToken");
    v8->_alwaysFetchPCSFromServer = objc_msgSend_decodeBoolForKey_(v4, v81, @"alwaysFetchPCSFromServer");
    v8->_shouldCloneFileInAssetCache = objc_msgSend_decodeBoolForKey_(v4, v82, @"ShouldCloneFileInAssetCache");
    objc_autoreleasePoolPop(context);
  }

  v83 = *MEMORY[0x1E69E9840];
  return v8;
}

@end