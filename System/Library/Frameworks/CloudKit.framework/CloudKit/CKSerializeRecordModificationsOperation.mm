@interface CKSerializeRecordModificationsOperation
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)hasCKOperationCallbacksSet;
- (CKSerializeRecordModificationsOperation)init;
- (CKSerializeRecordModificationsOperation)initWithRecordsToSave:(id)a3 recordIDsToDelete:(id)a4;
- (id)activityCreate;
- (id)serializeCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleSerialization:(id)a3 error:(id)a4;
- (void)performCKOperation;
- (void)setSerializeCompletionBlock:(id)a3;
@end

@implementation CKSerializeRecordModificationsOperation

- (CKSerializeRecordModificationsOperation)init
{
  v3.receiver = self;
  v3.super_class = CKSerializeRecordModificationsOperation;
  return [(CKOperation *)&v3 init];
}

- (CKSerializeRecordModificationsOperation)initWithRecordsToSave:(id)a3 recordIDsToDelete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_init(self, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_copy(v6, v10, v11);
    recordsToSave = v12->_recordsToSave;
    v12->_recordsToSave = v13;

    v17 = objc_msgSend_copy(v7, v15, v16);
    recordIDsToDelete = v12->_recordIDsToDelete;
    v12->_recordIDsToDelete = v17;
  }

  return v12;
}

- (void)setSerializeCompletionBlock:(id)a3
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
    v12[2] = sub_1885BD458;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    serializeCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_serializeCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    serializeCompletionBlock = self->_serializeCompletionBlock;
    self->_serializeCompletionBlock = v9;
LABEL_9:
  }
}

- (id)serializeCompletionBlock
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
    v13 = sub_1883EDA8C;
    v14 = sub_1883EF61C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885BD654;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_serializeCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordsToSave(self, v5, v6);
  objc_msgSend_setRecordsToSave_(v4, v8, v7);

  v11 = objc_msgSend_recordIDsToDelete(self, v9, v10);
  objc_msgSend_setRecordIDsToDelete_(v4, v12, v11);

  v13.receiver = self;
  v13.super_class = CKSerializeRecordModificationsOperation;
  [(CKDatabaseOperation *)&v13 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v13.receiver = self;
  v13.super_class = CKSerializeRecordModificationsOperation;
  v4 = a3;
  [(CKDatabaseOperation *)&v13 fillFromOperationInfo:v4];
  v7 = objc_msgSend_recordsToSave(v4, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_setRecordsToSave_(self, v8, v7);

  v11 = objc_msgSend_recordIDsToDelete(v4, v9, v10);

  objc_msgSend_setRecordIDsToDelete_(self, v12, v11);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v4.receiver = self;
  v4.super_class = CKSerializeRecordModificationsOperation;
  return [(CKOperation *)&v4 hasCKOperationCallbacksSet]|| self->_serializeCompletionBlock != 0;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_recordsToSave(self, a2, a3);
  if (v5)
  {
  }

  else
  {
    v10 = objc_msgSend_recordIDsToDelete(self, v6, v7);

    if (!v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v39 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v44 = v39;
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v49 = objc_msgSend_ckShortDescription(self, v47, v48);
        *buf = 138543874;
        v62 = v46;
        v63 = 2048;
        v64 = self;
        v65 = 2114;
        v66 = v49;
        _os_log_debug_impl(&dword_1883EA000, v44, OS_LOG_TYPE_DEBUG, "Not running operation <%{public}@: %p; %{public}@> due to nil inputs", buf, 0x20u);

        if (!a3)
        {
          goto LABEL_22;
        }
      }

      else if (!a3)
      {
        goto LABEL_22;
      }

      v42 = objc_msgSend_operationID(self, v40, v41);
      *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v43, @"CKErrorDomain", 12, @"There are no inputs for operation %@.", v42);

      goto LABEL_22;
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v11 = objc_msgSend_recordsToSave(self, v8, v9);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v55, v60, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v56;
LABEL_6:
    v18 = 0;
    while (1)
    {
      if (*v56 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = objc_msgSend_recordID(*(*(&v55 + 1) + 8 * v18), v14, v15);
      v22 = objc_msgSend_zoneID(v19, v20, v21);
      v24 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v23, v22, a3);

      if (!v24)
      {
        goto LABEL_21;
      }

      if (v16 == ++v18)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v55, v60, 16);
        if (v16)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = objc_msgSend_recordIDsToDelete(self, v25, v26);
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v27, &v51, v59, 16);
  if (v28)
  {
    v31 = v28;
    v32 = *v52;
LABEL_14:
    v33 = 0;
    while (1)
    {
      if (*v52 != v32)
      {
        objc_enumerationMutation(v11);
      }

      v34 = objc_msgSend_zoneID(*(*(&v51 + 1) + 8 * v33), v29, v30);
      v36 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v35, v34, a3);

      if (!v36)
      {
        break;
      }

      if (v31 == ++v33)
      {
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v29, &v51, v59, 16);
        if (v31)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

LABEL_21:

LABEL_22:
    result = 0;
    goto LABEL_23;
  }

LABEL_20:

  v50.receiver = self;
  v50.super_class = CKSerializeRecordModificationsOperation;
  result = [(CKDatabaseOperation *)&v50 CKOperationShouldRun:a3];
LABEL_23:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performCKOperation
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_recordsToSave(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_database(self, v8, v9);
    v13 = objc_msgSend_container(v10, v11, v12);

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = objc_msgSend_recordsToSave(self, v14, v15);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v29, v33, 16);
    if (v18)
    {
      v20 = v18;
      v21 = *v30;
      while (2)
      {
        v22 = 0;
        do
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v29 + 1) + 8 * v22);
          v28 = 0;
          objc_msgSend_prepareMergeablesForUploadInContainer_useAssetsIfNecessary_error_(v23, v19, v13, 0, &v28);
          v24 = v28;
          if (v24)
          {
            v25 = v24;
            objc_msgSend_finishWithError_(self, v19, v24);

            goto LABEL_13;
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v29, v33, 16);
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  v27.receiver = self;
  v27.super_class = CKSerializeRecordModificationsOperation;
  [(CKOperation *)&v27 performCKOperation];
LABEL_13:
  v26 = *MEMORY[0x1E69E9840];
}

