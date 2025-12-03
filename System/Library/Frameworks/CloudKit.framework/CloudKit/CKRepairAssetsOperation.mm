@interface CKRepairAssetsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKRepairAssetsOperation)initWithAssets:(id)assets packages:(id)packages assetMetadata:(id)metadata packageMetadata:(id)packageMetadata unavailableAssets:(id)unavailableAssets unavailablePackages:(id)unavailablePackages;
- (CKUploadRequestConfiguration)resolvedUploadRequestConfiguration;
- (id)activityCreate;
- (id)includedMetadata;
- (id)repairAssetsCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleAssetRepairCompletionForRecordID:(id)d error:(id)error;
- (void)performCKOperation;
- (void)setRepairAssetsCompletionBlock:(id)block;
@end

@implementation CKRepairAssetsOperation

- (CKRepairAssetsOperation)initWithAssets:(id)assets packages:(id)packages assetMetadata:(id)metadata packageMetadata:(id)packageMetadata unavailableAssets:(id)unavailableAssets unavailablePackages:(id)unavailablePackages
{
  assetsCopy = assets;
  packagesCopy = packages;
  metadataCopy = metadata;
  packageMetadataCopy = packageMetadata;
  unavailableAssetsCopy = unavailableAssets;
  unavailablePackagesCopy = unavailablePackages;
  v23 = objc_msgSend_count(assetsCopy, v21, v22);
  if (v23 != objc_msgSend_count(metadataCopy, v24, v25))
  {
    v61 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v26, v27);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v61, v62, a2, self, @"CKRepairAssetsOperation.m", 44, @"Asset and asset metadata counts need to match");
  }

  v28 = objc_msgSend_count(packagesCopy, v26, v27);
  if (v28 != objc_msgSend_count(packageMetadataCopy, v29, v30))
  {
    v63 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v31, v32);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v63, v64, a2, self, @"CKRepairAssetsOperation.m", 45, @"Package and package metadata counts need to match");
  }

  v65.receiver = self;
  v65.super_class = CKRepairAssetsOperation;
  v35 = [(CKOperation *)&v65 init];
  if (v35)
  {
    v36 = objc_msgSend_copy(assetsCopy, v33, v34);
    assets = v35->_assets;
    v35->_assets = v36;

    v40 = objc_msgSend_copy(packagesCopy, v38, v39);
    packages = v35->_packages;
    v35->_packages = v40;

    v44 = objc_msgSend_copy(metadataCopy, v42, v43);
    assetMetadata = v35->_assetMetadata;
    v35->_assetMetadata = v44;

    v48 = objc_msgSend_copy(packageMetadataCopy, v46, v47);
    packageMetadata = v35->_packageMetadata;
    v35->_packageMetadata = v48;

    v52 = objc_msgSend_copy(unavailableAssetsCopy, v50, v51);
    unavailableAssets = v35->_unavailableAssets;
    v35->_unavailableAssets = v52;

    v56 = objc_msgSend_copy(unavailablePackagesCopy, v54, v55);
    unavailablePackages = v35->_unavailablePackages;
    v35->_unavailablePackages = v56;

    v58 = objc_opt_new();
    perItemErrorsByRecordID = v35->_perItemErrorsByRecordID;
    v35->_perItemErrorsByRecordID = v58;
  }

  return v35;
}

- (CKUploadRequestConfiguration)resolvedUploadRequestConfiguration
{
  v4 = objc_msgSend_database(self, a2, v2);
  v7 = objc_msgSend_container(v4, v5, v6);
  v10 = objc_msgSend_uploadRequestConfiguration(self, v8, v9);
  v12 = objc_msgSend_resolvedConfigurationWithBaseContainer_overrides_(CKUploadRequestConfiguration, v11, v7, v10);

  return v12;
}

- (void)setRepairAssetsCompletionBlock:(id)block
{
  blockCopy = block;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885E5B3C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    repairAssetsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_repairAssetsCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    repairAssetsCompletionBlock = self->_repairAssetsCompletionBlock;
    self->_repairAssetsCompletionBlock = v9;
LABEL_9:
  }
}

