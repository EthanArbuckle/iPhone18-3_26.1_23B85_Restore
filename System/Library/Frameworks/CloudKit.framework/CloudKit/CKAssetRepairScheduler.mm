@interface CKAssetRepairScheduler
+ (id)nameForEvent:(int64_t)event;
+ (int64_t)canCopyFromFileURL:(id)l toDirectoryURL:(id)rL;
+ (unint64_t)estimatedSizeForAssetOrPackage:(id)package;
- (BOOL)hasPendingWork;
- (CKAssetRepairScheduler)initWithContainer:(id)container repairContainerOverrides:(id)overrides;
- (CKAssetRepairSchedulerDelegate)delegate;
- (NSURL)temporaryAssetDirectory;
- (double)defaultSuspensionTime;
- (double)requestTimeout;
- (id)allRemainingRequestableAssets;
- (id)allRemainingUploadableAssets;
- (id)clonedAsset:(id)asset withError:(id *)error;
- (int64_t)cacheCountLimit;
- (int64_t)repairBatchCountLimit;
- (int64_t)repairRetryCount;
- (void)addUploadRequestsWithMetadata:(id)metadata requestBlocks:(id)blocks;
- (void)cancelAllOperations;
- (void)clearAssetCache;
- (void)dealloc;
- (void)removeUploadRequestWithRecordID:(id)d;
@end

@implementation CKAssetRepairScheduler

- (double)requestTimeout
{
  result = self->_requestTimeout;
  if (result == -1.0)
  {
    return 15.0;
  }

  return result;
}

- (int64_t)repairBatchCountLimit
{
  if (self->_repairBatchCountLimit == -1)
  {
    return 1;
  }

  else
  {
    return self->_repairBatchCountLimit;
  }
}

- (int64_t)cacheCountLimit
{
  if (self->_cacheCountLimit == -1)
  {
    return 5;
  }

  else
  {
    return self->_cacheCountLimit;
  }
}

- (double)defaultSuspensionTime
{
  result = self->_defaultSuspensionTime;
  if (result == -1.0)
  {
    return 120.0;
  }

  return result;
}

- (int64_t)repairRetryCount
{
  if (self->_repairRetryCount == -1)
  {
    return 10;
  }

  else
  {
    return self->_repairRetryCount;
  }
}

+ (id)nameForEvent:(int64_t)event
{
  if (event > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BF3E8[event];
  }
}

