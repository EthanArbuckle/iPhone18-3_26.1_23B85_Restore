@interface CKAsset
+ (CKAsset)assetWithFileURL:(id)a3;
+ (id)_canonicalizeTemplateURL:(id)a3;
+ (id)_downloadURLWithTemplate:(id)a3 fileName:(id)a4;
+ (id)_expandTemplateURL:(id)a3 fieldValues:(id)a4;
+ (id)_openUnencryptedWithOpenInfo:(id)a3 genCountCheck:(BOOL)a4 error:(id *)a5;
+ (id)getFileMetadataAtPath:(id)a3 error:(id *)a4;
+ (id)getFileMetadataWithFileHandle:(id)a3 openInfo:(id)a4 error:(id *)a5;
+ (id)getFileSizeWithOpenInfo:(id)a3 error:(id *)a4;
+ (id)openToReadRawEncryptedDataWithOpenInfo:(id)a3 error:(id *)a4;
+ (id)openWithOpenInfo:(id)a3 error:(id *)a4;
+ (int)errorCodeFromPOSIXCode:(int)a3;
+ (void)initialize;
- (BOOL)isConstructedAsset;
- (BOOL)isReference;
- (BOOL)useMMCSEncryptionV2;
- (CKAsset)init;
- (CKAsset)initWithAssetContent:(id)a3 itemTypeHint:(id)a4;
- (CKAsset)initWithAssetReference:(id)a3;
- (CKAsset)initWithCoder:(id)a3;
- (CKAsset)initWithDeviceID:(id)a3 fileID:(id)a4 generationID:(id)a5;
- (CKAsset)initWithFileURL:(NSURL *)fileURL;
- (CKAsset)initWithFileURL:(id)a3 signature:(id)a4;
- (CKAsset)initWithFileURL:(id)a3 signature:(id)a4 assetHandleUUID:(id)a5;
- (CKRecord)record;
- (NSData)assetContent;
- (NSDictionary)assetChunkerOptions;
- (NSURL)fileURL;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5;
- (id)downloadURL;
- (id)downloadURLWithFileName:(id)a3;
- (id)initInternal;
- (id)openWithError:(id *)a3;
- (unint64_t)size;
- (void)encodeWithCoder:(id)a3;
- (void)setAssetChunkerOptions:(id)a3;
- (void)setAssetContent:(id)a3;
- (void)setAssetContent_modelMutation:(id)a3;
- (void)setAssetTransferOptions:(id)a3;
- (void)setDeviceID_modelMutation:(id)a3;
- (void)setFileID_modelMutation:(id)a3;
- (void)setFileURL:(id)a3;
- (void)setSize:(unint64_t)a3;
@end

@implementation CKAsset

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = CKAsset;
  result = [(CKAsset *)&v3 init];
  if (result)
  {
    *(result + 44) = -1;
    *(result + 47) = -1;
    *(result + 13) = 2;
  }

  return result;
}

- (unint64_t)size
{
  v2 = self;
  objc_sync_enter(v2);
  size = v2->_size;
  objc_sync_exit(v2);

  return size;
}

- (CKRecord)record
{
  WeakRetained = objc_loadWeakRetained(&self->_record);

  return WeakRetained;
}

- (NSData)assetContent
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_assetContent;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isConstructedAsset
{
  v3 = objc_msgSend_constructedAssetDownloadURLTemplate(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (NSURL)fileURL
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_realPathURL(v2, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_realPathURL(v2, v6, v7);
  }

  else
  {
    v8 = v2->_fileURL;
  }

  v9 = v8;
  objc_sync_exit(v2);

  return v9;
}

- (NSDictionary)assetChunkerOptions
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_assetChunkerOptions;
  objc_sync_exit(v2);

  return v3;
}

- (CKAsset)init
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [CKException alloc];
  v6 = objc_msgSend_initWithName_format_(v4, v5, *MEMORY[0x1E695D940], @"You must call [%@ initWithFileURL:] or [%@ initWithData:]", v3, v3);
  objc_exception_throw(v6);
}

- (CKAsset)initWithFileURL:(id)a3 signature:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (!v6)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v7, *MEMORY[0x1E695D940], @"Null fileURL");
  }

  if ((objc_msgSend_isFileURL(v6, v7, v8) & 1) == 0)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v10, *MEMORY[0x1E695D940], @"Non-file URL");
  }

  if (!v9)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v10, *MEMORY[0x1E695D940], @"Null signature");
  }

  inited = objc_msgSend_initInternal(self, v10, v11);
  if (inited)
  {
    v15 = objc_msgSend_copy(v6, v12, v13);
    fileURL = inited->_fileURL;
    inited->_fileURL = v15;

    v19 = objc_msgSend_copy(v9, v17, v18);
    signature = inited->_signature;
    inited->_signature = v19;

    v21 = CKCreateGUID();
    UUID = inited->_UUID;
    inited->_UUID = v21;
  }

  return inited;
}

- (CKAsset)initWithFileURL:(id)a3 signature:(id)a4 assetHandleUUID:(id)a5
{
  v8 = a3;
  v10 = a4;
  if (!a5)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v9, *MEMORY[0x1E695D940], @"Null assetHandleUUID");
  }

  v11 = objc_msgSend_initWithFileURL_signature_(self, v9, v8, v10);

  return v11;
}

- (CKAsset)initWithFileURL:(NSURL *)fileURL
{
  v6 = fileURL;
  if (!v6)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D940], @"Null fileURL");
  }

  if ((objc_msgSend_isFileURL(v6, v4, v5) & 1) == 0)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v7, *MEMORY[0x1E695D940], @"Non-file URL");
  }

  inited = objc_msgSend_initInternal(self, v7, v8);
  if (inited)
  {
    v12 = objc_msgSend_copy(v6, v9, v10);
    v13 = inited->_fileURL;
    inited->_fileURL = v12;

    v14 = CKCreateGUID();
    UUID = inited->_UUID;
    inited->_UUID = v14;
  }

  return inited;
}

- (CKAsset)initWithAssetReference:(id)a3
{
  v4 = a3;
  v35 = 0;
  v5 = _CKCheckArgument("assetReference", v4, 0, 0, 0, &v35);
  v6 = v35;
  if ((v5 & 1) == 0)
  {
    v24 = v6;
    v25 = [CKException alloc];
    v28 = objc_msgSend_code(v24, v26, v27);
    v31 = objc_msgSend_localizedDescription(v24, v29, v30);
    v33 = objc_msgSend_initWithCode_format_(v25, v32, v28, @"%@", v31);
    v34 = v33;

    objc_exception_throw(v33);
  }

  inited = objc_msgSend_initInternal(self, v7, v8);
  if (inited)
  {
    v12 = objc_msgSend_fileSignature(v4, v9, v10);
    v15 = objc_msgSend_copy(v12, v13, v14);
    signature = inited->_signature;
    inited->_signature = v15;

    v19 = objc_msgSend_copy(v4, v17, v18);
    assetReference = inited->_assetReference;
    inited->_assetReference = v19;

    v21 = CKCreateGUID();
    UUID = inited->_UUID;
    inited->_UUID = v21;
  }

  return inited;
}

