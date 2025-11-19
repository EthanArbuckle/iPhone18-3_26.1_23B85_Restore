@interface CKMergeableDelta
+ (int64_t)suggestedDeltaSizeForContainer:(id)a3;
+ (unint64_t)maxInlineDeltaSize;
- (BOOL)contentSize:(unint64_t *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)protobufSize:(unint64_t *)a3 error:(id *)a4;
- (CKMergeableDelta)init;
- (CKMergeableDelta)initWithCoder:(id)a3;
- (CKMergeableDelta)initWithValueID:(id)a3 metadata:(id)a4;
- (CKMergeableDelta)initWithValueID:(id)a3 metadata:(id)a4 asset:(id)a5;
- (CKMergeableDelta)initWithValueID:(id)a3 metadata:(id)a4 data:(id)a5;
- (CKMergeableDelta)initWithValueID:(id)a3 metadata:(id)a4 encryptedData:(id)a5;
- (CKMergeableDelta)initWithValueID:(id)a3 metadata:(id)a4 fileURL:(id)a5;
- (CKMergeableDeltaID)deltaID;
- (NSURL)fileURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataBackedDeltaWithError:(id *)a3;
- (id)dataWithError:(id *)a3;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateAssetIfNecessaryWithMaxInlineSize:(unint64_t)a3;
- (void)setFileURL:(id)a3;
- (void)unpopulateAsset;
@end

@implementation CKMergeableDelta

- (CKMergeableDelta)initWithValueID:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CKMergeableDelta;
  v10 = [(CKMergeableDelta *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    valueID = v10->_valueID;
    v10->_valueID = v11;

    objc_storeStrong(&v10->_metadata, a4);
    v10->_encryptMetadataTernary = -1;
  }

  return v10;
}

- (CKMergeableDelta)initWithValueID:(id)a3 metadata:(id)a4 data:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31 = 0;
  v11 = _CKCheckArgument("data", v10, 0, 0, 0, &v31);
  v12 = v31;
  if ((v11 & 1) == 0)
  {
    v20 = v12;
    v21 = [CKException alloc];
    v24 = objc_msgSend_code(v20, v22, v23);
    v27 = objc_msgSend_localizedDescription(v20, v25, v26);
    v29 = objc_msgSend_initWithCode_format_(v21, v28, v24, @"%@", v27);
    v30 = v29;

    objc_exception_throw(v29);
  }

  v16 = objc_msgSend_initWithValueID_metadata_(self, v13, v8, v9);
  if (v16)
  {
    v17 = objc_msgSend_copy(v10, v14, v15);
    data = v16->__data;
    v16->__data = v17;
  }

  return v16;
}

- (CKMergeableDelta)initWithValueID:(id)a3 metadata:(id)a4 encryptedData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31 = 0;
  v11 = _CKCheckArgument("encryptedData", v10, 0, 0, 0, &v31);
  v12 = v31;
  if ((v11 & 1) == 0)
  {
    v20 = v12;
    v21 = [CKException alloc];
    v24 = objc_msgSend_code(v20, v22, v23);
    v27 = objc_msgSend_localizedDescription(v20, v25, v26);
    v29 = objc_msgSend_initWithCode_format_(v21, v28, v24, @"%@", v27);
    v30 = v29;

    objc_exception_throw(v29);
  }

  v16 = objc_msgSend_initWithValueID_metadata_(self, v13, v8, v9);
  if (v16)
  {
    v17 = objc_msgSend_copy(v10, v14, v15);
    encryptedData = v16->_encryptedData;
    v16->_encryptedData = v17;
  }

  return v16;
}

- (CKMergeableDelta)initWithValueID:(id)a3 metadata:(id)a4 asset:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38 = 0;
  v11 = _CKCheckArgument("asset", v10, 0, 0, 0, &v38);
  v12 = v38;
  if ((v11 & 1) == 0)
  {
    v27 = v12;
    v28 = [CKException alloc];
    v31 = objc_msgSend_code(v27, v29, v30);
    v34 = objc_msgSend_localizedDescription(v27, v32, v33);
    v36 = objc_msgSend_initWithCode_format_(v28, v35, v31, @"%@", v34);
    v37 = v36;

    objc_exception_throw(v36);
  }

  v14 = objc_msgSend_initWithValueID_metadata_(self, v13, v8, v9);
  v15 = v14;
  if (v14)
  {
    objc_storeStrong((v14 + 40), a5);
    v18 = objc_msgSend_fileURL(v10, v16, v17);

    if (v18)
    {
      v21 = objc_msgSend_fileURL(v10, v19, v20);
      v24 = objc_msgSend_copy(v21, v22, v23);
      fileURL = v15->_fileURL;
      v15->_fileURL = v24;
    }
  }

  return v15;
}