- (void)dealloc
{
  objc_msgSend_clearAssetCache(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CKAssetRepairScheduler;
  [(CKAssetRepairScheduler *)&v4 dealloc];
}

- (CKAssetRepairScheduler)initWithContainer:(id)container repairContainerOverrides:(id)overrides
{
  containerCopy = container;
  overridesCopy = overrides;
  v76.receiver = self;
  v76.super_class = CKAssetRepairScheduler;
  v8 = [(CKAssetRepairScheduler *)&v76 init];
  v11 = v8;
  if (v8)
  {
    v8->_requestTimeout = -1.0;
    v8->_repairBatchCountLimit = -1;
    v8->_cacheCountLimit = -1;
    v8->_defaultSuspensionTime = -1.0;
    v8->_repairRetryCount = -1;
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_msgSend_containerIdentifier(containerCopy, v9, v10);
    v15 = objc_msgSend_stringWithFormat_(v12, v14, @"%@.%@", @"com.apple.cloudkit.datarepair.internal", v13);
    v16 = v15;
    v19 = objc_msgSend_UTF8String(v16, v17, v18);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create(v19, v20);
    internalQueue = v11->_internalQueue;
    v11->_internalQueue = v21;

    v23 = MEMORY[0x1E696AEC0];
    v26 = objc_msgSend_containerIdentifier(containerCopy, v24, v25);
    v28 = objc_msgSend_stringWithFormat_(v23, v27, @"%@.%@", @"com.apple.cloudkit.datarepair.callback", v26);
    v29 = v28;
    v32 = objc_msgSend_UTF8String(v29, v30, v31);
    v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v34 = dispatch_queue_create(v32, v33);
    callbackQueue = v11->_callbackQueue;
    v11->_callbackQueue = v34;

    dispatch_queue_set_specific(v11->_internalQueue, &v11->_internalQueue, 1, 0);
    dispatch_queue_set_specific(v11->_callbackQueue, &v11->_callbackQueue, 1, 0);
    v36 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    requestOperationQueue = v11->_requestOperationQueue;
    v11->_requestOperationQueue = v36;

    objc_msgSend_setName_(v11->_requestOperationQueue, v38, @"com.apple.cloudkit.datarepair.request");
    objc_msgSend_setQualityOfService_(v11->_requestOperationQueue, v39, 25);
    v40 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    uploadOperationQueue = v11->_uploadOperationQueue;
    v11->_uploadOperationQueue = v40;

    objc_msgSend_setName_(v11->_uploadOperationQueue, v42, @"com.apple.cloudkit.datarepair.upload");
    objc_msgSend_setQualityOfService_(v11->_uploadOperationQueue, v43, 25);
    objc_msgSend_setMaxConcurrentOperationCount_(v11->_uploadOperationQueue, v44, 1);
    objc_storeWeak(&v11->_container, containerCopy);
    v47 = objc_msgSend_copy(overridesCopy, v45, v46);
    repairContainerOverrides = v11->_repairContainerOverrides;
    v11->_repairContainerOverrides = v47;

    v51 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v49, v50);
    remainingAssetsToRequestCallbacks = v11->_remainingAssetsToRequestCallbacks;
    v11->_remainingAssetsToRequestCallbacks = v51;

    v55 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v53, v54);
    assetCache = v11->_assetCache;
    v11->_assetCache = v55;

    v59 = objc_msgSend_set(MEMORY[0x1E695DFA8], v57, v58);
    confirmedMissingAssets = v11->_confirmedMissingAssets;
    v11->_confirmedMissingAssets = v59;

    v63 = objc_msgSend_set(MEMORY[0x1E695DFA8], v61, v62);
    assetsBeingRequested = v11->_assetsBeingRequested;
    v11->_assetsBeingRequested = v63;

    v67 = objc_msgSend_set(MEMORY[0x1E695DFA8], v65, v66);
    assetsBeingUploaded = v11->_assetsBeingUploaded;
    v11->_assetsBeingUploaded = v67;

    v71 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v69, v70);
    retryCountForAssets = v11->_retryCountForAssets;
    v11->_retryCountForAssets = v71;

    objc_msgSend_clearAssetCache(v11, v73, v74);
  }

  return v11;
}

- (void)addUploadRequestsWithMetadata:(id)metadata requestBlocks:(id)blocks
{
  v30 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  blocksCopy = blocks;
  v8 = _os_activity_create(&dword_1883EA000, "client/data-repair-add-to-scheduler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v11 = objc_msgSend_count(metadataCopy, v9, v10);
  if (v11 != objc_msgSend_count(blocksCopy, v12, v13))
  {
    v20 = [CKException alloc];
    v22 = objc_msgSend_initWithName_format_(v20, v21, *MEMORY[0x1E695D940], @"Arrays must have the same number of elements");
    objc_exception_throw(v22);
  }

  if (objc_msgSend_count(metadataCopy, v14, v15))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v16 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = metadataCopy;
      _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "Adding upload requests: %@", buf, 0xCu);
      if (self)
      {
        goto LABEL_7;
      }
    }

    else if (self)
    {
LABEL_7:
      internalQueue = self->_internalQueue;
LABEL_8:
      v18 = internalQueue;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_188627AD4;
      v23[3] = &unk_1E70BC360;
      v24 = metadataCopy;
      v25 = blocksCopy;
      selfCopy = self;
      ck_call_or_dispatch_sync_if_not_key(v18, &self->_internalQueue, v23);

      goto LABEL_9;
    }

    internalQueue = 0;
    goto LABEL_8;
  }

