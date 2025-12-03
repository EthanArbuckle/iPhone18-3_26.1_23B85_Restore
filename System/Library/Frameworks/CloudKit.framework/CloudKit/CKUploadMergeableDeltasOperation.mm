@interface CKUploadMergeableDeltasOperation
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKUploadMergeableDeltasOperation)initWithDeltas:(id)deltas replacementRequests:(id)requests;
- (id)activityCreate;
- (id)perDeltaCompletionBlock;
- (id)perReplacementCompletionBlock;
- (id)uploadDeltasCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleReplacementRequest:(id)request error:(id)error;
- (void)handleUploadForDeltaIdentifier:(id)identifier error:(id)error;
- (void)setPerDeltaCompletionBlock:(id)block;
- (void)setPerReplacementCompletionBlock:(id)block;
- (void)setUploadDeltasCompletionBlock:(id)block;
@end

@implementation CKUploadMergeableDeltasOperation

- (void)setPerDeltaCompletionBlock:(id)block
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
    v12[2] = sub_1885B6004;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    perDeltaCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_perDeltaCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    perDeltaCompletionBlock = self->_perDeltaCompletionBlock;
    self->_perDeltaCompletionBlock = v9;
LABEL_9:
  }
}

- (id)perDeltaCompletionBlock
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
    v13 = sub_1883ED9DC;
    v14 = sub_1883EF5FC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B6200;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perDeltaCompletionBlock);
  }

  return v6;
}

- (void)setPerReplacementCompletionBlock:(id)block
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
    v12[2] = sub_1885B6390;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    perReplacementCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_perReplacementCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    perReplacementCompletionBlock = self->_perReplacementCompletionBlock;
    self->_perReplacementCompletionBlock = v9;
LABEL_9:
  }
}

- (id)perReplacementCompletionBlock
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
    v13 = sub_1883ED9DC;
    v14 = sub_1883EF5FC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B658C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perReplacementCompletionBlock);
  }

  return v6;
}

- (void)setUploadDeltasCompletionBlock:(id)block
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
    v12[2] = sub_1885B671C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    uploadDeltasCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_uploadDeltasCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    uploadDeltasCompletionBlock = self->_uploadDeltasCompletionBlock;
    self->_uploadDeltasCompletionBlock = v9;
LABEL_9:
  }
}

- (id)uploadDeltasCompletionBlock
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
    v13 = sub_1883ED9DC;
    v14 = sub_1883EF5FC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B6918;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_uploadDeltasCompletionBlock);
  }

  return v6;
}

- (CKUploadMergeableDeltasOperation)initWithDeltas:(id)deltas replacementRequests:(id)requests
{
  deltasCopy = deltas;
  requestsCopy = requests;
  v22.receiver = self;
  v22.super_class = CKUploadMergeableDeltasOperation;
  v10 = [(CKOperation *)&v22 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(deltasCopy, v8, v9);
    deltas = v10->_deltas;
    v10->_deltas = v11;

    v15 = objc_msgSend_copy(requestsCopy, v13, v14);
    replacementRequests = v10->_replacementRequests;
    v10->_replacementRequests = v15;

    v19 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v17, v18);
    perItemErrors = v10->_perItemErrors;
    v10->_perItemErrors = v19;
  }

  return v10;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v19.receiver = self;
  v19.super_class = CKUploadMergeableDeltasOperation;
  if (![(CKDatabaseOperation *)&v19 CKOperationShouldRun:?])
  {
    return 0;
  }

  if (self)
  {
    deltas = self->_deltas;
  }

  else
  {
    deltas = 0;
  }

  v6 = deltas;
  v9 = objc_msgSend_count(v6, v7, v8);
  v12 = v9 != 0;
  if (v9)
  {
    goto LABEL_10;
  }

  if (self)
  {
    v13 = objc_msgSend_count(self->_replacementRequests, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_count(0, v10, v11);
  }

  v14 = v13;
  v15 = v13 != 0;

  if (run && !v14)
  {
    v16 = objc_opt_class();
    v6 = NSStringFromClass(v16);
    *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v17, @"CKErrorDomain", 12, @"%@ must have at least one delta or replacement", v6);
LABEL_10:

    return v12;
  }

  return v15;
}

- (void)fillOutOperationInfo:(id)info
{
  if (self)
  {
    deltas = self->_deltas;
    infoCopy = info;
    objc_msgSend_setDeltas_(infoCopy, v7, deltas);
    objc_msgSend_setReplacementRequests_(info, v8, self->_replacementRequests);
  }

  else
  {
    infoCopy2 = info;
    objc_msgSend_setDeltas_(infoCopy2, v10, 0);
    objc_msgSend_setReplacementRequests_(info, v11, 0);
  }

  v12.receiver = self;
  v12.super_class = CKUploadMergeableDeltasOperation;
  [(CKDatabaseOperation *)&v12 fillOutOperationInfo:info];
}

- (void)fillFromOperationInfo:(id)info
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = CKUploadMergeableDeltasOperation;
  [(CKDatabaseOperation *)&v13 fillFromOperationInfo:infoCopy];
  v8 = objc_msgSend_deltas(infoCopy, v5, v6);
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v7, v8, 528);
  }

  v12 = objc_msgSend_replacementRequests(infoCopy, v9, v10);
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v11, v12, 536);
  }
}

