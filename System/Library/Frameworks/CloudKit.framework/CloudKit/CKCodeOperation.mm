@interface CKCodeOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKCodeOperation)initWithFunctionName:(id)name responseClass:(Class)class;
- (CKCodeOperation)initWithServiceName:(id)name functionName:(id)functionName responseClass:(Class)class;
- (id)activityCreate;
- (id)codeOperationCompletionBlock;
- (id)didSubstituteRequestRecordTransportsBlock;
- (id)incompleteResponsePreviewBlock;
- (id)perRecordCompletionBlock;
- (id)perRecordProgressBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleAssetDataForRecordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index data:(id)data offset:(unint64_t)offset;
- (void)handleFetchForRecordID:(id)d didProgress:(double)progress;
- (void)handleFetchForRecordID:(id)d record:(id)record error:(id)error;
- (void)handleInitialResponseReceived:(id)received reply:(id)reply;
- (void)handleReplaceLocalWithWireSerializations:(id)serializations encryptedMasterKeys:(id)keys wireEnvelopes:(id)envelopes reply:(id)reply;
- (void)handleReplaceWireSerializationsWithRecords:(id)records;
- (void)performCKOperation;
- (void)setCodeOperationCompletionBlock:(id)block;
- (void)setCodeService:(id)service;
- (void)setDestinationServerExplicitURL:(id)l;
- (void)setDidSubstituteRequestRecordTransportsBlock:(id)block;
- (void)setIncompleteResponsePreviewBlock:(id)block;
- (void)setPerRecordCompletionBlock:(id)block;
- (void)setPerRecordProgressBlock:(id)block;
@end

@implementation CKCodeOperation

- (CKCodeOperation)initWithFunctionName:(id)name responseClass:(Class)class
{
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = CKCodeOperation;
  v8 = [(CKOperation *)&v21 init];
  if (v8)
  {
    if ((objc_msgSend_conformsToProtocol_(class, v7, &unk_1EFAC8B60) & 1) == 0)
    {
      v16 = [CKException alloc];
      v17 = NSStringFromClass(class);
      v19 = objc_msgSend_initWithCode_format_(v16, v18, 12, @"Response class named %@ doesn't conform to CKCodeOperationMessageMutation", v17);
      v20 = v19;

      objc_exception_throw(v19);
    }

    v11 = objc_msgSend_copy(nameCopy, v9, v10);
    functionName = v8->_functionName;
    v8->_functionName = v11;

    objc_storeStrong(&v8->_responseClass, class);
    v8->_destinationServer = 0;
    v8->_dropInMemoryAssetContentASAP = 1;
    v13 = objc_opt_new();
    assetInfoByArrayIndexByRecordKeyByRecordID = v8->_assetInfoByArrayIndexByRecordKeyByRecordID;
    v8->_assetInfoByArrayIndexByRecordKeyByRecordID = v13;
  }

  return v8;
}

- (CKCodeOperation)initWithServiceName:(id)name functionName:(id)functionName responseClass:(Class)class
{
  nameCopy = name;
  functionNameCopy = functionName;
  v28.receiver = self;
  v28.super_class = CKCodeOperation;
  v11 = [(CKOperation *)&v28 init];
  if (v11)
  {
    if ((objc_msgSend_conformsToProtocol_(class, v10, &unk_1EFAC8B60) & 1) == 0)
    {
      v23 = [CKException alloc];
      v24 = NSStringFromClass(class);
      v26 = objc_msgSend_initWithCode_format_(v23, v25, 12, @"Response class named %@ doesn't conform to CKCodeOperationMessageMutation", v24);
      v27 = v26;

      objc_exception_throw(v26);
    }

    v14 = objc_msgSend_copy(nameCopy, v12, v13);
    serviceName = v11->_serviceName;
    v11->_serviceName = v14;

    v18 = objc_msgSend_copy(functionNameCopy, v16, v17);
    functionName = v11->_functionName;
    v11->_functionName = v18;

    objc_storeStrong(&v11->_responseClass, class);
    v11->_destinationServer = 0;
    v11->_dropInMemoryAssetContentASAP = 1;
    v20 = objc_opt_new();
    assetInfoByArrayIndexByRecordKeyByRecordID = v11->_assetInfoByArrayIndexByRecordKeyByRecordID;
    v11->_assetInfoByArrayIndexByRecordKeyByRecordID = v20;
  }

  return v11;
}

