@interface CKFileOpenInfo
- (CKAssetDownloadStagingManager)assetDownloadStagingManager;
- (CKFileOpenInfo)initWithCoder:(id)coder;
- (CKFileOpenInfo)initWithUUID:(id)d path:(id)path deviceID:(id)iD fileID:(id)fileID generationID:(id)generationID shouldReadRawEncryptedData:(BOOL)data fileHandle:(id)handle assetDownloadStagingInfo:(id)self0;
- (id)CKPropertiesDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKFileOpenInfo

- (CKFileOpenInfo)initWithUUID:(id)d path:(id)path deviceID:(id)iD fileID:(id)fileID generationID:(id)generationID shouldReadRawEncryptedData:(BOOL)data fileHandle:(id)handle assetDownloadStagingInfo:(id)self0
{
  dCopy = d;
  pathCopy = path;
  iDCopy = iD;
  fileIDCopy = fileID;
  generationIDCopy = generationID;
  handleCopy = handle;
  infoCopy = info;
  v45.receiver = self;
  v45.super_class = CKFileOpenInfo;
  v24 = [(CKFileOpenInfo *)&v45 init];
  if (v24)
  {
    v25 = objc_msgSend_copy(dCopy, v22, v23);
    UUID = v24->_UUID;
    v24->_UUID = v25;

    v29 = objc_msgSend_copy(pathCopy, v27, v28);
    path = v24->_path;
    v24->_path = v29;

    v33 = objc_msgSend_copy(iDCopy, v31, v32);
    deviceID = v24->_deviceID;
    v24->_deviceID = v33;

    v37 = objc_msgSend_copy(fileIDCopy, v35, v36);
    fileID = v24->_fileID;
    v24->_fileID = v37;

    v41 = objc_msgSend_copy(generationIDCopy, v39, v40);
    generationID = v24->_generationID;
    v24->_generationID = v41;

    v24->_shouldReadRawEncryptedData = data;
    objc_storeStrong(&v24->_fileHandle, handle);
    objc_storeStrong(&v24->_assetDownloadStagingInfo, info);
  }

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_UUID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"UUID");

  v11 = objc_msgSend_path(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"path");

  v15 = objc_msgSend_deviceID(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"deviceID");

  v19 = objc_msgSend_fileID(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"fileID");

  v23 = objc_msgSend_generationID(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"generationID");

  RawEncryptedData = objc_msgSend_shouldReadRawEncryptedData(self, v25, v26);
  objc_msgSend_encodeBool_forKey_(coderCopy, v28, RawEncryptedData, @"shouldReadRawEncryptedData");
  v31 = objc_msgSend_assetDownloadStagingInfo(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"AssetDownloadStagingInfo");

  objc_autoreleasePoolPop(v4);
}

- (CKFileOpenInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = CKFileOpenInfo;
  v5 = [(CKFileOpenInfo *)&v33 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"UUID");
    UUID = v5->_UUID;
    v5->_UUID = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"path");
    path = v5->_path;
    v5->_path = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"deviceID");
    deviceID = v5->_deviceID;
    v5->_deviceID = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v20, v19, @"fileID");
    fileID = v5->_fileID;
    v5->_fileID = v21;

    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v24, v23, @"generationID");
    generationID = v5->_generationID;
    v5->_generationID = v25;

    v5->_shouldReadRawEncryptedData = objc_msgSend_decodeBoolForKey_(coderCopy, v27, @"shouldReadRawEncryptedData");
    v28 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v29, v28, @"AssetDownloadStagingInfo");
    assetDownloadStagingInfo = v5->_assetDownloadStagingInfo;
    v5->_assetDownloadStagingInfo = v30;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, 6);
  v4 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_UUID(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"UUID=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  v13 = objc_msgSend_deviceID(self, v11, v12);

  if (v13)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_msgSend_deviceID(self, v14, v15);
    v19 = objc_msgSend_stringWithFormat_(v16, v18, @"deviceID=%@", v17);
    objc_msgSend_addObject_(v3, v20, v19);
  }

  v21 = objc_msgSend_fileID(self, v14, v15);

  if (v21)
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = objc_msgSend_fileID(self, v22, v23);
    v27 = objc_msgSend_stringWithFormat_(v24, v26, @"fileID=%@", v25);
    objc_msgSend_addObject_(v3, v28, v27);
  }

  v29 = objc_msgSend_generationID(self, v22, v23);

  if (v29)
  {
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_msgSend_generationID(self, v30, v31);
    v35 = objc_msgSend_stringWithFormat_(v32, v34, @"generationID=%@", v33);
    objc_msgSend_addObject_(v3, v36, v35);
  }

  v37 = objc_msgSend_path(self, v30, v31);

  if (v37)
  {
    v40 = MEMORY[0x1E696AEC0];
    v41 = objc_msgSend_path(self, v38, v39);
    v44 = objc_msgSend_CKSanitizedPath(v41, v42, v43);
    v46 = objc_msgSend_stringWithFormat_(v40, v45, @"path=%@", v44);
    objc_msgSend_addObject_(v3, v47, v46);
  }

  v48 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v38, 1);
  if (objc_msgSend_shouldReadRawEncryptedData(self, v49, v50))
  {
    objc_msgSend_addObject_(v48, v51, @"read-encrypted");
  }

  if (objc_msgSend_count(v48, v51, v52))
  {
    v54 = MEMORY[0x1E696AEC0];
    v55 = objc_msgSend_componentsJoinedByString_(v48, v53, @"|");
    v57 = objc_msgSend_stringWithFormat_(v54, v56, @"flags=%@", v55);
    objc_msgSend_addObject_(v3, v58, v57);
  }

  v59 = objc_msgSend_componentsJoinedByString_(v3, v53, @", ");

  return v59;
}

- (CKAssetDownloadStagingManager)assetDownloadStagingManager
{
  WeakRetained = objc_loadWeakRetained(&self->_assetDownloadStagingManager);

  return WeakRetained;
}

@end