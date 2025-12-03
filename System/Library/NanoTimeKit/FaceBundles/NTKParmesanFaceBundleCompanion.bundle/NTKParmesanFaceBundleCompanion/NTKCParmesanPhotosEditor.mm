@interface NTKCParmesanPhotosEditor
- (BOOL)_assetExistsInEditor:(id)editor;
- (BOOL)_ensureUserOverrideSessionIsLoadedForPhotoAtIndex:(int64_t)index;
- (BOOL)addAssetsFromAssetList:(id)list;
- (BOOL)addAssetsFromAssetList:(id)list maxPhotosCount:(unint64_t)count;
- (BOOL)addAssetsFromUIImagePicker:(id)picker;
- (BOOL)canChangeOriginalCropOfPhotoAtIndex:(int64_t)index;
- (BOOL)savePreview:(id)preview forPhotoAtIndex:(int64_t)index;
- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)index;
- (NSArray)imageIdentifiers;
- (NTKCParmesanPhotosEditor)initWithResourceDirectory:(id)directory forDevice:(id)device;
- (id)_fetchAssetsForNewPhotos:(id)photos;
- (id)_makeLayoutForEditedAsset:(id)asset userOverride:(id)override;
- (id)replaceAssetAtIndex:(int64_t)index withAsset:(id)asset;
- (void)_copyOrTranscodeAssetWithIds:(id)ids to:(id)to shouldPurgeOriginalData:(BOOL)data progress:(id)progress completion:(id)completion;
- (void)_generateOverrideLayersForEditedAsset:(id)asset dstDir:(id)dir;
- (void)_readResourceDirectoryPhotosFrom:(id)from;
- (void)_reinitializeWithImageList:(id)list andResourceDirectory:(id)directory;
- (void)deletePhotoAtIndex:(int64_t)index;
- (void)finalizeWithProgress:(id)progress completion:(id)completion;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion;
- (void)movePhotoAtIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)previewOfLibraryPhotoAtIndex:(int64_t)index completion:(id)completion;
- (void)purgeResourcesForPreviewAtIndex:(int64_t)index;
- (void)resetCropOfPhotoAtIndex:(int64_t)index completion:(id)completion;
- (void)setImageOrder:(id)order;
- (void)thumbnailInfoForPhotoAtIndex:(int64_t)index completion:(id)completion;
@end

@implementation NTKCParmesanPhotosEditor

- (NTKCParmesanPhotosEditor)initWithResourceDirectory:(id)directory forDevice:(id)device
{
  v23.receiver = self;
  v23.super_class = NTKCParmesanPhotosEditor;
  v4 = [(NTKCompanionResourceDirectoryEditor *)&v23 initWithResourceDirectory:directory forDevice:device];
  if (v4)
  {
    v5 = objc_opt_new();
    assets = v4->_assets;
    v4->_assets = v5;

    v7 = objc_opt_new();
    orderList = v4->_orderList;
    v4->_orderList = v7;

    v9 = objc_opt_new();
    scaledImageCache = v4->_scaledImageCache;
    v4->_scaledImageCache = v9;

    userOverrideSession = v4->_userOverrideSession;
    v4->_userOverrideSession = 0;

    v4->_userOverrideSessionIndex = -1;
    v4->_galleryPreviewIsValid = 0;
    v15 = objc_msgSend_resourceDirectory(v4, v12, v13, v14);

    if (v15)
    {
      v19 = objc_msgSend_resourceDirectory(v4, v16, v17, v18);
      objc_msgSend__readResourceDirectoryPhotosFrom_(v4, v20, v19, v21);
    }

    objc_msgSend_setState_(v4, v16, 1, v18);
  }

  return v4;
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v8 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = objc_opt_class();
    v9 = v37;
    _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_DEFAULT, "generateGalleryPreviewResourceDirectoryWithCompletion: generating preview for %@", buf, 0xCu);
  }

  v13 = objc_msgSend_state(self, v10, v11, v12);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF21DFC;
  aBlock[3] = &unk_278BA6E88;
  v35 = v13;
  aBlock[4] = self;
  v14 = completionCopy;
  v34 = v14;
  v15 = _Block_copy(aBlock);
  if (objc_msgSend_state(self, v16, v17, v18) && objc_msgSend_state(self, v19, v20, v21) < 3)
  {
    if (objc_msgSend_state(self, v22, v23, v24) == 1)
    {
      v28 = objc_msgSend_resourceDirectory(self, v25, v26, v27);
    }

    else
    {
      if (!self->_galleryPreviewIsValid)
      {
        objc_msgSend_setState_(self, v25, 3, v27);
        v30 = dispatch_get_global_queue(2, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23BF21F8C;
        block[3] = &unk_278BA6EF8;
        block[4] = self;
        v32 = v15;
        dispatch_async(v30, block);

        goto LABEL_12;
      }

      v28 = objc_msgSend_galleryPreviewResourceDirectory(self, v25, v26, v27);
    }

    v29 = v28;
    (*(v15 + 2))(v15, 1, v28);
  }

  else
  {
    (*(v15 + 2))(v15, 0, 0);
  }

LABEL_12:
}

