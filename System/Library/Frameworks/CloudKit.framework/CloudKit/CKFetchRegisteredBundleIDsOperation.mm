@interface CKFetchRegisteredBundleIDsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)hasCKOperationCallbacksSet;
- (id)activityCreate;
- (id)fetchRegisteredBundleIDsCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)handleOperationDidCompleteWithBundleIDs:(id)ds metrics:(id)metrics error:(id)error;
- (void)setFetchRegisteredBundleIDsCompletionBlock:(id)block;
@end

@implementation CKFetchRegisteredBundleIDsOperation

- (void)setFetchRegisteredBundleIDsCompletionBlock:(id)block
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
    v12[2] = sub_188606400;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    fetchRegisteredBundleIDsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_fetchRegisteredBundleIDsCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    fetchRegisteredBundleIDsCompletionBlock = self->_fetchRegisteredBundleIDsCompletionBlock;
    self->_fetchRegisteredBundleIDsCompletionBlock = v9;
LABEL_9:
  }
}

- (id)fetchRegisteredBundleIDsCompletionBlock
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
    v13 = sub_1883EDFC4;
    v14 = sub_1883EF714;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1886065FC;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchRegisteredBundleIDsCompletionBlock);
  }

  return v6;
}

- (BOOL)hasCKOperationCallbacksSet
{
  v8.receiver = self;
  v8.super_class = CKFetchRegisteredBundleIDsOperation;
  if ([(CKOperation *)&v8 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v6 = objc_msgSend_fetchRegisteredBundleIDsCompletionBlock(self, v3, v4);
  v5 = v6 != 0;

  return v5;
}

- (void)handleOperationDidCompleteWithBundleIDs:(id)ds metrics:(id)metrics error:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  errorCopy = error;
  metricsCopy = metrics;
  if ((objc_msgSend_isCancelled(self, v11, v12) & 1) == 0)
  {
    objc_msgSend_setBundleIDs_(self, v13, dsCopy);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v14 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v16 = v14;
    v19 = objc_msgSend_operationID(self, v17, v18);
    *buf = 138543618;
    v22 = v19;
    v23 = 2112;
    v24 = dsCopy;
    _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "Received completion callback for operation %{public}@ with bundle IDs %@", buf, 0x16u);
  }

  v20.receiver = self;
  v20.super_class = CKFetchRegisteredBundleIDsOperation;
  [(CKOperation *)&v20 handleOperationDidCompleteWithMetrics:metricsCopy error:errorCopy];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    signpost = self->super._signpost;
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
      v9 = self->super._signpost;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v13 = objc_msgSend_log(v10, v11, v12);

    if (self)
    {
      v14 = self->super._signpost;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchRegisteredBundleIDsOperation", "Finishing", buf, 2u);
    }
  }

  v19 = objc_msgSend_fetchRegisteredBundleIDsCompletionBlock(self, v7, v8);

  if (v19)
  {
    v22 = objc_msgSend_fetchRegisteredBundleIDsCompletionBlock(self, v20, v21);
    v25 = objc_msgSend_bundleIDs(self, v23, v24);
    v28 = objc_msgSend_CKClientSuitableError(errorCopy, v26, v27);
    (v22)[2](v22, v25, v28);

    objc_msgSend_setFetchRegisteredBundleIDsCompletionBlock_(self, v29, 0);
  }

  v30.receiver = self;
  v30.super_class = CKFetchRegisteredBundleIDsOperation;
  [(CKOperation *)&v30 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)ckSignpostBegin
{
  v55 = *MEMORY[0x1E69E9840];
  if (self)
  {
    signpost = self->super._signpost;
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
      v5 = self->super._signpost;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v9 = objc_msgSend_log(v6, v7, v8);

    if (self)
    {
      v10 = self->super._signpost;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchRegisteredBundleIDsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
    signpost = self->super._signpost;
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
      v7 = self->super._signpost;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v11 = objc_msgSend_log(v8, v9, v10);

    if (self)
    {
      v12 = self->super._signpost;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchRegisteredBundleIDsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-whitelisted-bundle-ids", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleOperationDidCompleteWithBundleIDs_metrics_error_, 2, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKFetchRegisteredBundleIDsOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end