+ (CKAsset)assetWithFileURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithFileURL_(v4, v5, v3);

  return v6;
}

- (CKAsset)initWithDeviceID:(id)a3 fileID:(id)a4 generationID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v10, *MEMORY[0x1E695D940], @"Null deviceID");
    if (v9)
    {
      goto LABEL_3;
    }
  }

  objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v10, *MEMORY[0x1E695D940], @"Null fileID");
LABEL_3:
  v13 = objc_msgSend_intValue(v8, v10, v11);
  v16 = objc_msgSend_unsignedLongLongValue(v9, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"/.vol/%u/%llu", v13, v16);
  v20 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v19, v18, 0);
  v24 = objc_msgSend_initWithFileURL_(self, v21, v20);
  if (v24)
  {
    v25 = objc_msgSend_copy(v8, v22, v23);
    deviceID = v24->_deviceID;
    v24->_deviceID = v25;

    v29 = objc_msgSend_copy(v9, v27, v28);
    fileID = v24->_fileID;
    v24->_fileID = v29;

    v33 = objc_msgSend_copy(v12, v31, v32);
    generationID = v24->_generationID;
    v24->_generationID = v33;
  }

  return v24;
}

- (CKAsset)initWithAssetContent:(id)a3 itemTypeHint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = v7;
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (objc_msgSend_length(v10, v8, v9))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v8, *MEMORY[0x1E695D940], @"Null assetContent");
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v8, *MEMORY[0x1E695D940], @"Null itemTypeHint");
LABEL_7:
  inited = objc_msgSend_initInternal(self, v8, v11);
  v15 = inited;
  if (inited)
  {
    *(inited + 9) = 1;
    v16 = objc_msgSend_copy(v6, v13, v14);
    assetContent = v15->_assetContent;
    v15->_assetContent = v16;

    v20 = objc_msgSend_copy(v10, v18, v19);
    itemTypeHint = v15->_itemTypeHint;
    v15->_itemTypeHint = v20;

    v15->_hasSize = 1;
    v15->_size = objc_msgSend_length(v6, v22, v23);
    v24 = CKCreateGUID();
    UUID = v15->_UUID;
    v15->_UUID = v24;
  }

  return v15;
}

- (void)setSize:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  objc_msgSend_setHasSize_(obj, v4, 1);
  obj->_size = a3;
  objc_sync_exit(obj);
}

- (BOOL)isReference
{
  v3 = objc_msgSend_assetReference(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v10 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], a2, 19);
  if (v6)
  {
    v176 = v5;
    v13 = objc_msgSend_UUID(self, v8, v9);
    if (v13)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v11, @"UUID", v13);
    }

    v14 = objc_msgSend_arrayIndex(self, v11, v12);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v17 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v15, v14);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v18, @"arrayIndex", v17);
    }

    v187 = v13;
    if (objc_msgSend_hasSize(self, v15, v16))
    {
      v21 = MEMORY[0x1E696AD98];
      v22 = objc_msgSend_size(self, v19, v20);
      v24 = objc_msgSend_numberWithUnsignedLongLong_(v21, v23, v22);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v25, @"size", v24);
    }

    v26 = objc_msgSend_assetContent(self, v19, v20);
    v29 = v26;
    if (v26)
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_msgSend_length(v26, v27, v28);
      v33 = objc_msgSend_stringWithFormat_(v30, v32, @"<%lu bytes>", v31);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v34, @"assetContent", v33);
    }

    isConstructedAsset = objc_msgSend_isConstructedAsset(self, v27, v28);
    v38 = objc_msgSend_constructedAssetEstimatedSize(self, v36, v37);
    if (isConstructedAsset)
    {
      v41 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v39, v38);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v42, @"constructedAssetEstimatedSize", v41);
    }

    v43 = objc_msgSend_fileURL(self, v39, v40);
    v46 = v43;
    if (v43)
    {
      v47 = objc_msgSend_CKSanitizedPath(v43, v44, v45);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v48, @"path", v47);
    }

    v49 = objc_msgSend_recordKey(self, v44, v45);
    v52 = v49;
    if (v49)
    {
      v53 = objc_msgSend_description(v49, v50, v51);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v54, @"recordKey", v53);
    }

    v179 = v52;
    v55 = objc_msgSend_signature(self, v50, v51);
    v58 = v55;
    if (v55)
    {
      v60 = objc_msgSend_description(v55, v56, v57);
      if (isConstructedAsset)
      {
        objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v59, @"sourceSignature", v60);
      }

      else
      {
        objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v59, @"signature", v60);
      }
    }

    v186 = v29;
    v63 = objc_msgSend_deviceID(self, v56, v57);
    if (v63)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v61, @"deviceID", v63);
    }

    v66 = objc_msgSend_fileID(self, v61, v62);
    if (v66)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v64, @"fileID", v66);
    }

    v183 = v66;
    v69 = objc_msgSend_fileHandle(self, v64, v65);
    if (v69)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v67, @"fileHandle", v69);
    }

    v178 = v58;
    v188 = v69;
    v72 = objc_msgSend_generationID(self, v67, v68);
    if (v72)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v70, @"generationID", v72);
    }

    v75 = objc_msgSend_owner(self, v70, v71);
    if (v75)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v73, @"owner", v75);
    }

    v189 = v75;
    v76 = objc_msgSend_requestor(self, v73, v74);
    v79 = v76;
    if (v76 && (objc_msgSend_isEqual_(v76, v77, v189) & 1) == 0)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v77, @"requestor", v79);
    }

    v184 = v63;
    v82 = objc_msgSend_authToken(self, v77, v78);
    if (v82)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v80, @"authToken", v82);
    }

    v181 = v82;
    v83 = objc_msgSend_downloadTokenExpiration(self, v80, v81);
    if (v83)
    {
      v86 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v84, v83);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v87, @"downloadTokenExpiration", v86);
    }

    v88 = objc_msgSend_uploadRank(self, v84, v85);
    if ((v88 & 0x8000000000000000) == 0)
    {
      v91 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v89, v88);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v92, @"uploadRank", v91);
    }

    v95 = objc_msgSend_uploadReceipt(self, v89, v90);
    if (v95)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v93, @"uploadReceipt", v95);
      v96 = MEMORY[0x1E696AD98];
      objc_msgSend_uploadReceiptExpiration(self, v97, v98);
      v101 = objc_msgSend_numberWithDouble_(v96, v99, v100);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v102, @"uploadReceiptExpiration", v101);
    }

    v180 = v95;
    v103 = objc_msgSend_wrappedAssetKey(self, v93, v94);
    v106 = v103;
    if (v103)
    {
      v107 = MEMORY[0x1E696AEC0];
      v108 = objc_msgSend_length(v103, v104, v105);
      v110 = objc_msgSend_stringWithFormat_(v107, v109, @"<%lu bytes>", v108);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v111, @"wrappedAssetKey", v110);
    }

    v112 = objc_msgSend_clearAssetKey(self, v104, v105);
    v115 = v112;
    if (v112)
    {
      v116 = MEMORY[0x1E696AEC0];
      v117 = objc_msgSend_length(v112, v113, v114);
      v119 = objc_msgSend_stringWithFormat_(v116, v118, @"<%lu bytes>", v117);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v120, @"clearAssetKey", v119);
    }

    v121 = objc_msgSend_referenceSignature(self, v113, v114);
    v124 = v121;
    v182 = v72;
    if (v121)
    {
      v126 = objc_msgSend_description(v121, v122, v123);
      if (isConstructedAsset)
      {
        objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v125, @"sourceReferenceSignature", v126);
      }

      else
      {
        objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v125, @"referenceSignature", v126);
      }
    }

    v185 = v46;
    v127 = objc_msgSend_downloadPreauthorization(self, v122, v123);
    v130 = v127;
    if (v127)
    {
      v131 = objc_msgSend_responseUUID(v127, v128, v129);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v132, @"downloadPreauthorizationUUID", v131);
    }

    v133 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v128, 7);
    if (objc_msgSend_uploaded(self, v134, v135))
    {
      objc_msgSend_addObject_(v133, v136, @"uploaded");
    }

    v177 = v106;
    if (objc_msgSend_downloaded(self, v136, v137))
    {
      objc_msgSend_addObject_(v133, v138, @"downloaded");
    }

    v140 = objc_msgSend_downloadURLExpiration(self, v138, v139);
    v143 = objc_msgSend_downloadURLTemplate(self, v141, v142);

    if (v143)
    {
      objc_msgSend_addObject_(v133, v144, @"has-download-url");
      v148 = objc_msgSend_description(v140, v146, v147);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v149, @"downloadURLExpiration", v148);
    }

    v150 = objc_msgSend_constructedAssetDownloadURLTemplate(self, v144, v145);

    if (v150)
    {
      objc_msgSend_addObject_(v133, v151, @"has-constructed-download-url");
      v155 = objc_msgSend_description(v140, v153, v154);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v156, @"downloadURLExpiration", v155);
    }

    v157 = objc_msgSend_constructedAssetDownloadParameters(self, v151, v152);
    v160 = v157;
    if (v157)
    {
      v161 = objc_msgSend_description(v157, v158, v159);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v162, @"constructedAssetDownloadParameters", v161);
    }

    v163 = objc_msgSend_downloadPreauthorization(self, v158, v159);

    if (v163)
    {
      objc_msgSend_addObject_(v133, v164, @"has-download-preauth");
    }

    if (objc_msgSend_shouldReadRawEncryptedData(self, v164, v165))
    {
      objc_msgSend_addObject_(v133, v166, @"read-encrypted");
    }

    if (objc_msgSend_storageGroupingPolicy(self, v166, v167) == 1)
    {
      objc_msgSend_addObject_(v133, v168, @"group-by-key");
    }

    v171 = v188;
    if (objc_msgSend_count(v133, v168, v169))
    {
      if (v176)
      {
        objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v170, @"flags", v133);
      }

      else
      {
        v172 = objc_msgSend_componentsJoinedByString_(v133, v170, @"|");
        objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v173, @"flags", v172);

        v171 = v188;
      }
    }
  }

  v174 = v10;

  return v10;
}

