@interface CKLogicalDeviceScopedStateManager
- (CKLogicalDeviceContext)deviceContext;
- (CKLogicalDeviceScopedStateManager)initWithDeviceContext:(id)a3;
- (id)trackedAssetForUUID:(id)a3;
- (void)addThrottle:(id)a3;
- (void)openFileWithOpenInfo:(id)a3 reply:(id)a4;
- (void)readBytesOfInMemoryAssetContentWithUUID:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 reply:(id)a6;
- (void)registerLongLivedOperationWithIDAsCompleted:(id)a3 allowResumingCompletedLongLivedOperations:(BOOL)a4;
- (void)registerLongLivedOperationWithIDAsOutstanding:(id)a3;
- (void)resetThrottles;
- (void)trackAssets:(id)a3;
@end

@implementation CKLogicalDeviceScopedStateManager

- (CKLogicalDeviceScopedStateManager)initWithDeviceContext:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CKLogicalDeviceScopedStateManager;
  v7 = [(CKLogicalDeviceScopedStateManager *)&v15 init];
  if (v7)
  {
    v8 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x1E696AD18], v5, v6);
    assetsByUUID = v7->_assetsByUUID;
    v7->_assetsByUUID = v8;

    v10 = objc_opt_new();
    outstandingOperationIDs = v7->_outstandingOperationIDs;
    v7->_outstandingOperationIDs = v10;

    v12 = objc_opt_new();
    completedLongLivedOperationIDs = v7->_completedLongLivedOperationIDs;
    v7->_completedLongLivedOperationIDs = v12;

    objc_storeWeak(&v7->_deviceContext, v4);
  }

  return v7;
}

- (void)trackAssets:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  obj = objc_msgSend_assetsByUUID(self, v5, v6);
  objc_sync_enter(obj);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v4;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v9)
  {
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v17 = objc_msgSend_UUID(v12, v13, v14);
          if (!v17)
          {
            v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v15, v16);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CKLogicalDeviceScopedStateManager.m", 56, @"Expected non-nil UUID for %@", v12);
          }

          v18 = objc_msgSend_assetsByUUID(self, v15, v16);
          objc_msgSend_setObject_forKey_(v18, v19, v12, v17);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, &v25, v29, 16);
    }

    while (v9);
  }

  objc_sync_exit(obj);
  v22 = *MEMORY[0x1E69E9840];
}

- (id)trackedAssetForUUID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_assetsByUUID(self, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend_assetsByUUID(self, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, v4);

  objc_sync_exit(v7);

  return v12;
}

- (void)registerLongLivedOperationWithIDAsOutstanding:(id)a3
{
  v23 = a3;
  if (!v23)
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CKLogicalDeviceScopedStateManager.m", 69, @"Expected a non-nil operationID to register");
  }

  v7 = objc_msgSend_outstandingOperationIDs(self, v5, v6);
  objc_sync_enter(v7);
  v10 = objc_msgSend_outstandingOperationIDs(self, v8, v9);
  v12 = objc_msgSend_containsObject_(v10, v11, v23);

  if (v12)
  {
    v22 = objc_msgSend_initWithCode_format_([CKException alloc], v23, 12, @"Long-lived operation %@ attempted to start, but another instance of it is already running. Your code should only fetch and re-enqueue long-lived operations on app launch.", v23);
    goto LABEL_11;
  }

  if (CKCurrentProcessLinkCheck5dbf91c3fd1d871f0bcfe60afeb451e3e708d350())
  {
    v15 = objc_msgSend_completedLongLivedOperationIDs(self, v13, v14);
    v17 = objc_msgSend_containsObject_(v15, v16, v23);

    if (v17)
    {
      v22 = objc_msgSend_initWithCode_format_([CKException alloc], v23, 12, @"Long-lived operation %@ attempted to start, but another instance of it had already completed in this process. Your code should only fetch and re-enqueue long-lived operations on app launch.", v23);
LABEL_11:
      objc_exception_throw(v22);
    }
  }

  v18 = objc_msgSend_outstandingOperationIDs(self, v13, v14);
  objc_msgSend_addObject_(v18, v19, v23);

  objc_sync_exit(v7);
}

- (void)registerLongLivedOperationWithIDAsCompleted:(id)a3 allowResumingCompletedLongLivedOperations:(BOOL)a4
{
  v34 = a3;
  if (!v34)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CKLogicalDeviceScopedStateManager.m", 83, @"Expected a non-nil operationID to mark as completed");
  }

  v9 = objc_msgSend_outstandingOperationIDs(self, v7, v8);
  objc_sync_enter(v9);
  v12 = objc_msgSend_outstandingOperationIDs(self, v10, v11);
  v14 = objc_msgSend_containsObject_(v12, v13, v34);

  if ((v14 & 1) == 0)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CKLogicalDeviceScopedStateManager.m", 86, @"Asked to unregister unknown operation %@", v34);
  }

  v17 = objc_msgSend_completedLongLivedOperationIDs(self, v15, v16);
  v19 = objc_msgSend_containsObject_(v17, v18, v34);

  if (v19)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v20, v21);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CKLogicalDeviceScopedStateManager.m", 87, @"Asked to re-register completed long-lived operation %@", v34);
  }

  v22 = objc_msgSend_outstandingOperationIDs(self, v20, v21);
  objc_msgSend_removeObject_(v22, v23, v34);

  if (!a4)
  {
    v26 = objc_msgSend_completedLongLivedOperationIDs(self, v24, v25);
    objc_msgSend_addObject_(v26, v27, v34);
  }

  objc_sync_exit(v9);
}

