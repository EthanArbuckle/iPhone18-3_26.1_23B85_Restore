@interface CKFetchShareParticipantsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchShareParticipantsOperation)init;
- (CKFetchShareParticipantsOperation)initWithUserIdentityLookupInfos:(NSArray *)userIdentityLookupInfos;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fetchShareParticipantsCompletionBlock;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleShareParticipantFetchForLookupInfo:(id)info shareParticipant:(id)participant error:(id)error;
- (void)perShareParticipantCompletionBlock;
- (void)setFetchShareParticipantsCompletionBlock:(void *)fetchShareParticipantsCompletionBlock;
- (void)setFetchShareParticipantsCompletionBlockIVar:(id)var;
- (void)setPerShareParticipantCompletionBlock:(void *)perShareParticipantCompletionBlock;
- (void)setShareParticipantFetchedBlock:(void *)shareParticipantFetchedBlock;
- (void)shareParticipantFetchedBlock;
@end

@implementation CKFetchShareParticipantsOperation

- (CKFetchShareParticipantsOperation)init
{
  v8.receiver = self;
  v8.super_class = CKFetchShareParticipantsOperation;
  v2 = [(CKOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    discoveredUserIdentities = v2->_discoveredUserIdentities;
    v2->_discoveredUserIdentities = v3;

    v5 = objc_opt_new();
    lookupErrors = v2->_lookupErrors;
    v2->_lookupErrors = v5;
  }

  return v2;
}

- (CKFetchShareParticipantsOperation)initWithUserIdentityLookupInfos:(NSArray *)userIdentityLookupInfos
{
  v4 = userIdentityLookupInfos;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    v11 = v9->_userIdentityLookupInfos;
    v9->_userIdentityLookupInfos = v10;
  }

  return v9;
}

- (void)setShareParticipantFetchedBlock:(void *)shareParticipantFetchedBlock
{
  v6 = shareParticipantFetchedBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_18860C010;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_shareParticipantFetchedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_shareParticipantFetchedBlock;
    self->_shareParticipantFetchedBlock = v9;
LABEL_9:
  }
}

- (void)shareParticipantFetchedBlock
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
    v13 = sub_1883EE0CC;
    v14 = sub_1883EF744;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_18860C20C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_shareParticipantFetchedBlock);
  }

  return v6;
}

- (void)setPerShareParticipantCompletionBlock:(void *)perShareParticipantCompletionBlock
{
  v6 = perShareParticipantCompletionBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_18860C39C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perShareParticipantCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perShareParticipantCompletionBlock;
    self->_perShareParticipantCompletionBlock = v9;
LABEL_9:
  }
}

- (void)perShareParticipantCompletionBlock
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
    v13 = sub_1883EE0CC;
    v14 = sub_1883EF744;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_18860C598;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perShareParticipantCompletionBlock);
  }

  return v6;
}

- (void)setFetchShareParticipantsCompletionBlockIVar:(id)var
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
    v12[2] = sub_18860C728;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = varCopy;
    dispatch_sync(v11, v12);

    fetchShareParticipantsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_fetchShareParticipantsCompletionBlock != varCopy)
  {
    v9 = objc_msgSend_copy(varCopy, v7, v8);
    fetchShareParticipantsCompletionBlock = self->_fetchShareParticipantsCompletionBlock;
    self->_fetchShareParticipantsCompletionBlock = v9;
LABEL_9:
  }
}

- (void)fetchShareParticipantsCompletionBlock
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
    v13 = sub_1883EE0CC;
    v14 = sub_1883EF744;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_18860C924;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchShareParticipantsCompletionBlock);
  }

  return v6;
}

