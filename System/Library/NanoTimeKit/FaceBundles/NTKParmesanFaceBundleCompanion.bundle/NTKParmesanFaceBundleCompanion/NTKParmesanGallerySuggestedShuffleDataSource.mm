@interface NTKParmesanGallerySuggestedShuffleDataSource
+ (id)shared;
- (BOOL)_copyFile:(id)file to:(id)to;
- (BOOL)_createResourceDirectoryForShuffle:(id)shuffle asset:(id)asset at:(id)at;
- (NSArray)suggestedShuffleUUIDStrings;
- (id)_cacheDirectoryPath;
- (id)_init;
- (id)_pickAssetFromShuffle:(id)shuffle;
- (id)resourceDirectoryForUUIDString:(id)string;
- (void)_queue_createResourceDirectoryForShuffle:(id)shuffle completion:(id)completion;
- (void)_queue_notifyObserversShuffleUpdated;
- (void)addObserver:(id)observer;
- (void)prepareWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
@end

@implementation NTKParmesanGallerySuggestedShuffleDataSource

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF28648;
  block[3] = &unk_278BA7138;
  block[4] = self;
  if (qword_27E1E30F0 != -1)
  {
    dispatch_once(&qword_27E1E30F0, block);
  }

  v2 = qword_27E1E30E8;

  return v2;
}

- (id)_init
{
  v29.receiver = self;
  v29.super_class = NTKParmesanGallerySuggestedShuffleDataSource;
  v2 = [(NTKParmesanGallerySuggestedShuffleDataSource *)&v29 init];
  v6 = v2;
  if (v2)
  {
    v2->_isPrepared = 0;
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4, v5);
    suggestedShuffleIDs = v6->_suggestedShuffleIDs;
    v6->_suggestedShuffleIDs = v7;

    v12 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v9, v10, v11);
    resourceDirectoriesForUUID = v6->_resourceDirectoriesForUUID;
    v6->_resourceDirectoriesForUUID = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v15 = dispatch_queue_create("com.apple.NanoTimeKit.PhotosFaceSuggestedShufflesQ", v14);
    workQ = v6->_workQ;
    v6->_workQ = v15;

    v17 = dispatch_queue_create("com.apple.NanoTimeKit.PhotosFaceSuggestedShuffleNotificationQ", v14);
    observerQ = v6->_observerQ;
    v6->_observerQ = v17;

    v19 = objc_opt_new();
    observers = v6->_observers;
    v6->_observers = v19;

    out_token = 0;
    objc_initWeak(&location, v6);
    v21 = *MEMORY[0x277D3B3C8];
    v22 = v6->_workQ;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_23BF28848;
    v24[3] = &unk_278BA7160;
    objc_copyWeak(&v26, &location);
    v25 = v6;
    notify_register_dispatch(v21, &out_token, v22, v24);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)prepareWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_isPrepared)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy);
    }
  }

  else
  {
    v9 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_23BF0C000, v9, OS_LOG_TYPE_DEFAULT, "prepareWithCompletion: Preparing shuffles for data source: %@", buf, 0xCu);
    }

    v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11, v12);
    resourceDirectoriesForUUID = self->_resourceDirectoriesForUUID;
    self->_resourceDirectoriesForUUID = v13;

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_23BF28AB4;
    v17[3] = &unk_278BA7200;
    v17[4] = self;
    v18 = v8;
    objc_msgSend_fetchGalleryShufflesWithCompletion_(NTKParmesanPhotoProcessor, v15, v17, v16);
  }
}

- (NSArray)suggestedShuffleUUIDStrings
{
  if (self->_isPrepared)
  {
    v5 = objc_msgSend_allKeys(self->_resourceDirectoriesForUUID, a2, v2, v3);
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)resourceDirectoryForUUIDString:(id)string
{
  if (self->_isPrepared)
  {
    v5 = objc_msgSend_objectForKeyedSubscript_(self->_resourceDirectoriesForUUID, a2, string, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observerQ = self->_observerQ;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BF29140;
  v7[3] = &unk_278BA7228;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQ, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerQ = self->_observerQ;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BF291E4;
  v7[3] = &unk_278BA7228;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQ, v7);
}

- (void)_queue_notifyObserversShuffleUpdated
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, v2, v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_23BF0C000, v5, OS_LOG_TYPE_DEFAULT, "_queue_notifyObserversShuffleUpdated: data source updated: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  observerQ = self->_observerQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF29318;
  block[3] = &unk_278BA7270;
  objc_copyWeak(&v8, buf);
  dispatch_async(observerQ, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)_queue_createResourceDirectoryForShuffle:(id)shuffle completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  shuffleCopy = shuffle;
  completionCopy = completion;
  v11 = objc_msgSend__cacheDirectoryPath(self, v8, v9, v10);
  v15 = objc_msgSend_uuidString(shuffleCopy, v12, v13, v14);
  v18 = objc_msgSend_stringByAppendingPathComponent_(v11, v16, v15, v17);

  v38 = 0;
  v22 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v19, v20, v21);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v22, v23, v18, &v38);
  v28 = isDirectory;
  if (isDirectory)
  {
    if (v38 != 1)
    {
      v31 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v25, @"com.apple.parmesan.galleryShuffle", 4, 0);
      completionCopy[2](completionCopy, 0, v31);

      goto LABEL_8;
    }

    v29 = objc_msgSend_logObject(NTKParmesanFaceBundle, v25, v26, v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v18;
      _os_log_impl(&dword_23BF0C000, v29, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: directory %@ already exists", buf, 0xCu);
    }
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_23BF295B8;
  v32[3] = &unk_278BA72C0;
  v32[4] = self;
  v33 = v18;
  v36 = completionCopy;
  v34 = shuffleCopy;
  v37 = v28;
  v35 = v22;
  objc_msgSend_fetchAssetsInGalleryShuffle_completion_(NTKParmesanPhotoProcessor, v30, v34, v32);

LABEL_8:
}

