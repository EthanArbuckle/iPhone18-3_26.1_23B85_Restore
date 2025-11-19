@interface CKInitiateParticipantVettingOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3;
- (BOOL)CKOperationShouldRun:(id *)a3;
- (CKInitiateParticipantVettingOperation)initWithShareMetadata:(id)a3 participantID:(id)a4 address:(id)a5;
- (id)participantVettingInitiatedBlock;
- (id)participantVettingInitiationCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleParticipantVettingProgressWithError:(id)a3;
- (void)retryTimes:(unint64_t)a3 container:(id)a4 participantVettingInitiatedBlock:(id)a5 participantVettingInitiationCompletionBlock:(id)a6;
- (void)setParticipantVettingInitiatedBlock:(id)a3;
- (void)setParticipantVettingInitiationCompletionBlock:(id)a3;
@end

@implementation CKInitiateParticipantVettingOperation

- (CKInitiateParticipantVettingOperation)initWithShareMetadata:(id)a3 participantID:(id)a4 address:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = CKInitiateParticipantVettingOperation;
  v13 = [(CKOperation *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
    shareMetadata = v13->_shareMetadata;
    v13->_shareMetadata = v14;

    v18 = objc_msgSend_copy(v9, v16, v17);
    participantID = v13->_participantID;
    v13->_participantID = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    address = v13->_address;
    v13->_address = v22;
  }

  return v13;
}

- (void)setParticipantVettingInitiatedBlock:(id)a3
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
    v12[2] = sub_1885F0D24;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    participantVettingInitiatedBlock = v13;
    goto LABEL_9;
  }

  if (self->_participantVettingInitiatedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    participantVettingInitiatedBlock = self->_participantVettingInitiatedBlock;
    self->_participantVettingInitiatedBlock = v9;
LABEL_9:
  }
}

- (id)participantVettingInitiatedBlock
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
    v13 = sub_1883EDDE0;
    v14 = sub_1883EF6BC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F0F20;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_participantVettingInitiatedBlock);
  }

  return v6;
}

- (void)setParticipantVettingInitiationCompletionBlock:(id)a3
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
    v12[2] = sub_1885F10B0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    participantVettingInitiationCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_participantVettingInitiationCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    participantVettingInitiationCompletionBlock = self->_participantVettingInitiationCompletionBlock;
    self->_participantVettingInitiationCompletionBlock = v9;
LABEL_9:
  }
}

- (id)participantVettingInitiationCompletionBlock
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
    v13 = sub_1883EDDE0;
    v14 = sub_1883EF6BC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F12AC;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_participantVettingInitiationCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_shareMetadata(self, v5, v6);
  objc_msgSend_setShareMetadata_(v4, v8, v7);

  v11 = objc_msgSend_participantID(self, v9, v10);
  objc_msgSend_setParticipantID_(v4, v12, v11);

  v15 = objc_msgSend_address(self, v13, v14);
  objc_msgSend_setAddress_(v4, v16, v15);

  v17.receiver = self;
  v17.super_class = CKInitiateParticipantVettingOperation;
  [(CKOperation *)&v17 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v17.receiver = self;
  v17.super_class = CKInitiateParticipantVettingOperation;
  v4 = a3;
  [(CKOperation *)&v17 fillFromOperationInfo:v4];
  v7 = objc_msgSend_shareMetadata(v4, v5, v6, v17.receiver, v17.super_class);
  objc_msgSend_setShareMetadata_(self, v8, v7);

  v11 = objc_msgSend_participantID(v4, v9, v10);
  objc_msgSend_setParticipantID_(self, v12, v11);

  v15 = objc_msgSend_address(v4, v13, v14);

  objc_msgSend_setAddress_(self, v16, v15);
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v5 = objc_msgSend_shareMetadata(self, a2, a3);
  if (v5 && (v8 = v5, objc_msgSend_participantID(self, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v14.receiver = self;
    v14.super_class = CKInitiateParticipantVettingOperation;
    return [(CKOperation *)&v14 CKOperationShouldRun:a3];
  }

  else
  {
    if (a3)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v13, @"CKErrorDomain", 12, @"You must set share metadata and a participant ID on %@", v12);
    }

    return 0;
  }
}