LABEL_9:
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)removeUploadRequestWithRecordID:(id)d
{
  dCopy = d;
  v5 = _os_activity_create(&dword_1883EA000, "client/data-repair-remove-from-scheduler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  if (dCopy)
  {
    if (self)
    {
      internalQueue = self->_internalQueue;
    }

    else
    {
      internalQueue = 0;
    }

    v7 = internalQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_188627E10;
    v8[3] = &unk_1E70BEEC0;
    v8[4] = self;
    v9 = dCopy;
    ck_call_or_dispatch_sync_if_not_key(v7, &self->_internalQueue, v8);
  }

  os_activity_scope_leave(&state);
}

- (void)clearAssetCache
{
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_18862B4E8;
  v3[3] = &unk_1E70BC388;
  v3[4] = self;
  ck_call_or_dispatch_sync_if_not_key(internalQueue, &self->_internalQueue, v3);
}

- (void)cancelAllOperations
{
  v3 = _os_activity_create(&dword_1883EA000, "client/data-repair-cancel-scheduler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v3, &v4);
  sub_18862868C(self, 3, 0);
  os_activity_scope_leave(&v4);
}

- (id)clonedAsset:(id)asset withError:(id *)error
{
  v122 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (error)
  {
    *error = 0;
  }

  v9 = objc_msgSend_temporaryAssetDirectory(self, v6, v7);

  if (!v9)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = assetCopy;
      v118 = 0;
      v16 = objc_msgSend_packageWithError_(CKPackage, v42, &v118);
      v43 = v118;
      if (v43)
      {
        v38 = v43;
        if (error)
        {
          v46 = v43;
          v40 = 0;
          *error = v38;
        }

        else
        {
          v40 = 0;
        }
      }

      else
      {
        objc_msgSend_itemEnumerator(v41, v44, v45);
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        obj = v117 = 0u;
        v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, &v114, v121, 16);
        if (v107)
        {
          v106 = *v115;
          errorCopy = error;
          v108 = v16;
          while (2)
          {
            for (i = 0; i != v107; ++i)
            {
              if (*v115 != v106)
              {
                objc_enumerationMutation(obj);
              }

              v55 = *(*(&v114 + 1) + 8 * i);
              v56 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v52, v53, errorCopy);
              v59 = objc_msgSend_UUIDString(v56, v57, v58);

              v62 = objc_msgSend_temporaryAssetDirectory(self, v60, v61);
              v64 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v62, v63, v59, 0);

              v65 = objc_opt_class();
              v68 = objc_msgSend_fileURL(v55, v66, v67);
              v71 = objc_msgSend_temporaryAssetDirectory(self, v69, v70);
              canCopyFromFileURL_toDirectoryURL = objc_msgSend_canCopyFromFileURL_toDirectoryURL_(v65, v72, v68, v71);

              if (canCopyFromFileURL_toDirectoryURL)
              {
                v76 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v74, v75);
                v79 = objc_msgSend_fileURL(v55, v77, v78);
                v113 = 0;
                objc_msgSend_copyItemAtURL_toURL_error_(v76, v80, v79, v64, &v113);
                v81 = v113;

                if (v81)
                {
                  goto LABEL_36;
                }
              }

              else
              {
                v81 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v74, @"CKErrorDomain", 10001, @"Not enough space left on device to attempt asset clone");
                if (v81)
                {
LABEL_36:

LABEL_37:
                  v111 = 0u;
                  v112 = 0u;
                  v109 = 0u;
                  v110 = 0u;
                  v16 = v108;
                  v89 = objc_msgSend_itemEnumerator(v108, v87, v88);
                  v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, &v109, v120, 16);
                  if (v91)
                  {
                    v94 = v91;
                    v95 = *v110;
                    do
                    {
                      for (j = 0; j != v94; ++j)
                      {
                        if (*v110 != v95)
                        {
                          objc_enumerationMutation(v89);
                        }

                        v97 = *(*(&v109 + 1) + 8 * j);
                        v98 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v92, v93);
                        v101 = objc_msgSend_fileURL(v97, v99, v100);
                        objc_msgSend_removeItemAtURL_error_(v98, v102, v101, 0);
                      }

                      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v92, &v109, v120, 16);
                    }

                    while (v94);
                  }

                  if (errorCopy)
                  {
                    v103 = v81;
                    v40 = 0;
                    *errorCopy = v81;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  v86 = obj;
                  goto LABEL_48;
                }
              }

              v82 = [CKPackageItem alloc];
              v84 = objc_msgSend_initWithFileURL_(v82, v83, v64);
              v81 = objc_msgSend_addItem_(v108, v85, v84);

              if (v81)
              {
                goto LABEL_37;
              }
            }

            v16 = v108;
            v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v114, v121, 16);
            if (v107)
            {
              continue;
            }

            break;
          }
        }

        v86 = obj;

        v40 = v16;
        v81 = 0;
