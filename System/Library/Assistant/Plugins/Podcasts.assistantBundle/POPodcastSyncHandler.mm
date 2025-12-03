@interface POPodcastSyncHandler
- (POPodcastSyncHandler)init;
- (id)validity;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)syncDidEnd;
@end

@implementation POPodcastSyncHandler

- (POPodcastSyncHandler)init
{
  v12.receiver = self;
  v12.super_class = POPodcastSyncHandler;
  v6 = [(POPodcastSyncHandler *)&v12 init];
  if (v6)
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v2, v3, v4, v5);
    objc_msgSend_setAnchorToRevision_(v6, v8, v7, v9, v10);
  }

  return v6;
}

- (id)validity
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedInstance(PODataSource, a2, v2, v3, v4);
  v10 = objc_msgSend_validity(v5, v6, v7, v8, v9);

  POLogInitIfNeeded();
  if (POLogContextSync)
  {
    v11 = POLogContextSync;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_23352D000, v11, OS_LOG_TYPE_INFO, "Data source's validity is %@", &v14, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity count:(int64_t)count forKey:(id)key beginInfo:(id)info
{
  v115 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  validityCopy = validity;
  keyCopy = key;
  infoCopy = info;
  if (objc_msgSend_isEqual_(keyCopy, v15, @"com.apple.media.podcasts", v16, v17) && (anchorCopy | validityCopy || (objc_msgSend_sharedInstance(PODataSource, v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), isPodcastsInstalled = objc_msgSend_isPodcastsInstalled(v22, v23, v24, v25, v26), v22, (isPodcastsInstalled & 1) != 0)))
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v28 = POLogContextSync;
    }

    else
    {
      v28 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v108 = anchorCopy;
      v109 = 2112;
      v110 = validityCopy;
      v111 = 2112;
      v112 = keyCopy;
      v113 = 2112;
      v114 = infoCopy;
      _os_log_impl(&dword_23352D000, v28, OS_LOG_TYPE_INFO, "Begin sync with anchor getting called, anchor is %@, validity is %@, key is %@ and beginInfo is %@", buf, 0x2Au);
    }

    v33 = objc_msgSend_validity(self, v29, v30, v31, v32);
    isEqual = objc_msgSend_isEqual_(validityCopy, v34, v33, v35, v36);

    v100 = validityCopy;
    v99 = infoCopy;
    if ((isEqual & 1) == 0)
    {
      POLogInitIfNeeded();
      if (POLogContextSync)
      {
        v42 = POLogContextSync;
      }

      else
      {
        v42 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v47 = v42;
        v52 = objc_msgSend_validity(self, v48, v49, v50, v51);
        *buf = 138412290;
        v108 = v52;
        _os_log_impl(&dword_23352D000, v47, OS_LOG_TYPE_INFO, "Podcasts are resetting with validity %@", buf, 0xCu);
      }

      v53 = objc_msgSend_validity(self, v43, v44, v45, v46);
      objc_msgSend_resetWithValidity_(infoCopy, v54, v53, v55, v56);

      anchorCopy = @"0";
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v57 = objc_msgSend_sharedInstance(PODataSource, v38, v39, v40, v41);
    v101 = anchorCopy;
    v62 = objc_msgSend_longLongValue(anchorCopy, v58, v59, v60, v61);
    v66 = objc_msgSend_podcastRevisionsSinceAnchor_(v57, v63, v62, v64, v65);

    v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v102, v106, 16);
    if (v68)
    {
      v73 = v68;
      v74 = *v103;
      do
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v103 != v74)
          {
            objc_enumerationMutation(v66);
          }

          v76 = *(*(&v102 + 1) + 8 * i);
          v77 = MEMORY[0x277CCACA8];
          v78 = objc_msgSend_revisionID(v76, v69, v70, v71, v72);
          v82 = objc_msgSend_stringWithFormat_(v77, v79, @"%lu", v80, v81, v78);
          v87 = objc_msgSend_anchorToRevision(self, v83, v84, v85, v86);
          objc_msgSend_setObject_forKeyedSubscript_(v87, v88, v76, v82, v89);
        }

        v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v69, &v102, v106, 16);
      }

      while (v73);
    }

    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v90 = POLogContextSync;
    }

    else
    {
      v90 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      v91 = v90;
      v96 = objc_msgSend_anchorToRevision(self, v92, v93, v94, v95);
      *buf = 138412290;
      v108 = v96;
      _os_log_impl(&dword_23352D000, v91, OS_LOG_TYPE_INFO, "Anchors to revisions are %@", buf, 0xCu);
    }

    validityCopy = v100;
    anchorCopy = v101;
    infoCopy = v99;
  }

  else
  {
    POLogInitIfNeeded();
    if (POLogContextSync)
    {
      v97 = POLogContextSync;
    }

    else
    {
      v97 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23352D000, v97, OS_LOG_TYPE_INFO, "Nil anchor, nil validity, and podcasts isn't installed.  Nothing to sync.", buf, 2u);
    }
  }

  v98 = *MEMORY[0x277D85DE8];
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  v107 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  infoCopy = info;
  if (!anchorCopy)
  {
    anchorCopy = @"0";
  }

  v12 = objc_msgSend_anchorToRevision(self, v7, v8, v9, v10);
  v16 = objc_msgSend_objectForKeyedSubscript_(v12, v13, anchorCopy, v14, v15);

  if (v16)
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = objc_msgSend_revisionID(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_stringWithFormat_(v21, v23, @"%lu", v24, v25, v22 + 1);
    objc_msgSend_setPostAnchor_(infoCopy, v27, v26, v28, v29);

    v34 = objc_msgSend_revisionType(v16, v30, v31, v32, v33) == 2;
    objc_msgSend_setIsDelete_(infoCopy, v35, v34, v36, v37);
    if (objc_msgSend_isDelete(infoCopy, v38, v39, v40, v41))
    {
      v46 = objc_msgSend_deletedModelObject(v16, v42, v43, v44, v45);
      v51 = objc_msgSend_SAMPCollection(v46, v47, v48, v49, v50);
      objc_msgSend_setObject_(infoCopy, v52, v51, v53, v54);
      goto LABEL_11;
    }

    v46 = objc_msgSend_sharedInstance(PODataSource, v42, v43, v44, v45);
    v51 = objc_msgSend_objectID(v16, v91, v92, v93, v94);
    v87 = objc_msgSend_domainObjectWithUUID_(v46, v95, v51, v96, v97);
    objc_msgSend_setObject_(infoCopy, v98, v87, v99, v100);
  }

  else
  {
    v55 = objc_msgSend_anchorToRevision(self, v17, v18, v19, v20);
    v60 = objc_msgSend_allKeys(v55, v56, v57, v58, v59);

    v46 = objc_msgSend_sortedArrayUsingComparator_(v60, v61, &unk_2848D9E88, v62, v63);

    v68 = objc_msgSend_lastObject(v46, v64, v65, v66, v67);
    v51 = v68;
    if (!v68)
    {
      goto LABEL_11;
    }

    v73 = objc_msgSend_longLongValue(v68, v69, v70, v71, v72);
    if (v73 <= objc_msgSend_longLongValue(anchorCopy, v74, v75, v76, v77))
    {
      goto LABEL_11;
    }

    v82 = MEMORY[0x277CCACA8];
    v83 = objc_msgSend_longLongValue(anchorCopy, v78, v79, v80, v81);
    v87 = objc_msgSend_stringWithFormat_(v82, v84, @"%lli", v85, v86, v83 + 1);
    objc_msgSend_setPostAnchor_(infoCopy, v88, v87, v89, v90);
  }

LABEL_11:
  POLogInitIfNeeded();
  if (POLogContextSync)
  {
    v101 = POLogContextSync;
  }

  else
  {
    v101 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v104 = anchorCopy;
    v105 = 2112;
    v106 = infoCopy;
    _os_log_impl(&dword_23352D000, v101, OS_LOG_TYPE_INFO, "Get change getting called with anchor %@, changeInfo %@", buf, 0x16u);
  }

  v102 = *MEMORY[0x277D85DE8];
}

- (void)syncDidEnd
{
  POLogInitIfNeeded();
  if (POLogContextSync)
  {
    v3 = POLogContextSync;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_23352D000, v3, OS_LOG_TYPE_INFO, "syncDidEnd getting called", v7, 2u);
  }

  objc_msgSend_setAnchorToRevision_(self, v4, 0, v5, v6);
}

@end