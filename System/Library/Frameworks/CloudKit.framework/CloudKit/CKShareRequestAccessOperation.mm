@interface CKShareRequestAccessOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKShareRequestAccessOperation)init;
- (CKShareRequestAccessOperation)initWithShareURLs:(id)ls;
- (id)activityCreate;
- (id)perShareAccessRequestCompletionBlock;
- (id)shareRequestAccessCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleShareAccessRequestForURL:(id)l error:(id)error;
- (void)setPerShareAccessRequestCompletionBlock:(id)block;
- (void)setShareRequestAccessCompletionBlock:(id)block;
- (void)setShareRequestAccessCompletionBlockIVar:(id)var;
@end

@implementation CKShareRequestAccessOperation

- (CKShareRequestAccessOperation)init
{
  v6.receiver = self;
  v6.super_class = CKShareRequestAccessOperation;
  v2 = [(CKOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    errorsByShareURL = v2->_errorsByShareURL;
    v2->_errorsByShareURL = v3;
  }

  return v2;
}

- (CKShareRequestAccessOperation)initWithShareURLs:(id)ls
{
  lsCopy = ls;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(lsCopy, v7, v8);
    shareURLs = v9->_shareURLs;
    v9->_shareURLs = v10;
  }

  return v9;
}

- (void)setPerShareAccessRequestCompletionBlock:(id)block
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
    v12[2] = sub_1885F5738;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    perShareAccessRequestCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_perShareAccessRequestCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    perShareAccessRequestCompletionBlock = self->_perShareAccessRequestCompletionBlock;
    self->_perShareAccessRequestCompletionBlock = v9;
LABEL_9:
  }
}

- (id)perShareAccessRequestCompletionBlock
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
    v13 = sub_1883EDE64;
    v14 = sub_1883EF6D4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F5934;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perShareAccessRequestCompletionBlock);
  }

  return v6;
}

- (void)setShareRequestAccessCompletionBlockIVar:(id)var
{
  varCopy = var;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885F5AC4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = varCopy;
    dispatch_sync(v11, v12);

    shareRequestAccessCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_shareRequestAccessCompletionBlock != varCopy)
  {
    v9 = objc_msgSend_copy(varCopy, v7, v8);
    shareRequestAccessCompletionBlock = self->_shareRequestAccessCompletionBlock;
    self->_shareRequestAccessCompletionBlock = v9;
LABEL_9:
  }
}

- (id)shareRequestAccessCompletionBlock
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
    v13 = sub_1883EDE64;
    v14 = sub_1883EF6D4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F5CC0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_shareRequestAccessCompletionBlock);
  }

  return v6;
}

