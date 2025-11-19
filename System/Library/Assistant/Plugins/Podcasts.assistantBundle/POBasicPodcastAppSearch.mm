@interface POBasicPodcastAppSearch
- (id)modelObjectsAsSAMPCollections:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation POBasicPodcastAppSearch

- (id)modelObjectsAsSAMPCollections:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v3;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v29, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v9);
        }

        v19 = objc_msgSend_SAMPCollection(*(*(&v25 + 1) + 8 * i), v12, v13, v14, v15, v25);
        objc_msgSend_addObject_(v8, v20, v19, v21, v22);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v25, v29, 16);
    }

    while (v16);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)performWithCompletion:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  POLogInitIfNeeded();
  v5 = MEMORY[0x277D86220];
  if (POLogContextCommand)
  {
    v6 = POLogContextCommand;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v12 = objc_msgSend_query(self, v8, v9, v10, v11);
    v72 = 138412290;
    v73 = v12;
    _os_log_impl(&dword_23352D000, v7, OS_LOG_TYPE_INFO, "Going to do a basic search for %@", &v72, 0xCu);
  }

  v13 = objc_alloc_init(POBasicPodcastAppSearchCompleted);
  if (objc_msgSend_acceptPodcastCollections(self, v14, v15, v16, v17))
  {
    v22 = objc_msgSend_sharedInstance(PODataSource, v18, v19, v20, v21);
    v27 = objc_msgSend_query(self, v23, v24, v25, v26);
    v32 = objc_msgSend_maxResults(self, v28, v29, v30, v31);
    v35 = objc_msgSend_podcastCollectionsMatchingString_maxResults_(v22, v33, v27, v32, v34);

    POLogInitIfNeeded();
    if (POLogContextCommand)
    {
      v36 = POLogContextCommand;
    }

    else
    {
      v36 = v5;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v72 = 138412290;
      v73 = v35;
      _os_log_impl(&dword_23352D000, v36, OS_LOG_TYPE_INFO, "Data source podcasts are %@", &v72, 0xCu);
    }

    v40 = objc_msgSend_modelObjectsAsSAMPCollections_(self, v37, v35, v38, v39);
    objc_msgSend_setPodcastCollections_(v13, v41, v40, v42, v43);
  }

  if (objc_msgSend_acceptPodcastStations(self, v18, v19, v20, v21))
  {
    v48 = objc_msgSend_sharedInstance(PODataSource, v44, v45, v46, v47);
    v53 = objc_msgSend_query(self, v49, v50, v51, v52);
    v58 = objc_msgSend_maxResults(self, v54, v55, v56, v57);
    v61 = objc_msgSend_podcastStationsMatchingString_maxResults_(v48, v59, v53, v58, v60);

    POLogInitIfNeeded();
    if (POLogContextCommand)
    {
      v62 = POLogContextCommand;
    }

    else
    {
      v62 = v5;
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v72 = 138412290;
      v73 = v61;
      _os_log_impl(&dword_23352D000, v62, OS_LOG_TYPE_INFO, "Data source stations are %@", &v72, 0xCu);
    }

    v66 = objc_msgSend_modelObjectsAsSAMPCollections_(self, v63, v61, v64, v65);
    objc_msgSend_setPodcastStations_(v13, v67, v66, v68, v69);
  }

  v70 = objc_msgSend_dictionary(v13, v44, v45, v46, v47);
  v4[2](v4, v70);

  v71 = *MEMORY[0x277D85DE8];
}

@end