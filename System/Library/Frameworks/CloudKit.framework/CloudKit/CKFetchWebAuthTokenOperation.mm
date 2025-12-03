@interface CKFetchWebAuthTokenOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchWebAuthTokenOperation)init;
- (CKFetchWebAuthTokenOperation)initWithAPIToken:(NSString *)APIToken;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fetchWebAuthTokenCompletionBlock;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleOperationDidCompleteWithWebAuthToken:(id)token metrics:(id)metrics error:(id)error;
- (void)setFetchWebAuthTokenCompletionBlock:(void *)fetchWebAuthTokenCompletionBlock;
@end

@implementation CKFetchWebAuthTokenOperation

- (CKFetchWebAuthTokenOperation)init
{
  v3.receiver = self;
  v3.super_class = CKFetchWebAuthTokenOperation;
  return [(CKOperation *)&v3 init];
}

- (CKFetchWebAuthTokenOperation)initWithAPIToken:(NSString *)APIToken
{
  v4 = APIToken;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    v11 = v9->_APIToken;
    v9->_APIToken = v10;
  }

  return v9;
}

- (void)setFetchWebAuthTokenCompletionBlock:(void *)fetchWebAuthTokenCompletionBlock
{
  v6 = fetchWebAuthTokenCompletionBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_188607CA0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_fetchWebAuthTokenCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_fetchWebAuthTokenCompletionBlock;
    self->_fetchWebAuthTokenCompletionBlock = v9;
LABEL_9:
  }
}

- (void)fetchWebAuthTokenCompletionBlock
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
    v13 = sub_1883EE01C;
    v14 = sub_1883EF724;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_188607E9C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchWebAuthTokenCompletionBlock);
  }

  return v6;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v5 = objc_msgSend_APIToken(self, a2, run);

  if (v5)
  {
    v10.receiver = self;
    v10.super_class = CKFetchWebAuthTokenOperation;
    return [(CKDatabaseOperation *)&v10 CKOperationShouldRun:run];
  }

  else if (run)
  {
    v8 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v6, @"CKErrorDomain", 12, @"You must provide an APIToken");
    v9 = v8;
    result = 0;
    *run = v8;
  }

  else
  {
    return 0;
  }

  return result;
}

- (BOOL)hasCKOperationCallbacksSet
{
  v8.receiver = self;
  v8.super_class = CKFetchWebAuthTokenOperation;
  if ([(CKOperation *)&v8 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v6 = objc_msgSend_fetchWebAuthTokenCompletionBlock(self, v3, v4);
  v5 = v6 != 0;

  return v5;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_APIToken(self, v5, v6);
  objc_msgSend_setAPIToken_(infoCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKFetchWebAuthTokenOperation;
  [(CKDatabaseOperation *)&v9 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = CKFetchWebAuthTokenOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v9 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_APIToken(infoCopy, v5, v6, v9.receiver, v9.super_class);

  objc_msgSend_setAPIToken_(self, v8, v7);
}

- (void)handleOperationDidCompleteWithWebAuthToken:(id)token metrics:(id)metrics error:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  errorCopy = error;
  metricsCopy = metrics;
  if ((objc_msgSend_isCancelled(self, v11, v12) & 1) == 0)
  {
    objc_msgSend_setWebAuthToken_(self, v13, tokenCopy);
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
    v24 = tokenCopy;
    _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "Received completion callback for operation %{public}@ with web auth token %@", buf, 0x16u);
  }

  v20.receiver = self;
  v20.super_class = CKFetchWebAuthTokenOperation;
  [(CKOperation *)&v20 handleOperationDidCompleteWithMetrics:metricsCopy error:errorCopy];

  v15 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchWebAuthTokenOperation", "Finishing", buf, 2u);
    }
  }

  v19 = objc_msgSend_fetchWebAuthTokenCompletionBlock_wrapper(self, v7, v8);
  v22 = v19;
  if (v19)
  {
    v23 = _Block_copy(v19);
  }

  else
  {
    v24 = objc_msgSend_fetchWebAuthTokenCompletionBlock(self, v20, v21);
    v23 = _Block_copy(v24);
  }

  if (v23)
  {
    v27 = objc_msgSend_CKClientSuitableError(errorCopy, v25, v26);
    v30 = objc_msgSend_webAuthToken(self, v28, v29);
    v31 = v30 | v27;

    if (!v31)
    {
      v27 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v32, @"CKErrorDomain", 1, @"No web auth token to return, but no error either");
    }

    v34 = objc_msgSend_webAuthToken(self, v32, v33);
    v23[2](v23, v34, v27);

    objc_msgSend_setFetchWebAuthTokenCompletionBlock_(self, v35, 0);
  }

  v36.receiver = self;
  v36.super_class = CKFetchWebAuthTokenOperation;
  [(CKOperation *)&v36 _finishOnCallbackQueueWithError:errorCopy];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchWebAuthTokenOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchWebAuthTokenOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-web-auth-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleOperationDidCompleteWithWebAuthToken_metrics_error_, 2, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKFetchWebAuthTokenOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end