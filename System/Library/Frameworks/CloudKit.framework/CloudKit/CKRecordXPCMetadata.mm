@interface CKRecordXPCMetadata
- (CKRecordXPCMetadata)initWithCoder:(id)a3;
- (void)CKAssignToContainerWithID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKRecordXPCMetadata

- (void)CKAssignToContainerWithID:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_serverRecord(self, v5, v6);
  objc_msgSend_CKAssignToContainerWithID_(v8, v7, v4);
}

- (void)encodeWithCoder:(id)a3
{
  v55 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_etag(self, v5, v6);
  v8 = NSStringFromSelector(sel_etag);
  objc_msgSend_encodeObject_forKey_(v55, v9, v7, v8);

  v12 = objc_msgSend_creationDate(self, v10, v11);
  v13 = NSStringFromSelector(sel_creationDate);
  objc_msgSend_encodeObject_forKey_(v55, v14, v12, v13);

  v17 = objc_msgSend_modificationDate(self, v15, v16);
  v18 = NSStringFromSelector(sel_modificationDate);
  objc_msgSend_encodeObject_forKey_(v55, v19, v17, v18);

  v22 = objc_msgSend_expirationDate(self, v20, v21);
  v23 = NSStringFromSelector(sel_expirationDate);
  objc_msgSend_encodeObject_forKey_(v55, v24, v22, v23);

  v27 = objc_msgSend_serverRecord(self, v25, v26);
  v28 = NSStringFromSelector(sel_serverRecord);
  objc_msgSend_encodeObject_forKey_(v55, v29, v27, v28);

  v32 = objc_msgSend_protectionData(self, v30, v31);
  v33 = NSStringFromSelector(sel_protectionData);
  objc_msgSend_encodeObject_forKey_(v55, v34, v32, v33);

  v37 = objc_msgSend_signingPCSIdentityData(self, v35, v36);
  v38 = NSStringFromSelector(sel_signingPCSIdentityData);
  objc_msgSend_encodeObject_forKey_(v55, v39, v37, v38);

  v42 = objc_msgSend_pcsKeyID(self, v40, v41);
  v43 = NSStringFromSelector(sel_pcsKeyID);
  objc_msgSend_encodeObject_forKey_(v55, v44, v42, v43);

  v47 = objc_msgSend_allPCSKeyIDs(self, v45, v46);
  v48 = NSStringFromSelector(sel_allPCSKeyIDs);
  objc_msgSend_encodeObject_forKey_(v55, v49, v47, v48);

  v52 = objc_msgSend_zoneishKeyID(self, v50, v51);
  v53 = NSStringFromSelector(sel_zoneishKeyID);
  objc_msgSend_encodeObject_forKey_(v55, v54, v52, v53);

  objc_autoreleasePoolPop(v4);
}

- (CKRecordXPCMetadata)initWithCoder:(id)a3
{
  v64[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v63.receiver = self;
  v63.super_class = CKRecordXPCMetadata;
  v5 = [(CKRecordXPCMetadata *)&v63 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_etag);
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v9, v7, v8);
    etag = v5->_etag;
    v5->_etag = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_creationDate);
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v12, v13);
    creationDate = v5->_creationDate;
    v5->_creationDate = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_modificationDate);
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v17, v18);
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_expirationDate);
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v22, v23);
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_serverRecord);
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v29, v27, v28);
    serverRecord = v5->_serverRecord;
    v5->_serverRecord = v30;

    v32 = objc_opt_class();
    v33 = NSStringFromSelector(sel_protectionData);
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v34, v32, v33);
    protectionData = v5->_protectionData;
    v5->_protectionData = v35;

    v37 = objc_opt_class();
    v38 = NSStringFromSelector(sel_signingPCSIdentityData);
    v40 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v39, v37, v38);
    signingPCSIdentityData = v5->_signingPCSIdentityData;
    v5->_signingPCSIdentityData = v40;

    v42 = objc_opt_class();
    v43 = NSStringFromSelector(sel_pcsKeyID);
    v45 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v44, v42, v43);
    pcsKeyID = v5->_pcsKeyID;
    v5->_pcsKeyID = v45;

    v47 = MEMORY[0x1E695DFD8];
    v64[0] = objc_opt_class();
    v64[1] = objc_opt_class();
    v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v48, v64, 2);
    v51 = objc_msgSend_setWithArray_(v47, v50, v49);
    v52 = NSStringFromSelector(sel_allPCSKeyIDs);
    v54 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v53, v51, v52);
    allPCSKeyIDs = v5->_allPCSKeyIDs;
    v5->_allPCSKeyIDs = v54;

    v56 = objc_opt_class();
    v57 = NSStringFromSelector(sel_zoneishKeyID);
    v59 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v58, v56, v57);
    zoneishKeyID = v5->_zoneishKeyID;
    v5->_zoneishKeyID = v59;

    objc_autoreleasePoolPop(v6);
  }

  v61 = *MEMORY[0x1E69E9840];
  return v5;
}

@end