- (CKMergeableDelta)initWithValueID:(id)a3 metadata:(id)a4 fileURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31 = 0;
  v11 = _CKCheckArgument("fileURL", v10, 0, 0, 0, &v31);
  v12 = v31;
  if ((v11 & 1) == 0)
  {
    v20 = v12;
    v21 = [CKException alloc];
    v24 = objc_msgSend_code(v20, v22, v23);
    v27 = objc_msgSend_localizedDescription(v20, v25, v26);
    v29 = objc_msgSend_initWithCode_format_(v21, v28, v24, @"%@", v27);
    v30 = v29;

    objc_exception_throw(v29);
  }

  v16 = objc_msgSend_initWithValueID_metadata_(self, v13, v8, v9);
  if (v16)
  {
    v17 = objc_msgSend_copy(v10, v14, v15);
    fileURL = v16->_fileURL;
    v16->_fileURL = v17;
  }

  return v16;
}

- (CKMergeableDelta)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  objc_msgSend_raise_format_(v3, v6, v4, @"%@ is unavailable", v5);

  return 0;
}

- (unint64_t)hash
{
  v4 = objc_msgSend__data(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_metadata(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_valueID(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);
  v22 = objc_msgSend_asset(self, v20, v21);
  v25 = v13 ^ v19 ^ objc_msgSend_hash(v22, v23, v24);
  v28 = objc_msgSend_fileURL(self, v26, v27);
  v31 = objc_msgSend_hash(v28, v29, v30);

  return v25 ^ v31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v41 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_valueID(self, v6, v7);
      v11 = objc_msgSend_valueID(v5, v9, v10);
      isEqual = objc_msgSend_isEqual_(v8, v12, v11);

      if (!isEqual)
      {
        goto LABEL_10;
      }

      v16 = objc_msgSend_metadata(self, v14, v15);
      v19 = objc_msgSend_metadata(v5, v17, v18);
      v20 = CKObjectsAreBothNilOrEqual(v16, v19);

      if (!v20)
      {
        goto LABEL_10;
      }

      v23 = objc_msgSend__data(self, v21, v22);
      v26 = objc_msgSend__data(v5, v24, v25);
      v27 = CKObjectsAreBothNilOrEqual(v23, v26);

      if (!v27)
      {
        goto LABEL_10;
      }

      v30 = objc_msgSend_asset(self, v28, v29);
      v33 = objc_msgSend_asset(v5, v31, v32);
      v34 = CKObjectsAreBothNilOrEqual(v30, v33);

      if (v34)
      {
        v37 = objc_msgSend_fileURL(self, v35, v36);
        v40 = objc_msgSend_fileURL(v5, v38, v39);
        v41 = CKObjectsAreBothNilOrEqual(v37, v40);
      }

      else
      {
LABEL_10:
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }
  }

  return v41;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKMergeableDelta alloc];
  v7 = objc_msgSend_valueID(self, v5, v6);
  v10 = objc_msgSend_metadata(self, v8, v9);
  v12 = objc_msgSend_initWithValueID_metadata_(v4, v11, v7, v10);

  v15 = objc_msgSend__data(self, v13, v14);
  v18 = objc_msgSend_copy(v15, v16, v17);
  v19 = v12[4];
  v12[4] = v18;

  v22 = objc_msgSend_fileURL(self, v20, v21);
  v25 = objc_msgSend_copy(v22, v23, v24);
  v26 = v12[1];
  v12[1] = v25;

  v29 = objc_msgSend_encryptedData(self, v27, v28);
  v32 = objc_msgSend_copy(v29, v30, v31);
  v33 = v12[7];
  v12[7] = v32;

  v36 = objc_msgSend_asset(self, v34, v35);
  v37 = v12[5];
  v12[5] = v36;

  v12[6] = objc_msgSend_encryptMetadataTernary(self, v38, v39);
  return v12;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v40 = a3;
  v6 = objc_msgSend_valueID(self, v4, v5);
  objc_msgSend_addProperty_value_shouldRedact_(v40, v7, @"valueID", v6, 0);

  v10 = objc_msgSend__data(self, v8, v9);
  v13 = v10;
  if (v10)
  {
    v14 = MEMORY[0x1E696AD98];
    v15 = objc_msgSend_length(v10, v11, v12);
    v17 = objc_msgSend_numberWithUnsignedInteger_(v14, v16, v15);
    objc_msgSend_addProperty_value_shouldRedact_(v40, v18, @"dataLength", v17, 0);
  }

  v19 = objc_msgSend_encryptedData(self, v11, v12);
  v22 = objc_msgSend_fileURL(self, v20, v21);
  v25 = objc_msgSend_CKSanitizedPath(v22, v23, v24);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v40, v26, @"fileURL", v25, 0);

  if (v19)
  {
    v29 = MEMORY[0x1E696AD98];
    v30 = objc_msgSend_length(v19, v27, v28);
    v32 = objc_msgSend_numberWithUnsignedInteger_(v29, v31, v30);
    objc_msgSend_addProperty_value_shouldRedact_(v40, v33, @"encryptedDataLength", v32, 0);
  }

  v34 = objc_msgSend_metadata(self, v27, v28);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v40, v35, @"metadata", v34, 0);

  v38 = objc_msgSend_asset(self, v36, v37);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v40, v39, @"asset", v38, 0);
}

