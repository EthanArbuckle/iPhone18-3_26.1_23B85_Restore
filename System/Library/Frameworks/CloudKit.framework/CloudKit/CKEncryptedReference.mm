@interface CKEncryptedReference
- (CKEncryptedReference)initWithReference:(id)reference;
- (CKReference)reference;
- (id)_pReferenceFromReference:(id)reference;
- (id)_recordIDFromPRecordIdentifier:(id)identifier;
- (id)_referenceFromPReference:(id)reference;
@end

@implementation CKEncryptedReference

- (CKEncryptedReference)initWithReference:(id)reference
{
  referenceCopy = reference;
  v28 = 0;
  v5 = _CKCheckArgument("reference", referenceCopy, 0, 0, 0, &v28);
  v6 = v28;
  if ((v5 & 1) == 0)
  {
    v16 = v6;
    v17 = [CKException alloc];
    v20 = objc_msgSend_code(v16, v18, v19);
    v23 = objc_msgSend_localizedDescription(v16, v21, v22);
    v25 = objc_msgSend_initWithCode_format_(v17, v24, v20, @"%@", v23);
    v26 = v25;

    objc_exception_throw(v25);
  }

  v7 = objc_opt_new();
  v9 = objc_msgSend__pReferenceFromReference_(self, v8, referenceCopy);
  objc_msgSend_setReferenceValue_(v7, v10, v9);

  v13 = objc_msgSend_data(v7, v11, v12);
  v27.receiver = self;
  v27.super_class = CKEncryptedReference;
  v14 = [(CKEncryptedData *)&v27 initWithData:v13];

  return v14;
}

- (CKReference)reference
{
  v4 = objc_msgSend_data(self, a2, v2);
  if (v4)
  {
    v5 = [CKDPRecordFieldValueEncryptedValue alloc];
    v7 = objc_msgSend_initWithData_(v5, v6, v4);
    v10 = objc_msgSend_referenceValue(v7, v8, v9);
    v12 = objc_msgSend__referenceFromPReference_(self, v11, v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_pReferenceFromReference:(id)reference
{
  referenceCopy = reference;
  v4 = objc_opt_new();
  v7 = objc_msgSend_recordID(referenceCopy, v5, v6);
  v10 = objc_msgSend_zoneID(v7, v8, v9);

  v11 = objc_opt_new();
  v14 = objc_msgSend_zoneName(v10, v12, v13);
  v17 = objc_msgSend_CKDPIdentifier_Zone(v14, v15, v16);
  objc_msgSend_setValue_(v11, v18, v17);

  v21 = objc_msgSend_ownerName(v10, v19, v20);
  v24 = objc_msgSend_CKDPIdentifier_User(v21, v22, v23);
  objc_msgSend_setOwnerIdentifier_(v11, v25, v24);

  v26 = objc_opt_new();
  v29 = objc_msgSend_recordID(referenceCopy, v27, v28);
  v32 = objc_msgSend_recordName(v29, v30, v31);
  v35 = objc_msgSend_CKDPIdentifier_Record(v32, v33, v34);
  objc_msgSend_setValue_(v26, v36, v35);

  objc_msgSend_setZoneIdentifier_(v26, v37, v11);
  objc_msgSend_setRecordIdentifier_(v4, v38, v26);
  v41 = objc_msgSend_referenceAction(referenceCopy, v39, v40);

  v43 = objc_msgSend_ckdpReferenceTypeForCKReferenceAction_(CKReference, v42, v41);
  objc_msgSend_setType_(v4, v44, v43);

  return v4;
}

- (id)_referenceFromPReference:(id)reference
{
  v25 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  v7 = objc_msgSend_recordIdentifier(referenceCopy, v5, v6);
  v11 = objc_msgSend__recordIDFromPRecordIdentifier_(self, v8, v7);
  if (v11)
  {
    if (objc_msgSend_hasType(referenceCopy, v9, v10))
    {
      v14 = objc_msgSend_type(referenceCopy, v12, v13);
      v16 = objc_msgSend_ckReferenceActionForCKDPRecordReferenceType_(CKReference, v15, v14);
    }

    else
    {
      v16 = 0;
    }

    v19 = [CKReference alloc];
    v18 = objc_msgSend_initWithRecordID_action_(v19, v20, v11, v16);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = referenceCopy;
      _os_log_error_impl(&dword_1883EA000, v17, OS_LOG_TYPE_ERROR, "Invalid record identifier from server %@", &v23, 0xCu);
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_recordIDFromPRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_msgSend_zoneIdentifier(identifierCopy, v4, v5);
  v7 = [CKRecordZoneID alloc];
  v10 = objc_msgSend_value(v6, v8, v9);
  v13 = objc_msgSend_name(v10, v11, v12);
  v16 = objc_msgSend_ownerIdentifier(v6, v14, v15);
  v19 = objc_msgSend_name(v16, v17, v18);
  v21 = objc_msgSend_initWithZoneName_ownerName_(v7, v20, v13, v19);

  v22 = [CKRecordID alloc];
  v25 = objc_msgSend_value(identifierCopy, v23, v24);

  v28 = objc_msgSend_name(v25, v26, v27);
  v30 = objc_msgSend_initWithRecordName_zoneID_(v22, v29, v28, v21);

  return v30;
}

@end