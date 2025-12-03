@interface CKPublishAssetsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKPublishAssetsOperation)initWithRecordIDs:(id)ds;
- (id)activityCreate;
- (id)assetPublishedBlock;
- (id)publishAssetCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleAssetPublishCompletionForRecordID:(id)d publishedAsset:(id)asset recordKey:(id)key error:(id)error;
- (void)setAssetPublishedBlock:(id)block;
- (void)setPublishAssetCompletionBlock:(id)block;
@end

@implementation CKPublishAssetsOperation

- (CKPublishAssetsOperation)initWithRecordIDs:(id)ds
{
  dsCopy = ds;
  v13.receiver = self;
  v13.super_class = CKPublishAssetsOperation;
  v7 = [(CKOperation *)&v13 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(dsCopy, v5, v6);
    recordIDs = v7->_recordIDs;
    v7->_recordIDs = v8;

    v10 = objc_opt_new();
    perItemErrorsByRecordID = v7->_perItemErrorsByRecordID;
    v7->_perItemErrorsByRecordID = v10;
  }

  return v7;
}

- (void)setAssetPublishedBlock:(id)block
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
    v12[2] = sub_1885E3C38;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    assetPublishedBlock = v13;
    goto LABEL_9;
  }

  if (self->_assetPublishedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    assetPublishedBlock = self->_assetPublishedBlock;
    self->_assetPublishedBlock = v9;
LABEL_9:
  }
}

- (id)assetPublishedBlock
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
    v13 = sub_1883EDCAC;
    v14 = sub_1883EF684;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885E3E34;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_assetPublishedBlock);
  }

  return v6;
}

- (void)setPublishAssetCompletionBlock:(id)block
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
    v12[2] = sub_1885E3FC4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    publishAssetCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_publishAssetCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    publishAssetCompletionBlock = self->_publishAssetCompletionBlock;
    self->_publishAssetCompletionBlock = v9;
LABEL_9:
  }
}