- (id)repairAssetsCompletionBlock
{
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, a2, v2))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, a2, v2) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1883EDCD8;
    v14 = sub_1883EF68C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885E5D38;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_repairAssetsCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_assets(self, v5, v6);
  objc_msgSend_setAssets_(infoCopy, v8, v7);

  v11 = objc_msgSend_packages(self, v9, v10);
  objc_msgSend_setPackages_(infoCopy, v12, v11);

  v15 = objc_msgSend_assetMetadata(self, v13, v14);
  objc_msgSend_setAssetMetadata_(infoCopy, v16, v15);

  v19 = objc_msgSend_packageMetadata(self, v17, v18);
  objc_msgSend_setPackageMetadata_(infoCopy, v20, v19);

  v23 = objc_msgSend_unavailableAssets(self, v21, v22);
  objc_msgSend_setUnavailableAssets_(infoCopy, v24, v23);

  v27 = objc_msgSend_unavailablePackages(self, v25, v26);
  objc_msgSend_setUnavailablePackages_(infoCopy, v28, v27);

  v31 = objc_msgSend_resolvedUploadRequestConfiguration(self, v29, v30);
  objc_msgSend_setUploadRequestConfiguration_(infoCopy, v32, v31);

  v33.receiver = self;
  v33.super_class = CKRepairAssetsOperation;
  [(CKDatabaseOperation *)&v33 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v33.receiver = self;
  v33.super_class = CKRepairAssetsOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v33 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_assets(infoCopy, v5, v6, v33.receiver, v33.super_class);
  objc_msgSend_setAssets_(self, v8, v7);

  v11 = objc_msgSend_packages(infoCopy, v9, v10);
  objc_msgSend_setPackages_(self, v12, v11);

  v15 = objc_msgSend_assetMetadata(infoCopy, v13, v14);
  objc_msgSend_setAssetMetadata_(self, v16, v15);

  v19 = objc_msgSend_packageMetadata(infoCopy, v17, v18);
  objc_msgSend_setPackageMetadata_(self, v20, v19);

  v23 = objc_msgSend_unavailableAssets(infoCopy, v21, v22);
  objc_msgSend_setUnavailableAssets_(self, v24, v23);

  v27 = objc_msgSend_unavailablePackages(infoCopy, v25, v26);
  objc_msgSend_setUnavailablePackages_(self, v28, v27);

  v31 = objc_msgSend_uploadRequestConfiguration(infoCopy, v29, v30);

  objc_msgSend_setUploadRequestConfiguration_(self, v32, v31);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v8.receiver = self;
  v8.super_class = CKRepairAssetsOperation;
  if ([(CKOperation *)&v8 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v6 = objc_msgSend_repairAssetsCompletionBlock(self, v3, v4);
  v5 = v6 != 0;

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v5 = objc_msgSend_assets(self, a2, run);
  if (!objc_msgSend_count(v5, v6, v7))
  {
    v10 = objc_msgSend_packages(self, v8, v9);
    if (!objc_msgSend_count(v10, v11, v12))
    {
      v15 = objc_msgSend_unavailableAssets(self, v13, v14);
      if (!objc_msgSend_count(v15, v16, v17))
      {
        v78 = objc_msgSend_unavailablePackages(self, v18, v19);
        v81 = objc_msgSend_count(v78, v79, v80);

        if (!v81)
        {
          return 0;
        }

        goto LABEL_7;
      }
    }
  }

LABEL_7:
  v22 = objc_msgSend_database(self, v20, v21);
  v25 = objc_msgSend_scope(v22, v23, v24);

  if (v25 == 2)
  {
    v28 = objc_msgSend_assets(self, v26, v27);
    v29 = objc_opt_class();
    v30 = sub_1885E6570(v28, v29);

    if (!v30)
    {
      v33 = objc_msgSend_packages(self, v31, v32);
      v34 = objc_opt_class();
      v30 = sub_1885E6570(v33, v34);

      if (!v30)
      {
        v37 = objc_msgSend_assetMetadata(self, v35, v36);
        v38 = objc_opt_class();
        v30 = sub_1885E6570(v37, v38);

        if (!v30)
        {
          v41 = objc_msgSend_packageMetadata(self, v39, v40);
          v42 = objc_opt_class();
          v30 = sub_1885E6570(v41, v42);

          if (!v30)
          {
            v45 = objc_msgSend_unavailableAssets(self, v43, v44);
            v46 = objc_opt_class();
            v30 = sub_1885E6570(v45, v46);

            if (!v30)
            {
              v49 = objc_msgSend_unavailablePackages(self, v47, v48);
              v50 = objc_opt_class();
              v30 = sub_1885E6570(v49, v50);
            }
          }
        }
      }
    }

    if (run && v30)
    {
      v51 = v30;
      *run = v30;
    }

    else
    {

      if (!v30)
      {
        v55 = objc_opt_new();
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_1885E66F8;
        aBlock[3] = &unk_1E70BEDA0;
        v91 = v55;
        v56 = v55;
        v57 = _Block_copy(aBlock);
        v60 = objc_msgSend_assetMetadata(self, v58, v59);
        v61 = v57[2](v57, v60);

        if (!v61)
        {
          v64 = objc_msgSend_packageMetadata(self, v62, v63);
          v61 = v57[2](v57, v64);

          if (!v61)
          {
            v67 = objc_msgSend_unavailableAssets(self, v65, v66);
            v61 = v57[2](v57, v67);

            if (!v61)
            {
              v70 = objc_msgSend_unavailablePackages(self, v68, v69);
              v61 = v57[2](v57, v70);
            }
          }
        }

        if (run && v61)
        {
          v71 = v61;
          *run = v61;
        }

        if (!v61)
        {
          v86 = 0;
          v87 = &v86;
          v88 = 0x2020000000;
          v89 = 0;
          v74 = objc_msgSend_assets(self, v72, v73);
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = sub_1885E6BF8;
          v83[3] = &unk_1E70BEDE8;
          v84 = &unk_1EFA2F548;
          v85 = &v86;
          objc_msgSend_enumerateObjectsUsingBlock_(v74, v75, v83);

          v77 = *(v87 + 24);
          if (run)
          {
            if (*(v87 + 24))
            {
              *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v76, @"CKInternalErrorDomain", 10005, @"Cannot repair asset with zero-length replacement");
            }
          }

          _Block_object_dispose(&v86, 8);
          if ((v77 & 1) == 0)
          {
            v82.receiver = self;
            v82.super_class = CKRepairAssetsOperation;
            return [(CKDatabaseOperation *)&v82 CKOperationShouldRun:run];
          }
        }
      }
    }
  }

  else if (run)
  {
    v52 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v26, @"CKInternalErrorDomain", 1019, @"This operation should only be called on the private database");
    v53 = v52;
    result = 0;
    *run = v52;
    return result;
  }

  return 0;
}

