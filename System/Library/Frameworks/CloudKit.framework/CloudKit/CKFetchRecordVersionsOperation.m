@interface CKFetchRecordVersionsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3;
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchRecordVersionsOperation)init;
- (CKFetchRecordVersionsOperation)initWithRecordIDs:(id)a3;
- (id)activityCreate;
- (id)fetchRecordVersionsCompletionBlock;
- (id)fetchRecordVersionsProgressBlock;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)setFetchRecordVersionsCompletionBlock:(id)a3;
- (void)setFetchRecordVersionsProgressBlock:(id)a3;
@end

@implementation CKFetchRecordVersionsOperation

- (CKFetchRecordVersionsOperation)init
{
  v6.receiver = self;
  v6.super_class = CKFetchRecordVersionsOperation;
  v2 = [(CKOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordErrors = v2->_recordErrors;
    v2->_recordErrors = v3;

    v2->_shouldFetchAssetContent = 1;
  }

  return v2;
}

- (CKFetchRecordVersionsOperation)initWithRecordIDs:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_init(self, v5, v6);
  if (v7)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v25, v29, 16);
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v25 + 1) + 8 * v13);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = [CKException alloc];
            v24 = objc_msgSend_initWithCode_format_(v22, v23, 12, @"%@ is not a valid record ID", v14);
            objc_exception_throw(v24);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v25, v29, 16);
      }

      while (v11);
    }

    v18 = objc_msgSend_copy(v8, v16, v17);
    recordIDs = v7->_recordIDs;
    v7->_recordIDs = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setFetchRecordVersionsProgressBlock:(id)a3
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
    v12[2] = sub_1885CA890;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    fetchRecordVersionsProgressBlock = v13;
    goto LABEL_9;
  }

  if (self->_fetchRecordVersionsProgressBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    fetchRecordVersionsProgressBlock = self->_fetchRecordVersionsProgressBlock;
    self->_fetchRecordVersionsProgressBlock = v9;
LABEL_9:
  }
}

- (id)fetchRecordVersionsProgressBlock
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
    v13 = sub_1883EDB68;
    v14 = sub_1883EF644;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885CAA8C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchRecordVersionsProgressBlock);
  }

  return v6;
}

- (void)setFetchRecordVersionsCompletionBlock:(id)a3
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
    v12[2] = sub_1885CAC1C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    fetchRecordVersionsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_fetchRecordVersionsCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    fetchRecordVersionsCompletionBlock = self->_fetchRecordVersionsCompletionBlock;
    self->_fetchRecordVersionsCompletionBlock = v9;
LABEL_9:
  }
}

- (id)fetchRecordVersionsCompletionBlock
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
    v13 = sub_1883EDB68;
    v14 = sub_1883EF644;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885CAE18;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchRecordVersionsCompletionBlock);
  }

  return v6;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-record-versions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordIDs(self, v5, v6);
  objc_msgSend_setRecordIDs_(v4, v8, v7);

  v11 = objc_msgSend_desiredKeys(self, v9, v10);
  objc_msgSend_setDesiredKeys_(v4, v12, v11);

  v15 = objc_msgSend_minimumVersionETag(self, v13, v14);
  objc_msgSend_setMinimumVersionETag_(v4, v16, v15);

  AssetContent = objc_msgSend_shouldFetchAssetContent(self, v17, v18);
  objc_msgSend_setShouldFetchAssetContent_(v4, v20, AssetContent);
  v21.receiver = self;
  v21.super_class = CKFetchRecordVersionsOperation;
  [(CKDatabaseOperation *)&v21 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v21.receiver = self;
  v21.super_class = CKFetchRecordVersionsOperation;
  v4 = a3;
  [(CKDatabaseOperation *)&v21 fillFromOperationInfo:v4];
  v7 = objc_msgSend_recordIDs(v4, v5, v6, v21.receiver, v21.super_class);
  objc_msgSend_setRecordIDs_(self, v8, v7);

  v11 = objc_msgSend_desiredKeys(v4, v9, v10);
  objc_msgSend_setDesiredKeys_(self, v12, v11);

  v15 = objc_msgSend_minimumVersionETag(v4, v13, v14);
  objc_msgSend_setMinimumVersionETag_(self, v16, v15);

  AssetContent = objc_msgSend_shouldFetchAssetContent(v4, v17, v18);
  objc_msgSend_setShouldFetchAssetContent_(self, v20, AssetContent);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKFetchRecordVersionsOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_fetchRecordVersionsProgressBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_fetchRecordVersionsCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_fetchRecordVersionsProgressBlock(self, a2, a3);
  if (v5)
  {
    v8 = v5;
    v9 = objc_msgSend_recordIDs(self, v6, v7);
    v12 = objc_msgSend_count(v9, v10, v11);

    if (v12)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = objc_msgSend_recordIDs(self, v13, v14);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v29, v33, 16);
      if (v17)
      {
        v20 = v17;
        v21 = *v30;
        while (2)
        {
          v22 = 0;
          do
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v15);
            }

            v23 = objc_msgSend_zoneID(*(*(&v29 + 1) + 8 * v22), v18, v19);
            v25 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v24, v23, a3);

            if (!v25)
            {

              goto LABEL_13;
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v29, v33, 16);
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v28.receiver = self;
      v28.super_class = CKFetchRecordVersionsOperation;
      LOBYTE(v5) = [(CKDatabaseOperation *)&v28 CKOperationShouldRun:a3];
    }

    else
    {
LABEL_13:
      LOBYTE(v5) = 0;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchRecordVersionsOperation", "Finishing", buf, 2u);
    }
  }

  if (!v4)
  {
    v19 = objc_msgSend_recordErrors(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_recordErrors(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      v4 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to fetch some record versions");
    }

    else
    {
      v4 = 0;
    }
  }

  v29 = objc_msgSend_fetchRecordVersionsCompletionBlock(self, v7, v8);

  if (v29)
  {
    v32 = objc_msgSend_fetchRecordVersionsCompletionBlock(self, v30, v31);
    v35 = objc_msgSend_CKClientSuitableError(v4, v33, v34);
    (v32)[2](v32, v35);

    objc_msgSend_setFetchRecordVersionsCompletionBlock_(self, v36, 0);
  }

  objc_msgSend_setFetchRecordVersionsProgressBlock_(self, v30, 0);
  v37.receiver = self;
  v37.super_class = CKFetchRecordVersionsOperation;
  [(CKOperation *)&v37 _finishOnCallbackQueueWithError:v4];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchRecordVersionsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchRecordVersionsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v5, v10, v9, sel_handleFetchForRecordID_isDeleted_versions_error_, 2, 0);

  v11 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v5, v12, v11, sel_handleFetchForRecordID_isDeleted_versions_error_, 3, 0);

  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___CKFetchRecordVersionsOperation;
  objc_msgSendSuper2(&v13, sel_applyDaemonCallbackInterfaceTweaks_, v5);
}

@end