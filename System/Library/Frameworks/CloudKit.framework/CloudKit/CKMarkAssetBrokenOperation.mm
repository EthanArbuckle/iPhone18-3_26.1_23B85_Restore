@interface CKMarkAssetBrokenOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKMarkAssetBrokenOperation)initWithNoRecord;
- (CKMarkAssetBrokenOperation)initWithRecordID:(id)d field:(id)field listIndex:(int64_t)index;
- (CKUploadRequestConfiguration)resolvedUploadRequestConfiguration;
- (id)activityCreate;
- (id)markAssetBrokenCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)setMarkAssetBrokenCompletionBlock:(id)block;
@end

@implementation CKMarkAssetBrokenOperation

- (CKMarkAssetBrokenOperation)initWithNoRecord
{
  v2 = objc_msgSend_initWithRecordID_field_(self, a2, 0, 0);
  objc_msgSend_setTouchRepairZone_(v2, v3, 1);

  return v2;
}

- (CKMarkAssetBrokenOperation)initWithRecordID:(id)d field:(id)field listIndex:(int64_t)index
{
  dCopy = d;
  fieldCopy = field;
  v19.receiver = self;
  v19.super_class = CKMarkAssetBrokenOperation;
  v14 = [(CKOperation *)&v19 init];
  if (v14)
  {
    if ((dCopy == 0) != (fieldCopy == 0))
    {
      v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, v14, @"CKMarkAssetBrokenOperation.m", 51, @"Expected both or none of recordID and field to be nil");
    }

    objc_storeStrong(&v14->_recordID, d);
    objc_storeStrong(&v14->_field, field);
    if (index < 0)
    {
      indexCopy = -1;
    }

    else
    {
      indexCopy = index;
    }

    v14->_listIndex = indexCopy;
    v14->_touchRepairZone = 1;
    v14->_bypassPCSEncryptionForTouchRepairZone = 0;
    v14->_simulateCorruptAsset = 1;
    v14->_writeRepairRecord = 1;
  }

  return v14;
}

- (CKUploadRequestConfiguration)resolvedUploadRequestConfiguration
{
  v4 = objc_msgSend_database(self, a2, v2);
  v7 = objc_msgSend_container(v4, v5, v6);
  v10 = objc_msgSend_uploadRequestConfiguration(self, v8, v9);
  v12 = objc_msgSend_resolvedConfigurationWithBaseContainer_overrides_(CKUploadRequestConfiguration, v11, v7, v10);

  return v12;
}

- (void)setMarkAssetBrokenCompletionBlock:(id)block
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
    v12[2] = sub_1885D2978;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    markAssetBrokenCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_markAssetBrokenCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    markAssetBrokenCompletionBlock = self->_markAssetBrokenCompletionBlock;
    self->_markAssetBrokenCompletionBlock = v9;
LABEL_9:
  }
}

