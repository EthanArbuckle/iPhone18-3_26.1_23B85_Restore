@interface APSigningAuthorityPoolManagerWrapper
+ (id)sharedInstance;
- (APSigningAuthorityPoolManagerWrapper)initWithName:(id)a3 poolSize:(unint64_t)a4 numberToStash:(unint64_t)a5 setupCompletion:(id)a6;
- (BOOL)isReady;
- (BOOL)rotateWithError:(id *)a3;
- (id)signatureForData:(id)a3 error:(id *)a4;
- (int64_t)internalState;
- (void)_poolManagerStateChangedTo:(int64_t)a3;
- (void)_replyToWaitingClients:(id)a3 state:(int64_t)a4;
- (void)signatureForData:(id)a3 waitIfSigningIsNotReady:(BOOL)a4 completion:(id)a5;
@end

@implementation APSigningAuthorityPoolManagerWrapper

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BAEFDB70;
  block[3] = &unk_1E7F1CA70;
  block[4] = a1;
  if (qword_1EDBA4100 != -1)
  {
    dispatch_once(&qword_1EDBA4100, block);
  }

  v2 = qword_1EDBA4BB8;

  return v2;
}

- (BOOL)isReady
{
  v5 = objc_msgSend_poolManager(self, a2, v2, v3);
  if (objc_msgSend_state(v5, v6, v7, v8) == 18001)
  {
    v12 = 1;
  }

  else
  {
    v13 = objc_msgSend_poolManager(self, v9, v10, v11);
    v12 = objc_msgSend_state(v13, v14, v15, v16) == 18005;
  }

  return v12;
}

- (int64_t)internalState
{
  v4 = objc_msgSend_poolManager(self, a2, v2, v3);
  v8 = objc_msgSend_state(v4, v5, v6, v7);

  return v8;
}

- (APSigningAuthorityPoolManagerWrapper)initWithName:(id)a3 poolSize:(unint64_t)a4 numberToStash:(unint64_t)a5 setupCompletion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v28.receiver = self;
  v28.super_class = APSigningAuthorityPoolManagerWrapper;
  v12 = [(APSigningAuthorityPoolManagerWrapper *)&v28 init];
  if (v12)
  {
    v13 = [APUnfairLock alloc];
    v16 = objc_msgSend_initWithOptions_(v13, v14, 1, v15);
    lock = v12->_lock;
    v12->_lock = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    waitingRequests = v12->_waitingRequests;
    v12->_waitingRequests = v18;

    objc_initWeak(&location, v12);
    v20 = [APSigningAuthorityPoolManager alloc];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1BAEFDEAC;
    v25[3] = &unk_1E7F1CA98;
    objc_copyWeak(&v26, &location);
    v22 = objc_msgSend_initWithName_poolSize_numberToStash_stateChangeHandler_setupCompletion_(v20, v21, v10, a4, a5, v25, v11);
    poolManager = v12->_poolManager;
    v12->_poolManager = v22;

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)_poolManagerStateChangedTo:(int64_t)a3
{
  v6 = objc_msgSend_lock(self, a2, a3, v3);
  objc_msgSend_lock(v6, v7, v8, v9);
  v13 = objc_msgSend_waitingRequests(self, v10, v11, v12);
  v17 = objc_msgSend_copy(v13, v14, v15, v16);

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_msgSend_setWaitingRequests_(self, v19, v18, v20);

  objc_msgSend_unlock(v6, v21, v22, v23);
  if (objc_msgSend_count(v17, v24, v25, v26))
  {
    v27 = dispatch_queue_create("com.apple.ap.signing.pending", 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1BAEFE01C;
    block[3] = &unk_1E7F1CAC0;
    block[4] = self;
    v29 = v17;
    v30 = a3;
    dispatch_async(v27, block);
  }
}

- (void)signatureForData:(id)a3 waitIfSigningIsNotReady:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v13 = objc_msgSend_lock(self, v10, v11, v12);
  objc_msgSend_lock(v13, v14, v15, v16);
  v20 = objc_msgSend_poolManager(self, v17, v18, v19);
  v24 = objc_msgSend_state(v20, v21, v22, v23);

  if ((v24 - 18000) > 6)
  {
    objc_msgSend_unlock(v13, v25, v26, v27);
    v55 = objc_msgSend_createSigningErrorWithCode_(MEMORY[0x1E696ABC0], v53, 7900, v54);
    v58 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v56, @"Unexpected FPDI state: %ld", v57, v24);
    CreateDiagnosticReport(v58, 0, @"Signing");

    v9[2](v9, 0, v55);
    goto LABEL_15;
  }

  if (((1 << (v24 - 80)) & 0x5D) != 0)
  {
    v31 = _Block_copy(v9);
    if (v6)
    {
      v32 = objc_msgSend_waitingRequests(self, v28, v29, v30);
      v34 = objc_msgSend_createForData_completionHandler_(APSigningRequest, v33, v8, v31);
      objc_msgSend_addObject_(v32, v35, v34, v36);

      v31 = 0;
    }

    objc_msgSend_unlock(v13, v28, v29, v30);
    if (v24 != 18000)
    {
      objc_initWeak(&location, self);
      v42 = objc_msgSend_poolManager(self, v39, v40, v41);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = sub_1BAEFE338;
      v59[3] = &unk_1E7F1CA98;
      objc_copyWeak(&v60, &location);
      objc_msgSend_setupWithTimeout_completion_(v42, v43, v59, v44, 5.0);

      objc_destroyWeak(&v60);
      objc_destroyWeak(&location);
    }

    if (v6 || !v31)
    {
      goto LABEL_14;
    }

    v45 = objc_msgSend_createSigningErrorWithCode_(MEMORY[0x1E696ABC0], v37, 7901, v38);
    (*(v31 + 16))(v31, 0, v45);
  }

  else
  {
    v46 = objc_msgSend_poolManager(self, v25, v26, v27);
    v62 = 0;
    v45 = objc_msgSend_signatureForData_error_(v46, v47, v8, &v62);
    v31 = v62;

    objc_msgSend_unlock(v13, v48, v49, v50);
    if (!(v45 | v31))
    {
      v31 = objc_msgSend_createSigningErrorWithCode_(MEMORY[0x1E696ABC0], v51, 7902, v52);
    }

    v9[2](v9, v45, v31);
  }