- (void)finalizeWithProgress:(id)progress completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  v11 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BF0C000, v11, OS_LOG_TYPE_DEFAULT, "finalizeWithProgress:completion: finalizing NTKParmesanPhotosEditor", buf, 2u);
  }

  if (objc_msgSend_state(self, v12, v13, v14) && objc_msgSend_state(self, v15, v16, v17) < 3)
  {
    if (objc_msgSend_state(self, v18, v19, v20) == 1)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = sub_23BF22460;
      v32[3] = &unk_278BA6EF8;
      v32[4] = self;
      v33 = completionCopy;
      dispatch_async(MEMORY[0x277D85CD0], v32);
      v21 = v33;
    }

    else
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_23BF224BC;
      aBlock[3] = &unk_278BA6F20;
      aBlock[4] = self;
      v31 = completionCopy;
      v22 = _Block_copy(aBlock);
      objc_msgSend_setState_(self, v23, 4, v24);
      v25 = dispatch_get_global_queue(2, 0);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_23BF2260C;
      v27[3] = &unk_278BA6FC0;
      v27[4] = self;
      v28 = v22;
      v29 = progressCopy;
      v26 = v22;
      dispatch_async(v25, v27);

      v21 = v31;
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BF2244C;
    block[3] = &unk_278BA6B68;
    v35 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v21 = v35;
  }
}

- (NSArray)imageIdentifiers
{
  v4 = objc_msgSend_copy(self->_orderList, a2, v2, v3);

  return v4;
}

- (BOOL)addAssetsFromUIImagePicker:(id)picker
{
  selfCopy = self;
  v5 = objc_msgSend__fetchAssetsForNewPhotos_(self, a2, picker, v3);
  v6 = NTKMaxParmesanPhotos();
  LOBYTE(selfCopy) = objc_msgSend_addAssetsFromAssetList_maxPhotosCount_(selfCopy, v7, v5, v6);

  return selfCopy;
}

- (BOOL)addAssetsFromAssetList:(id)list
{
  listCopy = list;
  v5 = NTKMaxParmesanPhotos();
  LOBYTE(self) = objc_msgSend_addAssetsFromAssetList_maxPhotosCount_(self, v6, listCopy, v5);

  return self;
}

- (BOOL)addAssetsFromAssetList:(id)list maxPhotosCount:(unint64_t)count
{
  v120 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (!objc_msgSend_state(self, v7, v8, v9) || objc_msgSend_state(self, v10, v11, v12) > 2 || (v16 = objc_msgSend_photosCount(self, v13, v14, v15), objc_msgSend_count(listCopy, v17, v18, v19) + v16 > count))
  {
    v23 = 0;
    goto LABEL_5;
  }

  v109 = objc_msgSend_firstObject(self->_orderList, v20, v21, v22);
  v110 = listCopy;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = listCopy;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v113, v119, 16);
  if (!v26)
  {
    goto LABEL_28;
  }

  v30 = v26;
  v112 = *v114;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v114 != v112)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v113 + 1) + 8 * i);
      v33 = objc_msgSend__key(v32, v27, v28, v29);
      v34 = [_NTKEditedParmesanAsset alloc];
      v36 = objc_msgSend_initWithParmesanAsset_phAsset_(v34, v35, 0, v32);
      v39 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v37, v33, v38);
      v43 = v39;
      if (v39)
      {
        if (objc_msgSend_isInResourceDirectory(v39, v40, v41, v42))
        {
          v47 = objc_msgSend_asset(v43, v44, v45, v46);
          v51 = objc_msgSend_modificationDate(v47, v48, v49, v50);
          v55 = objc_msgSend_ntk_modificationDate(v32, v52, v53, v54);
          objc_msgSend_timeIntervalSince1970(v51, v56, v57, v58);
          v60 = v59;
          objc_msgSend_timeIntervalSince1970(v55, v61, v62, v63);
          v65 = vabdd_f64(v60, v64);

          v69 = objc_msgSend_logObject(NTKParmesanFaceBundle, v66, v67, v68);
          v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);
          if (v65 > 2.0)
          {
            if (v70)
            {
              v74 = objc_msgSend_asset(v43, v71, v72, v73);
              v78 = objc_msgSend_localIdentifier(v74, v75, v76, v77);
              *buf = 138412290;
              v118 = v78;
              _os_log_impl(&dword_23BF0C000, v69, OS_LOG_TYPE_DEFAULT, "addAssetsFromAssetList: replacing existing asset %@ because it was modified", buf, 0xCu);
            }

            objc_msgSend_setObject_forKeyedSubscript_(self->_assets, v79, v36, v33);
            goto LABEL_26;
          }

          if (v70)
          {
            v95 = objc_msgSend_asset(v43, v71, v72, v73);
            v99 = objc_msgSend_localIdentifier(v95, v102, v103, v104);
            *buf = 138412290;
            v118 = v99;
            v100 = v69;
            v101 = "addAssetsFromAssetList: not adding existing asset %@";
LABEL_24:
            _os_log_impl(&dword_23BF0C000, v100, OS_LOG_TYPE_DEFAULT, v101, buf, 0xCu);
          }
        }

        else
        {
          v69 = objc_msgSend_logObject(NTKParmesanFaceBundle, v44, v45, v46);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v95 = objc_msgSend_asset(v36, v92, v93, v94);
            v99 = objc_msgSend_localIdentifier(v95, v96, v97, v98);
            *buf = 138412290;
            v118 = v99;
            v100 = v69;
            v101 = "addAssetsFromAssetList: not adding new asset again %@";
            goto LABEL_24;
          }
        }

        goto LABEL_26;
      }

      v80 = objc_msgSend_logObject(NTKParmesanFaceBundle, v40, v41, v42);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v84 = objc_msgSend_phAsset(v36, v81, v82, v83);
        v88 = objc_msgSend_localIdentifier(v84, v85, v86, v87);
        *buf = 138412290;
        v118 = v88;
        _os_log_impl(&dword_23BF0C000, v80, OS_LOG_TYPE_DEFAULT, "addAssetsFromAssetList: adding new asset %@", buf, 0xCu);
      }

      objc_msgSend_setObject_forKeyedSubscript_(self->_assets, v89, v36, v33);
      objc_msgSend_addObject_(self->_orderList, v90, v33, v91);
