@interface CKStreamingAsset
+ (void)initialize;
- (C2RequestOptions)requestOptions;
- (CKStreamingAsset)init;
- (CKStreamingAsset)initWithCoder:(id)coder;
- (CKStreamingAsset)initWithExpectedSizeBytes:(int64_t)bytes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initInternal;
- (int64_t)size;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)copyServerFieldsFromStreamingAsset:(id)asset;
- (void)encodeWithCoder:(id)coder;
- (void)setSize:(int64_t)size;
@end

@implementation CKStreamingAsset

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKStreamingAsset)initWithExpectedSizeBytes:(int64_t)bytes
{
  v5.receiver = self;
  v5.super_class = CKStreamingAsset;
  result = [(CKStreamingAsset *)&v5 init];
  if (result)
  {
    result->_expectedSizeBytes = bytes;
  }

  return result;
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = CKStreamingAsset;
  return [(CKStreamingAsset *)&v3 init];
}

- (CKStreamingAsset)init
{
  v2 = [CKException alloc];
  v3 = *MEMORY[0x1E695D940];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_initWithName_format_(v2, v6, v3, @"You must call [%@ initWithExpectedSizeBytes:]", v5);
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)copyServerFieldsFromStreamingAsset:(id)asset
{
  assetCopy = asset;
  v40 = objc_msgSend_fileSignature(assetCopy, v4, v5);
  v8 = objc_msgSend_referenceSignature(assetCopy, v6, v7);
  v11 = objc_msgSend_downloadURL(assetCopy, v9, v10);
  v14 = objc_msgSend_uploadURL(assetCopy, v12, v13);
  v17 = objc_msgSend_uploadURLExpirationDate(assetCopy, v15, v16);
  v20 = objc_msgSend_downloadURLExpirationDate(assetCopy, v18, v19);
  v23 = objc_msgSend_expectedSizeBytes(assetCopy, v21, v22);
  v26 = objc_msgSend_reservedSize(assetCopy, v24, v25);
  v29 = objc_msgSend_uploadReceipt(assetCopy, v27, v28);
  v34 = objc_msgSend_immutableRequestOptions(assetCopy, v30, v31);
  if (v14)
  {
    objc_msgSend_setUploadURL_(self, v32, v14);
  }

  if (v17)
  {
    objc_msgSend_setUploadURLExpirationDate_(self, v32, v17);
  }

  if (v11)
  {
    objc_msgSend_setDownloadURL_(self, v32, v11);
  }

  if (v20)
  {
    objc_msgSend_setDownloadURLExpirationDate_(self, v32, v20);
  }

  if (objc_msgSend_hasSize(assetCopy, v32, v33))
  {
    objc_msgSend_setHasSize_(self, v35, 1);
    v38 = objc_msgSend_size(assetCopy, v36, v37);
    objc_msgSend_setSize_(self, v39, v38);
  }

  if (v23)
  {
    objc_msgSend_setExpectedSizeBytes_(self, v35, v23);
  }

  if (v26)
  {
    objc_msgSend_setReservedSize_(self, v35, v26);
  }

  if (v40)
  {
    objc_msgSend_setFileSignature_(self, v35, v40);
  }

  if (v8)
  {
    objc_msgSend_setReferenceSignature_(self, v35, v8);
  }

  if (v29)
  {
    objc_msgSend_setUploadReceipt_(self, v35, v29);
  }

  if (v34)
  {
    objc_msgSend_setRequestOptions_(self, v35, v34);
  }
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v6 = objc_msgSend_owner(self, v4, v5);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v7, @"owner", v6, 0);

  v10 = objc_msgSend_fileSignature(self, v8, v9);
  v13 = objc_msgSend_CKHexString(v10, v11, v12);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v14, @"fileSignature", v13, 0);

  v17 = objc_msgSend_referenceSignature(self, v15, v16);
  v20 = objc_msgSend_CKHexString(v17, v18, v19);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v21, @"referenceSignature", v20, 0);

  v24 = objc_msgSend_downloadURL(self, v22, v23);
  v27 = objc_msgSend_absoluteString(v24, v25, v26);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v28, @"downloadURL", v27, 0);

  v31 = objc_msgSend_uploadURL(self, v29, v30);
  v34 = objc_msgSend_absoluteString(v31, v32, v33);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v35, @"uploadURL", v34, 0);

  v38 = objc_msgSend_uploadURLExpirationDate(self, v36, v37);
  v41 = objc_msgSend_description(v38, v39, v40);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v42, @"uploadURLExpirationDate", v41, 0);

  v45 = objc_msgSend_downloadURLExpirationDate(self, v43, v44);
  v48 = objc_msgSend_description(v45, v46, v47);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v49, @"downloadURLExpirationDate", v48, 0);

  if (objc_msgSend_hasSize(self, v50, v51))
  {
    v54 = MEMORY[0x1E696AD98];
    v55 = objc_msgSend_size(self, v52, v53);
    v57 = objc_msgSend_numberWithInteger_(v54, v56, v55);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v58, @"size", v57, 0);
  }

  v59 = objc_msgSend_uploadReceipt(self, v52, v53);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v60, @"uploadReceipt", v59, 0);

  v63 = objc_msgSend_immutableRequestOptions(self, v61, v62);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v64, @"requestOptions", v63, 0);

  if (objc_msgSend_expectedSizeBytes(self, v65, v66))
  {
    v69 = MEMORY[0x1E696AD98];
    v70 = objc_msgSend_expectedSizeBytes(self, v67, v68);
    v72 = objc_msgSend_numberWithInteger_(v69, v71, v70);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v73, @"expectedSizeBytes", v72, 0);
  }

  if (objc_msgSend_reservedSize(self, v67, v68))
  {
    v76 = MEMORY[0x1E696AD98];
    v77 = objc_msgSend_reservedSize(self, v74, v75);
    v79 = objc_msgSend_numberWithInteger_(v76, v78, v77);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v80, @"reservedSize", v79, 0);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_expectedSizeBytes(self, v4, v5);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v7, v6, @"ExpectedSizeBytes");
  if (objc_msgSend_hasSize(self, v8, v9))
  {
    v12 = objc_msgSend_size(self, v10, v11);
    objc_msgSend_encodeInt64_forKey_(coderCopy, v13, v12, @"Size");
  }

  v14 = objc_msgSend_downloadURL(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, v14, @"DownloadURL");

  v18 = objc_msgSend_downloadURLExpirationDate(self, v16, v17);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v18, @"DownloadURLExpirationDate");

  v22 = objc_msgSend_fileSignature(self, v20, v21);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, v22, @"FileSignature");

  v26 = objc_msgSend_referenceSignature(self, v24, v25);
  objc_msgSend_encodeObject_forKey_(coderCopy, v27, v26, @"ReferenceSignature");

  v30 = objc_msgSend_owner(self, v28, v29);
  objc_msgSend_encodeObject_forKey_(coderCopy, v31, v30, @"Owner");

  v34 = objc_msgSend_uploadURL(self, v32, v33);
  objc_msgSend_encodeObject_forKey_(coderCopy, v35, v34, @"UploadURL");

  v38 = objc_msgSend_uploadURLExpirationDate(self, v36, v37);
  objc_msgSend_encodeObject_forKey_(coderCopy, v39, v38, @"UploadURLExpirationDate");

  v42 = objc_msgSend_reservedSize(self, v40, v41);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v43, v42, @"ReservedSize");
  v46 = objc_msgSend_uploadReceipt(self, v44, v45);
  objc_msgSend_encodeObject_forKey_(coderCopy, v47, v46, @"UploadReceipt");

  v50 = objc_msgSend_immutableRequestOptions(self, v48, v49);
  objc_msgSend_encodeObject_forKey_(coderCopy, v51, v50, @"RequestOptions");
}