+ (id)openToReadRawEncryptedDataWithOpenInfo:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_path(a3, a2, a3);
  if (v6)
  {
    *__error() = 0;
    objc_msgSend_fileSystemRepresentation(v6, v7, v8);
    v9 = MKBBackupOpen();
    v10 = __error();
    if (!v9)
    {
      v17 = [CKFileOpenResult alloc];
      v19 = objc_msgSend_initWithMobileKeyBagHandle_path_error_(v17, v18, 0, v6, a4);
      v16 = v19;
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        MKBBackupClose();
      }

      goto LABEL_16;
    }

    v12 = *v10;
    if (a4)
    {
      v13 = objc_msgSend_errorCodeFromPOSIXCode_(CKAsset, v11, v12);
      *a4 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKInternalErrorDomain", v13, @"MKBBackupOpen failed with rc:%d errno:%d", v9, v12);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v24 = v6;
      v25 = 1024;
      v26 = v9;
      v27 = 1024;
      v28 = v12;
      _os_log_error_impl(&dword_1883EA000, v15, OS_LOG_TYPE_ERROR, "MKBBackupOpen failed at %{public}@ with rc:%d errno:%d", buf, 0x18u);
    }
  }

  else if (a4)
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v5, @"CKInternalErrorDomain", 1017, @"nil path");
    *a4 = v16 = 0;
    goto LABEL_16;
  }

  v16 = 0;
LABEL_16:

  v21 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (int)errorCodeFromPOSIXCode:(int)a3
{
  result = 3001;
  if (a3 > 12)
  {
    if (a3 == 45)
    {
      return 3009;
    }

    if (a3 != 35)
    {
      if (a3 != 13)
      {
        return result;
      }

      return 3010;
    }

    return 3002;
  }

  if (a3 == 1)
  {
    return 3010;
  }

  if (a3 == 2)
  {
    return 3002;
  }

  return result;
}