- (void)setCodeService:(id)service
{
  serviceCopy = service;
  objc_storeStrong(&self->_codeService, service);
  v7 = objc_msgSend_container(serviceCopy, v5, v6);
  v10 = objc_msgSend_boxedDatabaseScope(serviceCopy, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_boxedDatabaseScope(serviceCopy, v11, v12);
    v16 = objc_msgSend_integerValue(v13, v14, v15);
    v18 = objc_msgSend_databaseWithDatabaseScope_(v7, v17, v16);

    objc_msgSend_setDatabase_(self, v19, v18);
  }

  else
  {
    objc_msgSend_setDatabase_(self, v11, 0);
    v18 = objc_msgSend_configuration(self, v20, v21);
    objc_msgSend_setContainer_(v18, v22, v7);
  }
}

- (void)setPerRecordProgressBlock:(id)block
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
    v12[2] = sub_1885A63D4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    perRecordProgressBlock = v13;
    goto LABEL_9;
  }

  if (self->_perRecordProgressBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    perRecordProgressBlock = self->_perRecordProgressBlock;
    self->_perRecordProgressBlock = v9;
LABEL_9:
  }
}

- (id)perRecordProgressBlock
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
    v13 = sub_1883ED90C;
    v14 = sub_1883EF5CC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885A65D0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordProgressBlock);
  }

  return v6;
}

- (void)setPerRecordCompletionBlock:(id)block
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
    v12[2] = sub_1885A6760;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    perRecordCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_perRecordCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    perRecordCompletionBlock = self->_perRecordCompletionBlock;
    self->_perRecordCompletionBlock = v9;
LABEL_9:
  }
}

- (id)perRecordCompletionBlock
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
    v13 = sub_1883ED90C;
    v14 = sub_1883EF5CC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885A695C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordCompletionBlock);
  }

  return v6;
}

- (void)setCodeOperationCompletionBlock:(id)block
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
    v12[2] = sub_1885A6AEC;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    codeOperationCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_codeOperationCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    codeOperationCompletionBlock = self->_codeOperationCompletionBlock;
    self->_codeOperationCompletionBlock = v9;
LABEL_9:
  }
}

- (id)codeOperationCompletionBlock
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
    v13 = sub_1883ED90C;
    v14 = sub_1883EF5CC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885A6CE8;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_codeOperationCompletionBlock);
  }

  return v6;
}

- (void)setIncompleteResponsePreviewBlock:(id)block
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
    v12[2] = sub_1885A6E78;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    incompleteResponsePreviewBlock = v13;
    goto LABEL_9;
  }

  if (self->_incompleteResponsePreviewBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    incompleteResponsePreviewBlock = self->_incompleteResponsePreviewBlock;
    self->_incompleteResponsePreviewBlock = v9;
LABEL_9:
  }
}

- (id)incompleteResponsePreviewBlock
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
    v13 = sub_1883ED90C;
    v14 = sub_1883EF5CC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885A7074;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_incompleteResponsePreviewBlock);
  }

  return v6;
}