LABEL_26:
    }

    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v113, v119, 16);
  }

  while (v30);
LABEL_28:

  if (self->_galleryPreviewIsValid)
  {
    v108 = objc_msgSend_firstObject(self->_orderList, v105, v106, v107);
    self->_galleryPreviewIsValid = NTKEqualStrings();
  }

  objc_msgSend_setState_(self, v105, 2, v107);

  v23 = 1;
  listCopy = v110;
LABEL_5:

  return v23;
}

- (void)deletePhotoAtIndex:(int64_t)index
{
  v60 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_state(self, a2, index, v3))
  {
    return;
  }

  v9 = objc_msgSend_state(self, v6, v7, v8);
  if (index < 0 || v9 > 2 || objc_msgSend_count(self->_orderList, v10, v11, v12) <= index)
  {
    return;
  }

  v15 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v13, index, v14);
  objc_msgSend_removeObject_(self->_orderList, v16, v15, v17);
  v20 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v18, v15, v19);
  if (objc_msgSend_isInResourceDirectory(v20, v21, v22, v23))
  {
    v27 = objc_msgSend_logObject(NTKParmesanFaceBundle, v24, v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_msgSend_asset(v20, v28, v29, v30);
      v35 = objc_msgSend_localIdentifier(v31, v32, v33, v34);
      *v59 = 138412546;
      *&v59[4] = v35;
      *&v59[12] = 2048;
      *&v59[14] = index;
      v36 = "deletePhotoAtIndex: deleting existing photo %@ at index %ld";
LABEL_10:
      _os_log_impl(&dword_23BF0C000, v27, OS_LOG_TYPE_DEFAULT, v36, v59, 0x16u);
    }
  }

  else
  {
    scaledImageCache = self->_scaledImageCache;
    v38 = objc_msgSend_asset(v20, v24, v25, v26);
    v42 = objc_msgSend_localIdentifier(v38, v39, v40, v41);
    objc_msgSend_removeObjectForKey_(scaledImageCache, v43, v42, v44);

    v27 = objc_msgSend_logObject(NTKParmesanFaceBundle, v45, v46, v47);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_msgSend_asset(v20, v48, v49, v50);
      v35 = objc_msgSend_localIdentifier(v31, v51, v52, v53);
      *v59 = 138412546;
      *&v59[4] = v35;
      *&v59[12] = 2048;
      *&v59[14] = index;
      v36 = "deletePhotoAtIndex: deleting new asset id %@ at index %ld";
      goto LABEL_10;
    }
  }

  objc_msgSend_removeObjectForKey_(self->_assets, v54, v15, v55);
  if (self->_userOverrideSessionIndex == index)
  {
    self->_userOverrideSessionIndex = -1;
    userOverrideSession = self->_userOverrideSession;
    self->_userOverrideSession = 0;
  }

  if (self->_galleryPreviewIsValid)
  {
    self->_galleryPreviewIsValid = index != 0;
  }

  objc_msgSend_setState_(self, v56, 2, v57, *v59, *&v59[16]);
}

- (void)movePhotoAtIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  v37 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_state(self, a2, index, toIndex))
  {
    v10 = objc_msgSend_state(self, v7, v8, v9);
    if ((index & 0x8000000000000000) == 0 && v10 <= 2)
    {
      v14 = objc_msgSend_count(self->_orderList, v11, v12, v13);
      if ((toIndex & 0x8000000000000000) == 0 && v14 > index && objc_msgSend_count(self->_orderList, v15, v16, v17) > toIndex)
      {
        v20 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v18, index, v19);
        v24 = objc_msgSend_logObject(NTKParmesanFaceBundle, v21, v22, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 134218240;
          indexCopy = index;
          v35 = 2048;
          toIndexCopy = toIndex;
          _os_log_impl(&dword_23BF0C000, v24, OS_LOG_TYPE_DEFAULT, "movePhotoAtIndex: moving photo from index %ld to index %ld", &v33, 0x16u);
        }

        objc_msgSend_removeObjectAtIndex_(self->_orderList, v25, index, v26);
        objc_msgSend_insertObject_atIndex_(self->_orderList, v27, v20, toIndex);
        if (self->_userOverrideSessionIndex == index)
        {
          self->_userOverrideSessionIndex = toIndex;
        }

        if (self->_galleryPreviewIsValid)
        {
          if (index)
          {
            v30 = toIndex == 0;
          }

          else
          {
            v30 = 1;
          }

          v32 = !v30 || index == toIndex;
          self->_galleryPreviewIsValid = v32;
        }

        objc_msgSend_setState_(self, v28, 2, v29);
      }
    }
  }
}

