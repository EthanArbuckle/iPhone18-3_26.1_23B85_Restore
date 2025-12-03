@interface CKDeclineSharesOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKDeclineSharesOperation)init;
- (CKDeclineSharesOperation)initWithShareMetadatas:(id)metadatas;
- (id)activityCreate;
- (id)declineSharesCompletionBlock;
- (id)perShareCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleShareDeclineForURL:(id)l error:(id)error;
- (void)setDeclineSharesCompletionBlock:(id)block;
- (void)setDeclineSharesCompletionBlockIVar:(id)var;
- (void)setPerShareCompletionBlock:(id)block;
- (void)setShareMetadatas:(id)metadatas;
@end

@implementation CKDeclineSharesOperation

- (CKDeclineSharesOperation)init
{
  v6.receiver = self;
  v6.super_class = CKDeclineSharesOperation;
  v2 = [(CKOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    errorsByShareURL = v2->_errorsByShareURL;
    v2->_errorsByShareURL = v3;
  }

  return v2;
}

- (CKDeclineSharesOperation)initWithShareMetadatas:(id)metadatas
{
  metadatasCopy = metadatas;
  v7 = objc_msgSend_init(self, v5, v6);
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setShareMetadatas_(v7, v8, metadatasCopy);
  }

  return v9;
}

- (void)setShareMetadatas:(id)metadatas
{
  v31 = *MEMORY[0x1E69E9840];
  metadatasCopy = metadatas;
  v7 = objc_msgSend_copy(metadatasCopy, v5, v6);
  shareMetadatas = self->_shareMetadatas;
  self->_shareMetadatas = v7;

  v9 = objc_opt_new();
  shareMetadatasByShareURL = self->_shareMetadatasByShareURL;
  self->_shareMetadatasByShareURL = v9;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = metadatasCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v26, v30, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = objc_msgSend_share(v19, v14, v15, v26);
        v23 = objc_msgSend_URL(v20, v21, v22);

        if (v23)
        {
          objc_msgSend_setObject_forKeyedSubscript_(self->_shareMetadatasByShareURL, v24, v19, v23);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v26, v30, 16);
    }

    while (v16);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)setPerShareCompletionBlock:(id)block
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
    v12[2] = sub_1885EB828;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    perShareCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_perShareCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    perShareCompletionBlock = self->_perShareCompletionBlock;
    self->_perShareCompletionBlock = v9;
LABEL_9:
  }
}

- (id)perShareCompletionBlock
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
    v13 = sub_1883EDD5C;
    v14 = sub_1883EF6A4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885EBA24;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perShareCompletionBlock);
  }

  return v6;
}

- (void)setDeclineSharesCompletionBlockIVar:(id)var
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
    v12[2] = sub_1885EBBB4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = varCopy;
    dispatch_sync(v11, v12);

    declineSharesCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_declineSharesCompletionBlock != varCopy)
  {
    v9 = objc_msgSend_copy(varCopy, v7, v8);
    declineSharesCompletionBlock = self->_declineSharesCompletionBlock;
    self->_declineSharesCompletionBlock = v9;
LABEL_9:
  }
}

- (id)declineSharesCompletionBlock
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
    v13 = sub_1883EDD5C;
    v14 = sub_1883EF6A4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885EBDB0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_declineSharesCompletionBlock);
  }

  return v6;
}

- (void)setDeclineSharesCompletionBlock:(id)block
{
  v4 = block == 0;
  blockCopy = block;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setDeclineSharesCompletionBlockIVar_(self, v6, blockCopy);
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_shareMetadatas(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setShareMetadatasToDecline_(infoCopy, v11, v10);

  v12.receiver = self;
  v12.super_class = CKDeclineSharesOperation;
  [(CKOperation *)&v12 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v12.receiver = self;
  v12.super_class = CKDeclineSharesOperation;
  infoCopy = info;
  [(CKOperation *)&v12 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_shareMetadatasToDecline(infoCopy, v5, v6, v12.receiver, v12.super_class);

  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setShareMetadatas_(self, v11, v10);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKDeclineSharesOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perShareCompletionBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_declineSharesCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v48 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = objc_msgSend_shareMetadatas(self, a2, run);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v43, v47, 16);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = *v44;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v44 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v43 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (run)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v12, @"CKErrorDomain", 12, @"Unexpected shareMetadata in shares to decline: %@", v11);
          *run = LABEL_17:;
        }

LABEL_18:

        goto LABEL_19;
      }

      v14 = objc_msgSend_share(v11, v12, v13);
      v17 = objc_msgSend_URL(v14, v15, v16);

      if (!v17)
      {
        if (run)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v18, @"CKErrorDomain", 12, @"shareMetadata lacks share URL: %@", v11);
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      ++v10;
    }

    while (v8 != v10);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v18, &v43, v47, 16);
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_10:

  v21 = objc_msgSend_resolvedConfiguration(self, v19, v20);
  v24 = objc_msgSend_container(v21, v22, v23);
  v27 = objc_msgSend_options(v24, v25, v26);
  v30 = objc_msgSend_useAnonymousToServerShareParticipants(v27, v28, v29);

  if (v30)
  {
    if (run)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v31, @"CKErrorDomain", 12, @"Decline does not yet support Anonymous to Apple shares");
      goto LABEL_25;
    }

