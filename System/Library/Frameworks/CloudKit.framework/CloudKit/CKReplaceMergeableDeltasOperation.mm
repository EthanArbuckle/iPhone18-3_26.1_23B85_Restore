@interface CKReplaceMergeableDeltasOperation
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKReplaceMergeableDeltasOperation)initWithReplaceDeltasRequests:(id)requests;
- (id)activityCreate;
- (id)perReplacementBlock;
- (id)replaceMergeableDeltasCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleCompletedReplaceDeltasRequest:(id)request error:(id)error;
- (void)setPerReplacementBlock:(id)block;
- (void)setReplaceMergeableDeltasCompletionBlock:(id)block;
@end

@implementation CKReplaceMergeableDeltasOperation

- (void)setPerReplacementBlock:(id)block
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
    v12[2] = sub_1885B43FC;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    perReplacementBlock = v13;
    goto LABEL_9;
  }

  if (self->_perReplacementBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    perReplacementBlock = self->_perReplacementBlock;
    self->_perReplacementBlock = v9;
LABEL_9:
  }
}

- (id)perReplacementBlock
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
    v13 = sub_1883ED9B0;
    v14 = sub_1883EF5F4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B45F8;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perReplacementBlock);
  }

  return v6;
}

- (void)setReplaceMergeableDeltasCompletionBlock:(id)block
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
    v12[2] = sub_1885B4788;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    replaceMergeableDeltasCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_replaceMergeableDeltasCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    replaceMergeableDeltasCompletionBlock = self->_replaceMergeableDeltasCompletionBlock;
    self->_replaceMergeableDeltasCompletionBlock = v9;
LABEL_9:
  }
}

- (id)replaceMergeableDeltasCompletionBlock
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
    v13 = sub_1883ED9B0;
    v14 = sub_1883EF5F4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B4984;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_replaceMergeableDeltasCompletionBlock);
  }

  return v6;
}

- (CKReplaceMergeableDeltasOperation)initWithReplaceDeltasRequests:(id)requests
{
  requestsCopy = requests;
  v15.receiver = self;
  v15.super_class = CKReplaceMergeableDeltasOperation;
  v7 = [(CKOperation *)&v15 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(requestsCopy, v5, v6);
    replaceDeltasRequests = v7->_replaceDeltasRequests;
    v7->_replaceDeltasRequests = v8;

    v12 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v10, v11);
    perValueErrors = v7->_perValueErrors;
    v7->_perValueErrors = v12;
  }

  return v7;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v18.receiver = self;
  v18.super_class = CKReplaceMergeableDeltasOperation;
  v5 = [(CKDatabaseOperation *)&v18 CKOperationShouldRun:?];
  if (v5)
  {
    v8 = objc_msgSend_replaceDeltasRequests(self, v6, v7);
    v11 = objc_msgSend_count(v8, v9, v10);

    if (v11)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      if (run)
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v16, @"CKErrorDomain", 12, @"%@ cannot run without a %@", v13, v15);
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)fillOutOperationInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = CKReplaceMergeableDeltasOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v9 fillOutOperationInfo:infoCopy];
  v7 = objc_msgSend_replaceDeltasRequests(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_setReplaceDeltasRequests_(infoCopy, v8, v7);
}

- (void)fillFromOperationInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = CKReplaceMergeableDeltasOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v9 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_replaceDeltasRequests(infoCopy, v5, v6, v9.receiver, v9.super_class);

  objc_msgSend_setReplaceDeltasRequests_(self, v8, v7);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKReplaceMergeableDeltasOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perReplacementBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_replaceMergeableDeltasCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    v7 = objc_msgSend_perValueErrors(self, v4, v5);
    v10 = objc_msgSend_count(v7, v8, v9);

    if (v10)
    {
      v38 = @"CKPartialErrors";
      v11 = objc_msgSend_perValueErrors(self, v4, v5);
      v39[0] = v11;
      v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v39, &v38, 1);

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v14, @"CKInternalErrorDomain", 1011, v13, @"Failed to replace some delta metadata");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v15 = objc_msgSend_CKClientSuitableError(errorCopy, v4, v5);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v16 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v25 = v16;
    v28 = objc_msgSend_operationID(self, v26, v27);
    *buf = 138543618;
    v35 = v28;
    v36 = 2112;
    v37 = v15;
    _os_log_debug_impl(&dword_1883EA000, v25, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling replace mergeable deltas completion block with error: %@", buf, 0x16u);
  }

  v19 = objc_msgSend_replaceMergeableDeltasCompletionBlock(self, v17, v18);

  if (v19)
  {
    v22 = objc_msgSend_replaceMergeableDeltasCompletionBlock(self, v20, v21);
    (v22)[2](v22, v15);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v23 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v29 = v23;
    v32 = objc_msgSend_operationID(self, v30, v31);
    *buf = 138543618;
    v35 = v32;
    v36 = 2112;
    v37 = v15;
    _os_log_debug_impl(&dword_1883EA000, v29, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished calling replace mergeable deltas completion block with error: %@", buf, 0x16u);
  }

  v33.receiver = self;
  v33.super_class = CKReplaceMergeableDeltasOperation;
  [(CKOperation *)&v33 _finishOnCallbackQueueWithError:v15];

  v24 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/replace-mergeable-deltas", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)handleCompletedReplaceDeltasRequest:(id)request error:(id)error
{
  v40 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v11 = objc_msgSend_CKClientSuitableError(error, v7, v8);
  if (v11)
  {
    v12 = objc_msgSend_perValueErrors(self, v9, v10);
    v15 = objc_msgSend_valueID(requestCopy, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v16, v11, v15);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v17 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v26 = v17;
    v29 = objc_msgSend_operationID(self, v27, v28);
    v34 = 138543874;
    v35 = v29;
    v36 = 2112;
    v37 = requestCopy;
    v38 = 2112;
    v39 = v11;
    _os_log_debug_impl(&dword_1883EA000, v26, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received replace mergeable deltas request callback for %@ with error: %@", &v34, 0x20u);
  }

  v20 = objc_msgSend_perReplacementBlock(self, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_perReplacementBlock(self, v21, v22);
    (v23)[2](v23, requestCopy, v11);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v24 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v30 = v24;
    v33 = objc_msgSend_operationID(self, v31, v32);
    v34 = 138543874;
    v35 = v33;
    v36 = 2112;
    v37 = requestCopy;
    v38 = 2112;
    v39 = v11;
    _os_log_debug_impl(&dword_1883EA000, v30, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished replace mergeable deltas request callback for %@ with error: %@", &v34, 0x20u);
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end