- (id)markAssetBrokenCompletionBlock
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
    v13 = sub_1883EDBC0;
    v14 = sub_1883EF654;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D2B74;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_markAssetBrokenCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_recordID(self, v5, v6);
  objc_msgSend_setRecordID_(infoCopy, v8, v7);

  v11 = objc_msgSend_field(self, v9, v10);
  objc_msgSend_setField_(infoCopy, v12, v11);

  v15 = objc_msgSend_listIndex(self, v13, v14);
  objc_msgSend_setListIndex_(infoCopy, v16, v15);
  v19 = objc_msgSend_touchRepairZone(self, v17, v18);
  objc_msgSend_setTouchRepairZone_(infoCopy, v20, v19);
  v23 = objc_msgSend_simulateCorruptAsset(self, v21, v22);
  objc_msgSend_setSimulateCorruptAsset_(infoCopy, v24, v23);
  v27 = objc_msgSend_bypassPCSEncryptionForTouchRepairZone(self, v25, v26);
  objc_msgSend_setBypassPCSEncryptionForTouchRepairZone_(infoCopy, v28, v27);
  v31 = objc_msgSend_writeRepairRecord(self, v29, v30);
  objc_msgSend_setWriteRepairRecord_(infoCopy, v32, v31);
  v35 = objc_msgSend_resolvedUploadRequestConfiguration(self, v33, v34);
  objc_msgSend_setUploadRequestConfiguration_(infoCopy, v36, v35);

  v37.receiver = self;
  v37.super_class = CKMarkAssetBrokenOperation;
  [(CKDatabaseOperation *)&v37 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v37.receiver = self;
  v37.super_class = CKMarkAssetBrokenOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v37 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_recordID(infoCopy, v5, v6, v37.receiver, v37.super_class);
  objc_msgSend_setRecordID_(self, v8, v7);

  v11 = objc_msgSend_field(infoCopy, v9, v10);
  objc_msgSend_setField_(self, v12, v11);

  v15 = objc_msgSend_listIndex(infoCopy, v13, v14);
  objc_msgSend_setListIndex_(self, v16, v15);
  v19 = objc_msgSend_touchRepairZone(infoCopy, v17, v18);
  objc_msgSend_setTouchRepairZone_(self, v20, v19);
  v23 = objc_msgSend_simulateCorruptAsset(infoCopy, v21, v22);
  objc_msgSend_setSimulateCorruptAsset_(self, v24, v23);
  v27 = objc_msgSend_bypassPCSEncryptionForTouchRepairZone(infoCopy, v25, v26);
  objc_msgSend_setBypassPCSEncryptionForTouchRepairZone_(self, v28, v27);
  v31 = objc_msgSend_writeRepairRecord(infoCopy, v29, v30);
  objc_msgSend_setWriteRepairRecord_(self, v32, v31);
  v35 = objc_msgSend_uploadRequestConfiguration(infoCopy, v33, v34);

  objc_msgSend_setUploadRequestConfiguration_(self, v36, v35);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v8.receiver = self;
  v8.super_class = CKMarkAssetBrokenOperation;
  if ([(CKOperation *)&v8 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v6 = objc_msgSend_markAssetBrokenCompletionBlock(self, v3, v4);
  v5 = v6 != 0;

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v5 = objc_msgSend_database(self, a2, run);
  v8 = objc_msgSend_scope(v5, v6, v7);

  if (v8 == 2)
  {
    v11 = objc_msgSend_recordID(self, v9, v10);
    v14 = objc_msgSend_zoneID(v11, v12, v13);
    v16 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v15, v14, run);

    if (v16)
    {
      v20.receiver = self;
      v20.super_class = CKMarkAssetBrokenOperation;
      return [(CKDatabaseOperation *)&v20 CKOperationShouldRun:run];
    }
  }

  else if (run)
  {
    v18 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v9, @"CKInternalErrorDomain", 1019, @"This operation should only be called on the private database");
    v19 = v18;
    result = 0;
    *run = v18;
    return result;
  }

  return 0;
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v71 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKMarkAssetBrokenOperation", "Finishing", buf, 2u);
    }
  }

  v19 = objc_msgSend_CKClientSuitableError(errorCopy, v7, v8);
  v22 = objc_msgSend_markAssetBrokenCompletionBlock(self, v20, v21);

  if (v22)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v56 = v25;
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v61 = objc_msgSend_ckShortDescription(self, v59, v60);
      *buf = 138544130;
      v64 = v58;
      v65 = 2048;
      selfCopy = self;
      v67 = 2114;
      v68 = v61;
      v69 = 2112;
      v70 = v19;
      _os_log_debug_impl(&dword_1883EA000, v56, OS_LOG_TYPE_DEBUG, "Calling markAssetBrokenCompletionBlock for operation <%{public}@: %p; %{public}@> with error %@", buf, 0x2Au);
    }

    v28 = objc_msgSend_markAssetBrokenCompletionBlock(self, v26, v27);
    v31 = objc_msgSend_repairRecordID(self, v29, v30);
    (v28)[2](v28, v31, v19);

    objc_msgSend_setMarkAssetBrokenCompletionBlock_(self, v32, 0);
  }

  v33 = objc_msgSend_recordID(self, v23, v24);
  v36 = objc_msgSend_zoneID(v33, v34, v35);

  if (v36)
  {
    v39 = MEMORY[0x1E695DFA8];
    v40 = MEMORY[0x1E695DEC8];
    v41 = objc_msgSend_recordID(self, v37, v38);
    v44 = objc_msgSend_zoneID(v41, v42, v43);
    v46 = objc_msgSend_arrayWithObjects_(v40, v45, v44, 0);
    v48 = objc_msgSend_setWithArray_(v39, v47, v46);

    v50 = objc_msgSend_zoneIDsToZoneNamesString_(self, v49, v48);
    v53 = objc_msgSend_operationMetric(self, v51, v52);
    objc_msgSend_setObject_forKeyedSubscript_(v53, v54, v50, @"zoneNames");
  }

  v62.receiver = self;
  v62.super_class = CKMarkAssetBrokenOperation;
  [(CKOperation *)&v62 _finishOnCallbackQueueWithError:errorCopy];

  v55 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKMarkAssetBrokenOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKMarkAssetBrokenOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/break-assets", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleMarkAssetBrokenCompletionWithRepairRecordID_error_, 1, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKMarkAssetBrokenOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end