@interface CKFetchShareParticipantKeyOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchShareParticipantKeyOperation)initWithShareIDs:(id)ds;
- (id)activityCreate;
- (id)shareParticipantKeyCompletionBlock;
- (id)shareParticipantKeyFetchedBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleParticipantKeyFetchForRecordID:(id)d participantKey:(id)key error:(id)error;
- (void)setShareParticipantKeyCompletionBlock:(id)block;
- (void)setShareParticipantKeyFetchedBlock:(id)block;
@end

@implementation CKFetchShareParticipantKeyOperation

- (CKFetchShareParticipantKeyOperation)initWithShareIDs:(id)ds
{
  dsCopy = ds;
  v13.receiver = self;
  v13.super_class = CKFetchShareParticipantKeyOperation;
  v7 = [(CKOperation *)&v13 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(dsCopy, v5, v6);
    shareIDs = v7->_shareIDs;
    v7->_shareIDs = v8;

    v10 = objc_opt_new();
    errorsByShareID = v7->_errorsByShareID;
    v7->_errorsByShareID = v10;
  }

  return v7;
}

- (void)setShareParticipantKeyFetchedBlock:(id)block
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
    v12[2] = sub_1885EF36C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    shareParticipantKeyFetchedBlock = v13;
    goto LABEL_9;
  }

  if (self->_shareParticipantKeyFetchedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    shareParticipantKeyFetchedBlock = self->_shareParticipantKeyFetchedBlock;
    self->_shareParticipantKeyFetchedBlock = v9;
LABEL_9:
  }
}

- (id)shareParticipantKeyFetchedBlock
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
    v13 = sub_1883EDDB4;
    v14 = sub_1883EF6B4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885EF568;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_shareParticipantKeyFetchedBlock);
  }

  return v6;
}

- (void)setShareParticipantKeyCompletionBlock:(id)block
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
    v12[2] = sub_1885EF6F8;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    shareParticipantKeyCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_shareParticipantKeyCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    shareParticipantKeyCompletionBlock = self->_shareParticipantKeyCompletionBlock;
    self->_shareParticipantKeyCompletionBlock = v9;
LABEL_9:
  }
}

- (id)shareParticipantKeyCompletionBlock
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
    v13 = sub_1883EDDB4;
    v14 = sub_1883EF6B4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885EF8F4;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_shareParticipantKeyCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_shareIDs(self, v5, v6);
  objc_msgSend_setShareIDs_(infoCopy, v8, v7);

  v11 = objc_msgSend_baseTokensByShareID(self, v9, v10);
  objc_msgSend_setBaseTokensByShareID_(infoCopy, v12, v11);

  v15 = objc_msgSend_childRecordIDsByShareID(self, v13, v14);
  objc_msgSend_setChildRecordIDsByShareID_(infoCopy, v16, v15);

  v17.receiver = self;
  v17.super_class = CKFetchShareParticipantKeyOperation;
  [(CKDatabaseOperation *)&v17 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v17.receiver = self;
  v17.super_class = CKFetchShareParticipantKeyOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v17 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_shareIDs(infoCopy, v5, v6, v17.receiver, v17.super_class);
  objc_msgSend_setShareIDs_(self, v8, v7);

  v11 = objc_msgSend_baseTokensByShareID(infoCopy, v9, v10);
  objc_msgSend_setBaseTokensByShareID_(self, v12, v11);

  v15 = objc_msgSend_childRecordIDsByShareID(infoCopy, v13, v14);

  objc_msgSend_setChildRecordIDsByShareID_(self, v16, v15);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKFetchShareParticipantKeyOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_shareParticipantKeyFetchedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_shareParticipantKeyCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_shareIDs(self, a2, run);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = objc_msgSend_shareIDs(self, v9, v10);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v28, v32, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v29;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = objc_msgSend_zoneID(*(*(&v28 + 1) + 8 * v18), v14, v15);
          v21 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v20, v19, run);

          if (!v21)
          {

            goto LABEL_14;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v28, v32, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v27.receiver = self;
    v27.super_class = CKFetchShareParticipantKeyOperation;
    result = [(CKDatabaseOperation *)&v27 CKOperationShouldRun:run];
  }

  else
  {
    if (run)
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKErrorDomain", 12, @"No share IDs were passed to %@", v24);
    }