+ (id)_openUnencryptedWithOpenInfo:(id)a3 genCountCheck:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v118 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (objc_msgSend_shouldReadRawEncryptedData(v8, v9, v10) == v6)
  {
    __assert_rtn("+[CKAsset _openUnencryptedWithOpenInfo:genCountCheck:error:]", "CKAsset.m", 457, "(!genCountCheck && openInfo.shouldReadRawEncryptedData) || (genCountCheck && !openInfo.shouldReadRawEncryptedData)");
  }

  v116 = -1;
  v13 = objc_msgSend_path(v8, v11, v12);
  v16 = objc_msgSend_deviceID(v8, v14, v15);
  v19 = objc_msgSend_fileID(v8, v17, v18);
  v108 = objc_msgSend_generationID(v8, v20, v21);
  v24 = objc_msgSend_fileHandle(v8, v22, v23);
  v27 = objc_msgSend_assetDownloadStagingInfo(v8, v25, v26);
  v30 = objc_msgSend_assetDownloadStagingManager(v8, v28, v29);
  v33 = v30;
  v115 = 1;
  v109 = v19;
  if (!v16 && !v19 && !v13 && !v24 && (!v27 || !v30))
  {
    v35 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v31, @"CKInternalErrorDomain", 1017, @"Invalid arguments: %@, %@, %@", 0, 0, 0);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v43 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      buf.st_dev = 138412802;
      *&buf.st_mode = 0;
      WORD2(buf.st_ino) = 2114;
      *(&buf.st_ino + 6) = 0;
      HIWORD(buf.st_gid) = 2114;
      *&buf.st_rdev = 0;
      _os_log_error_impl(&dword_1883EA000, v43, OS_LOG_TYPE_ERROR, "Invalid arguments, deviceID:%@, fileID:%{public}@, path:%{public}@", &buf, 0x20u);
    }

    v24 = 0;
    goto LABEL_68;
  }

  v107 = a5;
  if (!v27 || !v30)
  {
    if (v24)
    {
      v36 = objc_msgSend_fileDescriptor(v24, v31, v32);
      v35 = 0;
      v116 = v36;
      v115 = 0;
      if ((v36 & 0x80000000) == 0)
      {
LABEL_15:
        v111 = xmmword_1886FE4A8;
        v112 = 512;
        memset(v110, 0, 20);
        if (fgetattrlist(v36, &v111, v110, 0x14uLL, 0x20u))
        {
          v39 = __error();
          v40 = *v39;
          v41 = strerror(*v39);
          objc_msgSend_errorWithDomain_code_path_format_(CKPrettyError, v42, @"CKInternalErrorDomain", 3001, v13, @"fgetattrlist error: %d (%s)", v40, v41);
        }

        else if ((WORD2(v110[0]) & 0xF000) == 0x8000)
        {
          if (!v6 || !objc_msgSend_unsignedIntegerValue(v108, v37, v38) || (v48 = LODWORD(v110[1]), objc_msgSend_unsignedIntegerValue(v108, v46, v47) == v48))
          {
            v51 = objc_alloc(MEMORY[0x1E696AC00]);
            v53 = objc_msgSend_initWithFileDescriptor_closeOnDealloc_(v51, v52, v116, v115);

            v116 = -1;
            v54 = [CKFileOpenResult alloc];
            v56 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v55, *(&v110[1] + 4));
            v58 = objc_msgSend_initWithFileHandle_fileSize_(v54, v57, v53, v56);

            v24 = v53;
            a5 = v107;
            if (v58)
            {
              goto LABEL_74;
            }

            goto LABEL_68;
          }

          v61 = LODWORD(v110[1]);
          v62 = objc_msgSend_unsignedIntegerValue(v108, v49, v50);
          objc_msgSend_errorWithDomain_code_path_format_(CKPrettyError, v63, @"CKInternalErrorDomain", 3003, v13, @"generation counter mismatch (%lu != %lu)", v61, v62);
        }

        else
        {
          objc_msgSend_errorWithDomain_code_path_format_(CKPrettyError, v37, @"CKInternalErrorDomain", 1017, v13, @"Not a regular file");
        }
        v59 = ;

        v35 = v59;
        goto LABEL_36;
      }

LABEL_46:
      v65 = *__error();
      v67 = objc_msgSend_errorCodeFromPOSIXCode_(a1, v66, v65);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      a5 = v107;
      v106 = v67;
      v68 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        buf.st_dev = 138413570;
        *&buf.st_mode = v16;
        WORD2(buf.st_ino) = 2114;
        *(&buf.st_ino + 6) = v109;
        HIWORD(buf.st_gid) = 2114;
        *&buf.st_rdev = v108;
        LOWORD(buf.st_atimespec.tv_sec) = 2114;
        *(&buf.st_atimespec.tv_sec + 2) = v13;
        WORD1(buf.st_atimespec.tv_nsec) = 2112;
        *(&buf.st_atimespec.tv_nsec + 4) = v24;
        WORD2(buf.st_mtimespec.tv_sec) = 1024;
        *(&buf.st_mtimespec.tv_sec + 6) = v65;
        _os_log_debug_impl(&dword_1883EA000, v68, OS_LOG_TYPE_DEBUG, "open failed for deviceID:%@, fileID:%{public}@, generationID:%{public}@, path:%{public}@, fileHandle:%@: %{errno}d", &buf, 0x3Au);
      }

      if (v65 != 1 || v24)
      {
        if (v65 == 13)
        {
          memset(&buf, 0, sizeof(buf));
          v83 = objc_msgSend_fileSystemRepresentation(v13, v69, v70);
          if (!stat(v83, &buf))
          {
            v84 = objc_alloc(MEMORY[0x1E696AD98]);
            v85 = getuid() == buf.st_uid;
            v103 = objc_msgSend_initWithBool_(v84, v86, v85);
            v87 = objc_alloc(MEMORY[0x1E696AD98]);
            v105 = objc_msgSend_initWithBool_(v87, v88, HIBYTE(buf.st_mode) & 1);
            v89 = objc_alloc(MEMORY[0x1E696AD98]);
            v102 = objc_msgSend_initWithBool_(v89, v90, (buf.st_mode >> 5) & 1);
            v91 = objc_alloc(MEMORY[0x1E696AD98]);
            v93 = objc_msgSend_initWithBool_(v91, v92, (buf.st_mode >> 2) & 1);
            v94 = strerror(13);
            v101 = objc_msgSend_errorWithDomain_code_path_format_(CKPrettyError, v95, @"CKInternalErrorDomain", v106, v13, @"open error: %d (%s). isOwner:%@ canOwnerRead:%@ canGroupRead:%@ canOtherRead:%@", 13, v94, v103, v105, v102, v93);

            a5 = v107;
            v35 = v101;
          }
        }
      }

      else
      {
        if (v109)
        {
          v71 = v16 == 0;
        }

        else
        {
          v71 = 1;
        }

        if (v71 && v13)
        {
          v104 = v65;
          v72 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v69, v70);
          v74 = objc_msgSend_attributesOfItemAtPath_error_(v72, v73, v13, 0);
          v76 = objc_msgSend_objectForKey_(v74, v75, *MEMORY[0x1E696A3A0]);

          v77 = v76;
          if (v76 && (objc_msgSend_isEqual_(v76, v78, *MEMORY[0x1E696A388]) & 1) == 0 && (objc_msgSend_isEqual_(v76, v79, *MEMORY[0x1E695DAF8]) & 1) == 0)
          {
            v80 = strerror(1);
            v82 = objc_msgSend_errorWithDomain_code_path_format_(CKPrettyError, v81, @"CKInternalErrorDomain", v106, v13, @"open error: %d (%s). protection class %@ likely unavailable.", 1, v80, v76);

            v35 = v82;
            v77 = v76;
          }

          a5 = v107;
          v65 = v104;
        }
      }

      if (!v35)
      {
        v96 = strerror(v65);
        a5 = v107;
        v35 = objc_msgSend_errorWithDomain_code_path_format_(CKPrettyError, v97, @"CKInternalErrorDomain", v106, v13, @"open error: %d (%s)", v65, v96);
      }

      goto LABEL_68;
    }

    if (qword_1ED4B60C8 == -1)
    {
      if (!v16)
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_once(&qword_1ED4B60C8, &unk_1EFA2E5C8);
      if (!v16)
      {
        goto LABEL_45;
      }
    }

    if (v19 && byte_1ED4B60C0 == 1)
    {
      *&buf.st_mode = 0;
      buf.st_dev = objc_msgSend_intValue(v16, v31, v32);
      v113 = objc_msgSend_unsignedLongLongValue(v19, v44, v45);
      v116 = openbyid_np();
      if (v116 < 0)
      {
        v60 = 30000;
        do
        {
          if (*__error() != 35)
          {
            break;
          }

          if (!--v60)
          {
            break;
          }

          usleep(0x3E8u);
          v116 = openbyid_np();
        }

        while (v116 < 0);
      }

      v35 = 0;
LABEL_11:
      v36 = v116;
      if (v116 < 0)
      {
        goto LABEL_46;
      }

      goto LABEL_15;
    }

