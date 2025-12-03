@interface CKFetchMergeableDeltasOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchMergeableDeltasOperation)initWithMergeableValueIDs:(id)ds;
- (id)activityCreate;
- (id)deltasFetchedBlock;
- (id)fetchMergeableDeltasCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleFetchForMergeableValueID:(id)d fetchedDeltas:(id)deltas error:(id)error;
- (void)setDeltasFetchedBlock:(id)block;
- (void)setFetchMergeableDeltasCompletionBlock:(id)block;
@end

@implementation CKFetchMergeableDeltasOperation

- (void)setDeltasFetchedBlock:(id)block
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
    v12[2] = sub_1885B324C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    deltasFetchedBlock = v13;
    goto LABEL_9;
  }

  if (self->_deltasFetchedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    deltasFetchedBlock = self->_deltasFetchedBlock;
    self->_deltasFetchedBlock = v9;
LABEL_9:
  }
}

- (id)deltasFetchedBlock
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
    v13 = sub_1883ED984;
    v14 = sub_1883EF5EC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B3448;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_deltasFetchedBlock);
  }

  return v6;
}

- (void)setFetchMergeableDeltasCompletionBlock:(id)block
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
    v12[2] = sub_1885B35D8;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    fetchMergeableDeltasCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_fetchMergeableDeltasCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    fetchMergeableDeltasCompletionBlock = self->_fetchMergeableDeltasCompletionBlock;
    self->_fetchMergeableDeltasCompletionBlock = v9;
LABEL_9:
  }
}

- (id)fetchMergeableDeltasCompletionBlock
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
    v13 = sub_1883ED984;
    v14 = sub_1883EF5EC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B37D4;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchMergeableDeltasCompletionBlock);
  }

  return v6;
}

- (CKFetchMergeableDeltasOperation)initWithMergeableValueIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = CKFetchMergeableDeltasOperation;
  v5 = [(CKOperation *)&v9 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setMergeableValueIDs_(v5, v6, dsCopy);
  }

  return v7;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v16.receiver = self;
  v16.super_class = CKFetchMergeableDeltasOperation;
  if (![(CKDatabaseOperation *)&v16 CKOperationShouldRun:?])
  {
    return 0;
  }

  v7 = objc_msgSend_mergeableValueIDs(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v11 = v10 != 0;

  if (run && !v10)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKErrorDomain", 12, @"%@ must have at least one mergeable ID to fetch", v13);

    return 0;
  }

  return v11;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_mergeableValueIDs(self, v5, v6);
  objc_msgSend_setMergeableValueIDs_(infoCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKFetchMergeableDeltasOperation;
  [(CKDatabaseOperation *)&v9 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = CKFetchMergeableDeltasOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v9 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_mergeableValueIDs(infoCopy, v5, v6, v9.receiver, v9.super_class);

  objc_msgSend_setMergeableValueIDs_(self, v8, v7);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v8.receiver = self;
  v8.super_class = CKFetchMergeableDeltasOperation;
  if ([(CKOperation *)&v8 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v6 = objc_msgSend_fetchMergeableDeltasCompletionBlock(self, v3, v4);
  v5 = v6 != 0;

  return v5;
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_CKClientSuitableError(error, a2, error);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v14 = v5;
    v17 = objc_msgSend_operationID(self, v15, v16);
    *buf = 138543618;
    v24 = v17;
    v25 = 2112;
    v26 = v4;
    _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling fetch completion block with error: %@", buf, 0x16u);
  }

  v8 = objc_msgSend_fetchMergeableDeltasCompletionBlock(self, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_fetchMergeableDeltasCompletionBlock(self, v9, v10);
    (v11)[2](v11, v4);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v12 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v18 = v12;
    v21 = objc_msgSend_operationID(self, v19, v20);
    *buf = 138543618;
    v24 = v21;
    v25 = 2112;
    v26 = v4;
    _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished calling fetch completion block with error: %@", buf, 0x16u);
  }

  v22.receiver = self;
  v22.super_class = CKFetchMergeableDeltasOperation;
  [(CKOperation *)&v22 _finishOnCallbackQueueWithError:v4];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-mergeable-deltas", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___CKFetchMergeableDeltasOperation;
  tweaksCopy = tweaks;
  objc_msgSendSuper2(&v10, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0, v10.receiver, v10.super_class);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v9, v8, sel_handleFetchForMergeableValueID_fetchedDeltas_error_, 1, 0);
}

- (void)handleFetchForMergeableValueID:(id)d fetchedDeltas:(id)deltas error:(id)error
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  deltasCopy = deltas;
  v12 = objc_msgSend_CKClientSuitableError(error, v10, v11);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v13 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v22 = v13;
    v25 = objc_msgSend_operationID(self, v23, v24);
    v32 = 138544130;
    v33 = v25;
    v34 = 2112;
    v35 = dCopy;
    v36 = 2048;
    v37 = objc_msgSend_count(deltasCopy, v26, v27);
    v38 = 2112;
    v39 = v12;
    _os_log_debug_impl(&dword_1883EA000, v22, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received deltas fetched callback for mergeable %@ with %ld deltas and error: %@", &v32, 0x2Au);
  }

  v16 = objc_msgSend_deltasFetchedBlock(self, v14, v15);

  if (v16)
  {
    v19 = objc_msgSend_deltasFetchedBlock(self, v17, v18);
    (v19)[2](v19, dCopy, deltasCopy, v12);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v20 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v28 = v20;
    v31 = objc_msgSend_operationID(self, v29, v30);
    v32 = 138543874;
    v33 = v31;
    v34 = 2112;
    v35 = dCopy;
    v36 = 2112;
    v37 = v12;
    _os_log_debug_impl(&dword_1883EA000, v28, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished deltas fetched callback for mergeable %@ with error: %@", &v32, 0x20u);
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end