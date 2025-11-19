@interface NTKCParmesanAlbumEditor
- (BOOL)_writeImageList:(id)a3 version:(int64_t)a4 toDirectory:(id)a5;
- (BOOL)setShuffleSelection:(id)a3 withKeyAssetIdentifier:(id)a4 albumName:(id)a5;
- (NTKCParmesanAlbumEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4 shouldFinalize:(BOOL)a5;
- (id)_fetchSingleAsset;
- (id)localizedShuffleDescription;
- (id)optionsForSingleAsset;
- (id)titleForCollectionWithIdentifier:(id)a3;
- (void)_createResourceDirectoryForSinglePHAssetWithPreviewOnly:(BOOL)a3 completion:(id)a4;
- (void)finalizeWithProgress:(id)a3 completion:(id)a4;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3;
- (void)setAlbumIdentifier:(id)a3;
- (void)setShouldFinalize:(BOOL)a3;
@end

@implementation NTKCParmesanAlbumEditor

- (NTKCParmesanAlbumEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4 shouldFinalize:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v42.receiver = self;
  v42.super_class = NTKCParmesanAlbumEditor;
  v9 = [(NTKCompanionResourceDirectoryEditor *)&v42 initWithResourceDirectory:v8 forDevice:a4];
  v12 = v9;
  if (v9)
  {
    objc_msgSend_setShouldFinalize_(v9, v10, v5, v11);
    v15 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v13, v8, v14);
    v22 = objc_msgSend_shuffleSelection(v15, v16, v17, v18);
    if (!v22)
    {
      v23 = objc_msgSend_logObject(NTKParmesanFaceBundle, v19, v20, v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF8340();
      }
    }

    shuffleSelection = v12->_shuffleSelection;
    v12->_shuffleSelection = v22;
    v25 = v22;

    v29 = objc_msgSend_firstObject(v15, v26, v27, v28);
    v33 = objc_msgSend_localIdentifier(v29, v30, v31, v32);
    keyAssetIdentifier = v12->_keyAssetIdentifier;
    v12->_keyAssetIdentifier = v33;

    v38 = objc_msgSend_uuidString(v15, v35, v36, v37);
    uuidString = v12->_uuidString;
    v12->_uuidString = v38;

    albumName = v12->_albumName;
    v12->_albumName = 0;
  }

  return v12;
}

- (void)setAlbumIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [NTKParmesanShuffleSelection alloc];
    v8 = objc_msgSend_initWithCollection_(v5, v6, v4, v7);

    shuffleSelection = self->_shuffleSelection;
    self->_shuffleSelection = v8;
  }
}

- (void)setShouldFinalize:(BOOL)a3
{
  v4 = a3;
  if (objc_msgSend_state(self, a2, a3, v3) < 3)
  {
    if (v4)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    objc_msgSend_setState_(self, v6, v10, v8);
  }

  else
  {
    v9 = objc_msgSend_logObject(NTKParmesanFaceBundle, v6, v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF83B0();
    }
  }
}

- (BOOL)setShuffleSelection:(id)a3 withKeyAssetIdentifier:(id)a4 albumName:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15 = objc_msgSend_shuffleTypesAsNSNumbers(v9, v12, v13, v14);
  v19 = objc_msgSend_count(v15, v16, v17, v18);
  v23 = objc_msgSend_collectionIdentifier(v9, v20, v21, v22);

  isDaily = objc_msgSend_isDaily(v9, v24, v25, v26);
  if (!v19 && !v23 && (isDaily & 1) == 0)
  {
    v31 = objc_msgSend_logObject(NTKParmesanFaceBundle, v28, v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF83F0();
    }

LABEL_15:

    v49 = 0;
    goto LABEL_16;
  }

  if (v19)
  {
    v32 = objc_msgSend_containsObject_(v15, v28, &unk_284ED4650, v30);
    v36 = objc_msgSend_personIdentifiers(v9, v33, v34, v35);
    v40 = v32 ^ (objc_msgSend_count(v36, v37, v38, v39) == 0);

    if ((v40 & 1) == 0)
    {
      v31 = objc_msgSend_logObject(NTKParmesanFaceBundle, v28, v41, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF8460();
      }

      goto LABEL_15;
    }
  }

  if ((objc_msgSend_isEqual_(self->_shuffleSelection, v28, v9, v30) & 1) == 0)
  {
    v45 = objc_msgSend_logObject(NTKParmesanFaceBundle, v42, v43, v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v51 = 138412546;
      v52 = v9;
      v53 = 2112;
      v54 = v10;
      _os_log_impl(&dword_23BF0C000, v45, OS_LOG_TYPE_DEFAULT, "setShuffleSelection: setting new shuffle selection to %@, keyAsset: %@", &v51, 0x16u);
    }

    objc_storeStrong(&self->_shuffleSelection, a3);
    objc_storeStrong(&self->_albumName, a5);
    objc_storeStrong(&self->_keyAssetIdentifier, a4);
    uuidString = self->_uuidString;
    self->_uuidString = 0;

    objc_msgSend_setState_(self, v47, 2, v48);
  }

  v49 = 1;
