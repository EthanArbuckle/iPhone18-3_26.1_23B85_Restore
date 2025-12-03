@interface CKMergeableValueID
- (BOOL)isEqual:(id)equal;
- (CKMergeableValueID)initWithCoder:(id)coder;
- (CKMergeableValueID)initWithData:(id)data zoneName:(id)name zoneOwner:(id)owner recordName:(id)recordName recordFieldName:(id)fieldName encrypted:(BOOL)encrypted;
- (CKMergeableValueID)initWithName:(id)name;
- (CKMergeableValueID)initWithName:(id)name recordID:(id)d key:(id)key encrypted:(BOOL)encrypted;
- (CKMergeableValueID)initWithName:(id)name zoneID:(id)d;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (id)description;
- (id)name;
- (id)recordID;
- (id)zoneID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKMergeableValueID

- (CKMergeableValueID)initWithName:(id)name
{
  v4 = objc_msgSend_dataUsingEncoding_(name, a2, 4);
  v6 = objc_msgSend_initWithData_zoneName_zoneOwner_(self, v5, v4, 0, 0);

  return v6;
}

- (CKMergeableValueID)initWithData:(id)data zoneName:(id)name zoneOwner:(id)owner recordName:(id)recordName recordFieldName:(id)fieldName encrypted:(BOOL)encrypted
{
  dataCopy = data;
  nameCopy = name;
  ownerCopy = owner;
  recordNameCopy = recordName;
  fieldNameCopy = fieldName;
  if ((recordNameCopy != 0) != (fieldNameCopy != 0))
  {
    v44 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, a2, self, @"CKMergeableValueID.m", 36, @"Record name and record field name must either both be nil, or both be present");
  }

  v46.receiver = self;
  v46.super_class = CKMergeableValueID;
  v24 = [(CKMergeableValueID *)&v46 init];
  if (v24)
  {
    v25 = objc_msgSend_copy(dataCopy, v22, v23);
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v29 = objc_msgSend_copy(nameCopy, v27, v28);
    zoneName = v24->_zoneName;
    v24->_zoneName = v29;

    v33 = objc_msgSend_copy(ownerCopy, v31, v32);
    zoneOwner = v24->_zoneOwner;
    v24->_zoneOwner = v33;

    v37 = objc_msgSend_copy(recordNameCopy, v35, v36);
    recordName = v24->_recordName;
    v24->_recordName = v37;

    v41 = objc_msgSend_copy(fieldNameCopy, v39, v40);
    recordFieldName = v24->_recordFieldName;
    v24->_recordFieldName = v41;

    v24->_encrypted = encrypted;
  }

  return v24;
}

- (CKMergeableValueID)initWithName:(id)name zoneID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v10 = objc_msgSend_anonymousCKUserID(dCopy, v8, v9);

  if (v10)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v11, *MEMORY[0x1E695D940], @"Anonymous user ID not currently supported");
  }

  v12 = objc_msgSend_dataUsingEncoding_(nameCopy, v11, 4);
  v15 = objc_msgSend_zoneName(dCopy, v13, v14);
  v18 = objc_msgSend_ownerName(dCopy, v16, v17);

  v20 = objc_msgSend_initWithData_zoneName_zoneOwner_(self, v19, v12, v15, v18);
  return v20;
}

- (CKMergeableValueID)initWithName:(id)name recordID:(id)d key:(id)key encrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  nameCopy = name;
  keyCopy = key;
  dCopy = d;
  v14 = objc_msgSend_zoneID(dCopy, v12, v13);
  v17 = objc_msgSend_anonymousCKUserID(v14, v15, v16);

  if (v17)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v18, *MEMORY[0x1E695D940], @"Anonymous user ID not currently supported");
  }

  v19 = objc_msgSend_dataUsingEncoding_(nameCopy, v18, 4);
  v22 = objc_msgSend_zoneID(dCopy, v20, v21);
  v25 = objc_msgSend_zoneName(v22, v23, v24);
  v28 = objc_msgSend_zoneID(dCopy, v26, v27);
  v31 = objc_msgSend_ownerName(v28, v29, v30);
  v34 = objc_msgSend_recordName(dCopy, v32, v33);

  v36 = objc_msgSend_initWithData_zoneName_zoneOwner_recordName_recordFieldName_encrypted_(self, v35, v19, v25, v31, v34, keyCopy, encryptedCopy);
  return v36;
}