- (void)setDidSubstituteRequestRecordTransportsBlock:(id)block
{
  blockCopy = block;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v5, v6))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v5, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (blockCopy && (__sTestOverridesAvailable[0] & 1) == 0)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CKCodeOperation.m", 92, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKObjCCode/CKCodeOperation.m", 92);
  }

  if (objc_msgSend_queueHasStarted(self, v5, v6) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v12 = objc_msgSend_callbackQueue(self, v8, v9);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1885A7260;
    block[3] = &unk_1E70BC940;
    block[4] = self;
    v16 = blockCopy;
    dispatch_sync(v12, block);

    didSubstituteRequestRecordTransportsBlock = v16;
    goto LABEL_12;
  }

  if (self->_didSubstituteRequestRecordTransportsBlock != blockCopy)
  {
    v10 = objc_msgSend_copy(blockCopy, v8, v9);
    didSubstituteRequestRecordTransportsBlock = self->_didSubstituteRequestRecordTransportsBlock;
    self->_didSubstituteRequestRecordTransportsBlock = v10;
LABEL_12:
  }
}

- (id)didSubstituteRequestRecordTransportsBlock
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
    v13 = sub_1883ED90C;
    v14 = sub_1883EF5CC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885A745C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_didSubstituteRequestRecordTransportsBlock);
  }

  return v6;
}

- (BOOL)hasCKOperationCallbacksSet
{
  v17.receiver = self;
  v17.super_class = CKCodeOperation;
  if ([(CKOperation *)&v17 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perRecordCompletionBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_perRecordProgressBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v14 = objc_msgSend_codeOperationCompletionBlock(self, v9, v10);
      if (v14)
      {
        v5 = 1;
      }

      else
      {
        v15 = objc_msgSend_incompleteResponsePreviewBlock(self, v12, v13);
        v5 = v15 != 0;
      }
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v5 = objc_msgSend_codeService(self, a2, run);
  if (v5)
  {
  }

  else
  {
    v10 = objc_msgSend_serviceName(self, v6, v7);

    if (!v10)
    {
      if (run)
      {
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v8, @"CKErrorDomain", 12, @"You must a enqueue this on a CKCodeService, b) set the codeService property, or c) use the deprecated initializer to specify a serviceName at init-time"));
        goto LABEL_17;
      }

      return 0;
    }
  }

  v11 = objc_msgSend_request(self, v8, v9);

  if (v11)
  {
    v14 = objc_msgSend_resolvedConfiguration(self, v12, v13);
    isLongLived = objc_msgSend_isLongLived(v14, v15, v16);

    if (isLongLived)
    {
      if (run)
      {
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v18, @"CKErrorDomain", 12, @"This operation cannot be long lived");
        v25 = LABEL_17:;
        v26 = v25;
        result = 0;
        *run = v25;
        return result;
      }
    }

    else
    {
      if (objc_msgSend_destinationServer(self, v18, v19) != 2 || (objc_msgSend_destinationServerExplicitURL(self, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
      {
        v27.receiver = self;
        v27.super_class = CKCodeOperation;
        return [(CKDatabaseOperation *)&v27 CKOperationShouldRun:run];
      }

      if (run)
      {
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v23, @"CKErrorDomain", 12, @"You must provide a destinationServerExplictURL if you specify destinationServer == .explicitURL");
        goto LABEL_17;
      }
    }
  }

  else if (run)
  {
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v12, @"CKErrorDomain", 12, @"You must provide a non-nil request");
    goto LABEL_17;
  }

  return 0;
}

- (void)performCKOperation
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_request(self, a2, v2);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = objc_msgSend_request(self, v6, v7);
    v11 = objc_msgSend_extractRecordTransports(v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = v11;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v31, v35, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v32;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        if (objc_msgSend_contents(v21, v16, v17) != 1)
        {
          v27 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v22, @"CKErrorDomain", 12, @"Request RecordTransport had unexpected contents: %@", v21);
          objc_msgSend_finishWithError_(self, v28, v27);

          goto LABEL_14;
        }

        v24 = objc_msgSend_localSerialization(v21, v22, v23);
        objc_msgSend_addObject_(v12, v25, v24);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v31, v35, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  objc_msgSend_setRequestLocalSerializations_(self, v26, v12);
  v30.receiver = self;
  v30.super_class = CKCodeOperation;
  [(CKOperation *)&v30 performCKOperation];