LABEL_14:
    result = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleParticipantKeyFetchForRecordID:(id)d participantKey:(id)key error:(id)error
{
  v47 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keyCopy = key;
  v12 = objc_msgSend_CKClientSuitableError(error, v10, v11);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v14 = signpost;

  if (v12)
  {
    if (v14)
    {
      if (self)
      {
        v17 = self->super.super._signpost;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      v21 = objc_msgSend_log(v18, v19, v20);

      if (self)
      {
        v22 = self->super.super._signpost;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      v26 = objc_msgSend_identifier(v23, v24, v25);

      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        v43 = 138412546;
        v44 = dCopy;
        v45 = 2112;
        v46 = v12;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v21, OS_SIGNPOST_EVENT, v26, "CKFetchShareParticipantKeyOperation", "Share %@ fetched participant key with error: %@", &v43, 0x16u);
      }
    }

    v27 = objc_msgSend_errorsByShareID(self, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v27, v28, v12, dCopy);
LABEL_14:

    goto LABEL_15;
  }

  if (v14)
  {
    if (self)
    {
      v34 = self->super.super._signpost;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    v27 = objc_msgSend_log(v35, v36, v37);

    if (self)
    {
      v38 = self->super.super._signpost;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    v42 = objc_msgSend_identifier(v39, v40, v41);

    if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      v43 = 138412290;
      v44 = dCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v27, OS_SIGNPOST_EVENT, v42, "CKFetchShareParticipantKeyOperation", "Share %@ fetched participant key", &v43, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:
  v29 = objc_msgSend_shareParticipantKeyFetchedBlock(self, v15, v16);

  if (v29)
  {
    v32 = objc_msgSend_shareParticipantKeyFetchedBlock(self, v30, v31);
    (v32)[2](v32, dCopy, keyCopy, v12);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
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
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_EVENT, v16, "CKFetchShareParticipantKeyOperation", "Finishing", buf, 2u);
    }
  }

  v19 = errorCopy;
  v20 = v19;
  if (!v19)
  {
    v21 = objc_msgSend_errorsByShareID(self, v17, v18);
    v24 = objc_msgSend_count(v21, v22, v23);

    if (v24)
    {
      v25 = objc_msgSend_userInfo(0, v17, v18);
      v28 = objc_msgSend_mutableCopy(v25, v26, v27);
      v31 = v28;
      if (v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v29, v30);
      }

      v33 = v32;

      v36 = objc_msgSend_errorsByShareID(self, v34, v35);
      objc_msgSend_setObject_forKeyedSubscript_(v33, v37, v36, @"CKPartialErrors");

      v20 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v38, @"CKInternalErrorDomain", 1011, v33, @"Failed to fetch some share participant keys");
    }

    else
    {
      v20 = 0;
    }
  }

  v39 = objc_msgSend_shareParticipantKeyCompletionBlock(self, v17, v18);

  if (v39)
  {
    v42 = objc_msgSend_shareParticipantKeyCompletionBlock(self, v40, v41);
    v45 = objc_msgSend_CKClientSuitableError(v20, v43, v44);
    (v42)[2](v42, v45);

    objc_msgSend_setShareParticipantKeyCompletionBlock_(self, v46, 0);
  }

  objc_msgSend_setShareParticipantKeyFetchedBlock_(self, v40, 0);
  v47.receiver = self;
  v47.super_class = CKFetchShareParticipantKeyOperation;
  [(CKOperation *)&v47 _finishOnCallbackQueueWithError:v20];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchShareParticipantKeyOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchShareParticipantKeyOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-share-participant-key", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleParticipantKeyFetchForRecordID_participantKey_error_, 2, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKFetchShareParticipantKeyOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end