- (void)setFetchShareParticipantsCompletionBlock:(void *)fetchShareParticipantsCompletionBlock
{
  v4 = fetchShareParticipantsCompletionBlock == 0;
  v7 = fetchShareParticipantsCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setFetchShareParticipantsCompletionBlockIVar_(self, v6, v7);
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_userIdentityLookupInfos(self, v5, v6);
  objc_msgSend_setUserIdentityLookupInfos_(infoCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKFetchShareParticipantsOperation;
  [(CKOperation *)&v9 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = CKFetchShareParticipantsOperation;
  infoCopy = info;
  [(CKOperation *)&v9 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_userIdentityLookupInfos(infoCopy, v5, v6, v9.receiver, v9.super_class);

  objc_msgSend_setUserIdentityLookupInfos_(self, v8, v7);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v14.receiver = self;
  v14.super_class = CKFetchShareParticipantsOperation;
  if ([(CKOperation *)&v14 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_shareParticipantFetchedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_perShareParticipantCompletionBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v12 = objc_msgSend_fetchShareParticipantsCompletionBlock(self, v9, v10);
      v5 = v12 != 0;
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, run);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = objc_msgSend_userIdentityLookupInfos(self, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v41, v45, 16);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = *v42;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v42 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v41 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (run)
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v35, @"CKErrorDomain", 12, @"Unexpected identity fetch info passed to %@: %@", v34, v14);
          *run = LABEL_19:;
        }

LABEL_20:

        goto LABEL_21;
      }

      if (objc_msgSend_containsObject_(v5, v15, v14))
      {
        if (run)
        {
          v34 = objc_msgSend_emailAddress(v14, v16, v17);
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v36, @"CKErrorDomain", 12, @"Email addresses must be unique. %@ was used in two different CKUserIdentityLookupInfos", v34);
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      objc_msgSend_addObject_(v5, v16, v14);
    }

    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v18, &v41, v45, 16);
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_10:

  v21 = objc_msgSend_userIdentityLookupInfos(self, v19, v20);
  v24 = objc_msgSend_count(v21, v22, v23);

  if (!v24)
  {
    goto LABEL_21;
  }

  v27 = objc_msgSend_fetchShareParticipantsCompletionBlock(self, v25, v26);
  if (v27 || (objc_msgSend_shareParticipantFetchedBlock(self, v28, v29), (v27 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_14;
  }

  v39 = objc_msgSend_perShareParticipantCompletionBlock(self, v30, v31);

  if (v39)
  {
LABEL_14:
    v40.receiver = self;
    v40.super_class = CKFetchShareParticipantsOperation;
    v32 = [(CKOperation *)&v40 CKOperationShouldRun:run];
  }

  else
  {
LABEL_21:
    v32 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v32;
}

- (void)handleShareParticipantFetchForLookupInfo:(id)info shareParticipant:(id)participant error:(id)error
{
  v66 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  participantCopy = participant;
  v12 = objc_msgSend_CKClientSuitableError(error, v10, v11);
  if (self)
  {
    signpost = self->super._signpost;
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
        v17 = self->super._signpost;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      v21 = objc_msgSend_log(v18, v19, v20);

      if (self)
      {
        v22 = self->super._signpost;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      v26 = objc_msgSend_identifier(v23, v24, v25);

      if ((v26 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v21))
      {
        goto LABEL_21;
      }

      *v65 = 138412546;
      *&v65[4] = infoCopy;
      *&v65[12] = 2112;
      *&v65[14] = v12;
      v27 = "Share participant %@ fetched with error: %@";
      v28 = v21;
      v29 = v26;
      v30 = 22;
LABEL_20:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v28, OS_SIGNPOST_EVENT, v29, "CKFetchShareParticipantsOperation", v27, v65, v30);
LABEL_21:
    }
  }

  else if (v14)
  {
    if (self)
    {
      v31 = self->super._signpost;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v21 = objc_msgSend_log(v32, v33, v34);

    if (self)
    {
      v35 = self->super._signpost;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    v39 = objc_msgSend_identifier(v36, v37, v38);

    if ((v39 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v21))
    {
      goto LABEL_21;
    }

    *v65 = 138412290;
    *&v65[4] = infoCopy;
    v27 = "Share participant %@ fetched";
    v28 = v21;
    v29 = v39;
    v30 = 12;
    goto LABEL_20;
  }

  if (participantCopy)
  {
    v40 = objc_msgSend_userIdentity(participantCopy, v15, v16);
    v43 = objc_msgSend_lookupInfo(v40, v41, v42);

    if (!v43)
    {
      v44 = objc_msgSend_userIdentity(participantCopy, v15, v16);
      objc_msgSend_setLookupInfo_(v44, v45, infoCopy);
    }
  }

  if ((objc_msgSend_canDropItemResultsEarly(self, v15, v16, *v65, *&v65[16], v66) & 1) == 0)
  {
    if (error)
    {
      v48 = objc_msgSend_lookupErrors(self, v46, v47);
      objc_msgSend_setObject_forKeyedSubscript_(v48, v49, v12, infoCopy);
    }

    v50 = objc_msgSend_discoveredUserIdentities(self, v46, v47);
    objc_msgSend_addObject_(v50, v51, infoCopy);
  }

  v52 = objc_msgSend_perShareParticipantCompletionBlock_wrapper(self, v46, v47);
  v55 = v52;
  if (v52)
  {
    v56 = _Block_copy(v52);
  }

  else
  {
    v57 = objc_msgSend_perShareParticipantCompletionBlock(self, v53, v54);
    v56 = _Block_copy(v57);
  }

  if (v56)
  {
    v56[2](v56, infoCopy, participantCopy, v12);
  }

  else
  {
    v60 = objc_msgSend_shareParticipantFetchedBlock(self, v58, v59);

    if (participantCopy && v60)
    {
      v63 = objc_msgSend_shareParticipantFetchedBlock(self, v61, v62);
      (v63)[2](v63, participantCopy);
    }
  }

  v64 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v76 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchShareParticipantsOperation", "Finishing", buf, 2u);
    }
  }

  v19 = MEMORY[0x1E695DFA8];
  v20 = objc_msgSend_userIdentityLookupInfos(self, v7, v8);
  v22 = objc_msgSend_setWithArray_(v19, v21, v20);

  v25 = objc_msgSend_discoveredUserIdentities(self, v23, v24);
  objc_msgSend_minusSet_(v22, v26, v25);

  if (objc_msgSend_count(v22, v27, v28))
  {
    v68 = errorCopy;
    v31 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v29, @"CKErrorDomain", 11, @"Share participant not found in iCloud");
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v32 = v22;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v70, v75, 16);
    if (v34)
    {
      v37 = v34;
      v38 = *v71;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v71 != v38)
          {
            objc_enumerationMutation(v32);
          }

          v40 = *(*(&v70 + 1) + 8 * i);
          v41 = objc_msgSend_lookupErrors(self, v35, v36);
          v43 = objc_msgSend_objectForKeyedSubscript_(v41, v42, v40);

          if (!v43)
          {
            v44 = objc_msgSend_lookupErrors(self, v35, v36);
            objc_msgSend_setObject_forKeyedSubscript_(v44, v45, v31, v40);
          }
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v70, v75, 16);
      }

      while (v37);
    }

    errorCopy = v68;
  }

  if (!errorCopy)
  {
    v46 = objc_msgSend_lookupErrors(self, v29, v30);
    v49 = objc_msgSend_count(v46, v47, v48);

    if (v49)
    {
      v50 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v29, v30);
      v53 = objc_msgSend_lookupErrors(self, v51, v52);
      objc_msgSend_setObject_forKeyedSubscript_(v50, v54, v53, @"CKPartialErrors");

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v55, @"CKInternalErrorDomain", 1011, v50, @"Failed to lookup some share participants");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v56 = objc_msgSend_fetchShareParticipantsCompletionBlock_wrapper(self, v29, v30);
  v59 = v56;
  if (v56)
  {
    v60 = _Block_copy(v56);
  }

  else
  {
    v61 = objc_msgSend_fetchShareParticipantsCompletionBlock(self, v57, v58);
    v60 = _Block_copy(v61);
  }

  if (v60)
  {
    v64 = objc_msgSend_CKClientSuitableError(errorCopy, v62, v63);
    v60[2](v60, v64);

    objc_msgSend_setFetchShareParticipantsCompletionBlock_(self, v65, 0);
  }

  objc_msgSend_setShareParticipantFetchedBlock_(self, v62, 0);
  objc_msgSend_setPerShareParticipantCompletionBlock_(self, v66, 0);
  v69.receiver = self;
  v69.super_class = CKFetchShareParticipantsOperation;
  [(CKOperation *)&v69 _finishOnCallbackQueueWithError:errorCopy];

  v67 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchShareParticipantsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchShareParticipantsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-user-identities", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleShareParticipantFetchForLookupInfo_shareParticipant_error_, 2, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKFetchShareParticipantsOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end