- (void)setShareRequestAccessCompletionBlock:(id)block
{
  v4 = block == 0;
  blockCopy = block;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setShareRequestAccessCompletionBlockIVar_(self, v6, blockCopy);
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_shareURLs(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setShareURLsToRequestAccessFor_(infoCopy, v11, v10);

  v12.receiver = self;
  v12.super_class = CKShareRequestAccessOperation;
  [(CKOperation *)&v12 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v12.receiver = self;
  v12.super_class = CKShareRequestAccessOperation;
  infoCopy = info;
  [(CKOperation *)&v12 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_shareURLsToRequestAccessFor(infoCopy, v5, v6, v12.receiver, v12.super_class);

  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setShareURLs_(self, v11, v10);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKShareRequestAccessOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perShareAccessRequestCompletionBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_shareRequestAccessCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = objc_msgSend_shareURLs(self, a2, run);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v25, v29, 16);
  if (!v7)
  {
    goto LABEL_10;
  }

  v9 = v7;
  v10 = *v26;
  while (2)
  {
    v11 = 0;
    do
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v25 + 1) + 8 * v11);
      if (!v12)
      {
        if (run)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKErrorDomain", 12, @"share URL to request access for is invalid. url: %@", 0);
          *run = LABEL_16:;
        }

LABEL_17:

        goto LABEL_18;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (run)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKErrorDomain", 12, @"Object in share URLs to request access for is not a url: %@", v12);
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      ++v11;
    }

    while (v9 != v11);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v25, v29, 16);
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_10:

  v15 = objc_msgSend_shareURLs(self, v13, v14);
  v18 = objc_msgSend_count(v15, v16, v17);

  if (v18)
  {
    v24.receiver = self;
    v24.super_class = CKShareRequestAccessOperation;
    result = [(CKOperation *)&v24 CKOperationShouldRun:run];
  }

  else if (run)
  {
    v22 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v19, @"CKErrorDomain", 12, @"You must specify some share URLs to request access to.");
    v23 = v22;
    result = 0;
    *run = v22;
  }

  else
  {
LABEL_18:
    result = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleShareAccessRequestForURL:(id)l error:(id)error
{
  v49 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v9 = objc_msgSend_CKClientSuitableError(error, v7, v8);
  if (self)
  {
    signpost = self->super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v11 = signpost;

  if (!v9)
  {
    if (!v11)
    {
      goto LABEL_24;
    }

    if (self)
    {
      v26 = self->super._signpost;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v24 = objc_msgSend_log(v27, v28, v29);

    if (self)
    {
      v30 = self->super._signpost;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v34 = objc_msgSend_identifier(v31, v32, v33);

    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      v45 = 138412290;
      v46 = lCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v24, OS_SIGNPOST_EVENT, v34, "CKShareRequestAccessOperation", "Requested access for share: %@", &v45, 0xCu);
    }

    goto LABEL_23;
  }

  if (v11)
  {
    if (self)
    {
      v14 = self->super._signpost;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v18 = objc_msgSend_log(v15, v16, v17);

    if (self)
    {
      v19 = self->super._signpost;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v23 = objc_msgSend_identifier(v20, v21, v22);

    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v45 = 138412546;
      v46 = lCopy;
      v47 = 2112;
      v48 = v9;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v18, OS_SIGNPOST_EVENT, v23, "CKShareRequestAccessOperation", "Requested access for share: %@ with error: %@", &v45, 0x16u);
    }
  }

  if ((objc_msgSend_canDropItemResultsEarly(self, v12, v13) & 1) == 0)
  {
    v24 = objc_msgSend_errorsByShareURL(self, v12, v13);
    objc_msgSend_setObject_forKeyedSubscript_(v24, v25, v9, lCopy);
LABEL_23:
  }

LABEL_24:
  v35 = objc_msgSend_perShareAccessRequestCompletionBlock(self, v12, v13);

  if (v35)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v36 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v41 = v36;
      v44 = objc_msgSend_operationID(self, v42, v43);
      v45 = 138543618;
      v46 = v44;
      v47 = 2112;
      v48 = v9;
      _os_log_debug_impl(&dword_1883EA000, v41, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about requested access for share: %@", &v45, 0x16u);
    }

    v39 = objc_msgSend_perShareAccessRequestCompletionBlock(self, v37, v38);
    (v39)[2](v39, lCopy, v9);
  }

  v40 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKShareRequestAccessOperation", "Finishing", buf, 2u);
    }
  }

  if (!errorCopy)
  {
    v19 = objc_msgSend_errorsByShareURL(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_errorsByShareURL(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to request access to some shares");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v29 = objc_msgSend_shareRequestAccessCompletionBlock(self, v7, v8);

  if (v29)
  {
    v32 = objc_msgSend_shareRequestAccessCompletionBlock(self, v30, v31);
    v35 = objc_msgSend_CKClientSuitableError(errorCopy, v33, v34);
    (v32)[2](v32, v35);

    objc_msgSend_setShareRequestAccessCompletionBlock_(self, v36, 0);
  }

  objc_msgSend_setPerShareAccessRequestCompletionBlock_(self, v30, 0);
  v37.receiver = self;
  v37.super_class = CKShareRequestAccessOperation;
  [(CKOperation *)&v37 _finishOnCallbackQueueWithError:errorCopy];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKShareRequestAccessOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKShareRequestAccessOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/share-access-request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleShareAccessRequestForURL_error_, 1, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKShareRequestAccessOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end