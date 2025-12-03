@interface PODataSource
+ (id)sharedInstance;
- (BOOL)isPodcastDataStale;
- (BOOL)isPodcastRevisionDataStale;
- (BOOL)isPodcastsInstalled;
- (NSMutableArray)podcastRevisions;
- (NSMutableDictionary)podcastCollectionsByUUID;
- (NSMutableDictionary)podcastStationsByUUID;
- (PODataSource)initWithPlistPath:(id)path;
- (id)arrayFromPlistURL:(id)l;
- (id)constructModelObjectOfClass:(Class)class fromDictionary:(id)dictionary;
- (id)constructModelObjectsFromDictionaries:(id)dictionaries withIndexPath:(id)path modelObjectClass:(Class)class;
- (id)description;
- (id)domainObjectWithUUID:(id)d;
- (id)podcastCollectionWithUUID:(id)d;
- (id)podcastCollections;
- (id)podcastCollectionsMatchingString:(id)string maxResults:(int64_t)results;
- (id)podcastModelObjectsInArray:(id)array matchingString:(id)string maxResults:(int64_t)results;
- (id)podcastRevisionsSinceAnchor:(unint64_t)anchor;
- (id)podcastStationWithUUID:(id)d;
- (id)podcastStations;
- (id)podcastStationsMatchingString:(id)string maxResults:(int64_t)results;
- (id)validity;
- (void)_withExtensionParseDataDictionary:(id)dictionary revisionDictionary:(id)revisionDictionary;
- (void)getContainerURL:(id)l;
- (void)getDatabaseURL:(id)l;
- (void)getRevisionURL:(id)l;
- (void)getURLs:(id)ls;
- (void)initializeDataFromDictionary;
@end

@implementation PODataSource

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_233532C18;
  block[3] = &unk_2789DE4B0;
  block[4] = self;
  if (qword_2814EEA70 != -1)
  {
    dispatch_once(&qword_2814EEA70, block);
  }

  v2 = qword_2814EEA68;

  return v2;
}

- (PODataSource)initWithPlistPath:(id)path
{
  v43 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v40.receiver = self;
  v40.super_class = PODataSource;
  v9 = [(PODataSource *)&v40 init];
  if (v9)
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
    objc_msgSend_setPodcastCollectionsByUUID_(v9, v11, v10, v12, v13);

    v18 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v14, v15, v16, v17);
    objc_msgSend_setPodcastStationsByUUID_(v9, v19, v18, v20, v21);

    v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v22, v23, v24, v25);
    objc_msgSend_setPodcastRevisions_(v9, v27, v26, v28, v29);

    objc_msgSend_setPlistBasePath_(v9, v30, pathCopy, v31, v32);
    objc_msgSend_initializeDataFromDictionary(v9, v33, v34, v35, v36);
  }

  POLogInitIfNeeded();
  if (POLogContextSync)
  {
    v37 = POLogContextSync;
  }

  else
  {
    v37 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = v9;
    _os_log_impl(&dword_23352D000, v37, OS_LOG_TYPE_INFO, "Data source is %@", buf, 0xCu);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)arrayFromPlistURL:(id)l
{
  lCopy = l;
  v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5, v6, v7);
  v13 = objc_msgSend_path(lCopy, v9, v10, v11, v12);
  v17 = objc_msgSend_contentsAtPath_(v8, v14, v13, v15, v16);

  if (v17)
  {
    v25 = 0;
    v19 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v18, v17, 0, 0, &v25);
    v20 = v25;
    if (!v20)
    {
      v21 = 0;
      if (v19)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  POLogInitIfNeeded();
  if (POLogContextSync)
  {
    v22 = POLogContextSync;
  }

  else
  {
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_23353832C();
  }

  v23 = _MTLogCategorySiri();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    sub_2335383B0();
  }

  v21 = v20;
LABEL_14:

  return v19;
}