- (BOOL)hasCKOperationCallbacksSet
{
  v14.receiver = self;
  v14.super_class = CKUploadMergeableDeltasOperation;
  if ([(CKOperation *)&v14 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perDeltaCompletionBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_perReplacementCompletionBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v12 = objc_msgSend_uploadDeltasCompletionBlock(self, v9, v10);
      v5 = v12 != 0;
    }
  }

  return v5;
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    if (self)
    {
      v7 = objc_msgSend_count(self->_perItemErrors, v4, v5);
    }

    else
    {
      v7 = objc_msgSend_count(0, v4, v5);
    }

    if (v7)
    {
      v37 = @"CKPartialErrors";
      if (self)
      {
        perItemErrors = self->_perItemErrors;
      }

      else
      {
        perItemErrors = 0;
      }

      v38[0] = perItemErrors;
      v9 = MEMORY[0x1E695DF20];
      v10 = perItemErrors;
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v9, v11, v38, &v37, 1);

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v13, @"CKInternalErrorDomain", 1011, v12, @"Failed to upload some deltas");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v14 = objc_msgSend_CKClientSuitableError(errorCopy, v4, v5);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v15 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v24 = v15;
    v27 = objc_msgSend_operationID(self, v25, v26);
    *buf = 138543618;
    v34 = v27;
    v35 = 2112;
    v36 = v14;
    _os_log_debug_impl(&dword_1883EA000, v24, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling upload completion block with error: %@", buf, 0x16u);
  }

  v18 = objc_msgSend_uploadDeltasCompletionBlock(self, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_uploadDeltasCompletionBlock(self, v19, v20);
    (v21)[2](v21, v14);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v22 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v28 = v22;
    v31 = objc_msgSend_operationID(self, v29, v30);
    *buf = 138543618;
    v34 = v31;
    v35 = 2112;
    v36 = v14;
    _os_log_debug_impl(&dword_1883EA000, v28, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished calling upload completion block with error: %@", buf, 0x16u);
  }

  v32.receiver = self;
  v32.super_class = CKUploadMergeableDeltasOperation;
  [(CKOperation *)&v32 _finishOnCallbackQueueWithError:v14];

  v23 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/upload-mergeable-deltas", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)handleUploadForDeltaIdentifier:(id)identifier error:(id)error
{
  v43 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = objc_msgSend_CKClientSuitableError(error, v7, v8);
  if (self)
  {
    deltas = self->_deltas;
  }

  else
  {
    deltas = 0;
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1885B7428;
  v35[3] = &unk_1E70BEB88;
  v11 = identifierCopy;
  v36 = v11;
  v14 = objc_msgSend_CKFirstObjectPassingTest_(deltas, v12, v35);
  if (v14)
  {
    if (self)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_perItemErrors, v13, v9, v11);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(0, v13, v9, v11);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v29 = v15;
      v32 = objc_msgSend_operationID(self, v30, v31);
      *buf = 138543874;
      v38 = v32;
      v39 = 2112;
      v40 = v11;
      v41 = 2112;
      v42 = v9;
      _os_log_debug_impl(&dword_1883EA000, v29, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received delta upload callback for identifier %@ with error: %@", buf, 0x20u);
    }

    v18 = objc_msgSend_perDeltaCompletionBlock(self, v16, v17);

    if (v18)
    {
      v21 = objc_msgSend_perDeltaCompletionBlock(self, v19, v20);
      (v21)[2](v21, v14, v9);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v23 = v22;
      v26 = objc_msgSend_operationID(self, v24, v25);
      *buf = 138543874;
      v38 = v26;
      v39 = 2112;
      v40 = v11;
      v41 = 2112;
      v42 = v9;
      _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished delta upload callback for identifier %@ with error: %@", buf, 0x20u);
LABEL_21:
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v27 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v23 = v27;
      v26 = objc_msgSend_operationID(self, v33, v34);
      *buf = 138543618;
      v38 = v26;
      v39 = 2112;
      v40 = v11;
      _os_log_error_impl(&dword_1883EA000, v23, OS_LOG_TYPE_ERROR, "Operation %{public}@ received delta upload callback for unknown delta with identifier: %@", buf, 0x16u);
      goto LABEL_21;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)handleReplacementRequest:(id)request error:(id)error
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v9 = objc_msgSend_CKClientSuitableError(error, v7, v8);
  if (self)
  {
    perItemErrors = self->_perItemErrors;
  }

  else
  {
    perItemErrors = 0;
  }

  v11 = perItemErrors;
  v14 = objc_msgSend_valueID(requestCopy, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v15, v9, v14);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v16 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v25 = v16;
    v28 = objc_msgSend_operationID(self, v26, v27);
    v33 = 138543874;
    v34 = v28;
    v35 = 2112;
    v36 = requestCopy;
    v37 = 2112;
    v38 = v9;
    _os_log_debug_impl(&dword_1883EA000, v25, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received replacement callback for request %@ with error: %@", &v33, 0x20u);
  }

  v19 = objc_msgSend_perReplacementCompletionBlock(self, v17, v18);

  if (v19)
  {
    v22 = objc_msgSend_perReplacementCompletionBlock(self, v20, v21);
    (v22)[2](v22, requestCopy, v9);
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
    v33 = 138543362;
    v34 = v32;
    _os_log_debug_impl(&dword_1883EA000, v29, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished replacement callback", &v33, 0xCu);
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end