- (BOOL)_assetExistsInEditor:(id)editor
{
  v5 = objc_msgSend__key(editor, a2, editor, v3);
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v6, v5, v7);
  LOBYTE(self) = v8 != 0;

  return self;
}

- (id)replaceAssetAtIndex:(int64_t)index withAsset:(id)asset
{
  v34[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (!objc_msgSend_state(self, v7, v8, v9) || objc_msgSend_state(self, v10, v11, v12) >= 3)
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v10, @"com.apple.parmesan.editor", 1, 0);
    v22 = LABEL_13:;
    goto LABEL_14;
  }

  if (index < 0 || objc_msgSend_count(self->_orderList, v10, v13, v14) <= index)
  {
    v20 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v13, v14);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF77AC(index, v20);
    }

    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v21, @"com.apple.parmesan.editor", 2, 0);
    goto LABEL_13;
  }

  if (objc_msgSend__assetExistsInEditor_(self, v10, assetCopy, v14))
  {
    v18 = objc_msgSend_logObject(NTKParmesanFaceBundle, v15, v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&dword_23BF0C000, v18, OS_LOG_TYPE_DEFAULT, "Cannot replace an asset with an existing asset, ignoring…", v33, 2u);
    }

    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v19, @"com.apple.parmesan.editor", 3, 0);
    goto LABEL_13;
  }

  objc_msgSend_deletePhotoAtIndex_(self, v15, index, v17);
  v34[0] = assetCopy;
  v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v34, 1);
  objc_msgSend_addAssetsFromAssetList_(self, v26, v25, v27);

  v31 = objc_msgSend_photosCount(self, v28, v29, v30);
  objc_msgSend_movePhotoAtIndex_toIndex_(self, v32, v31 - 1, index);
  v22 = 0;
LABEL_14:

  return v22;
}

- (void)setImageOrder:(id)order
{
  orderCopy = order;
  if (objc_msgSend_state(self, v4, v5, v6) && objc_msgSend_state(self, v7, v8, v9) <= 2)
  {
    v13 = objc_msgSend_firstObject(self->_orderList, v10, v11, v12);
    v17 = objc_msgSend_firstObject(orderCopy, v14, v15, v16);
    v20 = v17;
    v21 = (v13 | v17) == 0;
    if (v13)
    {
      v22 = v17 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      isEqualToString = 0;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v13, v18, v17, v19);
    }

    if (self->_galleryPreviewIsValid)
    {
      self->_galleryPreviewIsValid = (v21 | isEqualToString) & 1;
    }

    if ((objc_msgSend_isEqualToArray_(self->_orderList, v18, orderCopy, v19) & 1) == 0)
    {
      v27 = objc_msgSend_mutableCopy(orderCopy, v24, v25, v26);
      orderList = self->_orderList;
      self->_orderList = v27;

      objc_msgSend_setState_(self, v29, 2, v30);
    }
  }
}

- (void)thumbnailInfoForPhotoAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF239B8;
  aBlock[3] = &unk_278BA7010;
  v7 = completionCopy;
  v88 = v7;
  v11 = _Block_copy(aBlock);
  if (index < 0 || objc_msgSend_count(self->_orderList, v8, v9, v10) <= index)
  {
    (*(v11 + 2))(v11, 0, 0, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  }

  else
  {
    v14 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v12, index, v13);
    v17 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v15, v14, v16);
    v18 = MEMORY[0x277CCABB0];
    EditedUserOverride = objc_msgSend_lastEditedUserOverride(v17, v19, v20, v21);
    v25 = objc_msgSend_numberWithInteger_(v18, v23, EditedUserOverride, v24);
    v29 = objc_msgSend_userOverrides(v17, v26, v27, v28);
    v32 = objc_msgSend_objectForKey_(v29, v30, v25, v31);

    if (v32)
    {
      v36 = objc_opt_class();
      v40 = objc_msgSend_phAsset(v17, v37, v38, v39);
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = sub_23BF23B5C;
      v84[3] = &unk_278BA7058;
      v85 = v32;
      v86 = v11;
      objc_msgSend__imageDataForAsset_completion_(v36, v41, v40, v84);

      v42 = v85;
    }

    else
    {
      v43 = objc_msgSend_asset(v17, v33, v34, v35);
      v47 = v43;
      if (v43)
      {
        v48 = v43;
      }

      else
      {
        v48 = objc_msgSend_originalAsset(v17, v44, v45, v46);
      }

      v42 = v48;

      v52 = objc_msgSend_preferredLayout(v42, v49, v50, v51);
      v56 = objc_msgSend_timeLayout(v52, v53, v54, v55);

      if (v42)
      {
        v60 = objc_msgSend_preferredLayoutImageURL(v42, v57, v58, v59);
        v61 = NTKPhotosImageForURL();

        sub_23BF23AD8(v62, v61);
        (*(v11 + 2))(v11, v61, v56);
      }

      else
      {
        v77 = v56;
        v78 = v14;
        scaledImageCache = self->_scaledImageCache;
        v64 = objc_msgSend_asset(v17, v57, v58, v59);
        v68 = objc_msgSend_localIdentifier(v64, v65, v66, v67);
        v61 = objc_msgSend_objectForKey_(scaledImageCache, v69, v68, v70);

        if (v61)
        {
          sub_23BF23AD8(v71, v61);
          v56 = v77;
          (*(v11 + 2))(v11, v61, v77);
        }

        else
        {
          v75 = objc_msgSend_phAsset(v17, v72, v73, v74);
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = sub_23BF23C28;
          v79[3] = &unk_278BA7080;
          v79[4] = self;
          v80 = v17;
          v82 = v11;
          v56 = v77;
          v81 = v77;
          v83 = &unk_284EBA608;
          objc_msgSend__imageForAsset_forSize_completion_(NTKCParmesanPhotosEditor, v76, v75, v79, *MEMORY[0x277D3B3C0], *(MEMORY[0x277D3B3C0] + 8));
        }

        v14 = v78;
      }
    }
  }
}