- (BOOL)isPodcastsInstalled
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v9 = 0;
  v4 = objc_msgSend_initWithBundleIdentifier_allowPlaceholder_error_(v2, v3, @"com.apple.podcasts", 0, &v9);
  v5 = v9;
  if (v5)
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v6 = POLogContextSync;
    }

    else
    {
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_23352D000, v6, OS_LOG_TYPE_INFO, "Could not load application record. If the Podcasts app is actually installed, this represents an error: %@.", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

- (void)getURLs:(id)ls
{
  lsCopy = ls;
  v9 = objc_msgSend_plistBasePath(self, v5, v6, v7, v8);

  if (v9)
  {
    v14 = objc_msgSend_plistBasePath(self, v10, v11, v12, v13);
    v18 = objc_msgSend_URLByAppendingPathComponent_(v14, v15, @"PodcastsDB.plist", v16, v17);

    v23 = objc_msgSend_plistBasePath(self, v19, v20, v21, v22);
    v27 = objc_msgSend_URLByAppendingPathComponent_(v23, v24, @"PodcastsDiff.plist", v25, v26);

    lsCopy[2](lsCopy, v18, v27, 0);
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_233533168;
    v31[3] = &unk_2789DE4D8;
    v32 = lsCopy;
    objc_msgSend_getContainerURL_(self, v28, v31, v29, v30);
  }
}

- (void)getDatabaseURL:(id)l
{
  lCopy = l;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2335332A8;
  v9[3] = &unk_2789DE500;
  v10 = lCopy;
  v5 = lCopy;
  objc_msgSend_getURLs_(self, v6, v9, v7, v8);
}

- (void)getRevisionURL:(id)l
{
  lCopy = l;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_233533350;
  v9[3] = &unk_2789DE500;
  v10 = lCopy;
  v5 = lCopy;
  objc_msgSend_getURLs_(self, v6, v9, v7, v8);
}

- (void)getContainerURL:(id)l
{
  v43[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v4 = container_query_create();
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_include_other_owners();
    v5 = xpc_string_create("com.apple.podcasts");
    container_query_set_identifiers();
    if (!container_query_get_single_result())
    {
      if (container_query_get_last_error() && (v22 = container_error_copy_unlocalized_description()) != 0)
      {
        v26 = v22;
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v22, v24, v25);
        v29 = v27;
        if (v27)
        {
          v42 = *MEMORY[0x277CCA068];
          v43[0] = v27;
          v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v43, &v42, 1);
        }

        else
        {
          v30 = 0;
        }

        free(v26);
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      v36 = _MTLogCategorySiri();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v40 = 138412290;
        v41 = v29;
        _os_log_impl(&dword_23352D000, v36, OS_LOG_TYPE_INFO, "We could not access the podcasts container. This probably means the app isn't installed. Description: '%@'", &v40, 0xCu);
      }

      v38 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v37, @"PODataSourceErrorDomain", 1, v30);
      lCopy[2](lCopy, 0, v38);

      goto LABEL_39;
    }

    v6 = container_copy_sandbox_token();
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = v6;
    v8 = sandbox_extension_consume();
    v9 = _MTLogCategorySiri();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v40 = 134217984;
      v41 = v8;
      _os_log_impl(&dword_23352D000, v9, OS_LOG_TYPE_INFO, "Consumed sandbox token and received handle %lli", &v40, 0xCu);
    }

    free(v7);
    if (v8)
    {
      path = container_get_path();
      if (v8 == -1)
      {
        v33 = _MTLogCategorySiri();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v40) = 0;
          _os_log_impl(&dword_23352D000, v33, OS_LOG_TYPE_ERROR, "Something went wrong with getting the sandbox extension.", &v40, 2u);
        }

        v35 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v34, @"PODataSourceErrorDomain", 2, 0);
        lCopy[2](lCopy, 0, v35);

        if (!v4)
        {
          goto LABEL_39;
        }

LABEL_29:
        container_query_free();