LABEL_48:

        v38 = 0;
      }

      goto LABEL_18;
    }

LABEL_13:
    v40 = 0;
    goto LABEL_19;
  }

  v10 = assetCopy;
  v13 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v11, v12);
  v16 = objc_msgSend_UUIDString(v13, v14, v15);

  v19 = objc_msgSend_temporaryAssetDirectory(self, v17, v18);
  v21 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v19, v20, v16, 0);

  v22 = objc_opt_class();
  v25 = objc_msgSend_fileURL(v10, v23, v24);
  v28 = objc_msgSend_temporaryAssetDirectory(self, v26, v27);
  v30 = objc_msgSend_canCopyFromFileURL_toDirectoryURL_(v22, v29, v25, v28);

  if (v30)
  {
    v33 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v31, v32);
    v36 = objc_msgSend_fileURL(v10, v34, v35);
    v119 = 0;
    objc_msgSend_copyItemAtURL_toURL_error_(v33, v37, v36, v21, &v119);
    v38 = v119;

    if (v38)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v38 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v31, @"CKErrorDomain", 10001, @"Not enough space left on device to attempt asset clone");
    if (v38)
    {
LABEL_7:
      if (error)
      {
        v39 = v38;
        v40 = 0;
        *error = v38;
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_17;
    }
  }

  v47 = [CKAsset alloc];
  v40 = objc_msgSend_initWithFileURL_(v47, v48, v21);
LABEL_17:

LABEL_18:
LABEL_19:

  v49 = *MEMORY[0x1E69E9840];

  return v40;
}

- (BOOL)hasPendingWork
{
  v4 = objc_msgSend_allRemainingRequestableAssets(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);
  v10 = objc_msgSend_allRemainingUploadableAssets(self, v8, v9);
  LOBYTE(v7) = v7 + objc_msgSend_count(v10, v11, v12) != 0;

  return v7;
}