LABEL_45:
    v64 = objc_msgSend_fileSystemRepresentation(v13, v31, v32);
    v36 = open(v64, 260);
    v35 = 0;
    v116 = v36;
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

  v114 = 0;
  v34 = objc_msgSend_openWithAssetDownloadStagingInfo_fileDescriptor_closeOnDealloc_error_(v30, v31, v27, &v116, &v115, &v114);
  v35 = v114;
  if (v34)
  {
    goto LABEL_11;
  }

LABEL_36:
  a5 = v107;
LABEL_68:
  if ((v116 & 0x80000000) == 0 && v115 == 1)
  {
    close(v116);
  }

  if (a5)
  {
    v98 = v35;
    v58 = 0;
    *a5 = v35;
  }

  else
  {
    v58 = 0;
  }

LABEL_74:

  v99 = *MEMORY[0x1E69E9840];

  return v58;
}

+ (id)openWithOpenInfo:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = objc_msgSend_path(v6, v7, v8);
  v12 = objc_msgSend_deviceID(v6, v10, v11);
  v15 = objc_msgSend_fileID(v6, v13, v14);
  v18 = objc_msgSend_fileHandle(v6, v16, v17);
  v21 = objc_msgSend_assetDownloadStagingInfo(v6, v19, v20);
  v24 = objc_msgSend_assetDownloadStagingManager(v6, v22, v23);
  v27 = v24;
  if (!v12 && !v15 && !v9 && !v18 && (!v21 || !v24))
  {
    v31 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKInternalErrorDomain", 1017, @"Invalid arguments: %@, %@, %@", 0, 0, 0);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v32 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = 0;
      v39 = 2114;
      v40 = 0;
      v41 = 2114;
      v42 = 0;
      _os_log_error_impl(&dword_1883EA000, v32, OS_LOG_TYPE_ERROR, "Invalid arguments, deviceID:%@, fileID:%{public}@, path:%{public}@", buf, 0x20u);
    }

    v30 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (objc_msgSend_shouldReadRawEncryptedData(v6, v25, v26))
  {
    v29 = objc_msgSend_openToReadRawEncryptedDataWithOpenInfo_error_(a1, v28, v6, a4);
    goto LABEL_19;
  }

  v36 = 0;
  v30 = objc_msgSend__openUnencryptedWithOpenInfo_genCountCheck_error_(a1, v28, v6, 1, &v36);
  v31 = v36;
  if (a4)
  {
LABEL_16:
    if (!v30)
    {
      v33 = v31;
      *a4 = v31;
    }
  }

LABEL_18:
  v29 = v30;

LABEL_19:
  v34 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)openWithError:(id *)a3
{
  v4 = [CKFileOpenInfo alloc];
  v7 = objc_msgSend_UUID(self, v5, v6);
  v10 = objc_msgSend_fileURL(self, v8, v9);
  v13 = objc_msgSend_path(v10, v11, v12);
  v16 = objc_msgSend_deviceID(self, v14, v15);
  v19 = objc_msgSend_fileID(self, v17, v18);
  v22 = objc_msgSend_generationID(self, v20, v21);
  RawEncryptedData = objc_msgSend_shouldReadRawEncryptedData(self, v23, v24);
  v28 = objc_msgSend_fileHandle(self, v26, v27);
  RawEncryptedData_fileHandle_assetDownloadStagingInfo = objc_msgSend_initWithUUID_path_deviceID_fileID_generationID_shouldReadRawEncryptedData_fileHandle_assetDownloadStagingInfo_(v4, v29, v7, v13, v16, v19, v22, RawEncryptedData, v28, 0);

  v31 = objc_opt_class();
  v33 = objc_msgSend_openWithOpenInfo_error_(v31, v32, RawEncryptedData_fileHandle_assetDownloadStagingInfo, a3);

  return v33;
}

+ (id)getFileSizeWithOpenInfo:(id)a3 error:(id *)a4
{
  v13 = 0;
  v5 = objc_msgSend_openWithOpenInfo_error_(CKAsset, a2, a3, &v13);
  v6 = v13;
  v9 = v6;
  if (v5)
  {
    v10 = objc_msgSend_fileSize(v5, v7, v8);
  }

  else if (a4)
  {
    v11 = v6;
    v10 = 0;
    *a4 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)getFileMetadataWithFileHandle:(id)a3 openInfo:(id)a4 error:(id *)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v12 = a4;
  if (!v9)
  {
    v38 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v39, a2, a1, @"CKAsset.m", 676, @"Expected non-nil fileHandle");
  }

  v44 = 512;
  v42 = 0u;
  v43 = xmmword_1886FE4C0;
  v40 = 0u;
  v41 = 0u;
  v13 = objc_msgSend_fileDescriptor(v9, v10, v11);
  if (!fgetattrlist(v13, &v43, &v40, 0x30uLL, 0x20u))
  {
    v24 = [CKFileMetadata alloc];
    v26 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v25, DWORD1(v40));
    v28 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v27, v42);
    v30 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v29, HIDWORD(v41));
    v33 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v31, *(&v40 + 1));
    if ((WORD4(v41) & 0xF000) == 0x8000)
    {
      objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v32, *(&v42 + 1));
    }

    else
    {
      objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v32, 0);
    }
    v34 = ;
    v23 = objc_msgSend_initWithDeviceID_fileID_generationID_modTimeInSeconds_fileSize_(v24, v35, v26, v28, v30, v33, v34);

    v20 = 0;
    goto LABEL_15;
  }

  v14 = *__error();
  v17 = objc_msgSend_path(v12, v15, v16);
  v18 = strerror(v14);
  v20 = objc_msgSend_errorWithDomain_code_path_format_(CKPrettyError, v19, @"CKInternalErrorDomain", 3001, v17, @"fgetattrlist(%d) failed: %d (%s)", v13, v14, v18);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v21 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v46 = v12;
    v47 = 2112;
    v48 = v20;
    _os_log_error_impl(&dword_1883EA000, v21, OS_LOG_TYPE_ERROR, "Failed to get the attr list for %@: %@\n", buf, 0x16u);
    if (a5)
    {
      goto LABEL_8;
    }
  }

  else if (a5)
  {
LABEL_8:
    v22 = v20;
    v23 = 0;
    *a5 = v20;
    goto LABEL_15;
  }

  v23 = 0;