LABEL_39:

        goto LABEL_40;
      }

      v11 = path;
    }

    else
    {
LABEL_9:
      v12 = _MTLogCategorySiri();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_23352D000, v12, OS_LOG_TYPE_INFO, "Handle is 0. Maybe we were not issued a token, the app is not sandboxed, or this extension is not needed to access the container.", &v40, 2u);
      }

      v11 = container_get_path();
      v8 = 0;
    }

    v13 = _MTLogCategorySiri();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v14)
      {
        v40 = 136315138;
        v41 = v11;
        _os_log_impl(&dword_23352D000, v13, OS_LOG_TYPE_INFO, "Found container path %s", &v40, 0xCu);
      }

      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v11, v16, v17);
      v21 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v19, v18, 1, v20);
      (lCopy)[2](lCopy, v21, 0);
    }

    else
    {
      if (v14)
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_23352D000, v13, OS_LOG_TYPE_INFO, "We could not access the podcasts container. This probably means the app isn't installed.", &v40, 2u);
      }

      v18 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v31, @"PODataSourceErrorDomain", 1, 0);
      lCopy[2](lCopy, 0, v18);
    }

    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = _MTLogCategorySiri();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v40 = 134217984;
        v41 = v8;
        _os_log_impl(&dword_23352D000, v32, OS_LOG_TYPE_INFO, "Releasing sandbox extension %lli", &v40, 0xCu);
      }

      sandbox_extension_release();
    }

    if (!v4)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

LABEL_40:

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPodcastRevisionDataStale
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_233533904;
  v6[3] = &unk_2789DE528;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_getRevisionURL_(self, a2, v6, v2, v3);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isPodcastDataStale
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_233533AE8;
  v6[3] = &unk_2789DE528;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_getDatabaseURL_(self, a2, v6, v2, v3);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NSMutableDictionary)podcastCollectionsByUUID
{
  v3 = self->_podcastCollectionsByUUID;
  objc_sync_enter(v3);
  if (objc_msgSend_isPodcastDataStale(self, v4, v5, v6, v7) && (objc_msgSend_constructingData(self, v8, v9, v10, v11) & 1) == 0)
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v12 = POLogContextSync;
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_23352D000, v12, OS_LOG_TYPE_INFO, "Podcast data is stale, going to reinitialize from plist.", v19, 2u);
    }

    objc_msgSend_initializeDataFromDictionary(self, v13, v14, v15, v16);
  }

  objc_sync_exit(v3);

  podcastCollectionsByUUID = self->_podcastCollectionsByUUID;

  return podcastCollectionsByUUID;
}

- (NSMutableDictionary)podcastStationsByUUID
{
  v3 = self->_podcastStationsByUUID;
  objc_sync_enter(v3);
  if (objc_msgSend_isPodcastDataStale(self, v4, v5, v6, v7) && (objc_msgSend_constructingData(self, v8, v9, v10, v11) & 1) == 0)
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v12 = POLogContextSync;
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_23352D000, v12, OS_LOG_TYPE_INFO, "Podcast data is stale, going to reinitialize from plist.", v19, 2u);
    }

    objc_msgSend_initializeDataFromDictionary(self, v13, v14, v15, v16);
  }

  objc_sync_exit(v3);

  podcastStationsByUUID = self->_podcastStationsByUUID;

  return podcastStationsByUUID;
}

- (id)validity
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_databaseUUID(self, a2, v2, v3, v4);
  v12 = objc_msgSend_firstRevisionUUID(self, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"%@-%@", v14, v15, v7, v12);

  return v16;
}

- (NSMutableArray)podcastRevisions
{
  v3 = self->_podcastRevisions;
  objc_sync_enter(v3);
  if (objc_msgSend_isPodcastRevisionDataStale(self, v4, v5, v6, v7) && (objc_msgSend_constructingData(self, v8, v9, v10, v11) & 1) == 0)
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v12 = POLogContextSync;
    }

    else
    {
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_23352D000, v12, OS_LOG_TYPE_INFO, "Podcast revision data is stale, going to reinitialize from plist.", v19, 2u);
    }

    objc_msgSend_initializeDataFromDictionary(self, v13, v14, v15, v16);
  }

  objc_sync_exit(v3);

  podcastRevisions = self->_podcastRevisions;

  return podcastRevisions;
}

