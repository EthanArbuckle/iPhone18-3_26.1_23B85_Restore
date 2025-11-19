@interface NTKParmesanFaceBundle
+ (BOOL)_isBridgeOrClockFace;
- (BOOL)_haveSuggestedShuffleData;
- (BOOL)useDynamicCollectionForDevice:(id)a3;
- (NTKParmesanFaceBundle)init;
- (id)_allPlaceholderFacesForDevice:(id)a3;
- (id)_emptyFaceForDevice:(id)a3;
- (id)_fetchCurrentSuggestedShuffleFacesForDevice:(id)a3;
- (id)_galleryEditOptionsForDevice:(id)a3;
- (id)_galleryPigmentsForDevice:(id)a3;
- (id)_heroPlaceholderFaceForDevice:(id)a3;
- (id)_placeholderFaceForDevice:(id)a3 name:(id)a4;
- (id)_randomPlaceholderFaceForDevice:(id)a3;
- (id)galleryDescriptionForDevice:(id)a3;
- (id)galleryDescriptionText;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
- (int64_t)_newFacesGroupZOrderForDevice:(id)a3;
- (void)_applyConfigurationsForDevice:(id)a3 toFaces:(id)a4 usingPlaceholders:(BOOL)a5;
- (void)_waitForGalleryFaceDirectories;
- (void)dealloc;
- (void)shuffleDidUpdate;
@end

@implementation NTKParmesanFaceBundle

- (NTKParmesanFaceBundle)init
{
  v14.receiver = self;
  v14.super_class = NTKParmesanFaceBundle;
  v2 = [(NTKFaceBundle *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_class();
    if (objc_msgSend__isBridgeOrClockFace(v3, v4, v5, v6))
    {
      v10 = objc_msgSend__suggestedShuffleData(v2, v7, v8, v9);
      objc_msgSend_addObserver_(v10, v11, v2, v12);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if (objc_msgSend__isBridgeOrClockFace(v3, v4, v5, v6))
  {
    v10 = objc_msgSend__suggestedShuffleData(self, v7, v8, v9);
    objc_msgSend_removeObserver_(v10, v11, self, v12);
  }

  v13.receiver = self;
  v13.super_class = NTKParmesanFaceBundle;
  [(NTKParmesanFaceBundle *)&v13 dealloc];
}

- (id)galleryDescriptionForDevice:(id)a3
{
  if (objc_msgSend_isTinker(a3, a2, a3, v3))
  {
    objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v5, @"FACE_PARMESAN_GALLERY_PLACEHOLDER_TINKER_DESCRIPTION", @"Parmesan Description");
  }

  else
  {
    objc_msgSend_galleryDescriptionText(self, v5, v6, v7);
  }
  v8 = ;

  return v8;
}

- (id)galleryDescriptionText
{
  if (NTKPeerDeviceHandlesWideLoads())
  {
    v3 = @"FACE_PARMESAN_GALLERY_DESCRIPTION_24";
  }

  else
  {
    v3 = @"FACE_PARMESAN_GALLERY_DESCRIPTION_06";
  }

  return objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v2, v3, @"Parmesan Description");
}

- (id)heroFacesForDevice:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v64 = objc_opt_class();
    v9 = v64;
    _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_INFO, "%@: Generating hero faces for device", buf, 0xCu);
  }

  v12 = objc_msgSend_supportsPDRCapability_(v4, v10, 3669496134, v11);
  v16 = objc_msgSend_logObject(NTKParmesanFaceBundle, v13, v14, v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v17)
    {
      v18 = objc_opt_class();
      *buf = 138412290;
      v64 = v18;
      v19 = v18;
      _os_log_impl(&dword_23BF0C000, v16, OS_LOG_TYPE_INFO, "%@: Getting gallery shuffles for hero face", buf, 0xCu);
    }

    objc_msgSend__waitForGalleryFaceDirectories(self, v20, v21, v22);
    haveSuggestedShuffleData = objc_msgSend__haveSuggestedShuffleData(self, v23, v24, v25);
    v30 = objc_msgSend_logObject(NTKParmesanFaceBundle, v27, v28, v29);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (haveSuggestedShuffleData)
    {
      if (v31)
      {
        *buf = 136315138;
        v64 = "[NTKParmesanFaceBundle heroFacesForDevice:]";
        _os_log_impl(&dword_23BF0C000, v30, OS_LOG_TYPE_DEFAULT, "%s — have shuffle data; show first as hero face", buf, 0xCu);
      }

      v16 = objc_msgSend__emptyFaceForDevice_(self, v32, v4, v33);
      v37 = objc_msgSend__suggestedShuffleData(self, v34, v35, v36);
      v41 = objc_msgSend_suggestedShuffleUUIDStrings(v37, v38, v39, v40);
      v45 = objc_msgSend_firstObject(v41, v42, v43, v44);

      v48 = objc_msgSend_resourceDirectoryForUUIDString_(v37, v46, v45, v47);
      objc_msgSend_setResourceDirectoryByTransferringOwnership_(v16, v49, v48, v50);
    }

    else
    {
      if (v31)
      {
        *buf = 136315138;
        v64 = "[NTKParmesanFaceBundle heroFacesForDevice:]";
        _os_log_impl(&dword_23BF0C000, v30, OS_LOG_TYPE_DEFAULT, "%s — no shuffle data; show placeholder as hero face", buf, 0xCu);
      }

      v16 = objc_msgSend__heroPlaceholderFaceForDevice_(self, v54, v4, v55);
    }

    v56 = objc_alloc(MEMORY[0x277D2C018]);
    v58 = objc_msgSend_initWithFace_priority_(v56, v57, v16, 1700);
    v60 = v58;
    if (v58)
    {
      v62 = v58;
      v53 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v59, &v62, 1);
    }

    else
    {
      v53 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    if (v17)
    {
      v51 = objc_opt_class();
      *buf = 138412290;
      v64 = v51;
      v52 = v51;
      _os_log_impl(&dword_23BF0C000, v16, OS_LOG_TYPE_INFO, "%@: Device doesn't support necessary capabilities, returning no hero gallery faces", buf, 0xCu);
    }

    v53 = MEMORY[0x277CBEBF8];
  }

  return v53;
}