LABEL_14:
LABEL_15:
}

- (id)signatureForData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1BAEFE524;
  v21 = sub_1BAEFE534;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1BAEFE524;
  v15 = sub_1BAEFE534;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1BAEFE53C;
  v10[3] = &unk_1E7F1CAE8;
  v10[4] = &v17;
  v10[5] = &v11;
  objc_msgSend_signatureForData_waitIfSigningIsNotReady_completion_(self, v7, v6, 0, v10);
  if (a4)
  {
    *a4 = v12[5];
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

- (void)_replyToWaitingClients:(id)a3 state:(int64_t)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = a3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v33, v37, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        if ((a4 & 0xFFFFFFFFFFFFFFFBLL) == 0x4651)
        {
          v14 = objc_msgSend_poolManager(self, v7, v8, v9);
          v18 = objc_msgSend_data(v13, v15, v16, v17);
          v32 = 0;
          v20 = objc_msgSend_signatureForData_error_(v14, v19, v18, &v32);
          v21 = v32;

          if (!(v20 | v21))
          {
            v21 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v22, @"com.apple.ap.signingAuthorityErrorDomain", 7902, 0);
          }

          v25 = objc_msgSend_completionHandler(v13, v22, v23, v24);
          v25[2](v25, v20, v21);
        }

        else
        {
          v21 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, @"com.apple.ap.signingAuthorityErrorDomain", 7901, 0);
          v20 = objc_msgSend_completionHandler(v13, v26, v27, v28);
          (*(v20 + 16))(v20, 0, v21);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v33, v37, 16);
    }

    while (v10);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (BOOL)rotateWithError:(id *)a3
{
  v4 = a3;
  v5 = objc_msgSend_poolManager(self, a2, a3, v3);
  LOBYTE(v4) = objc_msgSend_rotateWithError_(v5, v6, v4, v7);

  return v4;
}

@end