LABEL_15:

  v36 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)getFileMetadataAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [CKFileOpenInfo alloc];
  v9 = objc_msgSend_initWithPath_(v7, v8, v6);

  v21 = 0;
  v11 = objc_msgSend_openWithOpenInfo_error_(CKAsset, v10, v9, &v21);
  v12 = v21;
  v15 = v12;
  if (v11)
  {
    v16 = objc_msgSend_fileHandle(v11, v13, v14);
    v18 = objc_msgSend_getFileMetadataWithFileHandle_openInfo_error_(a1, v17, v16, v9, a4);
  }

  else if (a4)
  {
    v19 = v12;
    v18 = 0;
    *a4 = v15;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_expandTemplateURL:(id)a3 fieldValues:(id)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v59 = a4;
  v11 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v8, @"\\$\\{([^\\}]*?)\\}", 1, 0);
  if (!v11)
  {
    v54 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v54, v55, a2, a1, @"CKAsset.m", 732, @"Couldn't create regex?");
  }

  v60 = objc_msgSend_mutableCopy(v7, v9, v10);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v14 = objc_msgSend_length(v7, v12, v13);
  obj = objc_msgSend_matchesInString_options_range_(v11, v15, v7, 0, 0, v14);
  v17 = v11;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v61, v65, 16);
  if (v58)
  {
    v20 = 0;
    v57 = *v62;
LABEL_5:
    v21 = 0;
    while (1)
    {
      if (*v62 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v61 + 1) + 8 * v21);
      if (objc_msgSend_numberOfRanges(v22, v18, v19) != 2)
      {
        break;
      }

      v24 = objc_msgSend_rangeAtIndex_(v22, v23, 1);
      v26 = objc_msgSend_substringWithRange_(v7, v25, v24, v25);
      v29 = objc_msgSend_range(v22, v27, v28);
      v31 = v30;
      v32 = objc_msgSend_replacementStringForResult_inString_offset_template_(v17, v30, v22, v60, v20, @"$0");
      if (!v32)
      {

        break;
      }

      v35 = v32;
      v36 = objc_msgSend_lowercaseString(v26, v33, v34);
      v38 = objc_msgSend_objectForKeyedSubscript_(v59, v37, v36);

      if (v38)
      {
        v41 = objc_msgSend_CKSafeStringForURLPathComponent(v38, v39, v40);
        v44 = objc_msgSend_length(v41, v42, v43);
        v45 = v20 - v31;
        v46 = v20;
        v47 = v17;
        v48 = v7;
        v49 = v45 + v44;
        objc_msgSend_replaceCharactersInRange_withString_(v60, v50, v29 + v46, v31, v41);

        v51 = v49;
        v7 = v48;
        v17 = v47;
        v20 = v51;
      }

      if (v58 == ++v21)
      {
        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v61, v65, 16);
        if (v58)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v52 = *MEMORY[0x1E69E9840];

  return v60;
}

+ (id)_canonicalizeTemplateURL:(id)a3
{
  v5 = MEMORY[0x1E696AE70];
  v6 = a3;
  v10 = objc_msgSend_regularExpressionWithPattern_options_error_(v5, v7, @"\\$\\{([^\\}]*?)\\}", 1, 0);
  if (!v10)
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, a1, @"CKAsset.m", 762, @"Couldn't create regex?");
  }

  v11 = objc_msgSend_length(v6, v8, v9);
  v13 = objc_msgSend_stringByReplacingMatchesInString_options_range_withTemplate_(v10, v12, v6, 0, 0, v11, &stru_1EFA32970);

  v14 = objc_alloc(MEMORY[0x1E695DFF8]);
  v16 = objc_msgSend_initWithString_(v14, v15, v13);

  return v16;
}

+ (id)_downloadURLWithTemplate:(id)a3 fileName:(id)a4
{
  v4 = a3;
  v17[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      v5 = a4;
    }

    else
    {
      v5 = @"UNKNOWN_ASSET.dat";
    }

    v16 = @"f";
    v17[0] = v5;
    v6 = MEMORY[0x1E695DF20];
    v7 = a4;
    v8 = v4;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v6, v9, v17, &v16, 1);
    v12 = objc_msgSend__expandTemplateURL_fieldValues_(CKAsset, v11, v8, v10);

    v4 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v13, v12);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)downloadURLWithFileName:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = objc_msgSend_downloadURLTemplate(self, v6, v7);
  v10 = objc_msgSend__downloadURLWithTemplate_fileName_(v5, v9, v8, v4);

  return v10;
}

- (id)downloadURL
{
  v3 = objc_msgSend_downloadURLTemplate(self, a2, v2);
  if (v3)
  {
    v4 = objc_opt_class();
    v6 = objc_msgSend__downloadURLWithTemplate_fileName_(v4, v5, v3, @"UNKNOWN_ASSET.dat");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setFileURL:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_fileURL != v9)
  {
    v7 = objc_msgSend_copy(v9, v5, v6);
    fileURL = v4->_fileURL;
    v4->_fileURL = v7;
  }

  objc_sync_exit(v4);
}

- (void)setAssetChunkerOptions:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  assetChunkerOptions = v4->_assetChunkerOptions;
  v4->_assetChunkerOptions = v7;

  objc_sync_exit(v4);
}

- (void)setDeviceID_modelMutation:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  deviceID = self->_deviceID;
  self->_deviceID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFileID_modelMutation:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  fileID = self->_fileID;
  self->_fileID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAssetContent_modelMutation:(id)a3
{
  v5 = objc_msgSend_copy(a3, a2, a3);
  objc_msgSend_setAssetContent_(self, v4, v5);
}