- (BOOL)useDynamicCollectionForDevice:(id)a3
{
  if (objc_msgSend_isTinker(a3, a2, a3, v3))
  {
    return 0;
  }

  return objc_msgSend__haveSuggestedShuffleData(self, v5, v6, v7);
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = &unk_284ED43E0;
  v6[0] = &unk_284ED43F8;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, &v5, 1);

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend__haveSuggestedShuffleData(self, v5, v6, v7))
  {
    v11 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v50 = "[NTKParmesanFaceBundle galleryFacesForDevice:]";
      _os_log_impl(&dword_23BF0C000, v11, OS_LOG_TYPE_DEFAULT, "%s — have shuffle data; populate gallery with suggested shuffle faces", buf, 0xCu);
    }

    v14 = objc_msgSend__fetchCurrentSuggestedShuffleFacesForDevice_(self, v12, v4, v13);
    v18 = objc_msgSend_count(v14, v15, v16, v17);
  }

  else
  {
    v14 = 0;
    v18 = objc_msgSend_count(0, v8, v9, v10);
  }

  if (v18)
  {
    objc_msgSend__applyConfigurationsForDevice_toFaces_usingPlaceholders_(self, v19, v4, v14, 0);
    if (objc_msgSend_isRunningNapiliGMOrLater(v4, v22, v23, v24))
    {
      v27 = objc_msgSend__allPlaceholderFacesForDevice_(self, v25, v4, v26);
      objc_msgSend__applyConfigurationsForDevice_toFaces_usingPlaceholders_(self, v28, v4, v27, 1);
      v31 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v29, &unk_284EBA588, v30);
      v34 = objc_msgSend_filteredArrayUsingPredicate_(v27, v32, v31, v33);

      v37 = objc_msgSend_arrayByAddingObjectsFromArray_(v14, v35, v34, v36);

      v14 = v37;
    }
  }

  else
  {
    v38 = objc_msgSend_logObject(NTKParmesanFaceBundle, v19, v20, v21);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v50 = "[NTKParmesanFaceBundle galleryFacesForDevice:]";
      _os_log_impl(&dword_23BF0C000, v38, OS_LOG_TYPE_DEFAULT, "%s — no shuffle data; showing placeholder faces in gallery", buf, 0xCu);
    }

    if ((_os_feature_enabled_impl() & 1) != 0 || objc_msgSend_isRunningNapiliGMOrLater(v4, v39, v40, v41))
    {
      v42 = objc_msgSend__allPlaceholderFacesForDevice_(self, v39, v4, v41);

      objc_msgSend__applyConfigurationsForDevice_toFaces_usingPlaceholders_(self, v43, v4, v42, 1);
    }

    else
    {
      v44 = objc_msgSend__randomPlaceholderFaceForDevice_(self, v39, v4, v41);
      v46 = v44;
      if (v44)
      {
        v48 = v44;
        v42 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v45, &v48, 1);
      }

      else
      {
        v42 = MEMORY[0x277CBEBF8];
      }
    }

    v14 = v42;
  }

  return v14;
}