- (NSURL)fileURL
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = v2->_fileURL;
  if (!v5)
  {
    v6 = objc_msgSend_asset(v2, v3, v4);
    v5 = objc_msgSend_fileURL(v6, v7, v8);
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)setFileURL:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  fileURL = obj->_fileURL;
  obj->_fileURL = v4;

  objc_sync_exit(obj);
}

- (id)dataBackedDeltaWithError:(id *)a3
{
  v5 = objc_msgSend__data(self, a2, a3);

  if (v5)
  {
    v7 = self;
  }

  else
  {
    v8 = objc_msgSend_dataWithError_(self, v6, a3);
    if (v8)
    {
      v9 = [CKMergeableDelta alloc];
      v12 = objc_msgSend_valueID(self, v10, v11);
      v15 = objc_msgSend_metadata(self, v13, v14);
      v7 = objc_msgSend_initWithValueID_metadata_data_(v9, v16, v12, v15, v8);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CKMergeableDeltaID)deltaID
{
  v3 = [CKMergeableDeltaID alloc];
  v6 = objc_msgSend_metadata(self, v4, v5);
  v9 = objc_msgSend_identifier(v6, v7, v8);
  v12 = objc_msgSend_valueID(self, v10, v11);
  v14 = objc_msgSend_initWithDeltaIdentifier_valueID_(v3, v13, v9, v12);

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_valueID(self, v5, v6);
  v8 = NSStringFromSelector(sel_valueID);
  objc_msgSend_encodeObject_forKey_(v4, v9, v7, v8);

  v12 = objc_msgSend_metadata(self, v10, v11);
  v13 = NSStringFromSelector(sel_metadata);
  objc_msgSend_encodeObject_forKey_(v4, v14, v12, v13);

  v17 = objc_msgSend__data(self, v15, v16);
  v18 = NSStringFromSelector(sel__data);
  objc_msgSend_encodeObject_forKey_(v4, v19, v17, v18);

  v22 = objc_msgSend_fileURL(self, v20, v21);
  v23 = NSStringFromSelector(sel_fileURL);
  objc_msgSend_encodeObject_forKey_(v4, v24, v22, v23);

  v27 = objc_msgSend_encryptMetadataTernary(self, v25, v26);
  v28 = NSStringFromSelector(sel_encryptMetadataTernary);
  objc_msgSend_encodeInteger_forKey_(v4, v29, v27, v28);

  v34 = objc_msgSend_asset(self, v30, v31);
  v32 = NSStringFromSelector(sel_asset);
  objc_msgSend_encodeObject_forKey_(v4, v33, v34, v32);
}

- (CKMergeableDelta)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_valueID);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v5, v6);

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_metadata);
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v9, v10);

  v14 = objc_msgSend_initWithValueID_metadata_(self, v13, v8, v12);
  if (v14)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel__data);
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v15, v16);
    data = v14->__data;
    v14->__data = v18;

    v20 = objc_opt_class();
    v21 = NSStringFromSelector(sel_fileURL);
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v22, v20, v21);
    fileURL = v14->_fileURL;
    v14->_fileURL = v23;

    v25 = NSStringFromSelector(sel_encryptMetadataTernary);
    v14->_encryptMetadataTernary = objc_msgSend_decodeIntegerForKey_(v4, v26, v25);

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_asset);
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v29, v27, v28);
    asset = v14->_asset;
    v14->_asset = v30;
  }

  return v14;
}

