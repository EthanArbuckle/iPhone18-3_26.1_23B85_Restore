@interface CKCompleteParticipantVettingOperation
- (BOOL)CKOperationShouldRun:(id *)run;
- (CKCompleteParticipantVettingOperation)init;
- (CKCompleteParticipantVettingOperation)initWithVettingToken:(id)token vettingRecord:(id)record displayedHostname:(id)hostname;
- (id)activityCreate;
- (id)completeParticipantVettingCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)setCompleteParticipantVettingCompletionBlock:(id)block;
@end

@implementation CKCompleteParticipantVettingOperation

- (CKCompleteParticipantVettingOperation)init
{
  v6.receiver = self;
  v6.super_class = CKCompleteParticipantVettingOperation;
  v2 = [(CKOperation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    vettingToken = v2->_vettingToken;
    v2->_vettingToken = 0;
  }

  return v3;
}

- (CKCompleteParticipantVettingOperation)initWithVettingToken:(id)token vettingRecord:(id)record displayedHostname:(id)hostname
{
  tokenCopy = token;
  recordCopy = record;
  hostnameCopy = hostname;
  v15 = objc_msgSend_init(self, v11, v12);
  if (v15)
  {
    v16 = objc_msgSend_copy(tokenCopy, v13, v14);
    vettingToken = v15->_vettingToken;
    v15->_vettingToken = v16;

    v19 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v18, @"email");
    v22 = objc_msgSend_copy(v19, v20, v21);
    vettingEmail = v15->_vettingEmail;
    v15->_vettingEmail = v22;

    v25 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v24, @"phone");
    v28 = objc_msgSend_copy(v25, v26, v27);
    vettingPhone = v15->_vettingPhone;
    v15->_vettingPhone = v28;

    v31 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v30, @"shareRoutingKey");
    v34 = objc_msgSend_copy(v31, v32, v33);
    routingKey = v15->_routingKey;
    v15->_routingKey = v34;

    v37 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v36, @"encryptedKey");
    v40 = objc_msgSend_copy(v37, v38, v39);
    encryptedKey = v15->_encryptedKey;
    v15->_encryptedKey = v40;

    v43 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v42, @"baseToken");
    v46 = objc_msgSend_copy(v43, v44, v45);
    baseToken = v15->_baseToken;
    v15->_baseToken = v46;

    v50 = objc_msgSend_copy(hostnameCopy, v48, v49);
    displayedHostname = v15->_displayedHostname;
    v15->_displayedHostname = v50;
  }

  return v15;
}

- (void)setCompleteParticipantVettingCompletionBlock:(id)block
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
    v12[2] = sub_1885EA24C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    completeParticipantVettingCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_completeParticipantVettingCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    completeParticipantVettingCompletionBlock = self->_completeParticipantVettingCompletionBlock;
    self->_completeParticipantVettingCompletionBlock = v9;
LABEL_9:
  }
}