- (void)handleSerialization:(id)a3 error:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = objc_msgSend_CKClientSuitableError(a4, v7, v8);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v11 = signpost;

  if (v9)
  {
    if (v11)
    {
      if (self)
      {
        v13 = self->super.super._signpost;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      v17 = objc_msgSend_log(v14, v15, v16);

      if (self)
      {
        v18 = self->super.super._signpost;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v22 = objc_msgSend_identifier(v19, v20, v21);

      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        v38 = 134218242;
        v39 = objc_msgSend_length(v6, v23, v24);
        v40 = 2112;
        v41 = v9;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v17, OS_SIGNPOST_EVENT, v22, "CKSerializeRecordModificationsOperation", "Serialized results (%lu bytes) received with error: %@", &v38, 0x16u);
      }
    }

    objc_msgSend_finishWithError_(self, v12, v9);
  }

  else
  {
    if (v11)
    {
      if (self)
      {
        v25 = self->super.super._signpost;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      v29 = objc_msgSend_log(v26, v27, v28);

      if (self)
      {
        v30 = self->super.super._signpost;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;
      v34 = objc_msgSend_identifier(v31, v32, v33);

      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        v38 = 134217984;
        v39 = objc_msgSend_length(v6, v35, v36);
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v29, OS_SIGNPOST_EVENT, v34, "CKSerializeRecordModificationsOperation", "Serialized results (%lu bytes) received", &v38, 0xCu);
      }
    }

    objc_msgSend_setSerializedModifications_(self, v12, v6);
  }

  v37 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKSerializeRecordModificationsOperation", "Finishing", buf, 2u);
    }
  }

  v19 = objc_msgSend_serializeCompletionBlock(self, v7, v8);

  if (v19)
  {
    v22 = objc_msgSend_serializeCompletionBlock(self, v20, v21);
    v25 = objc_msgSend_serializedModifications(self, v23, v24);
    v28 = objc_msgSend_CKClientSuitableError(v4, v26, v27);
    (v22)[2](v22, v25, v28);

    objc_msgSend_setSerializedModifications_(self, v29, 0);
    objc_msgSend_setSerializeCompletionBlock_(self, v30, 0);
  }

  v31.receiver = self;
  v31.super_class = CKSerializeRecordModificationsOperation;
  [(CKOperation *)&v31 _finishOnCallbackQueueWithError:v4];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKSerializeRecordModificationsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKSerializeRecordModificationsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/serialize-record-modifications", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

@end