LABEL_14:

  v29 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKCodeOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKCodeOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/code-operation-objc", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_codeService(self, v5, v6);
  v12 = objc_msgSend_serviceName(v7, v8, v9);
  if (v12)
  {
    objc_msgSend_setServiceName_(infoCopy, v10, v12);
  }

  else
  {
    v13 = objc_msgSend_serviceName(self, v10, v11);
    objc_msgSend_setServiceName_(infoCopy, v14, v13);
  }

  v17 = objc_msgSend_functionName(self, v15, v16);
  objc_msgSend_setFunctionName_(infoCopy, v18, v17);

  v21 = objc_msgSend_requestLocalSerializations(self, v19, v20);
  objc_msgSend_setRequestLocalSerializations_(infoCopy, v22, v21);

  v25 = objc_msgSend_codeService(self, v23, v24);

  if (v25)
  {
    v28 = objc_msgSend_codeService(self, v26, v27);
    v31 = objc_msgSend_serviceInstanceURL(v28, v29, v30);
    objc_msgSend_setClientRuntimeProvidedServiceURL_(infoCopy, v32, v31);

    v35 = objc_msgSend_codeService(self, v33, v34);
    v38 = objc_msgSend_boxedDatabaseScope(v35, v36, v37);
    objc_msgSend_setEnqueuedOnContainerService_(infoCopy, v39, v38 == 0);

LABEL_6:
    goto LABEL_12;
  }

  v42 = objc_msgSend_destinationServer(self, v26, v27);
  switch(v42)
  {
    case 2:
      objc_msgSend_setLegacyIsLocalBit_(infoCopy, v40, 1);
      v35 = objc_msgSend_destinationServerExplicitURL(self, v45, v46);
      objc_msgSend_setClientRuntimeProvidedServiceURL_(infoCopy, v47, v35);
      goto LABEL_6;
    case 1:
      objc_msgSend_setLegacyIsLocalBit_(infoCopy, v40, 1);
      break;
    case 0:
      objc_msgSend_setLegacyIsLocalBit_(infoCopy, v40, 0);
      break;
  }

LABEL_12:
  AssetContentInMemory = objc_msgSend_shouldFetchAssetContentInMemory(self, v40, v41);
  objc_msgSend_setShouldFetchAssetContentInMemory_(infoCopy, v44, AssetContentInMemory);
  v48.receiver = self;
  v48.super_class = CKCodeOperation;
  [(CKDatabaseOperation *)&v48 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v5 = MEMORY[0x1E696AAA8];
  infoCopy = info;
  v9 = objc_msgSend_currentHandler(v5, v7, v8);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CKCodeOperation.m", 194, @"You cannot inflate a CKCodeOperation from operation info; they are not suitable as long lived operations");

  v11.receiver = self;
  v11.super_class = CKCodeOperation;
  [(CKDatabaseOperation *)&v11 fillFromOperationInfo:infoCopy];
}

- (void)setDestinationServerExplicitURL:(id)l
{
  v4 = l != 0;
  objc_storeStrong(&self->_destinationServerExplicitURL, l);
  self->_destinationServer = 2 * v4;
}