- (id)_cacheDirectoryPath
{
  if (qword_27E1E3100 != -1)
  {
    sub_23BFF8174();
  }

  v3 = qword_27E1E30F8;

  return v3;
}

- (id)_pickAssetFromShuffle:(id)shuffle
{
  v52 = *MEMORY[0x277D85DE8];
  shuffleCopy = shuffle;
  v4 = MEMORY[0x277CBEB18];
  v8 = objc_msgSend_count(shuffleCopy, v5, v6, v7);
  v11 = objc_msgSend_arrayWithCapacity_(v4, v9, v8, v10);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = shuffleCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v46, v51, 16);
  if (v14)
  {
    v18 = v14;
    v19 = *v47;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v47 != v19)
        {
          objc_enumerationMutation(v12);
        }

        v21 = objc_msgSend_localIdentifier(*(*(&v46 + 1) + 8 * i), v15, v16, v17);
        objc_msgSend_addObject_(v11, v22, v21, v23);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v46, v51, 16);
    }

    while (v18);
  }

  objc_msgSend_sortUsingComparator_(v11, v24, &unk_284EBA668, v25);
  v29 = objc_msgSend_firstObject(v11, v26, v27, v28);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v30 = v12;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v42, v50, 16);
  if (v35)
  {
    v36 = *v43;
    while (2)
    {
      for (j = 0; j != v35; j = j + 1)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(v30);
        }

        v38 = *(*(&v42 + 1) + 8 * j);
        v39 = objc_msgSend_localIdentifier(v38, v32, v33, v34, v42);
        v40 = NTKEqualStrings();

        if (v40)
        {
          v35 = v38;
          goto LABEL_18;
        }
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v42, v50, 16);
      if (v35)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v35;
}