- (void)initializeDataFromDictionary
{
  if (objc_msgSend_constructingData(self, a2, v2, v3, v4))
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v9 = POLogContextSync;
    }

    else
    {
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_233538504(v9);
    }
  }

  else
  {
    objc_msgSend_setConstructingData_(self, v6, 1, v7, v8);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_233534034;
    v16[3] = &unk_2789DE550;
    v16[4] = self;
    objc_msgSend_getURLs_(self, v10, v16, v11, v12);
    objc_msgSend_setConstructingData_(self, v13, 0, v14, v15);
  }
}

- (void)_withExtensionParseDataDictionary:(id)dictionary revisionDictionary:(id)revisionDictionary
{
  v194 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  revisionDictionaryCopy = revisionDictionary;
  v11 = objc_msgSend_arrayFromPlistURL_(self, v8, dictionaryCopy, v9, v10);
  v15 = objc_msgSend_arrayFromPlistURL_(self, v12, revisionDictionaryCopy, v13, v14);
  POLogInitIfNeeded();
  v16 = MEMORY[0x277D86220];
  if (POLogContextSync)
  {
    v17 = POLogContextSync;
  }

  else
  {
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v193 = dictionaryCopy;
    _os_log_impl(&dword_23352D000, v17, OS_LOG_TYPE_INFO, "Constructing data source from %@", buf, 0xCu);
  }

  v181 = revisionDictionaryCopy;
  if (!v11)
  {
    goto LABEL_38;
  }

  v22 = objc_msgSend_objectAtIndexedSubscript_(v11, v18, 0, v20, v21);
  v26 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"children", v24, v25);
  v31 = v26;
  if (!v26)
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v108 = POLogContextSync;
    }

    else
    {
      v108 = v16;
    }

    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      sub_233538618();
    }

    goto LABEL_20;
  }

  if (objc_msgSend_count(v26, v27, v28, v29, v30) == 2)
  {
    v177 = v15;
    v179 = v11;
    v35 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, 0, v33, v34);
    v39 = objc_msgSend_objectForKeyedSubscript_(v35, v36, @"children", v37, v38);

    v43 = objc_msgSend_objectAtIndexedSubscript_(v31, v40, 1, v41, v42);
    v47 = objc_msgSend_objectForKeyedSubscript_(v43, v44, @"children", v45, v46);

    v51 = objc_msgSend_indexPathWithIndex_(MEMORY[0x277CCAA70], v48, 0, v49, v50);
    v52 = objc_opt_class();
    obj = v39;
    v54 = objc_msgSend_constructModelObjectsFromDictionaries_withIndexPath_modelObjectClass_(self, v53, v39, v51, v52);

    objc_msgSend_removeAllObjects(self->_podcastCollectionsByUUID, v55, v56, v57, v58);
    objc_msgSend_addEntriesFromDictionary_(self->_podcastCollectionsByUUID, v59, v54, v60, v61);
    v65 = objc_msgSend_indexPathWithIndex_(MEMORY[0x277CCAA70], v62, 1, v63, v64);
    v66 = objc_opt_class();
    v182 = v47;
    v68 = objc_msgSend_constructModelObjectsFromDictionaries_withIndexPath_modelObjectClass_(self, v67, v47, v65, v66);

    objc_msgSend_removeAllObjects(self->_podcastStationsByUUID, v69, v70, v71, v72);
    objc_msgSend_addEntriesFromDictionary_(self->_podcastStationsByUUID, v73, v68, v74, v75);
    v80 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v76, v77, v78, v79);
    v81 = dictionaryCopy;
    v86 = objc_msgSend_path(dictionaryCopy, v82, v83, v84, v85);
    v89 = objc_msgSend_attributesOfItemAtPath_error_(v80, v87, v86, 0, v88);
    v94 = objc_msgSend_fileModificationDate(v89, v90, v91, v92, v93);
    objc_msgSend_setPodcastDataPlistLastModified_(self, v95, v94, v96, v97);

    v16 = MEMORY[0x277D86220];
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v98 = POLogContextSync;
    }

    else
    {
      v98 = v16;
    }

    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      v99 = v98;
      v104 = objc_msgSend_podcastDataPlistLastModified(self, v100, v101, v102, v103);
      *buf = 138412290;
      v193 = v104;
      _os_log_impl(&dword_23352D000, v99, OS_LOG_TYPE_INFO, "Podcast data last modified is %@", buf, 0xCu);
    }

    dictionaryCopy = v81;
    v15 = v177;
    v11 = v179;