- (BOOL)canChangeOriginalCropOfPhotoAtIndex:(int64_t)index
{
  if (index < 0 || objc_msgSend_count(self->_orderList, a2, index, v3) <= index)
  {
    return 0;
  }

  v8 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v6, index, v7);
  v11 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v9, v8, v10);
  v15 = objc_msgSend_phAsset(v11, v12, v13, v14);
  v16 = v15 != 0;

  return v16;
}

- (void)previewOfLibraryPhotoAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF23E48;
  block[3] = &unk_278BA70A8;
  v10 = completionCopy;
  indexCopy = index;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(v7, block);
}

- (void)resetCropOfPhotoAtIndex:(int64_t)index completion:(id)completion
{
  completionCopy = completion;
  v7 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF2424C;
  block[3] = &unk_278BA70A8;
  v10 = completionCopy;
  indexCopy = index;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(v7, block);
}

- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)index
{
  v4 = 1.0;
  if (index < 0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 1.0;
    if (objc_msgSend_count(self->_orderList, a2, index, v3) > index)
    {
      v10 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v7, index, v8);
      v13 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v11, v10, v12);
      v17 = objc_msgSend_phAsset(v13, v14, v15, v16);

      v20 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v18, v10, v19);
      v24 = objc_msgSend_subsampleFactor(v20, v21, v22, v23);

      if (v17)
      {
        v28 = objc_msgSend_pixelWidth(v17, v25, v26, v27);
        v32 = objc_msgSend_pixelHeight(v17, v29, v30, v31);
        if (*MEMORY[0x277D3B3C0] * v24 / v28 <= 1.0)
        {
          v9 = *MEMORY[0x277D3B3C0] * v24 / v28;
        }

        else
        {
          v9 = 1.0;
        }

        if (*(MEMORY[0x277D3B3C0] + 8) * v24 / v32 <= 1.0)
        {
          v4 = *(MEMORY[0x277D3B3C0] + 8) * v24 / v32;
        }

        else
        {
          v4 = 1.0;
        }
      }
    }
  }

  v33 = v9;
  v34 = v4;
  result.height = v34;
  result.width = v33;
  return result;
}