- (id)publishAssetCompletionBlock
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
    v13 = sub_1883EDCAC;
    v14 = sub_1883EF684;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885E41C0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_publishAssetCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_recordIDs(self, v5, v6);
  objc_msgSend_setRecordIDs_(infoCopy, v8, v7);

  v11 = objc_msgSend_fileNamesByAssetFieldNames(self, v9, v10);
  objc_msgSend_setFileNamesByAssetFieldNames_(infoCopy, v12, v11);

  v15 = objc_msgSend_requestedTTL(self, v13, v14);
  objc_msgSend_setRequestedTTL_(infoCopy, v16, v15);
  v19 = objc_msgSend_URLOptions(self, v17, v18);
  objc_msgSend_setURLOptions_(infoCopy, v20, v19);
  v21.receiver = self;
  v21.super_class = CKPublishAssetsOperation;
  [(CKDatabaseOperation *)&v21 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v21.receiver = self;
  v21.super_class = CKPublishAssetsOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v21 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_recordIDs(infoCopy, v5, v6, v21.receiver, v21.super_class);
  objc_msgSend_setRecordIDs_(self, v8, v7);

  v11 = objc_msgSend_fileNamesByAssetFieldNames(infoCopy, v9, v10);
  objc_msgSend_setFileNamesByAssetFieldNames_(self, v12, v11);

  v15 = objc_msgSend_requestedTTL(infoCopy, v13, v14);
  objc_msgSend_setRequestedTTL_(self, v16, v15);
  v19 = objc_msgSend_URLOptions(infoCopy, v17, v18);

  objc_msgSend_setURLOptions_(self, v20, v19);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKPublishAssetsOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_assetPublishedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_publishAssetCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_recordIDs(self, a2, run);
  if (!objc_msgSend_count(v5, v6, v7))
  {
LABEL_12:

    goto LABEL_13;
  }

  v10 = objc_msgSend_fileNamesByAssetFieldNames(self, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12);

  if (!v13)
  {
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = objc_msgSend_recordIDs(self, v14, v15);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v16, &v29, v33, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v30;
LABEL_5:
    v22 = 0;
    while (1)
    {
      if (*v30 != v21)
      {
        objc_enumerationMutation(v5);
      }

      v23 = objc_msgSend_zoneID(*(*(&v29 + 1) + 8 * v22), v18, v19);
      v25 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v24, v23, run);

      if (!v25)
      {
        goto LABEL_12;
      }

      if (v20 == ++v22)
      {
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v18, &v29, v33, 16);
        if (v20)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v28.receiver = self;
  v28.super_class = CKPublishAssetsOperation;
  result = [(CKDatabaseOperation *)&v28 CKOperationShouldRun:run];
LABEL_14:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleAssetPublishCompletionForRecordID:(id)d publishedAsset:(id)asset recordKey:(id)key error:(id)error
{
  v113 = *MEMORY[0x1E69E9840];
  dCopy = d;
  assetCopy = asset;
  keyCopy = key;
  v15 = objc_msgSend_CKClientSuitableError(error, v13, v14);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v17 = signpost;

  if (v15)
  {
    if (!v17)
    {
      goto LABEL_22;
    }

    if (self)
    {
      v18 = self->super.super._signpost;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v22 = objc_msgSend_log(v19, v20, v21);

    if (self)
    {
      v23 = self->super.super._signpost;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v27 = objc_msgSend_identifier(v24, v25, v26);

    if ((v27 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v22))
    {
      goto LABEL_21;
    }

    *buf = 138412802;
    v104 = dCopy;
    v105 = 2112;
    v106 = keyCopy;
    v107 = 2112;
    v108 = v15;
    v28 = "Record %@ published asset for %@ with error: %@";
    v29 = v22;
    v30 = v27;
    v31 = 32;
    goto LABEL_20;
  }

  if (!v17)
  {
    goto LABEL_22;
  }

  if (self)
  {
    v32 = self->super.super._signpost;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  v22 = objc_msgSend_log(v33, v34, v35);

  if (self)
  {
    v36 = self->super.super._signpost;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;
  v40 = objc_msgSend_identifier(v37, v38, v39);

  if ((v40 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 138412546;
    v104 = dCopy;
    v105 = 2112;
    v106 = keyCopy;
    v28 = "Record %@ published asset for %@";
    v29 = v22;
    v30 = v40;
    v31 = 22;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v29, OS_SIGNPOST_EVENT, v30, "CKPublishAssetsOperation", v28, buf, v31);
  }

LABEL_21:

LABEL_22:
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v41 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v88 = v41;
    v91 = objc_msgSend_operationID(self, v89, v90);
    *buf = 138544386;
    v104 = v91;
    v105 = 2112;
    v106 = dCopy;
    v107 = 2112;
    v108 = assetCopy;
    v109 = 2114;
    v110 = keyCopy;
    v111 = 2112;
    v112 = v15;
    _os_log_debug_impl(&dword_1883EA000, v88, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received callback: %@ %@ %{public}@ %@", buf, 0x34u);
  }

  if (v15)
  {
    v44 = objc_msgSend_perItemErrorsByRecordID(self, v42, v43);
    objc_msgSend_setObject_forKeyedSubscript_(v44, v45, v15, dCopy);
  }

  else
  {
    if ((objc_msgSend_URLOptions(self, v42, v43) & 2) == 0)
    {
      v15 = 0;
      goto LABEL_32;
    }

    v48 = objc_msgSend_fileNamesByAssetFieldNames(self, v46, v47);
    v44 = objc_msgSend_objectForKeyedSubscript_(v48, v49, keyCopy);

    v97 = objc_msgSend_contentBaseURL(assetCopy, v50, v51);
    v101 = objc_msgSend_owner(assetCopy, v52, v53);
    v100 = objc_msgSend_authToken(assetCopy, v54, v55);
    v96 = objc_msgSend_requestor(assetCopy, v56, v57);
    v95 = objc_msgSend_signature(assetCopy, v58, v59);
    v94 = objc_msgSend_referenceSignature(assetCopy, v60, v61);
    v64 = objc_msgSend_size(assetCopy, v62, v63);
    v93 = objc_msgSend_assetKey(assetCopy, v65, v66);
    v92 = objc_msgSend_pathExtension(v44, v67, v68);
    v71 = objc_msgSend_configuration(self, v69, v70);
    objc_msgSend_container(v71, v72, v73);
    v74 = v99 = dCopy;
    v77 = objc_msgSend_containerIdentifier(v74, v75, v76);
    v102 = 0;
    v98 = objc_msgSend_makeAssetStreamHandleWithPartition_owner_accessToken_requestorID_signature_referenceSignature_size_assetKey_filenameExtension_applicationID_error_(_TtC8CloudKit28CloudAssetsAssetStreamHandle, v78, v97, v101, v100, v96, v95, v94, v64, v93, v92, v77, &v102);
    v15 = v102;

    dCopy = v99;
    v79 = [CKMediaItemMaker alloc];
    v81 = objc_msgSend_initWithCloudAssetsAssetStreamHandle_(v79, v80, v98);
    objc_msgSend_setMediaItemMaker_(assetCopy, v82, v81);
  }

LABEL_32:
  v83 = objc_msgSend_assetPublishedBlock(self, v46, v47);

  if (v83)
  {
    v86 = objc_msgSend_assetPublishedBlock(self, v84, v85);
    (v86)[2](v86, dCopy, keyCopy, assetCopy, v15);
  }

  v87 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v55 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKPublishAssetsOperation", "Finishing", buf, 2u);
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

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to publish assets for some records");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v29 = objc_msgSend_publishAssetCompletionBlock(self, v7, v8);

  if (v29)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v31 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v40 = v31;
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v45 = objc_msgSend_ckShortDescription(self, v43, v44);
      *buf = 138544130;
      v48 = v42;
      v49 = 2048;
      selfCopy = self;
      v51 = 2114;
      v52 = v45;
      v53 = 2112;
      v54 = errorCopy;
      _os_log_debug_impl(&dword_1883EA000, v40, OS_LOG_TYPE_DEBUG, "Calling publishAssetCompletionBlock for operation <%{public}@: %p; %{public}@> with error %@", buf, 0x2Au);
    }

    v34 = objc_msgSend_publishAssetCompletionBlock(self, v32, v33);
    v37 = objc_msgSend_CKClientSuitableError(errorCopy, v35, v36);
    (v34)[2](v34, v37);

    objc_msgSend_setPublishAssetCompletionBlock_(self, v38, 0);
  }

  objc_msgSend_setAssetPublishedBlock_(self, v30, 0);
  v46.receiver = self;
  v46.super_class = CKPublishAssetsOperation;
  [(CKOperation *)&v46 _finishOnCallbackQueueWithError:errorCopy];

  v39 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKPublishAssetsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKPublishAssetsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/publish-assets", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleAssetPublishCompletionForRecordID_publishedAsset_recordKey_error_, 3, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKPublishAssetsOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end