- (id)dataWithError:(id *)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_fileURL(self, a2, a3);
  v8 = objc_msgSend_asset(self, v6, v7);
  v11 = objc_msgSend__data(self, v9, v10);
  if (v11)
  {
    goto LABEL_2;
  }

  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = self;
      _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "Loading data from file for delta %@", buf, 0xCu);
    }

    v32 = 0;
    v14 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v17, v5, 0, &v32);
    v18 = v32;
    goto LABEL_9;
  }

  if (v8)
  {
    v22 = objc_msgSend_fileURL(v8, v12, v13);

    if (v22)
    {
      v25 = MEMORY[0x1E695DEF0];
      v26 = objc_msgSend_fileURL(v8, v23, v24);
      v31 = 0;
      v14 = objc_msgSend_dataWithContentsOfURL_options_error_(v25, v27, v26, 0, &v31);
      v15 = v31;

      goto LABEL_10;
    }

    v14 = objc_msgSend_assetContent(v8, v23, v24);

    if (v14)
    {
      v11 = objc_msgSend_assetContent(v8, v29, v30);
LABEL_2:
      v14 = v11;
      v15 = 0;
      goto LABEL_10;
    }

    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v29, @"CKErrorDomain", 12, @"Cannot load data from a delta asset with no content: %@", self);
    v18 = LABEL_24:;
LABEL_9:
    v15 = v18;
    goto LABEL_10;
  }

  v14 = objc_msgSend_encryptedData(self, v12, v13);

  if (!v14)
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v28, @"CKErrorDomain", 1, @"Unknown error getting data from %@", self);
    goto LABEL_24;
  }

  v15 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v28, @"CKErrorDomain", 12, @"Cannot get unencrypted data from an encrypted delta: %@", self);
  v14 = 0;
LABEL_10:
  if (a3)
  {
    v19 = v15;
    *a3 = v15;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)contentSize:(unint64_t *)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend__data(self, a2, a3);
  v10 = objc_msgSend_fileURL(self, v8, v9);
  v13 = objc_msgSend_asset(self, v11, v12);
  v16 = v13;
  if (v7)
  {
    v17 = objc_msgSend_length(v7, v14, v15);
    goto LABEL_5;
  }

  v18 = objc_msgSend_assetContent(v13, v14, v15);

  if (v18)
  {
    v21 = objc_msgSend_assetContent(v16, v19, v20);
    v17 = objc_msgSend_length(v21, v22, v23);

    goto LABEL_5;
  }

  if (!v10)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v33 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v38 = self;
      _os_log_fault_impl(&dword_1883EA000, v33, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Unable to get content size for delta with no contents %@", buf, 0xCu);
    }

    v17 = 0;
LABEL_5:
    v24 = 0;
    ResourceValue_forKey_error = 1;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v36 = 0;
  v29 = *MEMORY[0x1E695DB50];
  v35 = 0;
  ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v10, v19, &v36, v29, &v35);
  v30 = v36;
  v24 = v35;
  if (ResourceValue_forKey_error)
  {
    v17 = objc_msgSend_integerValue(v30, v31, v32);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v34 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v38 = self;
      v39 = 2112;
      v40 = v24;
      _os_log_error_impl(&dword_1883EA000, v34, OS_LOG_TYPE_ERROR, "Unable to get content size for file-backed delta %@: %@", buf, 0x16u);
    }

    v17 = 0;
  }

  if (a4)
  {
LABEL_6:
    v26 = v24;
    *a4 = v24;
  }

LABEL_7:
  if (a3)
  {
    *a3 = v17;
  }

  v27 = *MEMORY[0x1E69E9840];
  return ResourceValue_forKey_error;
}

