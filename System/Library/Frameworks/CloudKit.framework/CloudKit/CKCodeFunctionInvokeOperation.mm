@interface CKCodeFunctionInvokeOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (BOOL)local;
- (CKCodeFunctionInvokeOperation)initWithServiceName:(id)name functionName:(id)functionName serializedRequest:(id)request local:(BOOL)local;
- (id)activityCreate;
- (id)functionInvokeCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleInitialResponseReceived:(id)received reply:(id)reply;
- (void)handleReplaceLocalWithWireSerializations:(id)serializations encryptedMasterKeys:(id)keys wireEnvelopes:(id)envelopes reply:(id)reply;
- (void)setFunctionInvokeCompletionBlock:(id)block;
@end

@implementation CKCodeFunctionInvokeOperation

- (CKCodeFunctionInvokeOperation)initWithServiceName:(id)name functionName:(id)functionName serializedRequest:(id)request local:(BOOL)local
{
  nameCopy = name;
  functionNameCopy = functionName;
  requestCopy = request;
  v43 = 0;
  v13 = _CKCheckArgument("serviceName", nameCopy, 0, 0, 0, &v43);
  v14 = v43;
  if ((v13 & 1) == 0 || (v14, v42 = 0, v15 = _CKCheckArgument("functionName", functionNameCopy, 0, 0, 0, &v42), v14 = v42, (v15 & 1) == 0))
  {
    v30 = v14;
    v31 = [CKException alloc];
    v34 = objc_msgSend_code(v30, v32, v33);
    v37 = objc_msgSend_localizedDescription(v30, v35, v36);
    v39 = objc_msgSend_initWithCode_format_(v31, v38, v34, @"%@", v37);
    v40 = v39;

    objc_exception_throw(v39);
  }

  v41.receiver = self;
  v41.super_class = CKCodeFunctionInvokeOperation;
  v18 = [(CKOperation *)&v41 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(nameCopy, v16, v17);
    serviceName = v18->_serviceName;
    v18->_serviceName = v19;

    v23 = objc_msgSend_copy(functionNameCopy, v21, v22);
    functionName = v18->_functionName;
    v18->_functionName = v23;

    v27 = objc_msgSend_copy(requestCopy, v25, v26);
    serializedRequest = v18->_serializedRequest;
    v18->_serializedRequest = v27;

    v18->_local = local;
  }

  return v18;
}

- (void)setFunctionInvokeCompletionBlock:(id)block
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
    v12[2] = sub_1885B7D80;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    functionInvokeCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_functionInvokeCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    functionInvokeCompletionBlock = self->_functionInvokeCompletionBlock;
    self->_functionInvokeCompletionBlock = v9;
LABEL_9:
  }
}