LABEL_16:

  return v49;
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = objc_opt_class();
    v9 = *(&buf + 4);
    _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_DEFAULT, "generateGalleryPreviewResourceDirectoryWithCompletion: generating preview for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = sub_23BF3374C;
  v42 = sub_23BF3375C;
  v43 = 0;
  v13 = objc_msgSend_state(self, v10, v11, v12);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF33764;
  aBlock[3] = &unk_278BA7480;
  p_buf = &buf;
  v38 = v13;
  aBlock[4] = self;
  v14 = v4;
  v36 = v14;
  v15 = _Block_copy(aBlock);
  if (objc_msgSend_state(self, v16, v17, v18) && objc_msgSend_state(self, v19, v20, v21) <= 2)
  {
    if (objc_msgSend_state(self, v22, v23, v24) != 1)
    {
      objc_msgSend_setState_(self, v26, 3, v28);
      v31 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23BF33884;
      block[3] = &unk_278BA74D0;
      block[4] = self;
      v34 = &buf;
      v33 = v15;
      dispatch_async(v31, block);

      goto LABEL_7;
    }

    v29 = objc_msgSend_resourceDirectory(self, v26, v27, v28);
    v30 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v29;

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  (*(v15 + 2))(v15, v25);
LABEL_7:

  _Block_object_dispose(&buf, 8);
}

- (id)localizedShuffleDescription
{
  v5 = objc_msgSend_collectionIdentifier(self->_shuffleSelection, a2, v2, v3);

  shuffleSelection = self->_shuffleSelection;
  if (v5)
  {
    v10 = objc_msgSend_collectionIdentifier(shuffleSelection, v6, v7, v8);
    v13 = objc_msgSend_titleForCollectionWithIdentifier_(self, v11, v10, v12);
  }

  else
  {
    if (objc_msgSend_isDaily(shuffleSelection, v6, v7, v8))
    {
      objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v14, @"PARMESAN_CONTENT_EDIT_OPTION_DYNAMIC_DAILY_TITLE", @"fixed title for the Daily Photo collection");
    }

    else
    {
      objc_msgSend_shuffleName(self->_shuffleSelection, v14, v15, v16);
    }
    v13 = ;
  }

  return v13;
}

- (id)titleForCollectionWithIdentifier:(id)a3
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD9948];
  v4 = a3;
  v8 = objc_msgSend_sharedPhotoLibrary(v3, v5, v6, v7);
  v12 = objc_msgSend_librarySpecificFetchOptions(v8, v9, v10, v11);

  objc_msgSend_setWantsIncrementalChangeDetails_(v12, v13, 0, v14);
  v15 = MEMORY[0x277CD97B8];
  v29[0] = v4;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v29, 1);
  v19 = objc_msgSend_fetchAssetCollectionsWithLocalIdentifiers_options_(v15, v18, v17, v12);

  v23 = objc_msgSend_firstObject(v19, v20, v21, v22);
  v27 = objc_msgSend_localizedTitle(v23, v24, v25, v26);

  return v27;
}