- (CKStreamingAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v47.receiver = self;
  v47.super_class = CKStreamingAsset;
  v6 = [(CKStreamingAsset *)&v47 init];
  if (v6)
  {
    v6->_expectedSizeBytes = objc_msgSend_decodeInt64ForKey_(coderCopy, v5, @"ExpectedSizeBytes");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"DownloadURL");
    downloadURL = v6->_downloadURL;
    v6->_downloadURL = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"DownloadURLExpirationDate");
    downloadURLExpirationDate = v6->_downloadURLExpirationDate;
    v6->_downloadURLExpirationDate = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"FileSignature");
    fileSignature = v6->_fileSignature;
    v6->_fileSignature = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v20, v19, @"ReferenceSignature");
    referenceSignature = v6->_referenceSignature;
    v6->_referenceSignature = v21;

    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v24, v23, @"Owner");
    owner = v6->_owner;
    v6->_owner = v25;

    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v28, v27, @"UploadURL");
    uploadURL = v6->_uploadURL;
    v6->_uploadURL = v29;

    v31 = objc_opt_class();
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"UploadURLExpirationDate");
    uploadURLExpirationDate = v6->_uploadURLExpirationDate;
    v6->_uploadURLExpirationDate = v33;

    v6->_reservedSize = objc_msgSend_decodeInt64ForKey_(coderCopy, v35, @"ReservedSize");
    v36 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v37, v36, @"UploadReceipt");
    uploadReceipt = v6->_uploadReceipt;
    v6->_uploadReceipt = v38;

    v40 = objc_opt_class();
    v42 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v41, v40, @"RequestOptions");
    immutableRequestOptions = v6->_immutableRequestOptions;
    v6->_immutableRequestOptions = v42;

    if (objc_msgSend_containsValueForKey_(coderCopy, v44, @"Size"))
    {
      v6->_hasSize = 1;
      v6->_size = objc_msgSend_decodeInt64ForKey_(coderCopy, v45, @"Size");
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKStreamingAsset alloc];
  inited = objc_msgSend_initInternal(v4, v5, v6);
  *(inited + 56) = objc_msgSend_expectedSizeBytes(self, v8, v9);
  v12 = objc_msgSend_downloadURL(self, v10, v11);
  v15 = objc_msgSend_copy(v12, v13, v14);
  v16 = *(inited + 88);
  *(inited + 88) = v15;

  v19 = objc_msgSend_downloadURLExpirationDate(self, v17, v18);
  v22 = objc_msgSend_copy(v19, v20, v21);
  v23 = *(inited + 96);
  *(inited + 96) = v22;

  v26 = objc_msgSend_fileSignature(self, v24, v25);
  v29 = objc_msgSend_copy(v26, v27, v28);
  v30 = *(inited + 32);
  *(inited + 32) = v29;

  v33 = objc_msgSend_referenceSignature(self, v31, v32);
  v36 = objc_msgSend_copy(v33, v34, v35);
  v37 = *(inited + 40);
  *(inited + 40) = v36;

  v40 = objc_msgSend_owner(self, v38, v39);
  v43 = objc_msgSend_copy(v40, v41, v42);
  v44 = *(inited + 48);
  *(inited + 48) = v43;

  v47 = objc_msgSend_uploadURL(self, v45, v46);
  v50 = objc_msgSend_copy(v47, v48, v49);
  v51 = *(inited + 64);
  *(inited + 64) = v50;

  v54 = objc_msgSend_uploadURLExpirationDate(self, v52, v53);
  v57 = objc_msgSend_copy(v54, v55, v56);
  v58 = *(inited + 72);
  *(inited + 72) = v57;

  *(inited + 80) = objc_msgSend_reservedSize(self, v59, v60);
  v63 = objc_msgSend_uploadReceipt(self, v61, v62);
  v66 = objc_msgSend_copy(v63, v64, v65);
  v67 = *(inited + 104);
  *(inited + 104) = v66;

  v70 = objc_msgSend_immutableRequestOptions(self, v68, v69);
  v71 = *(inited + 24);
  *(inited + 24) = v70;

  *(inited + 8) = objc_msgSend_hasSize(self, v72, v73);
  *(inited + 16) = objc_msgSend_size(self, v74, v75);
  return inited;
}

- (int64_t)size
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  size = selfCopy->_size;
  objc_sync_exit(selfCopy);

  return size;
}

- (void)setSize:(int64_t)size
{
  obj = self;
  objc_sync_enter(obj);
  objc_msgSend_setHasSize_(obj, v4, 1);
  obj->_size = size;
  objc_sync_exit(obj);
}

- (C2RequestOptions)requestOptions
{
  v3 = objc_msgSend_immutableRequestOptions(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

@end