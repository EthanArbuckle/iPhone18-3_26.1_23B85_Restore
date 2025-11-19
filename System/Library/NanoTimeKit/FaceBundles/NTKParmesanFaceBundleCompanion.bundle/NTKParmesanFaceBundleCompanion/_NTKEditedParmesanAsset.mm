@interface _NTKEditedParmesanAsset
- (BOOL)addOriginalAssetAndMaskData;
- (BOOL)isInResourceDirectory;
- (CGRect)currentCrop;
- (_NTKEditedParmesanAsset)initWithParmesanAsset:(id)a3 phAsset:(id)a4;
- (void)addUserOverride:(id)a3;
- (void)purgeOriginalAssetAndMaskData;
@end

@implementation _NTKEditedParmesanAsset

- (_NTKEditedParmesanAsset)initWithParmesanAsset:(id)a3 phAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = _NTKEditedParmesanAsset;
  v9 = [(_NTKEditedParmesanAsset *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, a3);
    objc_storeStrong(&v10->_phAsset, a4);
    phAsset = v10->_phAsset;
    if (phAsset)
    {
      v15 = sub_23BF20A44(phAsset);
    }

    else
    {
      v15 = 1;
    }

    v10->_subsampleFactor = v15;
    v16 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13);
    userOverrides = v10->_userOverrides;
    v10->_userOverrides = v16;

    fullSizeMaskData = v10->_fullSizeMaskData;
    v10->_lastEditedUserOverride = 1;
    v10->_fullSizeMaskData = 0;

    originalAsset = v10->_originalAsset;
    v10->_originalAsset = 0;
  }

  return v10;
}

- (BOOL)isInResourceDirectory
{
  v4 = objc_msgSend_asset(self, a2, v2, v3);
  v5 = v4 != 0;

  return v5;
}

- (void)addUserOverride:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_timeLayout(v4, v5, v6, v7);
  v12 = objc_msgSend_scale(v8, v9, v10, v11);

  userOverrides = self->_userOverrides;
  v16 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v14, v12, v15);
  objc_msgSend_setObject_forKeyedSubscript_(userOverrides, v17, v4, v16);

  self->_lastEditedUserOverride = v12;
}

- (CGRect)currentCrop
{
  if (objc_msgSend_count(self->_userOverrides, a2, v2, v3))
  {
    userOverrides = self->_userOverrides;
    v9 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v5, self->_lastEditedUserOverride, v7);
    v12 = objc_msgSend_objectForKeyedSubscript_(userOverrides, v10, v9, v11);
    objc_msgSend_crop(v12, v13, v14, v15);
  }

  else
  {
    asset = self->_asset;
    if (!asset)
    {
      v27 = *MEMORY[0x277CBF398];
      v28 = *(MEMORY[0x277CBF398] + 8);
      v29 = *(MEMORY[0x277CBF398] + 16);
      v30 = *(MEMORY[0x277CBF398] + 24);
      goto LABEL_6;
    }

    v9 = objc_msgSend_preferredLayout(asset, v5, v6, v7);
    v12 = objc_msgSend_originalCrop(v9, v21, v22, v23);
    objc_msgSend_cgRect(v12, v24, v25, v26);
  }

  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = v19;

LABEL_6:
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (BOOL)addOriginalAssetAndMaskData
{
  v50[1] = *MEMORY[0x277D85DE8];
  p_originalAsset = &self->_originalAsset;
  if (self->_originalAsset)
  {
    return 1;
  }

  v5 = dispatch_semaphore_create(0);
  v9 = objc_msgSend_phAsset(self, v6, v7, v8);
  v13 = objc_msgSend_localIdentifier(v9, v10, v11, v12);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_23BF20EEC;
  v48[3] = &unk_278BA6E10;
  v48[4] = self;
  v14 = v5;
  v49 = v14;
  objc_msgSend_fullSizeMaskDataForAssetIdentifier_completion_(NTKParmesanPhotoProcessor, v15, v13, v48);

  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v16 = NTKNewUniqueTeporaryResourceDirectory();
  v20 = objc_msgSend_phAsset(self, v17, v18, v19);
  v24 = objc_msgSend_localIdentifier(v20, v21, v22, v23);
  v50[0] = v24;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v50, 1);
  v42 = MEMORY[0x277D85DD0];
  v43 = 3221225472;
  v44 = sub_23BF20F48;
  v45 = &unk_278BA6E38;
  v46 = self;
  v27 = v14;
  v47 = v27;
  objc_msgSend_processAssetsWithIdentifiers_dstDir_completion_(NTKParmesanPhotoProcessor, v28, v26, v16, &v42);

  dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
  if (!self->_originalAsset)
  {
    v32 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v29, v30, v31, v42, v43, v44, v45, v46);
    objc_msgSend_removeItemAtPath_error_(v32, v33, v16, 0);

    v37 = objc_msgSend_logObject(NTKParmesanFaceBundle, v34, v35, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF7430(self, v37, v38, v39);
    }
  }

  v40 = objc_msgSend_logObject(NTKParmesanFaceBundle, v29, v30, v31, v42, v43, v44, v45, v46);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF74C0(p_originalAsset, self, v40);
  }

  v3 = *p_originalAsset != 0;
  return v3;
}

- (void)purgeOriginalAssetAndMaskData
{
  v28 = *MEMORY[0x277D85DE8];
  originalAsset = self->_originalAsset;
  if (originalAsset)
  {
    v6 = objc_msgSend_resourceDirectory(originalAsset, a2, v2, v3);
    v10 = objc_msgSend_logObject(NTKParmesanFaceBundle, v7, v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[_NTKEditedParmesanAsset purgeOriginalAssetAndMaskData]";
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_23BF0C000, v10, OS_LOG_TYPE_DEFAULT, "%s: removing temp directory at %@", buf, 0x16u);
    }

    if (v6)
    {
      v14 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v11, v12, v13);
      v23 = 0;
      objc_msgSend_removeItemAtURL_error_(v14, v15, v6, &v23);
      v16 = v23;

      if (v16)
      {
        v20 = objc_msgSend_logObject(NTKParmesanFaceBundle, v17, v18, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_23BFF7550();
        }
      }
    }

    v21 = self->_originalAsset;
    self->_originalAsset = 0;

    fullSizeMaskData = self->_fullSizeMaskData;
    self->_fullSizeMaskData = 0;
  }
}

@end