- (id)name
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = objc_msgSend_identifier(self, v4, v5);
  v8 = objc_msgSend_initWithData_encoding_(v3, v7, v6, 4);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v20) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      v11 = objc_msgSend_identifier(self, v9, v10);
      v16 = objc_msgSend_identifier(v8, v12, v13);
      if (v11 != v16)
      {
        v4 = objc_msgSend_identifier(self, v14, v15);
        v5 = objc_msgSend_identifier(v8, v17, v18);
        if (!objc_msgSend_isEqual_(v4, v19, v5))
        {
          LOBYTE(v20) = 0;
          goto LABEL_37;
        }
      }

      v21 = objc_msgSend_zoneName(self, v14, v15);
      v26 = objc_msgSend_zoneName(v8, v22, v23);
      if (v21 == v26)
      {
        v81 = v21;
      }

      else
      {
        v3 = objc_msgSend_zoneName(self, v24, v25);
        v78 = objc_msgSend_zoneName(v8, v27, v28);
        if (!objc_msgSend_isEqual_(v3, v29, v78))
        {
          LOBYTE(v20) = 0;
LABEL_35:

LABEL_36:
          if (v11 == v16)
          {
LABEL_38:

            goto LABEL_39;
          }

LABEL_37:

          goto LABEL_38;
        }

        v81 = v21;
      }

      v30 = objc_msgSend_zoneOwner(self, v24, v25);
      v80 = objc_msgSend_zoneOwner(v8, v31, v32);
      v82 = v30;
      v79 = v26;
      if (v30 == v80)
      {
        v77 = v3;
      }

      else
      {
        v35 = objc_msgSend_zoneOwner(self, v33, v34);
        v75 = objc_msgSend_zoneOwner(v8, v36, v37);
        v76 = v35;
        if (!objc_msgSend_isEqual_(v35, v38, v75))
        {
          LOBYTE(v20) = 0;
          v52 = v80;
          v53 = v82;
LABEL_33:

LABEL_34:
          v21 = v81;
          v26 = v79;
          if (v81 == v79)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v77 = v3;
      }

      v39 = objc_msgSend_recordName(self, v33, v34);
      v42 = objc_msgSend_recordName(v8, v40, v41);
      v45 = v42;
      if (v39 == v42)
      {
        v73 = v5;
        v74 = v4;
      }

      else
      {
        v70 = v11;
        v46 = v42;
        v47 = v39;
        v48 = objc_msgSend_recordName(self, v43, v44);
        v71 = objc_msgSend_recordName(v8, v49, v50);
        v72 = v48;
        if (!objc_msgSend_isEqual_(v48, v51, v71))
        {
          LOBYTE(v20) = 0;
          v39 = v47;
          v45 = v46;
          v11 = v70;
LABEL_31:

LABEL_32:
          v53 = v82;
          v52 = v80;
          v3 = v77;
          if (v82 == v80)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v73 = v5;
        v74 = v4;
        v39 = v47;
        v45 = v46;
        v11 = v70;
      }

      v54 = objc_msgSend_recordFieldName(self, v43, v44);
      v59 = objc_msgSend_recordFieldName(v8, v55, v56);
      if (v54 != v59)
      {
        v68 = v54;
        v60 = objc_msgSend_recordFieldName(self, v57, v58);
        v69 = objc_msgSend_recordFieldName(v8, v61, v62);
        v70 = v60;
        if (!objc_msgSend_isEqual_(v60, v63, v69))
        {
          LOBYTE(v20) = 0;
          v54 = v68;
          goto LABEL_29;
        }

        v54 = v68;
      }

      isEncrypted = objc_msgSend_isEncrypted(self, v57, v58);
      v20 = isEncrypted ^ objc_msgSend_isEncrypted(v8, v65, v66) ^ 1;
      if (v54 == v59)
      {
LABEL_30:

        v5 = v73;
        v4 = v74;
        if (v39 == v45)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

LABEL_29:

      goto LABEL_30;
    }

    LOBYTE(v20) = 0;
  }

LABEL_39:

  return v20;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_identifier(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_zoneName(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_zoneOwner(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);
  v22 = objc_msgSend_recordName(self, v20, v21);
  v25 = v13 ^ v19 ^ objc_msgSend_hash(v22, v23, v24);
  v28 = objc_msgSend_recordFieldName(self, v26, v27);
  v31 = objc_msgSend_hash(v28, v29, v30);

  return v25 ^ v31;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_appendFormat_(v3, v6, @"<%@ %p;", v5, self);

  v9 = objc_msgSend_name(self, v7, v8);
  v12 = v9;
  if (v9)
  {
    objc_msgSend_appendFormat_(v3, v10, @" name=%@,", v9);
  }

  v13 = objc_msgSend_zoneName(self, v10, v11);
  v16 = v13;
  if (v13)
  {
    objc_msgSend_appendFormat_(v3, v14, @" zoneName=%@,", v13);
  }

  v17 = objc_msgSend_zoneOwner(self, v14, v15);
  v20 = v17;
  if (v17)
  {
    objc_msgSend_appendFormat_(v3, v18, @" zoneOwner=%@,", v17);
  }

  v21 = objc_msgSend_recordName(self, v18, v19);
  v24 = v21;
  if (v21)
  {
    objc_msgSend_appendFormat_(v3, v22, @" recordName=%@,", v21);
  }

  v25 = objc_msgSend_recordFieldName(self, v22, v23);
  v28 = v25;
  if (v25)
  {
    objc_msgSend_appendFormat_(v3, v26, @" fieldName=%@,", v25);
  }

  if (objc_msgSend_isEncrypted(self, v26, v27))
  {
    objc_msgSend_appendFormat_(v3, v29, @" encrypted=%@", @"Yes");
  }

  else
  {
    objc_msgSend_appendFormat_(v3, v29, @" encrypted=%@", @"NO");
  }

  objc_msgSend_appendFormat_(v3, v30, @">");

  return v3;
}

- (CKMergeableValueID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"i");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"z");
  v11 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"o");
  v14 = objc_opt_class();
  v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"r");
  v17 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v17, @"f");
  v21 = objc_msgSend_decodeBoolForKey_(coderCopy, v20, @"e");

  v23 = objc_msgSend_initWithData_zoneName_zoneOwner_recordName_recordFieldName_encrypted_(self, v22, v7, v10, v13, v16, v19, v21);
  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_identifier(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"i");

  v10 = objc_msgSend_zoneName(self, v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v10, @"z");

  v14 = objc_msgSend_zoneOwner(self, v12, v13);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, v14, @"o");

  v18 = objc_msgSend_recordName(self, v16, v17);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v18, @"r");

  v22 = objc_msgSend_recordFieldName(self, v20, v21);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, v22, @"f");

  isEncrypted = objc_msgSend_isEncrypted(self, v24, v25);
  objc_msgSend_encodeBool_forKey_(coderCopy, v27, isEncrypted, @"e");
}