- (void)finalizeWithProgress:(id)a3 completion:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = objc_opt_class();
    v12 = v44;
    _os_log_impl(&dword_23BF0C000, v11, OS_LOG_TYPE_DEFAULT, "finalizeWithProgress:completion: finalizing %@", buf, 0xCu);
  }

  if (!objc_msgSend_state(self, v13, v14, v15) || objc_msgSend_state(self, v16, v17, v18) >= 3)
  {
    v19 = objc_msgSend_logObject(NTKParmesanFaceBundle, v16, v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_msgSend_state(self, v20, v21, v22);
      *buf = 136315394;
      v44 = "[NTKCParmesanAlbumEditor finalizeWithProgress:completion:]";
      v45 = 2048;
      v46 = v23;
      _os_log_impl(&dword_23BF0C000, v19, OS_LOG_TYPE_DEFAULT, "%s: Cannot finalize in state: %ld", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BF33F18;
    block[3] = &unk_278BA6B68;
    v24 = &v42;
    v42 = v7;
    v25 = MEMORY[0x277D85CD0];
    v26 = block;
LABEL_8:
    dispatch_async(v25, v26);
    goto LABEL_9;
  }

  if (objc_msgSend_state(self, v16, v17, v18) == 1)
  {
    v30 = objc_msgSend_logObject(NTKParmesanFaceBundle, v27, v28, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v44 = "[NTKCParmesanAlbumEditor finalizeWithProgress:completion:]";
      _os_log_impl(&dword_23BF0C000, v30, OS_LOG_TYPE_INFO, "%s: Unmodified editor, no need to finalize", buf, 0xCu);
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_23BF33F2C;
    v39[3] = &unk_278BA6EF8;
    v24 = &v40;
    v39[4] = self;
    v40 = v7;
    v25 = MEMORY[0x277D85CD0];
    v26 = v39;
    goto LABEL_8;
  }

  objc_msgSend_setState_(self, v27, 4, v29);
  v34 = objc_msgSend_logObject(NTKParmesanFaceBundle, v31, v32, v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF855C(v34);
  }

  v35 = dispatch_get_global_queue(2, 0);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_23BF33F88;
  v36[3] = &unk_278BA6FC0;
  v24 = &v37;
  v36[4] = self;
  v37 = v6;
  v38 = v7;
  dispatch_async(v35, v36);

LABEL_9:
}

- (id)optionsForSingleAsset
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD9880]);
  v5 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v3, @"(mediaType = %ld) && ((playbackStyle = %ld) || (playbackStyle = %ld))", v4, 1, 1, 3);
  objc_msgSend_setPredicate_(v2, v6, v5, v7);

  v9 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v8, @"creationDate", 1);
  v22[0] = v9;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v22, 1);
  objc_msgSend_setSortDescriptors_(v2, v12, v11, v13);

  v21 = *MEMORY[0x277CD9AE8];
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, &v21, 1);
  objc_msgSend_addFetchPropertySets_(v2, v16, v15, v17);

  objc_msgSend_setFetchLimit_(v2, v18, 1, v19);

  return v2;
}

- (void)_createResourceDirectoryForSinglePHAssetWithPreviewOnly:(BOOL)a3 completion:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_23BF3374C;
  v26 = sub_23BF3375C;
  v27 = NTKPhotosCreateResourceDirectory();
  if (v23[5])
  {
    v9 = objc_msgSend__fetchSingleAsset(self, v6, v7, v8);
    if (v9)
    {
      v10 = objc_opt_class();
      v14 = objc_msgSend_localIdentifier(v9, v11, v12, v13);
      v28[0] = v14;
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v28, 1);
      v17 = v23[5];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_23BF345D4;
      v19[3] = &unk_278BA7520;
      v19[4] = self;
      v21 = &v22;
      v20 = v5;
      objc_msgSend_transcodeAssetsWithIdentifiers_to_completion_(v10, v18, v16, v17, v19);
    }

    else
    {
      (*(v5 + 2))(v5, 0);
    }
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }

  _Block_object_dispose(&v22, 8);
}

- (id)_fetchSingleAsset
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_shuffleSelection(self, a2, v2, v3);
  v9 = objc_msgSend_collectionIdentifier(v5, v6, v7, v8);

  v16 = objc_msgSend_optionsForSingleAsset(self, v10, v11, v12);
  if (v9)
  {
    v17 = objc_msgSend_logObject(NTKParmesanFaceBundle, v13, v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v9;
      _os_log_impl(&dword_23BF0C000, v17, OS_LOG_TYPE_DEFAULT, "NTKCParmesanAlbumEditor: fetching first asset in %@", buf, 0xCu);
    }

    v18 = MEMORY[0x277CD97B8];
    v50 = v9;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, &v50, 1);
    v22 = objc_msgSend_fetchAssetCollectionsWithLocalIdentifiers_options_(v18, v21, v20, 0);
    v26 = objc_msgSend_firstObject(v22, v23, v24, v25);

    v28 = objc_msgSend_fetchAssetsInAssetCollection_options_(MEMORY[0x277CD97A8], v27, v26, v16);
    v32 = objc_msgSend_firstObject(v28, v29, v30, v31);

    v36 = objc_msgSend_logObject(NTKParmesanFaceBundle, v33, v34, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v32;
      _os_log_impl(&dword_23BF0C000, v36, OS_LOG_TYPE_DEFAULT, "NTKCParmesanAlbumEditor: fetched asset %@", buf, 0xCu);
    }
  }

  else
  {
    keyAssetIdentifier = self->_keyAssetIdentifier;
    if (keyAssetIdentifier)
    {
      v39 = MEMORY[0x277CD97A8];
      v49 = keyAssetIdentifier;
      v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, &v49, 1);
      v42 = objc_msgSend_fetchAssetsWithLocalIdentifiers_options_(v39, v41, v40, v16);
      v32 = objc_msgSend_firstObject(v42, v43, v44, v45);

      v26 = objc_msgSend_logObject(NTKParmesanFaceBundle, v46, v47, v48);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v32;
        _os_log_impl(&dword_23BF0C000, v26, OS_LOG_TYPE_DEFAULT, "NTKCParmesanAlbumEditor: fetched key asset %@", buf, 0xCu);
      }
    }

    else
    {
      v26 = objc_msgSend_logObject(NTKParmesanFaceBundle, v13, v14, v15);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF8660();
      }

      v32 = 0;
    }
  }

  return v32;
}