- (void)performCKOperation
{
  v4 = objc_msgSend_assets(self, a2, v2);
  v7 = objc_msgSend_packages(self, v5, v6);
  v9 = objc_msgSend_arrayByAddingObjectsFromArray_(v4, v8, v7);

  v12 = objc_msgSend_deviceContext(self, v10, v11);
  v15 = objc_msgSend_deviceScopedStateManager(v12, v13, v14);
  objc_msgSend_trackAssets_(v15, v16, v9);

  v17.receiver = self;
  v17.super_class = CKRepairAssetsOperation;
  [(CKOperation *)&v17 performCKOperation];
}

- (void)handleAssetRepairCompletionForRecordID:(id)d error:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = objc_msgSend_CKClientSuitableError(error, v7, v8);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v10 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    v16 = v10;
    v19 = objc_msgSend_operationID(self, v17, v18);
    v20 = 138543874;
    v21 = v19;
    v22 = 2112;
    v23 = dCopy;
    v24 = 2112;
    v25 = v9;
    _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received progress callback for recordID %@ error %@", &v20, 0x20u);

    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v9)
  {
LABEL_5:
    v13 = objc_msgSend_perItemErrorsByRecordID(self, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v14, v9, dCopy);
  }

LABEL_6:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v54 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v6 = signpost;

  if (v6)
  {
    if (self)
    {
      v9 = self->super.super._signpost;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v13 = objc_msgSend_log(v10, v11, v12);

    if (self)
    {
      v14 = self->super.super._signpost;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v18 = objc_msgSend_identifier(v15, v16, v17);

    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKRepairAssetsOperation", "Finishing", buf, 2u);
    }
  }

  if (!errorCopy)
  {
    v19 = objc_msgSend_perItemErrorsByRecordID(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_perItemErrorsByRecordID(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to repair some assets");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v29 = objc_msgSend_repairAssetsCompletionBlock(self, v7, v8);

  if (v29)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v30 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v39 = v30;
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v44 = objc_msgSend_ckShortDescription(self, v42, v43);
      *buf = 138544130;
      v47 = v41;
      v48 = 2048;
      selfCopy = self;
      v50 = 2114;
      v51 = v44;
      v52 = 2112;
      v53 = errorCopy;
      _os_log_debug_impl(&dword_1883EA000, v39, OS_LOG_TYPE_DEBUG, "Calling repairAssetsCompletionBlock for operation <%{public}@: %p; %{public}@> with error %@", buf, 0x2Au);
    }

    v33 = objc_msgSend_repairAssetsCompletionBlock(self, v31, v32);
    v36 = objc_msgSend_CKClientSuitableError(errorCopy, v34, v35);
    (v33)[2](v33, v36);

    objc_msgSend_setRepairAssetsCompletionBlock_(self, v37, 0);
  }

  v45.receiver = self;
  v45.super_class = CKRepairAssetsOperation;
  [(CKOperation *)&v45 _finishOnCallbackQueueWithError:errorCopy];

  v38 = *MEMORY[0x1E69E9840];
}

- (id)includedMetadata
{
  v4 = objc_msgSend_assetMetadata(self, a2, v2);
  v7 = objc_msgSend_packageMetadata(self, v5, v6);
  v9 = objc_msgSend_arrayByAddingObjectsFromArray_(v4, v8, v7);
  v12 = objc_msgSend_unavailableAssets(self, v10, v11);
  v14 = objc_msgSend_arrayByAddingObjectsFromArray_(v9, v13, v12);
  v17 = objc_msgSend_unavailablePackages(self, v15, v16);
  v19 = objc_msgSend_arrayByAddingObjectsFromArray_(v14, v18, v17);

  v21 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v20, v19);

  return v21;
}

