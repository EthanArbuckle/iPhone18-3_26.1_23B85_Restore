@interface CKShareAccessRequestOperation
- (BOOL)hasCKOperationCallbacksSet;
- (CKShareAccessRequestOperation)init;
- (CKShareAccessRequestOperation)initWithShareURLs:(id)a3;
- (NSArray)shareURLs;
- (id)perShareAccessRequestCompletionBlock;
- (id)shareAccessRequestCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)setPerShareAccessRequestCompletionBlock:(id)a3;
- (void)setShareAccessRequestCompletionBlock:(id)a3;
- (void)setShareAccessRequestCompletionBlockIVar:(id)a3;
- (void)setShareURLs:(id)a3;
@end

@implementation CKShareAccessRequestOperation

- (CKShareAccessRequestOperation)init
{
  v3.receiver = self;
  v3.super_class = CKShareAccessRequestOperation;
  return [(CKShareRequestAccessOperation *)&v3 init];
}

- (CKShareAccessRequestOperation)initWithShareURLs:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    objc_msgSend_setShareURLs_(v9, v11, v10);
  }

  return v9;
}

- (void)setPerShareAccessRequestCompletionBlock:(id)a3
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
    v12[2] = sub_1885F4B54;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    perShareAccessRequestCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_perShareAccessRequestCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
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
    v13 = sub_1883EDE38;
    v14 = sub_1883EF6CC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F4D50;
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

- (void)setShareAccessRequestCompletionBlockIVar:(id)a3
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
    v12[2] = sub_1885F4EE0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    shareAccessRequestCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_shareAccessRequestCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    shareAccessRequestCompletionBlock = self->_shareAccessRequestCompletionBlock;
    self->_shareAccessRequestCompletionBlock = v9;
LABEL_9:
  }
}

- (id)shareAccessRequestCompletionBlock
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
    v13 = sub_1883EDE38;
    v14 = sub_1883EF6CC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F50DC;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_shareAccessRequestCompletionBlock);
  }

  return v6;
}

- (void)setShareAccessRequestCompletionBlock:(id)a3
{
  v4 = a3 == 0;
  v7 = a3;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setShareAccessRequestCompletionBlockIVar_(self, v6, v7);
}

- (void)setShareURLs:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKShareAccessRequestOperation;
  [(CKShareRequestAccessOperation *)&v3 setShareURLs:a3];
}

- (NSArray)shareURLs
{
  v4.receiver = self;
  v4.super_class = CKShareAccessRequestOperation;
  v2 = [(CKShareRequestAccessOperation *)&v4 shareURLs];

  return v2;
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKShareAccessRequestOperation;
  if ([(CKShareRequestAccessOperation *)&v11 hasCKOperationCallbacksSet])
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
    v9 = objc_msgSend_shareAccessRequestCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKShareAccessRequestOperation", "Finishing", buf, 2u);
    }
  }

  if (!v4)
  {
    v19 = objc_msgSend_errorsByShareURL(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_errorsByShareURL(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      v4 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to request access to some shares");
    }

    else
    {
      v4 = 0;
    }
  }

  v29 = objc_msgSend_shareAccessRequestCompletionBlock(self, v7, v8);

  if (v29)
  {
    v32 = objc_msgSend_shareAccessRequestCompletionBlock(self, v30, v31);
    v35 = objc_msgSend_CKClientSuitableError(v4, v33, v34);
    (v32)[2](v32, v35);

    objc_msgSend_setShareAccessRequestCompletionBlock_(self, v36, 0);
  }

  objc_msgSend_setPerShareAccessRequestCompletionBlock_(self, v30, 0);
  v37.receiver = self;
  v37.super_class = CKShareAccessRequestOperation;
  [(CKShareRequestAccessOperation *)&v37 _finishOnCallbackQueueWithError:v4];
}

@end