- (void)handleReplaceLocalWithWireSerializations:(id)serializations encryptedMasterKeys:(id)keys wireEnvelopes:(id)envelopes reply:(id)reply
{
  v45 = *MEMORY[0x1E69E9840];
  serializationsCopy = serializations;
  keysCopy = keys;
  replyCopy = reply;
  if (!objc_msgSend_count(serializationsCopy, v12, v13))
  {
    goto LABEL_12;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1885A8234;
  v41[3] = &unk_1E70BE6A0;
  v42 = keysCopy;
  v17 = objc_msgSend_CKMapWithIndex_(serializationsCopy, v16, v41);
  v20 = objc_msgSend_request(self, v18, v19);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v24 = objc_msgSend_request(self, v22, v23);
    objc_msgSend_substituteRecordTransports_(v24, v25, v17);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v24 = v28;
    v40 = objc_msgSend_request(self, v38, v39);
    *buf = 138412290;
    v44 = v40;
    _os_log_error_impl(&dword_1883EA000, v24, OS_LOG_TYPE_ERROR, "Found wire serializations to substitute, but request claims to not support substituting: %@", buf, 0xCu);
  }

LABEL_8:
  if (__sTestOverridesAvailable[0] == 1)
  {
    v29 = objc_msgSend_didSubstituteRequestRecordTransportsBlock(self, v26, v27);

    if (v29)
    {
      v32 = objc_msgSend_didSubstituteRequestRecordTransportsBlock(self, v30, v31);
      v32[2]();
    }
  }

LABEL_12:
  v33 = objc_msgSend_request(self, v14, v15);
  v36 = objc_msgSend_data(v33, v34, v35);
  replyCopy[2](replyCopy, v36, 0);

  v37 = *MEMORY[0x1E69E9840];
}

- (void)handleInitialResponseReceived:(id)received reply:(id)reply
{
  v78 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  replyCopy = reply;
  v10 = objc_msgSend_responseClass(self, v8, v9);
  v13 = objc_msgSend_alloc(v10, v11, v12);
  v15 = objc_msgSend_initWithData_(v13, v14, receivedCopy);
  objc_msgSend_setResponse_(self, v16, v15);
  if (objc_opt_respondsToSelector())
  {
    v19 = objc_msgSend_extractRecordTransports(v15, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_opt_new();
  if (objc_msgSend_count(v19, v21, v22))
  {
    v70 = receivedCopy;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v25 = v19;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v71, v77, 16);
    if (v27)
    {
      v30 = v27;
      v31 = *v72;
      while (2)
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v72 != v31)
          {
            objc_enumerationMutation(v25);
          }

          v33 = *(*(&v71 + 1) + 8 * i);
          if (objc_msgSend_contents(v33, v28, v29) != 2)
          {
            v53 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v34, @"CKErrorDomain", 12, @"Request RecordTransport had unexpected contents: %@", v33);
            objc_msgSend_finishWithError_(self, v54, v53);
            replyCopy[2](replyCopy, 0, v53);

            receivedCopy = v70;
            goto LABEL_28;
          }

          v36 = objc_msgSend_wireSerialization(v33, v34, v35);
          objc_msgSend_addObject_(v20, v37, v36);
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v71, v77, 16);
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v38 = objc_opt_new();
    v39 = objc_opt_new();
    if (objc_msgSend_count(v20, v40, v41))
    {
      v44 = 0;
      do
      {
        objc_msgSend_addObject_(v39, v42, v38);
        ++v44;
      }

      while (v44 < objc_msgSend_count(v20, v45, v46));
    }

    v47 = objc_msgSend_response(self, v42, v43);
    v48 = objc_opt_respondsToSelector();

    if (v48)
    {
      v51 = objc_msgSend_response(self, v49, v50);
      objc_msgSend_substituteRecordTransports_(v51, v52, v39);

      receivedCopy = v70;
    }

    else
    {
      receivedCopy = v70;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v55 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v66 = v55;
        v69 = objc_msgSend_response(self, v67, v68);
        *buf = 138412290;
        v76 = v69;
        _os_log_error_impl(&dword_1883EA000, v66, OS_LOG_TYPE_ERROR, "Found record transports to substitute, but response claims to not support substituting: %@", buf, 0xCu);
      }
    }
  }

  if (objc_msgSend_count(v20, v23, v24))
  {
    v58 = objc_msgSend_incompleteResponsePreviewBlock(self, v56, v57);

    if (v58)
    {
      v61 = objc_msgSend_incompleteResponsePreviewBlock(self, v59, v60);
      v64 = objc_msgSend_response(self, v62, v63);
      (v61)[2](v61, v64);
    }
  }

  (replyCopy)[2](replyCopy, v20, 0);