- (id)_fetchCurrentSuggestedShuffleFacesForDevice:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend__waitForGalleryFaceDirectories(self, v5, v6, v7);
  v11 = objc_msgSend__suggestedShuffleData(self, v8, v9, v10);
  v15 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13, v14);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v19 = objc_msgSend_suggestedShuffleUUIDStrings(v11, v16, v17, v18, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v49, v57, 16);
  if (v21)
  {
    v24 = v21;
    v25 = *v50;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v19);
        }

        v27 = *(*(&v49 + 1) + 8 * i);
        v28 = objc_msgSend__emptyFaceForDevice_(self, v22, v4, v23);
        v31 = objc_msgSend_resourceDirectoryForUUIDString_(v11, v29, v27, v30);
        objc_msgSend_setResourceDirectoryByTransferringOwnership_(v28, v32, v31, v33);
        objc_msgSend_addObject_(v15, v34, v28, v35);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v49, v57, 16);
    }

    while (v24);
  }

  v39 = objc_msgSend_logObject(NTKParmesanFaceBundle, v36, v37, v38);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v43 = objc_msgSend_count(v15, v40, v41, v42);
    *buf = 136315394;
    v54 = "[NTKParmesanFaceBundle _fetchCurrentSuggestedShuffleFacesForDevice:]";
    v55 = 2048;
    v56 = v43;
    _os_log_impl(&dword_23BF0C000, v39, OS_LOG_TYPE_DEFAULT, "%s — received [%lu] suggested shuffle faces", buf, 0x16u);
  }

  v47 = objc_msgSend_copy(v15, v44, v45, v46);

  return v47;
}

- (void)_applyConfigurationsForDevice:(id)a3 toFaces:(id)a4 usingPlaceholders:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend__galleryEditOptionsForDevice_(self, v10, v8, v11);
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v13, &unk_284ED4410, v14);
  v18 = objc_msgSend_objectForKeyedSubscript_(v12, v16, &unk_284ED4428, v17);
  v21 = objc_msgSend_objectForKeyedSubscript_(v12, v19, &unk_284ED4440, v20);
  v24 = objc_msgSend_objectForKeyedSubscript_(v12, v22, &unk_284ED4458, v23);
  v27 = objc_msgSend__galleryPigmentsForDevice_(self, v25, v8, v26);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_23BF1EE50;
  v36[3] = &unk_278BA6D70;
  v44 = a5;
  v37 = v15;
  v38 = v8;
  v39 = v18;
  v40 = v21;
  v41 = v24;
  v42 = v27;
  v43 = self;
  v28 = v27;
  v29 = v24;
  v30 = v21;
  v31 = v18;
  v32 = v8;
  v33 = v15;
  objc_msgSend_enumerateObjectsUsingBlock_(v9, v34, v36, v35);
}

- (id)_galleryEditOptionsForDevice:(id)a3
{
  v10[4] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isRunningNapiliGMOrLater(a3, a2, a3, v3))
  {
    v9[0] = &unk_284ED4410;
    v9[1] = &unk_284ED4428;
    v10[0] = &unk_284ED4140;
    v10[1] = &unk_284ED4158;
    v9[2] = &unk_284ED4440;
    v9[3] = &unk_284ED4458;
    v10[2] = &unk_284ED4170;
    v10[3] = &unk_284ED4188;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v10, v9, 4);
  }

  else
  {
    v7[0] = &unk_284ED4410;
    v7[1] = &unk_284ED4428;
    v8[0] = &unk_284ED41A0;
    v8[1] = &unk_284ED41B8;
    v7[2] = &unk_284ED4440;
    v7[3] = &unk_284ED4458;
    v8[2] = &unk_284ED41D0;
    v8[3] = &unk_284ED41E8;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v8, v7, 4);
  }
  v5 = ;

  return v5;
}