- (BOOL)protobufSize:(unint64_t *)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_asset(self, a2, a3);

  if (v7)
  {
    v10 = 0;
    v11 = 0;
    LOBYTE(v12) = 1;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v12 = objc_msgSend_contentSize_error_(self, v8, &v33, &v32);
    v11 = v32;
    if (v12)
    {
      v10 = v33;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v13 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v11;
        _os_log_error_impl(&dword_1883EA000, v13, OS_LOG_TYPE_ERROR, "Failed to get content size when calculating delta proto size: %@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  v14 = objc_msgSend_valueID(self, v8, v9);
  isEncrypted = objc_msgSend_isEncrypted(v14, v15, v16);

  v20 = v10 + 28;
  if (!isEncrypted)
  {
    v20 = v10;
  }

  v21 = v20 + 2;
  if (v20 >= 0x80)
  {
    do
    {
      ++v21;
      v22 = v20 >> 14;
      v20 >>= 7;
    }

    while (v22);
  }

  v23 = objc_msgSend_metadata(self, v18, v19);
  v26 = objc_msgSend_size(v23, v24, v25);
  v27 = v26 + 2;
  if (v26 >= 0x80)
  {
    do
    {
      ++v27;
      v28 = v26 >> 14;
      v26 >>= 7;
    }

    while (v28);
  }

  if (a3)
  {
    *a3 = v21 + v27 + 16;
  }

  if (a4)
  {
    v29 = v11;
    *a4 = v11;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)populateAssetIfNecessaryWithMaxInlineSize:(unint64_t)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (objc_msgSend_contentSize_error_(self, a2, &v27, 0) && v27 > a3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v29 = v27;
      v30 = 2112;
      v31 = self;
      _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "Will use an asset for large mergeable delta with size %ld: %@", buf, 0x16u);
    }

    v8 = objc_msgSend__data(self, v6, v7);
    v11 = objc_msgSend_fileURL(self, v9, v10);
    v12 = v11;
    if (v8)
    {
      v13 = [CKAsset alloc];
      v16 = objc_msgSend_identifier(*MEMORY[0x1E6982D60], v14, v15);
      v18 = objc_msgSend_initWithAssetContent_itemTypeHint_(v13, v17, v8, v16);
      objc_msgSend_setAsset_(self, v19, v18);

      objc_msgSend_set_data_(self, v20, 0);
    }

    else if (v11)
    {
      v21 = [CKAsset alloc];
      v23 = objc_msgSend_initWithFileURL_(v21, v22, v12);
      objc_msgSend_setAsset_(self, v24, v23);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v25 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v29 = self;
        _os_log_fault_impl(&dword_1883EA000, v25, OS_LOG_TYPE_FAULT, "Tried to convert a delta to an asset, but there was no data or file URL: %@", buf, 0xCu);
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)unpopulateAsset
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_asset(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_assetContent(v4, v5, v6);

    if (v8)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = self;
        _os_log_impl(&dword_1883EA000, v11, OS_LOG_TYPE_INFO, "Converting asset back to data for %@", &v23, 0xCu);
      }

      v14 = objc_msgSend_assetContent(v7, v12, v13);
      objc_msgSend_set_data_(self, v15, v14);
    }

    else
    {
      v16 = objc_msgSend_fileURL(v7, v9, v10);

      if (!v16)
      {
LABEL_15:
        objc_msgSend_setAsset_(self, v17, 0);
        goto LABEL_16;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v18 = ck_log_facility_distributed_sync;
      if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = self;
        _os_log_impl(&dword_1883EA000, v18, OS_LOG_TYPE_INFO, "Converting asset back to file URL for %@", &v23, 0xCu);
      }

      v14 = objc_msgSend_fileURL(v7, v19, v20);
      objc_msgSend_setFileURL_(self, v21, v14);
    }

    goto LABEL_15;
  }

LABEL_16:

  v22 = *MEMORY[0x1E69E9840];
}

+ (int64_t)suggestedDeltaSizeForContainer:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/suggested-mergeable-delta-size", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = a1;
  objc_sync_enter(v6);
  v9 = objc_msgSend_containerID(v4, v7, v8);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1883ED8A0;
  v40 = sub_1883EF5A4;
  v41 = objc_msgSend_objectForKeyedSubscript_(qword_1ED4B5F40, v10, v9);
  v11 = qword_1ED4B5F48;
  v14 = objc_msgSend_containerID(v4, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v11, v15, v14);
  objc_msgSend_doubleValue(v16, v17, v18);
  v20 = v19;

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v21, v22);
  v26 = v37[5];
  if (!v26 || v25 - v20 > 86400.0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v27 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1883EA000, v27, OS_LOG_TYPE_INFO, "Will fetch suggested delta size from daemon", buf, 2u);
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_188569F54;
    v31[3] = &unk_1E70BDBC0;
    v34 = &v36;
    v32 = v9;
    v33 = v4;
    objc_msgSend_getSynchronousContainerScopedDaemonProxyWithErrorHandler_daemonProxyHandler_(v33, v28, &unk_1EFA2EC28, v31);

    v26 = v37[5];
  }

  v29 = objc_msgSend_integerValue(v26, v23, v24);
  _Block_object_dispose(&v36, 8);

  objc_sync_exit(v6);
  os_activity_scope_leave(&state);

  return v29;
}

+ (unint64_t)maxInlineDeltaSize
{
  v3 = objc_msgSend_defaultContext(CKLogicalDeviceContext, a2, v2);
  v6 = objc_msgSend_connection(v3, v4, v5);
  v9 = objc_msgSend_processScopedDaemonProxy(v6, v7, v8);
  v12 = objc_msgSend_maxInlineMergeableDeltaSize(v9, v10, v11);

  return v12;
}

@end