- (BOOL)_createResourceDirectoryForShuffle:(id)shuffle asset:(id)asset at:(id)at
{
  v190 = *MEMORY[0x277D85DE8];
  shuffleCopy = shuffle;
  assetCopy = asset;
  atCopy = at;
  v14 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v11, v12, v13);
  v186 = 0;
  objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v14, v15, atCopy, 1, 0, &v186);
  v19 = v186;
  if (v19)
  {
    v20 = objc_msgSend_logObject(NTKParmesanFaceBundle, v16, v17, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF8188(atCopy, v20, v21, v22, v23, v24, v25, v26);
    }

    v27 = 0;
  }

  else
  {
    v28 = MEMORY[0x277CCACA8];
    v29 = objc_msgSend_resourceDirectory(assetCopy, v16, v17, v18);
    v30 = v29;
    v34 = objc_msgSend_fileSystemRepresentation(v30, v31, v32, v33);
    v20 = objc_msgSend_stringWithCString_encoding_(v28, v35, v34, 4);

    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v39 = objc_msgSend_layouts(assetCopy, v36, v37, v38);
    v43 = objc_msgSend_allKeys(v39, v40, v41, v42);

    obj = v43;
    v177 = assetCopy;
    v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v182, v189, 16);
    if (v180)
    {
      selfCopy = self;
      v179 = *v183;
      v175 = v14;
      v176 = shuffleCopy;
      while (2)
      {
        for (i = 0; i != v180; ++i)
        {
          if (*v183 != v179)
          {
            objc_enumerationMutation(obj);
          }

          v50 = *(*(&v182 + 1) + 8 * i);
          v51 = objc_msgSend_layouts(assetCopy, v45, v46, v47, v175, v176);
          v54 = objc_msgSend_objectForKeyedSubscript_(v51, v52, v50, v53);

          v58 = objc_msgSend_baseImageName(v54, v55, v56, v57);
          v61 = objc_msgSend_stringByAppendingPathComponent_(v20, v59, v58, v60);

          v65 = objc_msgSend_baseImageName(v54, v62, v63, v64);
          v68 = objc_msgSend_stringByAppendingPathComponent_(atCopy, v66, v65, v67);

          if (!objc_msgSend__copyFile_to_(selfCopy, v69, v61, v68) || (objc_msgSend_mask(v54, v70, v71, v72), v73 = objc_claimAutoreleasedReturnValue(), objc_msgSend_imageName(v73, v74, v75, v76), v77 = objc_claimAutoreleasedReturnValue(), v77, v73, v77) && (objc_msgSend_mask(v54, v78, v79, v80), v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend_imageName(v81, v82, v83, v84), v85 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringByAppendingPathComponent_(v20, v86, v85, v87), v181 = objc_claimAutoreleasedReturnValue(), v85, v81, objc_msgSend_mask(v54, v88, v89, v90), v91 = objc_claimAutoreleasedReturnValue(), objc_msgSend_imageName(v91, v92, v93, v94), v95 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringByAppendingPathComponent_(atCopy, v96, v95, v97), v98 = v20, v99 = atCopy, v100 = objc_claimAutoreleasedReturnValue(), v95, v91, LODWORD(v91) = objc_msgSend__copyFile_to_(selfCopy, v101, v181, v100), v100, atCopy = v99, v20 = v98, v181, assetCopy = v177, !v91))
          {
            v14 = v175;
            shuffleCopy = v176;
            goto LABEL_37;
          }
        }

        v14 = v175;
        shuffleCopy = v176;
        v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v182, v189, 16);
        if (v180)
        {
          continue;
        }

        break;
      }
    }

    v102 = atCopy;

    v103 = objc_opt_new();
    v107 = objc_msgSend_asDictionary(assetCopy, v104, v105, v106);
    objc_msgSend_addObject_(v103, v108, v107, v109);

    v54 = objc_opt_new();
    v112 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v110, 2, v111);
    objc_msgSend_setObject_forKeyedSubscript_(v54, v113, v112, kParmesanReaderVersionKey);

    obj = v103;
    objc_msgSend_setObject_forKeyedSubscript_(v54, v114, v103, kParmesanReaderImageListKey);
    v118 = objc_msgSend_people(shuffleCopy, v115, v116, v117);
    v122 = objc_msgSend_count(v118, v119, v120, v121);

    if (v122)
    {
      v126 = objc_msgSend_people(shuffleCopy, v123, v124, v125);
      v130 = objc_msgSend_allObjects(v126, v127, v128, v129);
      objc_msgSend_setObject_forKeyedSubscript_(v54, v131, v130, kParmesanReaderPeopleIdentifiersKey);
    }

    v132 = objc_msgSend_people(shuffleCopy, v123, v124, v125);
    v136 = objc_msgSend_count(v132, v133, v134, v135);
    v138 = MEMORY[0x277CBEC38];
    v139 = MEMORY[0x277CBEC28];
    if (v136)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v54, v137, MEMORY[0x277CBEC38], kParmesanReaderHasPeopleKey);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v54, v137, MEMORY[0x277CBEC28], kParmesanReaderHasPeopleKey);
    }

    if (objc_msgSend_pets(shuffleCopy, v140, v141, v142))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v54, v143, v138, kParmesanReaderHasPetsKey);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v54, v143, v139, kParmesanReaderHasPetsKey);
    }

    if (objc_msgSend_nature(shuffleCopy, v144, v145, v146))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v54, v147, v138, kParmesanReaderHasNatureKey);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v54, v147, v139, kParmesanReaderHasNatureKey);
    }

    if (objc_msgSend_cityscape(shuffleCopy, v148, v149, v150))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v54, v151, v138, kParmesanReaderHasCityscapesKey);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v54, v151, v139, kParmesanReaderHasCityscapesKey);
    }

    v155 = objc_msgSend_uuidString(shuffleCopy, v152, v153, v154);
    objc_msgSend_setObject_forKeyedSubscript_(v54, v156, v155, kParmesanReaderUUIDStringKey);

    atCopy = v102;
    v61 = objc_msgSend_stringByAppendingPathComponent_(v102, v157, kParmesanReaderImagelistFileName, v158);
    v162 = objc_msgSend_logObject(NTKParmesanFaceBundle, v159, v160, v161);
    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v188 = v61;
      _os_log_impl(&dword_23BF0C000, v162, OS_LOG_TYPE_DEFAULT, "writing image list to path %@", buf, 0xCu);
    }

    if (objc_msgSend_writeToFile_atomically_(v54, v163, v61, 0))
    {

      v27 = 1;
      assetCopy = v177;
    }

    else
    {
      v68 = objc_msgSend_logObject(NTKParmesanFaceBundle, v164, v165, v166);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF81F4(v61, v68, v167, v168, v169, v170, v171, v172);
      }

      assetCopy = v177;
LABEL_37:

      objc_msgSend_removeItemAtPath_error_(v14, v173, atCopy, 0);
      v27 = 0;
    }

    v19 = 0;
  }

  return v27;
}

- (BOOL)_copyFile:(id)file to:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  toCopy = to;
  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8, v9);
  v18 = 0;
  objc_msgSend_copyItemAtPath_toPath_error_(v10, v11, fileCopy, toCopy, &v18);
  v12 = v18;

  if (v12)
  {
    v16 = objc_msgSend_logObject(NTKParmesanFaceBundle, v13, v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v20 = fileCopy;
      v21 = 2112;
      v22 = toCopy;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_23BF0C000, v16, OS_LOG_TYPE_ERROR, "_createResourceDirectoryForShuffle: cannot copy %@ to %@, error == %@", buf, 0x20u);
    }
  }

  return v12 == 0;
}

@end