- (id)_galleryPigmentsForDevice:(id)a3
{
  v71[6] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isRunningNapiliGMOrLater(a3, a2, a3, v3) && objc_msgSend_isGlassEnabled(_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures, v4, v5, v6))
  {
    v69 = @"time-color";
    v70 = @"time.glass_05";
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, &v70, &v69, 1);
    v71[0] = v7;
    v67 = @"time-color";
    v68 = @"time.glass_05";
    v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, &v68, &v67, 1);
    v71[1] = v9;
    v65 = @"time-color";
    v66 = *MEMORY[0x277D2C5D0];
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v66, &v65, 1);
    v71[2] = v11;
    v12 = *MEMORY[0x277D2C320];
    v63[0] = @"time-color";
    v63[1] = @"style-color";
    v64[0] = v12;
    v64[1] = @"tritone.tritone-01";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v64, v63, 2);
    v71[3] = v14;
    v61 = @"time-color";
    v62 = @"time.glass_05";
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &v62, &v61, 1);
    v71[4] = v16;
    v59 = @"time-color";
    v60 = @"time.vibrant";
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, &v60, &v59, 1);
    v71[5] = v18;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v71, 6);
  }

  else
  {
    v56 = @"time-color";
    v57 = @"time-filtered.vibrant";
    v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, &v57, &v56, 1);
    v58[0] = v39;
    v21 = *MEMORY[0x277D2C4B0];
    v54[0] = @"time-color";
    v54[1] = @"style-color";
    v55[0] = v21;
    v55[1] = @"tritone.tritone-01";
    v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v55, v54, 2);
    v58[1] = v9;
    v52 = @"time-color";
    v53 = *MEMORY[0x277D2C5D0];
    v23 = v53;
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, &v53, &v52, 1);
    v58[2] = v25;
    v50 = @"time-color";
    v51 = *MEMORY[0x277D2C740];
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, &v51, &v50, 1);
    v58[3] = v14;
    v48 = @"time-color";
    v49 = @"time-filtered.vibrant";
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, &v49, &v48, 1);
    v58[4] = v16;
    v46 = @"time-color";
    v47 = v23;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v47, &v46, 1);
    v58[5] = v18;
    v44 = @"time-color";
    v45 = @"time-filtered.vibrant";
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, &v45, &v44, 1);
    v58[6] = v30;
    v31 = *MEMORY[0x277D2C3B8];
    v42[0] = @"time-color";
    v42[1] = @"style-color";
    v32 = *MEMORY[0x277D2C368];
    v43[0] = v31;
    v43[1] = v32;
    v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v43, v42, 2);
    v58[7] = v34;
    v40 = @"time-color";
    v41 = @"time-filtered.vibrant";
    v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, &v41, &v40, 1);
    v58[8] = v36;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v58, 9);

    v11 = v25;
    v7 = v39;
  }

  return v20;
}

- (int64_t)_newFacesGroupZOrderForDevice:(id)a3
{
  v3 = a3;
  if (objc_msgSend_deviceCategory(v3, v4, v5, v6) == 4 || objc_msgSend_deviceCategory(v3, v7, v8, v9) == 6 || objc_msgSend_collectionType(v3, v10, v11, v12) == 5)
  {
    v13 = 5000;
  }

  else if (NTKShowHardwareSpecificFaces())
  {
    v13 = 5000;
  }

  else
  {
    v13 = 8000;
  }

  return v13;
}

+ (BOOL)_isBridgeOrClockFace
{
  if (CLKIsBridge())
  {
    return 1;
  }

  return MEMORY[0x28210D970]();
}

- (id)_emptyFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v8 = objc_msgSend_identifier(v4, v5, v6, v7);
  v9 = objc_opt_class();
  v13 = objc_msgSend_analyticsIdentifier(v9, v10, v11, v12);
  v15 = objc_msgSend_bundledFaceWithIdentifier_analyticsIdentifier_forDevice_initCustomization_(NTKParmesanFace, v14, v8, v13, v3, &unk_284EBA5C8);

  return v15;
}

- (id)_heroPlaceholderFaceForDevice:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = objc_msgSend_heroPlaceholderName(NTKParmesanGalleryPlaceholderDataSource, v5, v6, v7);
  v12 = objc_msgSend_logObject(NTKParmesanFaceBundle, v9, v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[NTKParmesanFaceBundle _heroPlaceholderFaceForDevice:]";
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_23BF0C000, v12, OS_LOG_TYPE_DEFAULT, "%s — creating placeholder hero face with name: [%@]", &v16, 0x16u);
  }

  v14 = objc_msgSend__placeholderFaceForDevice_name_(self, v13, v4, v8);

  return v14;
}