LABEL_20:
    v112 = objc_msgSend_objectForKeyedSubscript_(v22, v105, @"uuid", v106, v107);
    if (v112)
    {
      objc_msgSend_setDatabaseUUID_(self, v109, v112, v110, v111);
      POLogInitIfNeeded();
      if (POLogContextSync)
      {
        v113 = POLogContextSync;
      }

      else
      {
        v113 = v16;
      }

      if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
      {
        v114 = v113;
        objc_msgSend_databaseUUID(self, v115, v116, v117, v118);
        v120 = v119 = v15;
        *buf = 138412290;
        v193 = v120;
        _os_log_impl(&dword_23352D000, v114, OS_LOG_TYPE_INFO, "Database UUID is %@", buf, 0xCu);

        v15 = v119;
      }
    }

    else
    {
      POLogInitIfNeeded();
      if (POLogContextSync)
      {
        v122 = POLogContextSync;
      }

      else
      {
        v122 = v16;
      }

      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        sub_233538680();
      }
    }

    revisionDictionaryCopy = v181;
LABEL_38:
    if (v15)
    {
      v180 = v11;
      v176 = dictionaryCopy;
      objc_msgSend_removeAllObjects(self->_podcastRevisions, v18, v19, v20, v21);
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v178 = v15;
      obja = v15;
      v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v123, &v187, v191, 16);
      if (v124)
      {
        v128 = v124;
        v129 = *v188;
        v130 = 1;
        do
        {
          for (i = 0; i != v128; ++i)
          {
            if (*v188 != v129)
            {
              objc_enumerationMutation(obja);
            }

            v132 = *(*(&v187 + 1) + 8 * i);
            if (v130)
            {
              v136 = objc_msgSend_objectForKeyedSubscript_(*(*(&v187 + 1) + 8 * i), v125, @"uuid", v126, v127);
              if (v136)
              {
                objc_msgSend_setFirstRevisionUUID_(self, v133, v136, v134, v135);
                POLogInitIfNeeded();
                if (POLogContextSync)
                {
                  v137 = POLogContextSync;
                }

                else
                {
                  v137 = v16;
                }

                if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
                {
                  v138 = v137;
                  v143 = objc_msgSend_firstRevisionUUID(self, v139, v140, v141, v142);
                  *buf = 138412290;
                  v193 = v143;
                  _os_log_impl(&dword_23352D000, v138, OS_LOG_TYPE_INFO, "First Revision UUID is %@", buf, 0xCu);

                  v16 = MEMORY[0x277D86220];
                }
              }

              else
              {
                POLogInitIfNeeded();
                if (POLogContextSync)
                {
                  v144 = POLogContextSync;
                }

                else
                {
                  v144 = v16;
                }

                if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
                {
                  sub_2335386E8(&v185, v186, v144);
                }
              }
            }

            v148 = objc_msgSend_objectForKeyedSubscript_(v132, v125, @"podcasts", v126, v127);
            if (v148)
            {
              objc_msgSend_constructRevisionsFromDictionary_isPodcastCollections_(self, v145, v148, 1, v147);
            }

            v151 = objc_msgSend_objectForKeyedSubscript_(v132, v145, @"stations", v146, v147);
            if (v151)
            {
              objc_msgSend_constructRevisionsFromDictionary_isPodcastCollections_(self, v149, v151, 0, v150);
            }

            v130 = 0;
          }

          v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v125, &v187, v191, 16);
          v130 = 0;
        }

        while (v128);
      }

      v156 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v152, v153, v154, v155);
      revisionDictionaryCopy = v181;
      v161 = objc_msgSend_path(v181, v157, v158, v159, v160);
      v164 = objc_msgSend_attributesOfItemAtPath_error_(v156, v162, v161, 0, v163);
      v169 = objc_msgSend_fileModificationDate(v164, v165, v166, v167, v168);
      objc_msgSend_setRevisionsDataPlistLastModified_(self, v170, v169, v171, v172);

      POLogInitIfNeeded();
      if (POLogContextSync)
      {
        v173 = POLogContextSync;
      }

      else
      {
        v173 = v16;
      }

      dictionaryCopy = v176;
      v15 = v178;
      v11 = v180;
      if (os_log_type_enabled(v173, OS_LOG_TYPE_INFO))
      {
        podcastRevisions = self->_podcastRevisions;
        *buf = 138412290;
        v193 = podcastRevisions;
        _os_log_impl(&dword_23352D000, v173, OS_LOG_TYPE_INFO, "Podcast revisions are %@", buf, 0xCu);
      }
    }

    goto LABEL_68;
  }

  POLogInitIfNeeded();
  if (POLogContextSync)
  {
    v121 = POLogContextSync;
  }

  else
  {
    v121 = v16;
  }

  if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
  {
    sub_2335385B0();
  }

  revisionDictionaryCopy = v181;