- (BOOL)savePreview:(id)preview forPhotoAtIndex:(int64_t)index
{
  v134 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  v10 = objc_msgSend_logObject(NTKParmesanFaceBundle, v7, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v133.a) = 134217984;
    *(&v133.a + 4) = index;
    _os_log_impl(&dword_23BF0C000, v10, OS_LOG_TYPE_DEFAULT, "savePreview:%ld", &v133, 0xCu);
  }

  if (!objc_msgSend_state(self, v11, v12, v13))
  {
    goto LABEL_19;
  }

  v17 = objc_msgSend_state(self, v14, v15, v16);
  v21 = 0;
  if (index < 0 || v17 > 2)
  {
    goto LABEL_20;
  }

  if (objc_msgSend_count(self->_orderList, v18, v19, v20) <= index || !objc_msgSend_canChangeOriginalCropOfPhotoAtIndex_(self, v22, index, v23))
  {
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v27 = objc_msgSend_logObject(NTKParmesanFaceBundle, v24, v25, v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF78C8();
  }

  v30 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v28, index, v29);
  v33 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v31, v30, v32);
  v37 = objc_msgSend_crop(previewCopy, v34, v35, v36);
  objc_msgSend_cgRect(v37, v38, v39, v40);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v52 = objc_msgSend_subsampleFactor(v33, v49, v50, v51);
  v56 = objc_msgSend_subsampleFactor(v33, v53, v54, v55);
  CGAffineTransformMakeScale(&v133, v52, v56);
  v135.origin.x = v42;
  v135.origin.y = v44;
  v135.size.width = v46;
  v135.size.height = v48;
  v136 = CGRectApplyAffineTransform(v135, &v133);
  x = v136.origin.x;
  y = v136.origin.y;
  width = v136.size.width;
  height = v136.size.height;

  v64 = objc_msgSend_phAsset(v33, v61, v62, v63);
  v68 = objc_msgSend_pixelWidth(v64, v65, v66, v67);
  v72 = objc_msgSend_phAsset(v33, v69, v70, v71);
  v76 = objc_msgSend_pixelHeight(v72, v73, v74, v75);

  v80 = v68 - width;
  if (x < v68 - width)
  {
    v80 = x;
  }

  v81 = fmax(v80, 0.0);
  v82 = v76 - height;
  if (y < v76 - height)
  {
    v82 = y;
  }

  v83 = fmax(v82, 0.0);
  v84 = objc_msgSend_currentOverride(self->_userOverrideSession, v77, v78, v79);
  v88 = objc_msgSend_timeLayout(v84, v85, v86, v87);
  v92 = objc_msgSend_timeLayout(previewCopy, v89, v90, v91);

  objc_msgSend_crop(v84, v93, v94, v95);
  if (CLKRectEqualsRect())
  {
    v98 = v88 == v92;
  }

  else
  {
    v98 = 0;
  }

  if (v98)
  {
    v128 = 1;
  }

  else
  {
    v99 = objc_alloc_init(NTKParmesanLayoutUserOverride);
    objc_msgSend_setCrop_(v99, v100, v101, v102, v81, v83, width, height);
    v106 = objc_msgSend_timeLayout(previewCopy, v103, v104, v105);
    objc_msgSend_setTimeLayout_(v99, v107, v106, v108);

    v112 = objc_msgSend_useDepthEffect(previewCopy, v109, v110, v111);
    objc_msgSend_setUseDepthEffect_(v99, v113, v112, v114);
    objc_msgSend_addUserOverride_(v33, v115, v99, v116);
    scaledImageCache = self->_scaledImageCache;
    v121 = objc_msgSend_asset(v33, v118, v119, v120);
    v125 = objc_msgSend_localIdentifier(v121, v122, v123, v124);
    objc_msgSend_removeObjectForKey_(scaledImageCache, v126, v125, v127);

    v128 = v99 == 0;
  }

  objc_msgSend_purgeResourcesForPreviewAtIndex_(self, v96, index, v97);
  if (self->_galleryPreviewIsValid)
  {
    if (index)
    {
      v132 = 1;
    }

    else
    {
      v132 = v128;
    }

    self->_galleryPreviewIsValid = v132;
  }

  objc_msgSend_setState_(self, v130, 2, v131);

  v21 = 1;
LABEL_20:

  return v21;
}

- (void)purgeResourcesForPreviewAtIndex:(int64_t)index
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, index, v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    indexCopy = index;
    _os_log_impl(&dword_23BF0C000, v6, OS_LOG_TYPE_DEFAULT, "purgeResourcesForPreviewAtIndex: %ld", &v8, 0xCu);
  }

  if (self->_userOverrideSessionIndex == index)
  {
    self->_userOverrideSessionIndex = -1;
    userOverrideSession = self->_userOverrideSession;
    self->_userOverrideSession = 0;
  }
}

- (void)_readResourceDirectoryPhotosFrom:(id)from
{
  v97 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v81 = objc_opt_new();
  v79 = fromCopy;
  objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v5, fromCopy, v6);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v93 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v90, v96, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v91;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v91 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v90 + 1) + 8 * i);
        v16 = objc_msgSend__key(v15, v9, v10, v11);
        v17 = [_NTKEditedParmesanAsset alloc];
        v19 = objc_msgSend_initWithParmesanAsset_phAsset_(v17, v18, v15, 0);
        v23 = objc_msgSend_localIdentifier(v15, v20, v21, v22);

        if (v23)
        {
          v27 = objc_msgSend_localIdentifier(v15, v24, v25, v26);
          objc_msgSend_addObject_(v81, v28, v27, v29);
        }

        objc_msgSend_setObject_forKeyedSubscript_(self->_assets, v24, v19, v16);
        objc_msgSend_addObject_(self->_orderList, v30, v16, v31);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v90, v96, 16);
    }

    while (v12);
  }

  v32 = NTKPHAssetsForLocalIdentifiers();
  v33 = objc_alloc(MEMORY[0x277CBEB38]);
  v37 = objc_msgSend_count(v32, v34, v35, v36);
  v40 = objc_msgSend_initWithCapacity_(v33, v38, v37, v39);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v41 = v32;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v86, v95, 16);
  if (v43)
  {
    v47 = v43;
    v48 = *v87;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v87 != v48)
        {
          objc_enumerationMutation(v41);
        }

        v50 = *(*(&v86 + 1) + 8 * j);
        v51 = objc_msgSend_localIdentifier(v50, v44, v45, v46);
        objc_msgSend_setObject_forKeyedSubscript_(v40, v52, v50, v51);
      }

      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v44, &v86, v95, 16);
    }

    while (v47);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v56 = objc_msgSend_allValues(self->_assets, v53, v54, v55);
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v82, v94, 16);
  if (v58)
  {
    v62 = v58;
    v63 = *v83;
    do
    {
      for (k = 0; k != v62; ++k)
      {
        if (*v83 != v63)
        {
          objc_enumerationMutation(v56);
        }

        v65 = *(*(&v82 + 1) + 8 * k);
        v66 = objc_msgSend_asset(v65, v59, v60, v61);
        v70 = objc_msgSend_localIdentifier(v66, v67, v68, v69);

        if (v70)
        {
          v73 = objc_msgSend_objectForKeyedSubscript_(v40, v71, v70, v72);
          objc_msgSend_setPhAsset_(v65, v74, v73, v75);
          v76 = sub_23BF20A44(v73);
          objc_msgSend_setSubsampleFactor_(v65, v77, v76, v78);
        }
      }

      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v59, &v82, v94, 16);
    }

    while (v62);
  }
}