- (id)_randomPlaceholderFaceForDevice:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = objc_msgSend_randomPlaceholderName(NTKParmesanGalleryPlaceholderDataSource, v5, v6, v7);
  v12 = objc_msgSend_logObject(NTKParmesanFaceBundle, v9, v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[NTKParmesanFaceBundle _randomPlaceholderFaceForDevice:]";
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_23BF0C000, v12, OS_LOG_TYPE_DEFAULT, "%s — random placeholder face with name: [%@]", &v16, 0x16u);
  }

  v14 = objc_msgSend__placeholderFaceForDevice_name_(self, v13, v4, v8);

  return v14;
}

- (id)_allPlaceholderFacesForDevice:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_placeholderNamesForDevice_(NTKParmesanGalleryPlaceholderDataSource, v5, v4, v6);
  v8 = MEMORY[0x277CBEB18];
  v12 = objc_msgSend_count(v7, v9, v10, v11);
  v15 = objc_msgSend_arrayWithCapacity_(v8, v13, v12, v14);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = v7;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v31, v35, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v32;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = objc_msgSend__placeholderFaceForDevice_name_(self, v19, v4, *(*(&v31 + 1) + 8 * i), v31);
        objc_msgSend_addObject_(v15, v24, v23, v25);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v31, v35, 16);
    }

    while (v20);
  }

  v29 = objc_msgSend_copy(v15, v26, v27, v28);

  return v29;
}

- (id)_placeholderFaceForDevice:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_configurationForName_(NTKParmesanGalleryPlaceholderDataSource, v8, v7, v9);
  v14 = objc_msgSend_faceClass(self, v11, v12, v13);
  v15 = objc_opt_class();
  v19 = objc_msgSend_identifier(v15, v16, v17, v18);
  v20 = objc_opt_class();
  v24 = objc_msgSend_analyticsIdentifier(v20, v21, v22, v23);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_23BF202E0;
  v31[3] = &unk_278BA6D98;
  v32 = v7;
  v33 = v6;
  v34 = v10;
  v25 = v10;
  v26 = v6;
  v27 = v7;
  v29 = objc_msgSend_bundledFaceWithIdentifier_analyticsIdentifier_forDevice_initCustomization_(v14, v28, v19, v24, v26, v31);

  return v29;
}

- (BOOL)_haveSuggestedShuffleData
{
  objc_msgSend__waitForGalleryFaceDirectories(self, a2, v2, v3);
  v8 = objc_msgSend__suggestedShuffleData(self, v5, v6, v7);
  v12 = objc_msgSend_suggestedShuffleUUIDStrings(v8, v9, v10, v11);
  v16 = objc_msgSend_count(v12, v13, v14, v15) != 0;

  return v16;
}

- (void)_waitForGalleryFaceDirectories
{
  v2 = self;
  objc_sync_enter(v2);
  v6 = objc_msgSend__suggestedShuffleData(v2, v3, v4, v5);
  if ((objc_msgSend_isPrepared(v6, v7, v8, v9) & 1) == 0)
  {
    v10 = dispatch_semaphore_create(0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23BF2052C;
    v15[3] = &unk_278BA6DC0;
    v11 = v10;
    v16 = v11;
    objc_msgSend_prepareWithCompletion_(v6, v12, v15, v13);
    v14 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v11, v14);
  }

  objc_sync_exit(v2);
}

- (void)shuffleDidUpdate
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, v2, v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = self;
    _os_log_impl(&dword_23BF0C000, v5, OS_LOG_TYPE_DEFAULT, "shuffleDidUpdate: Waiting for gallery directories for bundle: %@", &v16, 0xCu);
  }

  objc_msgSend__waitForGalleryFaceDirectories(self, v6, v7, v8);
  v12 = objc_msgSend_logObject(NTKParmesanFaceBundle, v9, v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = self;
    _os_log_impl(&dword_23BF0C000, v12, OS_LOG_TYPE_DEFAULT, "shuffleDidUpdate: Notifying observers gallery faces updated for bundle: %@", &v16, 0xCu);
  }

  objc_msgSend_notifyObserversGalleryFacesDidUpdate(self, v13, v14, v15);
}

@end