- (id)completeParticipantVettingCompletionBlock
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
    v13 = sub_1883EDD30;
    v14 = sub_1883EF69C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885EA448;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_completeParticipantVettingCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_vettingToken(self, v5, v6);
  objc_msgSend_setVettingToken_(infoCopy, v8, v7);

  v11 = objc_msgSend_vettingEmail(self, v9, v10);
  objc_msgSend_setVettingEmail_(infoCopy, v12, v11);

  v15 = objc_msgSend_vettingPhone(self, v13, v14);
  objc_msgSend_setVettingPhone_(infoCopy, v16, v15);

  v19 = objc_msgSend_routingKey(self, v17, v18);
  objc_msgSend_setRoutingKey_(infoCopy, v20, v19);

  v23 = objc_msgSend_encryptedKey(self, v21, v22);
  objc_msgSend_setEncryptedKey_(infoCopy, v24, v23);

  v27 = objc_msgSend_baseToken(self, v25, v26);
  objc_msgSend_setBaseToken_(infoCopy, v28, v27);

  v31 = objc_msgSend_displayedHostname(self, v29, v30);
  objc_msgSend_setDisplayedHostname_(infoCopy, v32, v31);

  v33.receiver = self;
  v33.super_class = CKCompleteParticipantVettingOperation;
  [(CKOperation *)&v33 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v33.receiver = self;
  v33.super_class = CKCompleteParticipantVettingOperation;
  infoCopy = info;
  [(CKOperation *)&v33 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_vettingToken(infoCopy, v5, v6, v33.receiver, v33.super_class);
  objc_msgSend_setVettingToken_(self, v8, v7);

  v11 = objc_msgSend_vettingEmail(infoCopy, v9, v10);
  objc_msgSend_setVettingEmail_(self, v12, v11);

  v15 = objc_msgSend_vettingPhone(infoCopy, v13, v14);
  objc_msgSend_setVettingPhone_(self, v16, v15);

  v19 = objc_msgSend_routingKey(infoCopy, v17, v18);
  objc_msgSend_setRoutingKey_(self, v20, v19);

  v23 = objc_msgSend_encryptedKey(infoCopy, v21, v22);
  objc_msgSend_setEncryptedKey_(self, v24, v23);

  v27 = objc_msgSend_baseToken(infoCopy, v25, v26);
  objc_msgSend_setBaseToken_(self, v28, v27);

  v31 = objc_msgSend_displayedHostname(infoCopy, v29, v30);

  objc_msgSend_setDisplayedHostname_(self, v32, v31);
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v6 = objc_msgSend_vettingToken(self, a2, run);
  if (!v6)
  {
    goto LABEL_15;
  }

  v9 = v6;
  v12 = objc_msgSend_vettingEmail(self, v7, v8);
  if (!v12)
  {
    v3 = objc_msgSend_vettingPhone(self, v10, v11);
    if (!v3)
    {
LABEL_11:

      goto LABEL_15;
    }
  }

  v13 = objc_msgSend_routingKey(self, v10, v11);
  if (!v13)
  {
    if (v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = v3;
    }

    goto LABEL_11;
  }

  v16 = v13;
  v17 = objc_msgSend_encryptedKey(self, v14, v15);

  if (v12)
  {
  }

  else
  {
  }

  if (v17)
  {
    v34.receiver = self;
    v34.super_class = CKCompleteParticipantVettingOperation;
    return [(CKOperation *)&v34 CKOperationShouldRun:run];
  }

LABEL_15:
  if (run)
  {
    v20 = objc_msgSend_vettingToken(self, v7, v8);
    v23 = objc_msgSend_vettingEmail(self, v21, v22);
    v26 = objc_msgSend_vettingPhone(self, v24, v25);
    v29 = objc_msgSend_routingKey(self, v27, v28);
    v32 = objc_msgSend_encryptedKey(self, v30, v31);
    *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v33, @"CKErrorDomain", 12, @"Incomplete vetting info: vettingToken: %@, vettingEmail: %@, vettingPhone: %@, routingKey: %@, encryptedKey: %@", v20, v23, v26, v29, v32);
  }

  return 0;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKCompleteParticipantVettingOperation", "Finishing", buf, 2u);
    }
  }

  v19 = objc_msgSend_completeParticipantVettingCompletionBlock(self, v7, v8);

  if (v19)
  {
    v22 = objc_msgSend_completeParticipantVettingCompletionBlock(self, v20, v21);
    v25 = objc_msgSend_CKClientSuitableError(errorCopy, v23, v24);
    v28 = objc_msgSend_reconstructedShareURL(self, v26, v27);
    v31 = objc_msgSend_shareMetadata(self, v29, v30);
    (v22)[2](v22, v25, v28, v31);

    objc_msgSend_setCompleteParticipantVettingCompletionBlock_(self, v32, 0);
  }

  v33.receiver = self;
  v33.super_class = CKCompleteParticipantVettingOperation;
  [(CKOperation *)&v33 _finishOnCallbackQueueWithError:errorCopy];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKCompleteParticipantVettingOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKCompleteParticipantVettingOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/verify-share-vetting", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

@end