- (id)_fetchAssetsForNewPhotos:(id)photos
{
  v43 = *MEMORY[0x277D85DE8];
  photosCopy = photos;
  v4 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = photosCopy;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v38, v42, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v39;
    v12 = *MEMORY[0x277D76A88];
    do
    {
      v13 = 0;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v14 = objc_msgSend_objectForKeyedSubscript_(*(*(&v38 + 1) + 8 * v13), v8, v12, v9, v38);
        v18 = v14;
        if (v14)
        {
          v19 = objc_msgSend_localIdentifier(v14, v15, v16, v17);
          objc_msgSend_addObject_(v4, v20, v19, v21);
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v38, v42, 16);
    }

    while (v10);
  }

  v22 = NTKPHAssetsForLocalIdentifiers();
  v26 = objc_msgSend_count(v22, v23, v24, v25);
  if (v26 != objc_msgSend_count(v4, v27, v28, v29))
  {
    v33 = objc_msgSend_logObject(NTKParmesanFaceBundle, v30, v31, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF793C(v22, v4, v33, v34);
    }
  }

  if (objc_msgSend_count(v22, v30, v31, v32, v38))
  {
    v35 = v22;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;

  return v35;
}

- (void)_copyOrTranscodeAssetWithIds:(id)ids to:(id)to shouldPurgeOriginalData:(BOOL)data progress:(id)progress completion:(id)completion
{
  idsCopy = ids;
  toCopy = to;
  progressCopy = progress;
  completionCopy = completion;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_23BF20830;
  v35 = sub_23BF20840;
  v36 = objc_opt_new();
  v19 = objc_msgSend_logObject(NTKParmesanFaceBundle, v16, v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF79DC();
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_23BF254E4;
  v25[3] = &unk_278BA70D0;
  v25[4] = self;
  v20 = toCopy;
  v26 = v20;
  v21 = idsCopy;
  v27 = v21;
  v22 = progressCopy;
  dataCopy = data;
  v28 = v22;
  v29 = &v31;
  objc_msgSend_enumerateObjectsUsingBlock_(v21, v23, v25, v24);
  v22[2](v22, 1.0);
  completionCopy[2](completionCopy, v32[5]);

  _Block_object_dispose(&v31, 8);
}

- (void)_reinitializeWithImageList:(id)list andResourceDirectory:(id)directory
{
  v43 = *MEMORY[0x277D85DE8];
  listCopy = list;
  directoryCopy = directory;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = listCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v38, v42, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v39;
    do
    {
      v14 = 0;
      do
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = objc_msgSend_decodeFromDictionary_inResourceDirectory_(NTKParmesanAsset, v11, *(*(&v38 + 1) + 8 * v14), directoryCopy);
        v19 = objc_msgSend__key(v15, v16, v17, v18);
        v22 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v20, v19, v21);
        v26 = objc_msgSend_phAsset(v22, v23, v24, v25);

        v27 = [_NTKEditedParmesanAsset alloc];
        v29 = objc_msgSend_initWithParmesanAsset_phAsset_(v27, v28, v15, v26);
        objc_msgSend_setObject_forKeyedSubscript_(v7, v30, v29, v19);
        objc_msgSend_addObject_(v8, v31, v19, v32);

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v38, v42, 16);
    }

    while (v12);
  }

  orderList = self->_orderList;
  self->_orderList = v8;
  v34 = v8;

  assets = self->_assets;
  self->_assets = v7;
}

- (BOOL)_ensureUserOverrideSessionIsLoadedForPhotoAtIndex:(int64_t)index
{
  if (index < 0)
  {
    return 0;
  }

  if (objc_msgSend_count(self->_orderList, a2, index, v3) > index)
  {
    if (self->_userOverrideSession && self->_userOverrideSessionIndex == index)
    {
      return 1;
    }

    v9 = objc_msgSend_objectAtIndexedSubscript_(self->_orderList, v6, index, v7);
    v12 = objc_msgSend_objectForKeyedSubscript_(self->_assets, v10, v9, v11);
    v16 = objc_msgSend_phAsset(v12, v13, v14, v15);

    if (v16)
    {
      v17 = [_NTKUserOverrideSession alloc];
      v20 = objc_msgSend_initWithEditedAsset_(v17, v18, v12, v19);
      userOverrideSession = self->_userOverrideSession;
      self->_userOverrideSession = v20;

      self->_userOverrideSessionIndex = index;
      return self->_userOverrideSession != 0;
    }
  }

  return 0;
}