- (void)ckSignpostBegin
{
  v55 = *MEMORY[0x1E69E9840];
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v4 = signpost;

  if (v4)
  {
    if (self)
    {
      v5 = self->super.super._signpost;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v9 = objc_msgSend_log(v6, v7, v8);

    if (self)
    {
      v10 = self->super.super._signpost;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v14 = objc_msgSend_identifier(v11, v12, v13);

    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v17 = objc_msgSend_operationID(self, v15, v16);
      v20 = objc_msgSend_containerID(self, v18, v19);
      v23 = objc_msgSend_group(self, v21, v22);
      v26 = objc_msgSend_operationGroupID(v23, v24, v25);
      v29 = objc_msgSend_operationGroupName(self, v27, v28);
      v32 = objc_msgSend_operationInfo(self, v30, v31);
      v35 = objc_msgSend_discretionaryNetworkBehavior(v32, v33, v34);
      v36 = CKStringForDiscretionaryNetworkBehavior(v35);
      v39 = objc_msgSend_qualityOfService(self, v37, v38);
      v41 = CKStringForQOS(v39, v40);
      v43 = 138413570;
      v44 = v17;
      v45 = 2112;
      v46 = v20;
      v47 = 2112;
      v48 = v26;
      v49 = 2114;
      v50 = v29;
      v51 = 2114;
      v52 = v36;
      v53 = 2114;
      v54 = v41;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKRepairAssetsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)ckSignpostEndWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v6 = signpost;

  if (v6)
  {
    if (self)
    {
      v7 = self->super.super._signpost;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v11 = objc_msgSend_log(v8, v9, v10);

    if (self)
    {
      v12 = self->super.super._signpost;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v16 = objc_msgSend_identifier(v13, v14, v15);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v18 = 138412290;
      v19 = errorCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKRepairAssetsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/repair-assets", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleAssetRepairCompletionForRecordID_error_, 1, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKRepairAssetsOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end