LABEL_68:

  v175 = *MEMORY[0x277D85DE8];
}

- (id)constructModelObjectOfClass:(Class)class fromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = objc_alloc_init(class);
  v10 = objc_msgSend_objectForKey_(dictionaryCopy, v7, @"uuid", v8, v9);
  objc_msgSend_setUuid_(v6, v11, v10, v12, v13);

  v17 = objc_msgSend_objectForKey_(dictionaryCopy, v14, @"title", v15, v16);
  objc_msgSend_setTitle_(v6, v18, v17, v19, v20);

  v24 = objc_msgSend_objectForKey_(dictionaryCopy, v21, @"feedUrl", v22, v23);
  objc_msgSend_setFeedUrl_(v6, v25, v24, v26, v27);

  v31 = objc_msgSend_objectForKey_(dictionaryCopy, v28, @"storeId", v29, v30);

  objc_msgSend_setStoreId_(v6, v32, v31, v33, v34);

  return v6;
}

- (id)constructModelObjectsFromDictionaries:(id)dictionaries withIndexPath:(id)path modelObjectClass:(Class)class
{
  v47 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  pathCopy = path;
  v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11, v12, v13);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = dictionariesCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v42, v46, 16);
  if (v16)
  {
    v19 = v16;
    v20 = 0;
    v21 = *v43;
    do
    {
      v22 = 0;
      v23 = v20;
      do
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = objc_msgSend_constructModelObjectOfClass_fromDictionary_(self, v17, class, *(*(&v42 + 1) + 8 * v22), v18);
        v20 = v23 + 1;
        v28 = objc_msgSend_indexPathByAddingIndex_(pathCopy, v25, v23, v26, v27);
        objc_msgSend_setIndexPath_(v24, v29, v28, v30, v31);

        v36 = objc_msgSend_uuid(v24, v32, v33, v34, v35);
        objc_msgSend_setObject_forKeyedSubscript_(v14, v37, v24, v36, v38);

        ++v22;
        v23 = v20;
      }

      while (v19 != v22);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v42, v46, 16);
    }

    while (v19);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)podcastModelObjectsInArray:(id)array matchingString:(id)string maxResults:(int64_t)results
{
  v36 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  stringCopy = string;
  v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11, v12);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = arrayCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v31, v35, 16);
  if (v16)
  {
    v21 = v16;
    v22 = *v32;
LABEL_3:
    v23 = 0;
    while (1)
    {
      if (*v32 != v22)
      {
        objc_enumerationMutation(v14);
      }

      v24 = *(*(&v31 + 1) + 8 * v23);
      v25 = objc_msgSend_title(v24, v17, v18, v19, v20, v31);
      v28 = objc_msgSend_rangeOfString_options_(v25, v26, stringCopy, 1, v27);

      if (v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_addObject_(v13, v17, v24, v19, v20);
      }

      if (results >= 1 && objc_msgSend_count(v13, v17, v18, v19, v20) == results)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v31, v35, 16);
        if (v21)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)podcastCollectionsMatchingString:(id)string maxResults:(int64_t)results
{
  stringCopy = string;
  v11 = objc_msgSend_podcastCollections(self, v7, v8, v9, v10);
  v13 = objc_msgSend_podcastModelObjectsInArray_matchingString_maxResults_(self, v12, v11, stringCopy, results);

  return v13;
}