- (void)retryTimes:(unint64_t)a3 container:(id)a4 participantVettingInitiatedBlock:(id)a5 participantVettingInitiationCompletionBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3 - 1;
  objc_msgSend_setParticipantVettingInitiatedBlock_(self, v14, v11);
  v17 = objc_msgSend_description(self, v15, v16);
  v20 = objc_msgSend_shareMetadata(self, v18, v19);
  v23 = objc_msgSend_participantID(self, v21, v22);
  v26 = objc_msgSend_address(self, v24, v25);
  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = sub_1885F1710;
  v39 = &unk_1E70BEE90;
  v40 = v17;
  v41 = v20;
  v42 = v23;
  v43 = v26;
  v44 = v10;
  v45 = v12;
  v46 = v11;
  v47 = v13;
  v27 = v11;
  v28 = v10;
  v29 = v26;
  v30 = v23;
  v31 = v20;
  v32 = v17;
  v33 = v12;
  objc_msgSend_setParticipantVettingInitiationCompletionBlock_(self, v34, &v36);
  objc_msgSend_addOperation_(v28, v35, self, v36, v37, v38, v39);
}

- (void)handleParticipantVettingProgressWithError:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_CKClientSuitableError(a3, a2, a3);
  if (self)
  {
    signpost = self->super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v6 = signpost;

  if (v4)
  {
    if (!v6)
    {
      goto LABEL_22;
    }

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

    if ((v18 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
    {
      goto LABEL_21;
    }

    *v37 = 138412290;
    *&v37[4] = v4;
    v19 = "Participant vetting initialiated with error: %@";
    v20 = v13;
    v21 = v18;
    v22 = 12;
    goto LABEL_20;
  }

  if (!v6)
  {
    goto LABEL_22;
  }

  if (self)
  {
    v23 = self->super._signpost;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  v13 = objc_msgSend_log(v24, v25, v26);

  if (self)
  {
    v27 = self->super._signpost;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;
  v31 = objc_msgSend_identifier(v28, v29, v30);

  if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v37 = 0;
    v19 = "Participant vetting initialiated";
    v20 = v13;
    v21 = v31;
    v22 = 2;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v20, OS_SIGNPOST_EVENT, v21, "CKInitiateParticipantVettingOperation", v19, v37, v22);
  }

LABEL_21:

LABEL_22:
  v32 = objc_msgSend_participantVettingInitiatedBlock(self, v7, v8, *v37);

  if (v32)
  {
    v35 = objc_msgSend_participantVettingInitiatedBlock(self, v33, v34);
    (v35)[2](v35, v4);
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKInitiateParticipantVettingOperation", "Finishing", buf, 2u);
    }
  }

  v19 = objc_msgSend_participantVettingInitiationCompletionBlock(self, v7, v8);

  if (v19)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v21 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v30 = v21;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v35 = objc_msgSend_ckShortDescription(self, v33, v34);
      v38 = objc_msgSend_CKClientSuitableError(v4, v36, v37);
      *buf = 138544130;
      v41 = v32;
      v42 = 2048;
      v43 = self;
      v44 = 2114;
      v45 = v35;
      v46 = 2112;
      v47 = v38;
      _os_log_debug_impl(&dword_1883EA000, v30, OS_LOG_TYPE_DEBUG, "Calling participantVettingInitiationCompletionBlock for operation <%{public}@: %p; %{public}@> with error %@", buf, 0x2Au);
    }

    v24 = objc_msgSend_participantVettingInitiationCompletionBlock(self, v22, v23);
    v27 = objc_msgSend_CKClientSuitableError(v4, v25, v26);
    (v24)[2](v24, v27);

    objc_msgSend_setParticipantVettingInitiationCompletionBlock_(self, v28, 0);
  }

  objc_msgSend_setParticipantVettingInitiatedBlock_(self, v20, 0);
  v39.receiver = self;
  v39.super_class = CKInitiateParticipantVettingOperation;
  [(CKOperation *)&v39 _finishOnCallbackQueueWithError:v4];

  v29 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKInitiateParticipantVettingOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      v19 = v4;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKInitiateParticipantVettingOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3
{
  v4 = a3;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v6, v5, sel_handleParticipantVettingProgressWithError_, 0, 0);

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CKInitiateParticipantVettingOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, v4);
}

@end