LABEL_19:
    result = 0;
  }

  else
  {
    v35 = objc_msgSend_shareMetadatas(self, v31, v32);
    v38 = objc_msgSend_count(v35, v36, v37);

    if (v38)
    {
      v42.receiver = self;
      v42.super_class = CKDeclineSharesOperation;
      result = [(CKOperation *)&v42 CKOperationShouldRun:run];
    }

    else
    {
      if (!run)
      {
        goto LABEL_19;
      }

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v39, @"CKErrorDomain", 12, @"You must specify some share metadatas to decline");
      v40 = LABEL_25:;
      v41 = v40;
      result = 0;
      *run = v40;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleShareDeclineForURL:(id)l error:(id)error
{
  v69 = *MEMORY[0x1E69E9840];
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

  if (v9)
  {
    if (!v11)
    {
      goto LABEL_22;
    }

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

    if ((v23 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v18))
    {
      goto LABEL_21;
    }

    *v68 = 138412546;
    *&v68[4] = lCopy;
    *&v68[12] = 2112;
    *&v68[14] = v9;
    v24 = "Share %@ declined with error: %@";
    v25 = v18;
    v26 = v23;
    v27 = 22;
    goto LABEL_20;
  }

  if (!v11)
  {
    goto LABEL_22;
  }

  if (self)
  {
    v28 = self->super._signpost;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v18 = objc_msgSend_log(v29, v30, v31);

  if (self)
  {
    v32 = self->super._signpost;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  v36 = objc_msgSend_identifier(v33, v34, v35);

  if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v68 = 138412290;
    *&v68[4] = lCopy;
    v24 = "Share %@ declined";
    v25 = v18;
    v26 = v36;
    v27 = 12;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v25, OS_SIGNPOST_EVENT, v26, "CKDeclineSharesOperation", v24, v68, v27);
  }

LABEL_21:

LABEL_22:
  v37 = objc_msgSend_shareMetadatasByShareURL(self, v12, v13, *v68, *&v68[16], v69);
  v39 = objc_msgSend_objectForKeyedSubscript_(v37, v38, lCopy);

  if (v39)
  {
    if (v9 && (objc_msgSend_canDropItemResultsEarly(self, v40, v41) & 1) == 0)
    {
      v42 = objc_msgSend_errorsByShareURL(self, v40, v41);
      v45 = objc_msgSend_share(v39, v43, v44);
      v48 = objc_msgSend_URL(v45, v46, v47);
      objc_msgSend_setObject_forKeyedSubscript_(v42, v49, v9, v48);
    }

    v50 = objc_msgSend_perShareCompletionBlock(self, v40, v41);

    if (v50)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v51 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v57 = v51;
        v60 = objc_msgSend_operationID(self, v58, v59);
        *v68 = 138543618;
        *&v68[4] = v60;
        *&v68[12] = 2112;
        *&v68[14] = v9;
        _os_log_debug_impl(&dword_1883EA000, v57, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about decline share: %@", v68, 0x16u);
      }

      v54 = objc_msgSend_perShareCompletionBlock(self, v52, v53);
      (v54)[2](v54, v39, v9);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v55 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v61 = v55;
      v64 = objc_msgSend_shareMetadatasByShareURL(self, v62, v63);
      v67 = objc_msgSend_allKeys(v64, v65, v66);
      *v68 = 138412546;
      *&v68[4] = lCopy;
      *&v68[12] = 2112;
      *&v68[14] = v67;
      _os_log_error_impl(&dword_1883EA000, v61, OS_LOG_TYPE_ERROR, "Received callback for URL I don't know about: %@ %@", v68, 0x16u);
    }
  }

  v56 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKDeclineSharesOperation", "Finishing", buf, 2u);
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

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to decline some shares");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v29 = objc_msgSend_declineSharesCompletionBlock(self, v7, v8);

  if (v29)
  {
    v32 = objc_msgSend_declineSharesCompletionBlock(self, v30, v31);
    v35 = objc_msgSend_CKClientSuitableError(errorCopy, v33, v34);
    (v32)[2](v32, v35);

    objc_msgSend_setDeclineSharesCompletionBlock_(self, v36, 0);
  }

  objc_msgSend_setPerShareCompletionBlock_(self, v30, 0);
  v37.receiver = self;
  v37.super_class = CKDeclineSharesOperation;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKDeclineSharesOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKDeclineSharesOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/decline-shares", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleShareDeclineForURL_error_, 1, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKDeclineSharesOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end