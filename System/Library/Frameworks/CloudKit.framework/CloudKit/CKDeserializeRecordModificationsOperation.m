@interface CKDeserializeRecordModificationsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3;
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)hasCKOperationCallbacksSet;
- (CKDeserializeRecordModificationsOperation)init;
- (CKDeserializeRecordModificationsOperation)initWithSerializedModifications:(id)a3;
- (id)activityCreate;
- (id)deserializeCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleDeserializationOfSaves:(id)a3 deletes:(id)a4 error:(id)a5;
- (void)setDeserializeCompletionBlock:(id)a3;
@end

@implementation CKDeserializeRecordModificationsOperation

- (CKDeserializeRecordModificationsOperation)init
{
  v3.receiver = self;
  v3.super_class = CKDeserializeRecordModificationsOperation;
  return [(CKOperation *)&v3 init];
}

- (CKDeserializeRecordModificationsOperation)initWithSerializedModifications:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    serializedModifications = v9->_serializedModifications;
    v9->_serializedModifications = v10;
  }

  return v9;
}

- (void)setDeserializeCompletionBlock:(id)a3
{
  v6 = a3;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885BC09C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    deserializeCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_deserializeCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    deserializeCompletionBlock = self->_deserializeCompletionBlock;
    self->_deserializeCompletionBlock = v9;
LABEL_9:
  }
}

- (id)deserializeCompletionBlock
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
    v13 = sub_1883EDA60;
    v14 = sub_1883EF614;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885BC298;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_deserializeCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_serializedModifications(self, v5, v6);
  objc_msgSend_setSerializedModifications_(v4, v8, v7);

  v9.receiver = self;
  v9.super_class = CKDeserializeRecordModificationsOperation;
  [(CKDatabaseOperation *)&v9 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKDeserializeRecordModificationsOperation;
  v4 = a3;
  [(CKDatabaseOperation *)&v9 fillFromOperationInfo:v4];
  v7 = objc_msgSend_serializedModifications(v4, v5, v6, v9.receiver, v9.super_class);

  objc_msgSend_setSerializedModifications_(self, v8, v7);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v4.receiver = self;
  v4.super_class = CKDeserializeRecordModificationsOperation;
  return [(CKOperation *)&v4 hasCKOperationCallbacksSet]|| self->_deserializeCompletionBlock != 0;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_serializedModifications(self, a2, a3);

  if (!v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v13 = v7;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v18 = objc_msgSend_ckShortDescription(self, v16, v17);
      *buf = 138543874;
      v21 = v15;
      v22 = 2048;
      v23 = self;
      v24 = 2114;
      v25 = v18;
      _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "Not running operation <%{public}@: %p; %{public}@> due to nil inputs", buf, 0x20u);

      if (!a3)
      {
        goto LABEL_8;
      }
    }

    else if (!a3)
    {
LABEL_8:
      result = 0;
      goto LABEL_9;
    }

    v10 = objc_msgSend_operationID(self, v8, v9);
    *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v11, @"CKErrorDomain", 12, @"There are no inputs for operation %@.", v10);

    goto LABEL_8;
  }

  v19.receiver = self;
  v19.super_class = CKDeserializeRecordModificationsOperation;
  result = [(CKDatabaseOperation *)&v19 CKOperationShouldRun:a3];
LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v5, v10, v9, sel_handleDeserializationOfSaves_deletes_error_, 0, 0);

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v15 = objc_msgSend_setWithObjects_(v11, v14, v12, v13, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v5, v16, v15, sel_handleDeserializationOfSaves_deletes_error_, 1, 0);

  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___CKDeserializeRecordModificationsOperation;
  objc_msgSendSuper2(&v17, sel_applyDaemonCallbackInterfaceTweaks_, v5);
}

- (void)handleDeserializationOfSaves:(id)a3 deletes:(id)a4 error:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_CKClientSuitableError(a5, v10, v11);
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
        v16 = self->super.super._signpost;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      v20 = objc_msgSend_log(v17, v18, v19);

      if (self)
      {
        v21 = self->super.super._signpost;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      v25 = objc_msgSend_identifier(v22, v23, v24);

      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        v28 = objc_msgSend_count(v8, v26, v27);
        v48 = 134218242;
        v49 = objc_msgSend_count(v9, v29, v30) + v28;
        v50 = 2112;
        v51 = v12;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v20, OS_SIGNPOST_EVENT, v25, "CKDeserializeRecordModificationsOperation", "Deserialized results (%lu items) received with error: %@", &v48, 0x16u);
      }
    }

    objc_msgSend_finishWithError_(self, v15, v12);
  }

  else
  {
    if (v14)
    {
      if (self)
      {
        v31 = self->super.super._signpost;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;
      v35 = objc_msgSend_log(v32, v33, v34);

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

      if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        v43 = objc_msgSend_count(v8, v41, v42);
        v48 = 134217984;
        v49 = objc_msgSend_count(v9, v44, v45) + v43;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v35, OS_SIGNPOST_EVENT, v40, "CKDeserializeRecordModificationsOperation", "Deserialized results (%lu items) received", &v48, 0xCu);
      }
    }

    objc_msgSend_setRecordsToSave_(self, v15, v8);
    objc_msgSend_setRecordIDsToDelete_(self, v46, v9);
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKDeserializeRecordModificationsOperation", "Finishing", buf, 2u);
    }
  }

  v19 = objc_msgSend_deserializeCompletionBlock(self, v7, v8);

  if (v19)
  {
    v22 = objc_msgSend_deserializeCompletionBlock(self, v20, v21);
    v25 = objc_msgSend_recordsToSave(self, v23, v24);
    v28 = objc_msgSend_recordIDsToDelete(self, v26, v27);
    v31 = objc_msgSend_CKClientSuitableError(v4, v29, v30);
    (v22)[2](v22, v25, v28, v31);

    objc_msgSend_setRecordsToSave_(self, v32, 0);
    objc_msgSend_setRecordIDsToDelete_(self, v33, 0);
    objc_msgSend_setDeserializeCompletionBlock_(self, v34, 0);
  }

  v35.receiver = self;
  v35.super_class = CKDeserializeRecordModificationsOperation;
  [(CKOperation *)&v35 _finishOnCallbackQueueWithError:v4];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKDeserializeRecordModificationsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)ckSignpostEndWithError:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v19 = v4;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKDeserializeRecordModificationsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/deserialize-record-modifications", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

@end