- (id)podcastStationsMatchingString:(id)string maxResults:(int64_t)results
{
  stringCopy = string;
  v11 = objc_msgSend_podcastStations(self, v7, v8, v9, v10);
  v13 = objc_msgSend_podcastModelObjectsInArray_matchingString_maxResults_(self, v12, v11, stringCopy, results);

  return v13;
}

- (id)podcastCollectionWithUUID:(id)d
{
  dCopy = d;
  v9 = objc_msgSend_podcastCollectionsByUUID(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, dCopy, v11, v12);

  return v13;
}

- (id)podcastCollections
{
  v5 = objc_msgSend_podcastCollectionsByUUID(self, a2, v2, v3, v4);
  v10 = objc_msgSend_allValues(v5, v6, v7, v8, v9);

  return v10;
}

- (id)podcastStationWithUUID:(id)d
{
  dCopy = d;
  v9 = objc_msgSend_podcastStationsByUUID(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, dCopy, v11, v12);

  return v13;
}

- (id)podcastStations
{
  v5 = objc_msgSend_podcastStationsByUUID(self, a2, v2, v3, v4);
  v10 = objc_msgSend_allValues(v5, v6, v7, v8, v9);

  return v10;
}

- (id)podcastRevisionsSinceAnchor:(unint64_t)anchor
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, anchor, v3, v4);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = objc_msgSend_podcastRevisions(self, v8, v9, v10, v11, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v25, v29, 16);
  if (v14)
  {
    v19 = v14;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v12);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        if (objc_msgSend_revisionID(v22, v15, v16, v17, v18) >= anchor)
        {
          objc_msgSend_addObject_(v7, v15, v22, v17, v18);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v25, v29, 16);
    }

    while (v19);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)domainObjectWithUUID:(id)d
{
  dCopy = d;
  v9 = objc_msgSend_podcastCollectionsByUUID(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, dCopy, v11, v12);

  if (!v13)
  {
    v18 = objc_msgSend_podcastStationsByUUID(self, v14, v15, v16, v17);
    v13 = objc_msgSend_objectForKeyedSubscript_(v18, v19, dCopy, v20, v21);
  }

  v22 = objc_msgSend_SAMPCollection(v13, v14, v15, v16, v17);

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_podcastCollectionsByUUID(self, v6, v7, v8, v9);
  v15 = objc_msgSend_podcastStationsByUUID(self, v11, v12, v13, v14);
  v19 = objc_msgSend_stringWithFormat_(v3, v16, @"%@ (%p) podcast collections: %@, podcast stations: %@", v17, v18, v5, self, v10, v15);

  return v19;
}

@end