- (void)setAssetTransferOptions:(id)a3
{
  v19 = a3;
  v6 = objc_msgSend_copy(v19, v4, v5);
  assetTransferOptions = self->_assetTransferOptions;
  self->_assetTransferOptions = v6;

  if (objc_msgSend_isReference(self, v8, v9))
  {
    v11 = objc_msgSend_useMMCSEncryptionV2(v19, v19, v10);
    v14 = v11;
    if (v11)
    {
      v15 = objc_msgSend_BOOLValue(v11, v12, v13);
      if (v15 != objc_msgSend_useMMCSEncryptionV2(self, v16, v17))
      {
        objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v18, *MEMORY[0x1E695D940], @"Value specified for CKAssetTransferOptions.useMMCSEncryptionV2 is inconsistent with referenced asset encryption.");
      }
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setAssetContent:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_copy(v9, v5, v6);
  assetContent = v4->_assetContent;
  v4->_assetContent = v7;

  objc_sync_exit(v4);
}

- (BOOL)useMMCSEncryptionV2
{
  if (objc_msgSend_isReference(self, a2, v2))
  {
    v6 = objc_msgSend_assetReference(self, v4, v5);
    v9 = objc_msgSend_fileSignature(v6, v7, v8);
    isValidV2Signature = objc_msgSend_isValidV2Signature_(CKSignatureGenerator, v10, v9);
  }

  else
  {
    v6 = objc_msgSend_assetTransferOptions(self, v4, v5);
    v9 = objc_msgSend_useMMCSEncryptionV2(v6, v12, v13);
    isValidV2Signature = objc_msgSend_BOOLValue(v9, v14, v15);
  }

  v16 = isValidV2Signature;

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v153 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_arrayIndex(self, v5, v6);
  if ((v7 & 0x8000000000000000) == 0)
  {
    objc_msgSend_encodeInt64_forKey_(v153, v8, v7, @"AssetArrayIndex");
  }

  v10 = objc_msgSend_UUID(self, v8, v9);
  objc_msgSend_encodeObject_forKey_(v153, v11, v10, @"AssetUUID");

  v12 = self;
  objc_sync_enter(v12);
  objc_msgSend_encodeObject_forKey_(v153, v13, v12->_fileURL, @"AssetFileURL");
  objc_sync_exit(v12);

  v16 = objc_msgSend_signature(v12, v14, v15);
  objc_msgSend_encodeObject_forKey_(v153, v17, v16, @"AssetSignature");

  v20 = objc_msgSend_itemTypeHint(v12, v18, v19);
  objc_msgSend_encodeObject_forKey_(v153, v21, v20, @"AssetTypeHint");

  v24 = objc_msgSend_assetReference(v12, v22, v23);
  objc_msgSend_encodeObject_forKey_(v153, v25, v24, @"AssetReference");

  v28 = objc_msgSend_paddedFileSize(v12, v26, v27);
  objc_msgSend_encodeInt64_forKey_(v153, v29, v28, @"AssetPaddedSize");
  v32 = objc_msgSend_verificationKey(v12, v30, v31);
  objc_msgSend_encodeObject_forKey_(v153, v33, v32, @"AssetVerificationKey");

  v36 = objc_msgSend_size(v12, v34, v35);
  objc_msgSend_encodeInt64_forKey_(v153, v37, v36, @"AssetSize");
  hasSize = objc_msgSend_hasSize(v12, v38, v39);
  objc_msgSend_encodeBool_forKey_(v153, v41, hasSize, @"AssetHasSize");
  v44 = objc_msgSend_uploadReceipt(v12, v42, v43);
  objc_msgSend_encodeObject_forKey_(v153, v45, v44, @"AssetUploadReceipt");

  objc_msgSend_uploadReceiptExpiration(v12, v46, v47);
  objc_msgSend_encodeDouble_forKey_(v153, v48, @"AssetUploadReceiptExpiration");
  v51 = objc_msgSend_deviceID(v12, v49, v50);
  objc_msgSend_encodeObject_forKey_(v153, v52, v51, @"AssetDeviceID");

  v55 = objc_msgSend_fileID(v12, v53, v54);
  objc_msgSend_encodeObject_forKey_(v153, v56, v55, @"AssetFileID");

  v59 = objc_msgSend_fileHandle(v12, v57, v58);
  objc_msgSend_encodeObject_forKey_(v153, v60, v59, @"KeptAliveFileHandle");

  v63 = objc_msgSend_generationID(v12, v61, v62);
  objc_msgSend_encodeObject_forKey_(v153, v64, v63, @"AssetGenerationID");

  v67 = objc_msgSend_downloadURLTemplate(v12, v65, v66);
  objc_msgSend_encodeObject_forKey_(v153, v68, v67, @"AssetDownloadURLTemplate");

  v71 = objc_msgSend_downloadURLExpiration(v12, v69, v70);
  objc_msgSend_encodeObject_forKey_(v153, v72, v71, @"AssetDownloadURLExpiration");

  v75 = objc_msgSend_downloadBaseURL(v12, v73, v74);
  objc_msgSend_encodeObject_forKey_(v153, v76, v75, @"AssetDownloadBaseUrl");

  v79 = objc_msgSend_contentBaseURL(v12, v77, v78);
  objc_msgSend_encodeObject_forKey_(v153, v80, v79, @"AssetContentBaseURL");

  v83 = objc_msgSend_owner(v12, v81, v82);
  objc_msgSend_encodeObject_forKey_(v153, v84, v83, @"AssetOwner");

  v87 = objc_msgSend_authToken(v12, v85, v86);
  objc_msgSend_encodeObject_forKey_(v153, v88, v87, @"AssetAuthToken");

  v91 = objc_msgSend_requestor(v12, v89, v90);
  objc_msgSend_encodeObject_forKey_(v153, v92, v91, @"AssetRequestor");

  v95 = objc_msgSend_wasCached(v12, v93, v94);
  objc_msgSend_encodeBool_forKey_(v153, v96, v95, @"WasCached");
  v99 = objc_msgSend_wrappedAssetKey(v12, v97, v98);
  objc_msgSend_encodeObject_forKey_(v153, v100, v99, @"WrappedAssetKey");

  v103 = objc_msgSend_clearAssetKey(v12, v101, v102);
  objc_msgSend_encodeObject_forKey_(v153, v104, v103, @"ClearAssetKey");

  v107 = objc_msgSend_exposeAssetKey(v12, v105, v106);
  objc_msgSend_encodeBool_forKey_(v153, v108, v107, @"ExposeAssetKey");
  if (v107)
  {
    v111 = objc_msgSend_assetKey(v12, v109, v110);
    objc_msgSend_encodeObject_forKey_(v153, v112, v111, @"AssetKey");
  }

  v113 = objc_msgSend_referenceSignature(v12, v109, v110);
  objc_msgSend_encodeObject_forKey_(v153, v114, v113, @"ReferenceSignature");

  v117 = objc_msgSend_uploaded(v12, v115, v116);
  objc_msgSend_encodeBool_forKey_(v153, v118, v117, @"AssetUploaded");
  v121 = objc_msgSend_recordID(v12, v119, v120);
  objc_msgSend_encodeObject_forKey_(v153, v122, v121, @"RecordID");

  RawEncryptedData = objc_msgSend_shouldReadRawEncryptedData(v12, v123, v124);
  objc_msgSend_encodeBool_forKey_(v153, v126, RawEncryptedData, @"ShouldReadRawEncryptedData");
  v129 = objc_msgSend_assetTransferOptions(v12, v127, v128);
  objc_msgSend_encodeObject_forKey_(v153, v130, v129, @"AssetTransferOptions");

  v133 = objc_msgSend_storageGroupingPolicy(v12, v131, v132);
  objc_msgSend_encodeInteger_forKey_(v153, v134, v133, @"StorageGroupingPolicy");
  v137 = objc_msgSend_assetChunkerOptions(v12, v135, v136);
  objc_msgSend_encodeObject_forKey_(v153, v138, v137, @"AssetChunkerOptions");

  AssetContentUsingClientProxy = objc_msgSend_shouldReadAssetContentUsingClientProxy(v12, v139, v140);
  objc_msgSend_encodeBool_forKey_(v153, v142, AssetContentUsingClientProxy, @"ShouldReadAssetContentUsingClientProxy");
  if ((AssetContentUsingClientProxy & 1) == 0)
  {
    v145 = objc_msgSend_assetContent(v12, v143, v144);
    objc_msgSend_encodeObject_forKey_(v153, v146, v145, @"InMemoryContent");
  }

  v147 = objc_msgSend_boundaryKey(v12, v143, v144);
  objc_msgSend_encodeObject_forKey_(v153, v148, v147, @"BoundaryKey");

  v151 = objc_msgSend_recordKey(v12, v149, v150);
  objc_msgSend_encodeObject_forKey_(v153, v152, v151, @"RecordKey");

  objc_autoreleasePoolPop(v4);
}

- (CKAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v157.receiver = self;
  v157.super_class = CKAsset;
  v5 = [(CKAsset *)&v157 init];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    if (objc_msgSend_containsValueForKey_(v4, v6, @"AssetArrayIndex"))
    {
      v8 = objc_msgSend_decodeInt64ForKey_(v4, v7, @"AssetArrayIndex");
      if (v8 >> 31)
      {
        v9 = -1;
      }

      else
      {
        v9 = v8;
      }
    }

    else
    {
      v9 = -1;
    }

    v5->_arrayIndex = v9;
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"AssetUUID");
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = CKCreateGUID();
    }

    UUID = v5->_UUID;
    v5->_UUID = v14;

    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v16, @"AssetFileURL");
    fileURL = v5->_fileURL;
    v5->_fileURL = v18;

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"AssetSignature");
    signature = v5->_signature;
    v5->_signature = v22;

    v24 = objc_opt_class();
    v26 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v25, v24, @"AssetTypeHint");
    itemTypeHint = v5->_itemTypeHint;
    v5->_itemTypeHint = v26;

    v28 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v29, v28, @"AssetReference");
    assetReference = v5->_assetReference;
    v5->_assetReference = v30;

    if (v5->_assetReference)
    {
      v33 = [CKAssetRereferenceInfo alloc];
      v36 = objc_msgSend_recordID(v5->_assetReference, v34, v35);
      v39 = objc_msgSend_zoneID(v36, v37, v38);
      v41 = objc_msgSend_initWithSourceZoneID_(v33, v40, v39);
      assetRereferenceInfo = v5->_assetRereferenceInfo;
      v5->_assetRereferenceInfo = v41;
    }

    v5->_size = objc_msgSend_decodeInt64ForKey_(v4, v32, @"AssetSize");
    v5->_hasSize = objc_msgSend_decodeBoolForKey_(v4, v43, @"AssetHasSize");
    if (objc_msgSend_containsValueForKey_(v4, v44, @"AssetPaddedSize"))
    {
      size = objc_msgSend_decodeInt64ForKey_(v4, v45, @"AssetPaddedSize");
    }

    else if (v5->_hasSize)
    {
      size = v5->_size;
    }

    else
    {
      size = 0;
    }

    v5->_paddedFileSize = size;
    v47 = objc_opt_class();
    v49 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v48, v47, @"AssetVerificationKey");
    verificationKey = v5->_verificationKey;
    v5->_verificationKey = v49;

    v51 = objc_opt_class();
    v53 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v52, v51, @"AssetUploadReceipt");
    uploadReceipt = v5->_uploadReceipt;
    v5->_uploadReceipt = v53;

    objc_msgSend_decodeDoubleForKey_(v4, v55, @"AssetUploadReceiptExpiration");
    v5->_uploadReceiptExpiration = v56;
    v57 = objc_opt_class();
    v59 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v58, v57, @"AssetDeviceID");
    deviceID = v5->_deviceID;
    v5->_deviceID = v59;

    v61 = objc_opt_class();
    v63 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v62, v61, @"AssetFileID");
    fileID = v5->_fileID;
    v5->_fileID = v63;

    v65 = objc_opt_class();
    v67 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v66, v65, @"KeptAliveFileHandle");
    fileHandle = v5->_fileHandle;
    v5->_fileHandle = v67;

    v69 = objc_opt_class();
    v71 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v70, v69, @"AssetGenerationID");
    generationID = v5->_generationID;
    v5->_generationID = v71;

    v73 = objc_opt_class();
    v75 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v74, v73, @"AssetDownloadURLTemplate");
    downloadURLTemplate = v5->_downloadURLTemplate;
    v5->_downloadURLTemplate = v75;

    v77 = objc_opt_class();
    v79 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v78, v77, @"AssetDownloadURLExpiration");
    downloadURLExpiration = v5->_downloadURLExpiration;
    v5->_downloadURLExpiration = v79;

    v81 = objc_opt_class();
    v83 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v82, v81, @"AssetDownloadBaseUrl");
    downloadBaseURL = v5->_downloadBaseURL;
    v5->_downloadBaseURL = v83;

    v85 = objc_opt_class();
    v87 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v86, v85, @"AssetContentBaseURL");
    contentBaseURL = v5->_contentBaseURL;
    v5->_contentBaseURL = v87;

    v89 = objc_opt_class();
    v91 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v90, v89, @"AssetOwner");
    owner = v5->_owner;
    v5->_owner = v91;

    v93 = objc_opt_class();
    v95 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v94, v93, @"AssetRequestor");
    requestor = v5->_requestor;
    v5->_requestor = v95;

    v97 = objc_opt_class();
    v99 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v98, v97, @"AssetAuthToken");
    authToken = v5->_authToken;
    v5->_authToken = v99;

    v5->_wasCached = objc_msgSend_decodeBoolForKey_(v4, v101, @"WasCached");
    v102 = objc_opt_class();
    v104 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v103, v102, @"WrappedAssetKey");
    wrappedAssetKey = v5->_wrappedAssetKey;
    v5->_wrappedAssetKey = v104;

    v106 = objc_opt_class();
    v108 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v107, v106, @"ClearAssetKey");
    clearAssetKey = v5->_clearAssetKey;
    v5->_clearAssetKey = v108;

    v111 = objc_msgSend_decodeBoolForKey_(v4, v110, @"ExposeAssetKey");
    v5->_exposeAssetKey = v111;
    if (v111)
    {
      v112 = objc_opt_class();
      v114 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v113, v112, @"AssetKey");
      assetKey = v5->_assetKey;
      v5->_assetKey = v114;
    }

    v116 = objc_opt_class();
    v118 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v117, v116, @"ReferenceSignature");
    referenceSignature = v5->_referenceSignature;
    v5->_referenceSignature = v118;

    v121 = (objc_msgSend_decodeBoolForKey_(v4, v120, @"AssetUploaded") & 1) != 0 || v5->_uploadReceipt != 0;
    v5->_uploaded = v121;
    v122 = objc_opt_class();
    v124 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v123, v122, @"RecordID");
    recordID = v5->_recordID;
    v5->_recordID = v124;

    v5->_shouldReadRawEncryptedData = objc_msgSend_decodeBoolForKey_(v4, v126, @"ShouldReadRawEncryptedData");
    v127 = objc_opt_class();
    v129 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v128, v127, @"AssetTransferOptions");
    assetTransferOptions = v5->_assetTransferOptions;
    v5->_assetTransferOptions = v129;

    v5->_storageGroupingPolicy = objc_msgSend_decodeIntegerForKey_(v4, v131, @"StorageGroupingPolicy");
    v132 = objc_alloc(MEMORY[0x1E695DFD8]);
    v133 = objc_opt_class();
    v134 = objc_opt_class();
    v135 = objc_opt_class();
    v137 = objc_msgSend_initWithObjects_(v132, v136, v133, v134, v135, 0);
    v139 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v138, v137, @"AssetChunkerOptions");
    assetChunkerOptions = v5->_assetChunkerOptions;
    v5->_assetChunkerOptions = v139;

    v142 = objc_msgSend_decodeBoolForKey_(v4, v141, @"ShouldReadAssetContentUsingClientProxy");
    v5->_shouldReadAssetContentUsingClientProxy = v142;
    if ((v142 & 1) == 0)
    {
      v143 = objc_opt_class();
      v145 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v144, v143, @"InMemoryContent");
      assetContent = v5->_assetContent;
      v5->_assetContent = v145;
    }

    v147 = objc_opt_class();
    v149 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v148, v147, @"BoundaryKey");
    boundaryKey = v5->_boundaryKey;
    v5->_boundaryKey = v149;

    v151 = objc_opt_class();
    v153 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v152, v151, @"RecordKey");
    recordKey = v5->_recordKey;
    v5->_recordKey = v153;

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

@end