- (void)openFileWithOpenInfo:(id)a3 reply:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_UUID(v6, v8, v9);
  if (v11)
  {
    v13 = objc_msgSend_trackedAssetForUUID_(self, v10, v11);
    if (!v13)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (RawEncryptedData = objc_msgSend_shouldReadRawEncryptedData(v13, v14, v15), RawEncryptedData != objc_msgSend_shouldReadRawEncryptedData(v6, v17, v18)))
    {
      v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v14, @"CKInternalErrorDomain", 1017, 0);
      if (v7)
      {
        v7[2](v7, 0, v19);
      }

      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = 0;
      v20 = &v27;
      v21 = objc_msgSend_openWithError_(v13, v12, &v27);
    }

    else
    {
LABEL_12:
      v26 = 0;
      v20 = &v26;
      v21 = objc_msgSend_openWithOpenInfo_error_(CKAsset, v12, v6, &v26);
    }

    v22 = v21;
    v19 = *v20;
    if (!v22)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v24 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v29 = v6;
        v30 = 2112;
        v31 = v19;
        _os_log_debug_impl(&dword_1883EA000, v24, OS_LOG_TYPE_DEBUG, "Failed to open %@: %@", buf, 0x16u);
        if (!v7)
        {
          goto LABEL_24;
        }
      }

      else if (!v7)
      {
        goto LABEL_24;
      }

      v7[2](v7, 0, v19);
      goto LABEL_24;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v23 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Opened %@", buf, 0xCu);
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else if (!v7)
    {
LABEL_24:

LABEL_25:
      goto LABEL_26;
    }

    (v7)[2](v7, v22, 0);
    goto LABEL_24;
  }

  v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v10, @"CKInternalErrorDomain", 1017, 0);
  if (v7)
  {
    v7[2](v7, 0, v19);
  }

LABEL_26:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)readBytesOfInMemoryAssetContentWithUUID:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 reply:(id)a6
{
  v37 = a3;
  v11 = a6;
  if (v37)
  {
    v12 = objc_msgSend_trackedAssetForUUID_(self, v10, v37);
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v12;
        if (objc_msgSend_shouldReadAssetContentUsingClientProxy(v12, v13, v14) && (objc_msgSend_assetContent(v12, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
        {
          v20 = objc_msgSend_assetContent(v12, v18, v19);
          v23 = objc_msgSend_length(v20, v21, v22);

          if (v23 >= a4)
          {
            v28 = objc_msgSend_assetContent(v12, v24, v25);
            v31 = objc_msgSend_length(v28, v29, v30) - a4;

            if (v31 < a5)
            {
              a5 = v31;
            }

            v34 = objc_msgSend_assetContent(v12, v32, v33);
            v27 = objc_msgSend_subdataWithRange_(v34, v35, a4, a5);

            if (v27)
            {
              if (v11)
              {
                v11[2](v11, v27, 0);
              }
            }

            else
            {
              v36 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v37, @"CKInternalErrorDomain", 1017, @"Failed to read data for asset with UUID: %@", v37);
              if (v11)
              {
                (v11)[2](v11, 0, v36);
              }

              v27 = 0;
            }

            goto LABEL_16;
          }

          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v37, @"CKInternalErrorDomain", 1017, @"Requested offset is greater than content length for asset with UUID: %@", v37);
        }

        else
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v37, @"CKInternalErrorDomain", 1017, @"Asset is not initialized for in-memory upload for UUID: %@", v37);
        }
        v27 = ;
        if (v11)
        {
          (v11)[2](v11, 0, v27);
        }

LABEL_16:

        goto LABEL_17;
      }
    }

    v26 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v37, @"CKInternalErrorDomain", 1017, @"Could not find tracked asset with UUID: %@", v37);
    if (v11)
    {
      (v11)[2](v11, 0, v26);
    }
  }

  else
  {
    v12 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v10, @"CKInternalErrorDomain", 1017, @"nil UUID");
    if (v11)
    {
      (v11)[2](v11, 0, v12);
    }
  }

LABEL_17:
}

- (void)resetThrottles
{
  v8 = objc_msgSend_deviceContext(self, a2, v2);
  v5 = objc_msgSend_throttleManager(v8, v3, v4);
  objc_msgSend_resetThrottles(v5, v6, v7);
}

- (void)addThrottle:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_deviceContext(self, v5, v6);
  v9 = objc_msgSend_throttleManager(v11, v7, v8);
  objc_msgSend_addThrottle_(v9, v10, v4);
}

- (CKLogicalDeviceContext)deviceContext
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceContext);

  return WeakRetained;
}

@end