LABEL_28:

  v65 = *MEMORY[0x1E69E9840];
}

- (void)handleReplaceWireSerializationsWithRecords:(id)records
{
  v41 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  if (objc_msgSend_count(recordsCopy, v5, v6))
  {
    v7 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = recordsCopy;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v34, v40, 16);
    if (v10)
    {
      v12 = v10;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          objc_msgSend__wireUpAssetContentForOperation_inRecord_checkSignatures_outError_(CKOperation, v11, self, v15, 0, 0, v34);
          v16 = [CKCodeRecordTransport alloc];
          v18 = objc_msgSend_initWithRecord_(v16, v17, v15);
          objc_msgSend_addObject_(v7, v19, v18);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v34, v40, 16);
      }

      while (v12);
    }

    v22 = objc_msgSend_response(self, v20, v21);
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v26 = objc_msgSend_response(self, v24, v25);
      objc_msgSend_substituteRecordTransports_(v26, v27, v7);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v28 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        v30 = v28;
        v33 = objc_msgSend_response(self, v31, v32);
        *buf = 138412290;
        v39 = v33;
        _os_log_error_impl(&dword_1883EA000, v30, OS_LOG_TYPE_ERROR, "Found record transports to substitute, but response claims to not support substituting: %@", buf, 0xCu);
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchForRecordID:(id)d record:(id)record error:(id)error
{
  v57 = *MEMORY[0x1E69E9840];
  dCopy = d;
  recordCopy = record;
  errorCopy = error;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v12 = signpost;

  if (errorCopy)
  {
    if (!v12)
    {
      goto LABEL_22;
    }

    if (self)
    {
      v15 = self->super.super._signpost;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v19 = objc_msgSend_log(v16, v17, v18);

    if (self)
    {
      v20 = self->super.super._signpost;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v24 = objc_msgSend_identifier(v21, v22, v23);

    if ((v24 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v19))
    {
      goto LABEL_21;
    }

    *buf = 138412546;
    v54 = dCopy;
    v55 = 2112;
    v56 = errorCopy;
    v25 = "Record %@ fetched with error: %@";
    v26 = v19;
    v27 = v24;
    v28 = 22;
    goto LABEL_20;
  }

  if (!v12)
  {
    goto LABEL_22;
  }

  if (self)
  {
    v29 = self->super.super._signpost;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;
  v19 = objc_msgSend_log(v30, v31, v32);

  if (self)
  {
    v33 = self->super.super._signpost;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;
  v37 = objc_msgSend_identifier(v34, v35, v36);

  if ((v37 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 138412290;
    v54 = dCopy;
    v25 = "Record %@ fetched";
    v26 = v19;
    v27 = v37;
    v28 = 12;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v26, OS_SIGNPOST_EVENT, v27, "CKCodeOperation", v25, buf, v28);
  }

LABEL_21:

LABEL_22:
  v38 = objc_msgSend_perRecordCompletionBlock(self, v13, v14);

  if (v38)
  {
    if (recordCopy)
    {
      v52 = errorCopy;
      objc_msgSend__wireUpAssetContentForOperation_inRecord_checkSignatures_outError_(CKOperation, v39, self, recordCopy, 0, &v52);
      v41 = v52;

      errorCopy = v41;
    }

    if (objc_msgSend_dropInMemoryAssetContentASAP(self, v39, v40))
    {
      v44 = objc_autoreleasePoolPush();
      v47 = objc_msgSend_perRecordCompletionBlock(self, v45, v46);
      (v47)[2](v47, recordCopy, dCopy, errorCopy);

      objc_autoreleasePoolPop(v44);
    }

    else
    {
      v48 = objc_msgSend_perRecordCompletionBlock(self, v42, v43);
      (v48)[2](v48, recordCopy, dCopy, errorCopy);
    }
  }

  if (objc_msgSend_shouldFetchAssetContentInMemory(self, v39, v40) && objc_msgSend_dropInMemoryAssetContentASAP(self, v49, v50))
  {
    objc_msgSend_setObject_forKeyedSubscript_(self->_assetInfoByArrayIndexByRecordKeyByRecordID, v49, 0, dCopy);
  }

  if (errorCopy)
  {
    objc_msgSend_setResponseError_(self, v49, errorCopy);
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchForRecordID:(id)d didProgress:(double)progress
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v8 = signpost;

  if (v8)
  {
    if (self)
    {
      v11 = self->super.super._signpost;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v15 = objc_msgSend_log(v12, v13, v14);

    if (self)
    {
      v16 = self->super.super._signpost;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v20 = objc_msgSend_identifier(v17, v18, v19);

    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v26 = 138412546;
      v27 = dCopy;
      v28 = 2048;
      progressCopy = progress;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v15, OS_SIGNPOST_EVENT, v20, "CKCodeOperation", "Record %@ updated progress %f", &v26, 0x16u);
    }
  }

  v21 = objc_msgSend_perRecordProgressBlock(self, v9, v10);

  if (v21)
  {
    v24 = objc_msgSend_perRecordProgressBlock(self, v22, v23);
    (v24)[2](v24, dCopy, progress);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)handleAssetDataForRecordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index data:(id)data offset:(unint64_t)offset
{
  dataCopy = data;
  v14 = objc_msgSend_assetInfoForOperation_recordID_recordKey_arrayIndex_(CKOperation, v12, self, d, key, index);
  if (dataCopy)
  {
    objc_msgSend_writeData_atOffset_(v14, v13, dataCopy, offset);
  }
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v49 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKCodeOperation", "Finishing", buf, 2u);
    }
  }

  if (!errorCopy)
  {
    errorCopy = objc_msgSend_responseError(self, v7, v8);
    if (!errorCopy)
    {
      v19 = objc_msgSend_response(self, v7, v8);

      if (v19)
      {
        errorCopy = 0;
      }

      else
      {
        errorCopy = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v7, @"CKErrorDomain", 1, @"No response received");
      }
    }
  }

  v20 = objc_msgSend_codeOperationCompletionBlock(self, v7, v8);

  if (v20)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v21 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v34 = v21;
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v39 = objc_msgSend_ckShortDescription(self, v37, v38);
      *buf = 138544130;
      v42 = v36;
      v43 = 2048;
      selfCopy = self;
      v45 = 2114;
      v46 = v39;
      v47 = 2112;
      v48 = errorCopy;
      _os_log_debug_impl(&dword_1883EA000, v34, OS_LOG_TYPE_DEBUG, "Calling codeOperationCompletionBlock for operation <%{public}@: %p; %{public}@> with error %@", buf, 0x2Au);
    }

    v24 = objc_msgSend_response(self, v22, v23);
    v27 = v24;
    if (errorCopy)
    {

      v27 = 0;
    }

    v28 = objc_msgSend_codeOperationCompletionBlock(self, v25, v26);
    v31 = objc_msgSend_CKClientSuitableError(errorCopy, v29, v30);
    (v28)[2](v28, v27, v31);

    objc_msgSend_setCodeOperationCompletionBlock_(self, v32, 0);
  }

  v40.receiver = self;
  v40.super_class = CKCodeOperation;
  [(CKOperation *)&v40 _finishOnCallbackQueueWithError:errorCopy];

  v33 = *MEMORY[0x1E69E9840];
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  objc_msgSend_applyDaemonCallbackInterfaceTweaks_(CKCodeFunctionInvokeOperation, v5, tweaksCopy);
  objc_msgSend_applyDaemonCallbackInterfaceTweaks_(CKFetchRecordsOperation, v6, tweaksCopy);
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKCodeOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end