- (id)functionInvokeCompletionBlock
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
    v13 = sub_1883EDA08;
    v14 = sub_1883EF604;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B7F7C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_functionInvokeCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_serviceName(self, v5, v6);
  objc_msgSend_setServiceName_(infoCopy, v8, v7);

  v11 = objc_msgSend_functionName(self, v9, v10);
  objc_msgSend_setFunctionName_(infoCopy, v12, v11);

  v15 = objc_msgSend_local(self, v13, v14);
  objc_msgSend_setLegacyIsLocalBit_(infoCopy, v16, v15);
  AssetContentInMemory = objc_msgSend_shouldFetchAssetContentInMemory(self, v17, v18);
  objc_msgSend_setShouldFetchAssetContentInMemory_(infoCopy, v20, AssetContentInMemory);
  v21.receiver = self;
  v21.super_class = CKCodeFunctionInvokeOperation;
  [(CKDatabaseOperation *)&v21 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v21.receiver = self;
  v21.super_class = CKCodeFunctionInvokeOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v21 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_serviceName(infoCopy, v5, v6, v21.receiver, v21.super_class);
  objc_msgSend_setServiceName_(self, v8, v7);

  v11 = objc_msgSend_functionName(infoCopy, v9, v10);
  objc_msgSend_setFunctionName_(self, v12, v11);

  IsLocalBit = objc_msgSend_legacyIsLocalBit(infoCopy, v13, v14);
  objc_msgSend_setLocal_(self, v16, IsLocalBit);
  AssetContentInMemory = objc_msgSend_shouldFetchAssetContentInMemory(infoCopy, v17, v18);

  objc_msgSend_setShouldFetchAssetContentInMemory_(self, v20, AssetContentInMemory);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v8.receiver = self;
  v8.super_class = CKCodeFunctionInvokeOperation;
  if ([(CKOperation *)&v8 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v6 = objc_msgSend_functionInvokeCompletionBlock(self, v3, v4);
  v5 = v6 != 0;

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v5 = objc_msgSend_serviceName(self, a2, run);

  if (!v5)
  {
    if (!run)
    {
      return 0;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKErrorDomain", 12, @"Service name was not specified on %@", v14);
    *run = LABEL_11:;

    return 0;
  }

  v8 = objc_msgSend_functionName(self, v6, v7);

  if (!v8)
  {
    if (!run)
    {
      return 0;
    }

    v16 = objc_opt_class();
    v14 = NSStringFromClass(v16);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v17, @"CKErrorDomain", 12, @"Function name was not specified on %@", v14);
    goto LABEL_11;
  }

  v11 = objc_msgSend_serializedRequest(self, v9, v10);

  if (v11)
  {
    v20.receiver = self;
    v20.super_class = CKCodeFunctionInvokeOperation;
    return [(CKDatabaseOperation *)&v20 CKOperationShouldRun:run];
  }

  if (run)
  {
    v18 = objc_opt_class();
    v14 = NSStringFromClass(v18);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v19, @"CKErrorDomain", 12, @"Serialized parameters were not specified on %@", v14);
    goto LABEL_11;
  }

  return 0;
}

- (void)handleReplaceLocalWithWireSerializations:(id)serializations encryptedMasterKeys:(id)keys wireEnvelopes:(id)envelopes reply:(id)reply
{
  replyCopy = reply;
  v11 = objc_msgSend_serializedRequest(self, v9, v10);
  (*(reply + 2))(replyCopy, v11, 0);
}

- (void)handleInitialResponseReceived:(id)received reply:(id)reply
{
  replyCopy = reply;
  objc_msgSend_setSerializedResponse_(self, v6, received);
  (*(replyCopy + 2))(replyCopy, MEMORY[0x1E695E0F0], 0);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v35 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    errorCopy = objc_msgSend_responseError(self, v4, v5);
  }

  v7 = objc_msgSend_functionInvokeCompletionBlock(self, v4, v5);

  if (v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v20 = v8;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = objc_msgSend_ckShortDescription(self, v23, v24);
      *buf = 138544130;
      v28 = v22;
      v29 = 2048;
      selfCopy = self;
      v31 = 2114;
      v32 = v25;
      v33 = 2112;
      v34 = errorCopy;
      _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "Calling functionInvokeCompletionBlock for operation <%{public}@: %p; %{public}@> with error %@", buf, 0x2Au);
    }

    v11 = objc_msgSend_functionInvokeCompletionBlock(self, v9, v10);
    v14 = objc_msgSend_serializedResponse(self, v12, v13);
    v17 = objc_msgSend_CKClientSuitableError(errorCopy, v15, v16);
    (v11)[2](v11, v14, v17);

    objc_msgSend_setFunctionInvokeCompletionBlock_(self, v18, 0);
  }

  v26.receiver = self;
  v26.super_class = CKCodeFunctionInvokeOperation;
  [(CKOperation *)&v26 _finishOnCallbackQueueWithError:errorCopy];

  v19 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKCodeFunctionInvokeOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKCodeFunctionInvokeOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/ckcode-function-invoke", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)local
{
  v4 = objc_msgSend_clientRuntimeProvidedServiceURL(self, a2, v2);
  if (v4)
  {
    local = 1;
  }

  else
  {
    local = self->_local;
  }

  return local;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  v4 = MEMORY[0x1E695DFD8];
  tweaksCopy = tweaks;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v10, v9, sel_handleReplaceWireSerializationsWithRecords_, 0, 0);

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___CKCodeFunctionInvokeOperation;
  objc_msgSendSuper2(&v11, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end