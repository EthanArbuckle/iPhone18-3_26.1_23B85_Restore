@interface CKOperationInMemoryAssetInfo
- (BOOL)isContiguous;
- (CKOperationInMemoryAssetInfo)init;
- (id)assetContentWithExpectedSignature:(id)signature verificationKey:(id)key error:(id *)error;
- (void)writeData:(id)data atOffset:(unint64_t)offset;
@end

@implementation CKOperationInMemoryAssetInfo

- (CKOperationInMemoryAssetInfo)init
{
  v8.receiver = self;
  v8.super_class = CKOperationInMemoryAssetInfo;
  v2 = [(CKOperationInMemoryAssetInfo *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    assetContent = v2->_assetContent;
    v2->_assetContent = v3;

    v5 = objc_opt_new();
    byteRanges = v2->_byteRanges;
    v2->_byteRanges = v5;
  }

  return v2;
}

- (void)writeData:(id)data atOffset:(unint64_t)offset
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = dataCopy;
  if (dataCopy)
  {
    v10 = objc_msgSend_length(dataCopy, v7, v8);
    if (objc_msgSend_containsIndexesInRange_(self->_byteRanges, v11, offset, v10))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v13 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v30 = v13;
        v35.location = offset;
        v35.length = v10;
        v31 = NSStringFromRange(v35);
        v32 = 138543362;
        v33 = v31;
        _os_log_error_impl(&dword_1883EA000, v30, OS_LOG_TYPE_ERROR, "range %{public}@ overlaps with previous range", &v32, 0xCu);
      }
    }

    objc_msgSend_addIndexesInRange_(self->_byteRanges, v12, offset, v10);
    v16 = objc_msgSend_length(v9, v14, v15) + offset;
    if (objc_msgSend_length(self->_assetContent, v17, v18) < v16)
    {
      objc_msgSend_setLength_(self->_assetContent, v19, v16);
    }

    assetContent = self->_assetContent;
    v21 = v9;
    v24 = objc_msgSend_bytes(v21, v22, v23);
    v27 = objc_msgSend_length(v9, v25, v26);
    objc_msgSend_replaceBytesInRange_withBytes_length_(assetContent, v28, offset, v10, v24, v27);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (BOOL)isContiguous
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  byteRanges = self->_byteRanges;
  v4 = objc_msgSend_length(self->_assetContent, a2, v2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1885E2E2C;
  v6[3] = &unk_1E70BED28;
  v6[4] = &v7;
  CKNSIndexSet_enumerateInverseRangesInRange_options_usingBlock(byteRanges, 0, v4, 0, v6);
  LOBYTE(byteRanges) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return (byteRanges & 1) == 0;
}

- (id)assetContentWithExpectedSignature:(id)signature verificationKey:(id)key error:(id *)error
{
  signatureCopy = signature;
  keyCopy = key;
  if ((objc_msgSend_isContiguous(self, v10, v11) & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v18 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v18, OS_LOG_TYPE_ERROR, "assetContent did not consist of contiguous bytes ranges", buf, 2u);
      if (!error)
      {
        goto LABEL_27;
      }
    }

    else if (!error)
    {
      goto LABEL_27;
    }

    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v19, @"CKInternalErrorDomain", 3006, @"assetContent did not consist of contiguous bytes ranges");
LABEL_10:
    *error = v20 = 0;
    goto LABEL_28;
  }

  if (signatureCopy)
  {
    if (keyCopy)
    {
      v14 = [CKSignatureGenerator alloc];
      v16 = objc_msgSend_initWithVerificationKey_(v14, v15, keyCopy);
    }

    else
    {
      v16 = objc_alloc_init(CKSignatureGenerator);
    }

    v23 = v16;
    objc_msgSend_updateWithData_(v16, v17, self->_assetContent);
    v26 = objc_msgSend_dataByFinishingSignature(v23, v24, v25);
    if (objc_msgSend_isEqual_(v26, v27, signatureCopy))
    {

      goto LABEL_20;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *v32 = 0;
      _os_log_error_impl(&dword_1883EA000, v28, OS_LOG_TYPE_ERROR, "assetContent did not match expected signature", v32, 2u);
      if (!error)
      {
        goto LABEL_26;
      }
    }

    else if (!error)
    {
LABEL_26:

      goto LABEL_27;
    }

    *error = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v29, @"CKInternalErrorDomain", 3006, @"assetContent did not match expected signature");
    goto LABEL_26;
  }

  if (objc_msgSend_length(self->_assetContent, v12, v13))
  {
LABEL_20:
    v20 = self->_assetContent;
    goto LABEL_28;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v21 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *v31 = 0;
    _os_log_error_impl(&dword_1883EA000, v21, OS_LOG_TYPE_ERROR, "assetContent length 0", v31, 2u);
    if (!error)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  if (error)
  {
LABEL_16:
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v22, @"CKInternalErrorDomain", 3006, @"assetContent length 0");
    goto LABEL_10;
  }

LABEL_27:
  v20 = 0;
LABEL_28:

  return v20;
}

@end