- (BOOL)_writeImageList:(id)a3 version:(int64_t)a4 toDirectory:(id)a5
{
  v74 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v11, a4, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v14, v13, kParmesanReaderVersionKey);

  objc_msgSend_setObject_forKeyedSubscript_(v10, v15, v9, kParmesanReaderImageListKey);
  v19 = objc_msgSend_collectionIdentifier(self->_shuffleSelection, v16, v17, v18);

  if (v19)
  {
    v23 = objc_msgSend_collectionIdentifier(self->_shuffleSelection, v20, v21, v22);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v24, v23, kParmesanReaderAssetCollectionIdentifierKey);
  }

  v25 = objc_msgSend_personIdentifiers(self->_shuffleSelection, v20, v21, v22);
  v29 = objc_msgSend_count(v25, v26, v27, v28);

  if (v29)
  {
    v33 = objc_msgSend_personIdentifiers(self->_shuffleSelection, v30, v31, v32);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v34, v33, kParmesanReaderPeopleIdentifiersKey);
  }

  v35 = objc_msgSend_shuffleTypesAsNSNumbers(self->_shuffleSelection, v30, v31, v32);
  v38 = objc_msgSend_containsObject_(v35, v36, &unk_284ED4650, v37);
  v40 = MEMORY[0x277CBEC28];
  v41 = MEMORY[0x277CBEC38];
  if (v38)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v39, MEMORY[0x277CBEC38], kParmesanReaderHasPeopleKey);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v39, MEMORY[0x277CBEC28], kParmesanReaderHasPeopleKey);
  }

  if (objc_msgSend_containsObject_(v35, v42, &unk_284ED4668, v43))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v44, v41, kParmesanReaderHasPetsKey);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v44, v40, kParmesanReaderHasPetsKey);
  }

  if (objc_msgSend_containsObject_(v35, v45, &unk_284ED4680, v46))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v47, v41, kParmesanReaderHasNatureKey);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v47, v40, kParmesanReaderHasNatureKey);
  }

  if (objc_msgSend_containsObject_(v35, v48, &unk_284ED4698, v49))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v50, v41, kParmesanReaderHasCityscapesKey);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v50, v40, kParmesanReaderHasCityscapesKey);
  }

  v54 = MEMORY[0x277CCABB0];
  isDaily = objc_msgSend_isDaily(self->_shuffleSelection, v51, v52, v53);
  v58 = objc_msgSend_numberWithBool_(v54, v56, isDaily, v57);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v59, v58, kParmesanReaderHasDailyPhotosKey);

  uuidString = self->_uuidString;
  if (uuidString)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v60, uuidString, kParmesanReaderUUIDStringKey);
  }

  v63 = objc_msgSend_stringByAppendingPathComponent_(v8, v60, kParmesanReaderImagelistFileName, v61);
  v67 = objc_msgSend_logObject(NTKParmesanFaceBundle, v64, v65, v66);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v72 = 138412290;
    v73 = v63;
    _os_log_impl(&dword_23BF0C000, v67, OS_LOG_TYPE_DEFAULT, "writing image list to path %@", &v72, 0xCu);
  }

  v69 = objc_msgSend_writeToFile_atomically_(v10, v68, v63, 0);
  if ((v69 & 1) == 0)
  {
    v70 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF86A0();
    }
  }

  return v69;
}

@end