- (void)_generateOverrideLayersForEditedAsset:(id)asset dstDir:(id)dir
{
  v107 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  dirCopy = dir;
  v9 = objc_msgSend_userOverrides(assetCopy, v6, v7, v8);
  v13 = objc_msgSend_count(v9, v10, v11, v12);

  if (v13)
  {
    v17 = objc_msgSend_phAsset(assetCopy, v14, v15, v16);
    v99 = objc_msgSend_ntk_getFullSizePHAssetData(v17, v18, v19, v20);
    sub_23BF2AF68(v99);
    v24 = objc_msgSend_fullSizeMaskData(assetCopy, v21, v22, v23);

    if (v24)
    {
      v28 = objc_msgSend_fullSizeMaskData(assetCopy, v25, v26, v27);
      image = sub_23BF2B03C(v28);
    }

    else
    {
      image = 0;
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v95 = assetCopy;
    v29 = objc_msgSend_userOverrides(assetCopy, v25, v26, v27);
    v33 = objc_msgSend_allValues(v29, v30, v31, v32);

    obj = v33;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v101, v106, 16);
    if (v35)
    {
      v39 = v35;
      v97 = *v102;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v102 != v97)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v101 + 1) + 8 * i);
          v42 = objc_msgSend_logObject(NTKParmesanFaceBundle, v36, v37, v38);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v46 = objc_msgSend_localIdentifier(v17, v43, v44, v45);
            LODWORD(buf.a) = 136315906;
            *(&buf.a + 4) = "[NTKCParmesanPhotosEditor _generateOverrideLayersForEditedAsset:dstDir:]";
            WORD2(buf.b) = 2112;
            *(&buf.b + 6) = v41;
            HIWORD(buf.c) = 2112;
            *&buf.d = v46;
            LOWORD(buf.tx) = 2112;
            *(&buf.tx + 2) = dirCopy;
            _os_log_impl(&dword_23BF0C000, v42, OS_LOG_TYPE_DEFAULT, "%s: Generating user override layout for %@, asset %@, dstDir %@", &buf, 0x2Au);
          }

          objc_msgSend_crop(v41, v47, v48, v49);
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v61 = 1.0 / objc_msgSend_pixelWidth(v17, v58, v59, v60);
          v65 = objc_msgSend_pixelHeight(v17, v62, v63, v64);
          CGAffineTransformMakeScale(&buf, v61, 1.0 / v65);
          v108.origin.x = v51;
          v108.origin.y = v53;
          v108.size.width = v55;
          v108.size.height = v57;
          CGRectApplyAffineTransform(v108, &buf);
          objc_msgSend_useDepthEffect(v41, v66, v67, v68);
          v72 = objc_msgSend_timeLayout(v41, v69, v70, v71);
          objc_msgSend_pfcTimePosition(v72, v73, v74, v75);
          v79 = objc_msgSend_timeLayout(v41, v76, v77, v78);
          objc_msgSend_normalizedTimeRectWithoutComplications(v79, v80, v81, v82);
          v85 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v83, dirCopy, v84);
          v86 = MEMORY[0x277CD97A8];
          v90 = objc_msgSend_localIdentifier(v17, v87, v88, v89);
          v93 = objc_msgSend_uuidFromLocalIdentifier_(v86, v91, v90, v92);
          v94 = PFLGenerateWatchLayout();
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v101, v106, 16);
      }

      while (v39);
    }

    CGImageRelease(image);
    assetCopy = v95;
  }
}

- (id)_makeLayoutForEditedAsset:(id)asset userOverride:(id)override
{
  overrideCopy = override;
  v6 = MEMORY[0x277CD97A8];
  v10 = objc_msgSend_phAsset(asset, v7, v8, v9);
  v14 = objc_msgSend_localIdentifier(v10, v11, v12, v13);
  v17 = objc_msgSend_uuidFromLocalIdentifier_(v6, v15, v14, v16);

  v18 = MEMORY[0x277CCACA8];
  v22 = objc_msgSend_timeLayout(overrideCopy, v19, v20, v21);
  v26 = objc_msgSend_pfcTimePosition(v22, v23, v24, v25);
  v27 = sub_23BF2672C(v26);
  v30 = objc_msgSend_stringWithFormat_(v18, v28, @"base_%s_%@.heic", v29, v27, v17);

  if (objc_msgSend_useDepthEffect(overrideCopy, v31, v32, v33))
  {
    v37 = MEMORY[0x277CCACA8];
    v38 = objc_msgSend_timeLayout(overrideCopy, v34, v35, v36);
    v42 = objc_msgSend_pfcTimePosition(v38, v39, v40, v41);
    v43 = sub_23BF2672C(v42);
    v46 = objc_msgSend_stringWithFormat_(v37, v44, @"mask_%s_%@.png", v45, v43, v17);

    v47 = [NTKParmesanAssetMask alloc];
    v49 = objc_msgSend_initWithImageName_style_(v47, v48, v46, 0);
  }

  else
  {
    v49 = 0;
  }

  v50 = [NTKParmesanCrop alloc];
  objc_msgSend_crop(overrideCopy, v51, v52, v53);
  v57 = objc_msgSend_initWithRect_(v50, v54, v55, v56);
  v58 = [NTKParmesanAssetLayout alloc];
  v62 = objc_msgSend_timeLayout(overrideCopy, v59, v60, v61);
  v64 = objc_msgSend_initWithOriginalCrop_baseImageName_mask_timeLayout_colorAnalysis_imageAOTBrightness_userEdited_(v58, v63, v57, v30, v49, v62, 0, 1, 0.0);

  return v64;
}

@end