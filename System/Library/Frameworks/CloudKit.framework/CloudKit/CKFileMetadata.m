@interface CKFileMetadata
- (CKFileMetadata)initWithCoder:(id)a3;
- (CKFileMetadata)initWithDeviceID:(id)a3 fileID:(id)a4 generationID:(id)a5 modTimeInSeconds:(id)a6 fileSize:(id)a7;
- (CKFileMetadata)initWithFileSize:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKFileMetadata

- (CKFileMetadata)initWithDeviceID:(id)a3 fileID:(id)a4 generationID:(id)a5 modTimeInSeconds:(id)a6 fileSize:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v39.receiver = self;
  v39.super_class = CKFileMetadata;
  v19 = [(CKFileMetadata *)&v39 init];
  if (v19)
  {
    v20 = objc_msgSend_copy(v12, v17, v18);
    deviceID = v19->_deviceID;
    v19->_deviceID = v20;

    v24 = objc_msgSend_copy(v13, v22, v23);
    fileID = v19->_fileID;
    v19->_fileID = v24;

    v28 = objc_msgSend_copy(v14, v26, v27);
    generationID = v19->_generationID;
    v19->_generationID = v28;

    v32 = objc_msgSend_copy(v15, v30, v31);
    modTimeInSeconds = v19->_modTimeInSeconds;
    v19->_modTimeInSeconds = v32;

    v36 = objc_msgSend_copy(v16, v34, v35);
    fileSize = v19->_fileSize;
    v19->_fileSize = v36;
  }

  return v19;
}

- (CKFileMetadata)initWithFileSize:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKFileMetadata;
  v7 = [(CKFileMetadata *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    fileSize = v7->_fileSize;
    v7->_fileSize = v8;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v25 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_deviceID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v25, v8, v7, @"DeviceID");

  v11 = objc_msgSend_fileID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v25, v12, v11, @"FileID");

  v15 = objc_msgSend_generationID(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v25, v16, v15, @"GenerationID");

  v19 = objc_msgSend_modTimeInSeconds(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(v25, v20, v19, @"ModTimeInSeconds");

  v23 = objc_msgSend_fileSize(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(v25, v24, v23, @"FileSize");

  objc_autoreleasePoolPop(v4);
}

- (CKFileMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CKFileMetadata;
  v5 = [(CKFileMetadata *)&v28 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"DeviceID");
    deviceID = v5->_deviceID;
    v5->_deviceID = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"FileID");
    fileID = v5->_fileID;
    v5->_fileID = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"GenerationID");
    generationID = v5->_generationID;
    v5->_generationID = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"ModTimeInSeconds");
    modTimeInSeconds = v5->_modTimeInSeconds;
    v5->_modTimeInSeconds = v21;

    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v23, @"FileSize");
    fileSize = v5->_fileSize;
    v5->_fileSize = v25;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end