- (id)zoneID
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_zoneName(self, a2, v2);

  if (v4)
  {
    v5 = [CKRecordZoneID alloc];
    v8 = objc_msgSend_zoneName(self, v6, v7);
    v11 = objc_msgSend_zoneOwner(self, v9, v10);
    v13 = objc_msgSend_initWithZoneName_ownerName_(v5, v12, v8, v11);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
    {
      v17 = 138412290;
      selfCopy = self;
      _os_log_fault_impl(&dword_1883EA000, v14, OS_LOG_TYPE_FAULT, "Trying to access nil zone ID on mergeable value ID: %@", &v17, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)recordID
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_zoneID(self, a2, v2);
  if (v6 && (objc_msgSend_recordName(self, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [CKRecordID alloc];
    v11 = objc_msgSend_recordName(self, v9, v10);
    v13 = objc_msgSend_initWithRecordName_zoneID_(v8, v12, v11, v6);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
    {
      v17 = 138412290;
      selfCopy = self;
      _os_log_fault_impl(&dword_1883EA000, v14, OS_LOG_TYPE_FAULT, "Trying to access nil record ID on mergeable value ID: %@", &v17, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_identifier(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"identifier");

  v10 = objc_msgSend_properties(v3, v8, v9);

  return v10;
}

@end