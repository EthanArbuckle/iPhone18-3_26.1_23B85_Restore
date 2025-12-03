@interface CKDirectoryPurger
+ (void)purgeDirectoryAtURL:(id)l;
- (CKDirectoryPurger)initWithDirectoryURLs:(id)ls;
- (void)purge;
@end

@implementation CKDirectoryPurger

+ (void)purgeDirectoryAtURL:(id)l
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (l)
  {
    lCopy = l;
    v4 = [CKDirectoryPurger alloc];
    v13[0] = lCopy;
    v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, v13, 1);

    v8 = objc_msgSend_initWithDirectoryURLs_(v4, v7, v6);
    objc_msgSend_setShouldRemoveFileBlock_(v8, v9, &unk_1EFA306F0);
    objc_msgSend_purge(v8, v10, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (CKDirectoryPurger)initWithDirectoryURLs:(id)ls
{
  lsCopy = ls;
  v11.receiver = self;
  v11.super_class = CKDirectoryPurger;
  v7 = [(CKDirectoryPurger *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_CKDeepCopy(lsCopy, v5, v6);
    urls = v7->_urls;
    v7->_urls = v8;
  }

  return v7;
}

- (void)purge
{
  v124[3] = *MEMORY[0x1E69E9840];
  v91 = objc_msgSend_shouldSkipFileBlock(self, a2, v2);
  v90 = objc_msgSend_shouldRemoveFileBlock(self, v4, v5);
  v87 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v6, v7);
  v8 = *MEMORY[0x1E695DB78];
  v96 = *MEMORY[0x1E695DC30];
  v124[0] = *MEMORY[0x1E695DC30];
  v124[1] = v8;
  v94 = v8;
  v93 = *MEMORY[0x1E695DAA8];
  v124[2] = *MEMORY[0x1E695DAA8];
  v83 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v124, 3);
  v86 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateFormat_(v86, v10, @"yyyy-MM-dd HH:mm:ss");
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v108 = 0u;
  obj = objc_msgSend_urls(self, v11, v12);
  v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v108, v123, 16);
  if (v84)
  {
    v82 = *v109;
    do
    {
      v15 = 0;
      do
      {
        if (*v109 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v85 = v15;
        v16 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v87, v14, *(*(&v108 + 1) + 8 * v15), v83, 0, &unk_1EFA30710);
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v95 = v16;
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v104, v122, 16);
        if (v18)
        {
          v20 = v18;
          v21 = *v105;
          do
          {
            v22 = 0;
            do
            {
              if (*v105 != v21)
              {
                objc_enumerationMutation(v95);
              }

              v23 = *(*(&v104 + 1) + 8 * v22);
              v102 = 0;
              v103 = 0;
              ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v23, v19, &v103, v96, &v102);
              v25 = v103;
              v27 = v102;
              if (!ResourceValue_forKey_error)
              {
                v33 = 0;
                v29 = 0;
                goto LABEL_29;
              }

              v100 = 0;
              v101 = 0;
              v28 = objc_msgSend_getResourceValue_forKey_error_(v23, v26, &v101, v94, &v100);
              v29 = v101;
              v30 = v100;

              if (!v28)
              {
                v33 = 0;
                v27 = v30;
LABEL_29:
                if (ck_log_initialization_predicate != -1)
                {
                  dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                }

                v54 = ck_log_facility_ck;
                if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
                {
                  v55 = v54;
                  v58 = objc_msgSend_CKSanitizedPath(v23, v56, v57);
                  *buf = 138543618;
                  v113 = v58;
                  v114 = 2112;
                  v115 = v27;
                  v59 = v55;
                  v60 = "Warn: Failed to get the resource value at %{public}@: %@";
LABEL_33:
                  _os_log_impl(&dword_1883EA000, v59, OS_LOG_TYPE_INFO, v60, buf, 0x16u);

                  goto LABEL_34;
                }

                goto LABEL_34;
              }

              v98 = 0;
              v99 = 0;
              v32 = objc_msgSend_getResourceValue_forKey_error_(v23, v31, &v99, v93, &v98);
              v33 = v99;
              v27 = v98;

              if ((v32 & 1) == 0)
              {
                goto LABEL_29;
              }

              if (v25 && v29 && v33)
              {
                v36 = objc_msgSend_level(v95, v34, v35);
                v39 = objc_msgSend_date(MEMORY[0x1E695DF00], v37, v38);
                objc_msgSend_timeIntervalSinceDate_(v39, v40, v33);
                v42 = v41;

                v45 = objc_msgSend_BOOLValue(v29, v43, v44);
                v92 = v36;
                if (v91 && v91[2]())
                {
                  if (v45)
                  {
                    objc_msgSend_skipDescendants(v95, v46, v47);
                  }

                  if (ck_log_initialization_predicate != -1)
                  {
                    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                  }

                  v48 = ck_log_facility_ck;
                  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
                  {
                    log = v48;
                    v52 = objc_msgSend_path(v23, v49, v50);
                    if (v45)
                    {
                      v53 = @"d";
                    }

                    else
                    {
                      v53 = @"f";
                    }

LABEL_54:
                    v75 = objc_msgSend_stringFromDate_(v86, v51, v33);
                    *buf = 138544386;
                    v113 = v52;
                    v114 = 2114;
                    v115 = v53;
                    v116 = 2048;
                    v117 = v92;
                    v118 = 2114;
                    v119 = v75;
                    v120 = 2048;
                    v121 = v42;
                    _os_log_debug_impl(&dword_1883EA000, log, OS_LOG_TYPE_DEBUG, "Skipped %{public}@, %{public}@/%lu, creationDate:%{public}@ (%llds)", buf, 0x34u);
                  }
                }

                else if (v90 && (v90[2]() & 1) != 0)
                {
                  if (v45)
                  {
                    objc_msgSend_skipDescendants(v95, v61, v62);
                  }

                  v97 = v27;
                  v63 = objc_msgSend_removeItemAtURL_error_(v87, v61, v23, &v97);
                  loga = v97;

                  if (v63)
                  {
                    if (ck_log_initialization_predicate != -1)
                    {
                      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                    }

                    v64 = ck_log_facility_ck;
                    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
                    {
                      v65 = v64;
                      v69 = objc_msgSend_path(v23, v66, v67);
                      if (v45)
                      {
                        v70 = @"d";
                      }

                      else
                      {
                        v70 = @"f";
                      }

                      v71 = objc_msgSend_stringFromDate_(v86, v68, v33);
                      *buf = 138544386;
                      v113 = v69;
                      v114 = 2114;
                      v115 = v70;
                      v116 = 2048;
                      v117 = v92;
                      v118 = 2114;
                      v119 = v71;
                      v120 = 2048;
                      v121 = v42;
                      _os_log_impl(&dword_1883EA000, v65, OS_LOG_TYPE_INFO, "Removed %{public}@, %{public}@/%lu, creationDate:%{public}@ (%llds)", buf, 0x34u);
                    }
                  }

                  else
                  {
                    if (ck_log_initialization_predicate != -1)
                    {
                      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                    }

                    v76 = ck_log_facility_ck;
                    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
                    {
                      v55 = v76;
                      v58 = objc_msgSend_CKSanitizedPath(v23, v77, v78);
                      *buf = 138543618;
                      v113 = v58;
                      v114 = 2112;
                      v27 = loga;
                      v115 = loga;
                      v59 = v55;
                      v60 = "Warn: Failed to remove %{public}@: %@";
                      goto LABEL_33;
                    }
                  }

                  v27 = loga;
                }

                else
                {
                  if (ck_log_initialization_predicate != -1)
                  {
                    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                  }

                  v72 = ck_log_facility_ck;
                  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
                  {
                    log = v72;
                    v52 = objc_msgSend_path(v23, v73, v74);
                    if (v45)
                    {
                      v53 = @"d";
                    }

                    else
                    {
                      v53 = @"f";
                    }

                    goto LABEL_54;
                  }
                }
              }

LABEL_34:

              ++v22;
            }

            while (v20 != v22);
            v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v19, &v104, v122, 16);
            v20 = v79;
          }

          while (v79);
        }

        v15 = v85 + 1;
      }

      while (v85 + 1 != v84);
      v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v108, v123, 16);
    }

    while (v84);
  }

  v80 = *MEMORY[0x1E69E9840];
}

@end