- (id)allRemainingRequestableAssets
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE134;
  v12 = sub_1883EF75C;
  v13 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v4 = internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18862C8E8;
  v7[3] = &unk_1E70BF378;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_internalQueue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)allRemainingUploadableAssets
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE134;
  v12 = sub_1883EF75C;
  v13 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v4 = internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18862CAD8;
  v7[3] = &unk_1E70BF378;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_internalQueue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSURL)temporaryAssetDirectory
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1883EE134;
  v12 = sub_1883EF75C;
  v13 = 0;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v4 = internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18862CE60;
  v7[3] = &unk_1E70BF378;
  v7[4] = self;
  v7[5] = &v8;
  ck_call_or_dispatch_sync_if_not_key(v4, &self->_internalQueue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

+ (unint64_t)estimatedSizeForAssetOrPackage:(id)package
{
  packageCopy = package;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_hasSize(packageCopy, v4, v5))
    {
      v8 = objc_msgSend_size(packageCopy, v6, v7);
    }

    else
    {
      v8 = 102400;
      objc_opt_self();
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_msgSend_size_(packageCopy, v9, 0);
      if (!v8)
      {
        objc_opt_self();
        objc_opt_self();
        v8 = 2048000;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (int64_t)canCopyFromFileURL:(id)l toDirectoryURL:(id)rL
{
  v100[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v88 = 0;
  v7 = *MEMORY[0x1E695DD70];
  v87 = 0;
  objc_msgSend_getResourceValue_forKey_error_(lCopy, v8, &v88, v7, &v87);
  v9 = v88;
  v85 = 0;
  v86 = 0;
  v10 = v87;
  objc_msgSend_getResourceValue_forKey_error_(rLCopy, v11, &v86, v7, &v85);
  v12 = v86;
  v13 = v85;

  v15 = 0;
  if (v9 && v12)
  {
    if (objc_msgSend_isEqual_(v9, v14, v12))
    {
      v84 = 0;
      v17 = *MEMORY[0x1E695DE38];
      v83 = 0;
      objc_msgSend_getResourceValue_forKey_error_(lCopy, v16, &v84, v17, &v83);
      v18 = v84;
      v19 = v83;

      if (v18)
      {
        v15 = objc_msgSend_BOOLValue(v18, v20, v21);
      }

      else
      {
        v15 = 0;
      }

      v13 = v19;
    }

    else
    {
      v15 = 0;
    }
  }

  objc_opt_self();
  v76 = v9;
  if (v15)
  {
    v24 = v12;
    v25 = 0;
  }

  else
  {
    v82 = 0;
    v26 = *MEMORY[0x1E695DB50];
    v81 = 0;
    objc_msgSend_getResourceValue_forKey_error_(lCopy, v22, &v82, v26, &v81);
    v27 = v82;
    v25 = v81;
    v24 = v12;
    if (v27)
    {
      v28 = objc_msgSend_unsignedIntegerValue(v27, v22, v23) + 524288000;
      goto LABEL_14;
    }
  }

  v28 = 524288000;
LABEL_14:
  v75 = v28;
  v29 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v22, v23);
  v32 = objc_msgSend_path(rLCopy, v30, v31);
  v80 = v25;
  v34 = objc_msgSend_attributesOfFileSystemForPath_error_(v29, v33, v32, &v80);
  v35 = v80;

  v36 = *MEMORY[0x1E696A3C0];
  v38 = objc_msgSend_objectForKey_(v34, v37, *MEMORY[0x1E696A3C0]);
  v41 = objc_msgSend_unsignedIntegerValue(v38, v39, v40);

  if (v35)
  {
LABEL_15:
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v42 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v90 = v35;
      _os_log_error_impl(&dword_1883EA000, v42, OS_LOG_TYPE_ERROR, "Error determining clonability of repair asset: %@", buf, 0xCu);
    }

    v43 = -1;
    goto LABEL_20;
  }

  v46 = v75;
  v47 = v75 - v41;
  if (v75 > v41)
  {
    v73 = dispatch_semaphore_create(0);
    v99[0] = @"CACHE_DELETE_VOLUME";
    v50 = objc_msgSend_path(rLCopy, v48, v49);
    v99[1] = @"CACHE_DELETE_AMOUNT";
    v100[0] = v50;
    v52 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v51, v47);
    v100[1] = v52;
    v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v53, v100, v99, 2);

    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = sub_18862D7B4;
    v78[3] = &unk_1E70BF3A0;
    v55 = v73;
    v79 = v55;
    v74 = v54;
    MEMORY[0x18CFD6160](v54, v78);
    v56 = dispatch_time(0, 30000000000);
    v72 = v55;
    if (dispatch_semaphore_wait(v55, v56))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v59 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1883EA000, v59, OS_LOG_TYPE_INFO, "Timed out waiting for purge", buf, 2u);
      }
    }

    v60 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v57, v58);
    v63 = objc_msgSend_path(rLCopy, v61, v62);
    v77 = 0;
    v65 = objc_msgSend_attributesOfFileSystemForPath_error_(v60, v64, v63, &v77);
    v35 = v77;

    v67 = objc_msgSend_objectForKey_(v65, v66, v36);
    v41 = objc_msgSend_unsignedIntegerValue(v67, v68, v69);

    v34 = v65;
    if (v35)
    {
      goto LABEL_15;
    }

    v46 = v75;
  }

  if (v41 >= v46)
  {
    v35 = 0;
    v43 = 1;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v70 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
    {
      v71 = @"copy";
      *buf = 138413314;
      if (v15)
      {
        v71 = @"clone";
      }

      v90 = v71;
      v91 = 2112;
      v92 = lCopy;
      v93 = 2112;
      v94 = rLCopy;
      v95 = 2048;
      v96 = v41;
      v97 = 2048;
      v98 = v46;
      _os_log_impl(&dword_1883EA000, v70, OS_LOG_TYPE_INFO, "Cannot %@ repair asset from %@: destination %@ has limited capacity: %ld. Needed: %ld", buf, 0x34u);
    }

    v43 = 0;
    v35 = 0;
  }

LABEL_20:

  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

- (CKAssetRepairSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end