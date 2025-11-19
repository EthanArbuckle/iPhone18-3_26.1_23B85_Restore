@interface POPodcastModelObject
- (SAMPCollection)SAMPCollection;
- (id)description;
@end

@implementation POPodcastModelObject

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_title(self, v6, v7, v8, v9);
  v15 = objc_msgSend_indexPath(self, v11, v12, v13, v14);
  v20 = objc_msgSend_uuid(self, v16, v17, v18, v19);
  v24 = objc_msgSend_stringWithFormat_(v3, v21, @"%@ (%p) title: %@, index path: %@, uuid, %@", v22, v23, v5, self, v10, v15, v20);

  return v24;
}

- (SAMPCollection)SAMPCollection
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v8 = objc_alloc_init(objc_msgSend_SAMPClass(v3, v4, v5, v6, v7));
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v15 = objc_msgSend_uriScheme(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_uuid(self, v16, v17, v18, v19);
  v24 = objc_msgSend_stringWithFormat_(v9, v21, @"%@://device/%@", v22, v23, v15, v20);

  v28 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v25, v24, v26, v27);
  objc_msgSend_setIdentifier_(v8, v29, v28, v30, v31);

  v36 = objc_msgSend_title(self, v32, v33, v34, v35);
  objc_msgSend_setTitle_(v8, v37, v36, v38, v39);

  POLogInitIfNeeded();
  if (POLogContextCommand)
  {
    v40 = POLogContextCommand;
  }

  else
  {
    v40 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = v8;
    _os_log_impl(&dword_23352D000, v40, OS_LOG_TYPE_INFO, "Returning SAMPCollection %@", buf, 0xCu);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v8;
}

@end