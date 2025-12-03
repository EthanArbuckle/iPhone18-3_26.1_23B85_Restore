@interface LAPublicKey
- (BOOL)canEncryptUsingSecKeyAlgorithm:(SecKeyAlgorithm)algorithm;
- (BOOL)canVerifyUsingSecKeyAlgorithm:(SecKeyAlgorithm)algorithm;
- (LAPublicKey)initWithKey:(id)key;
- (id)right;
- (void)dealloc;
- (void)encryptData:(NSData *)data secKeyAlgorithm:(SecKeyAlgorithm)algorithm completion:(void *)handler;
- (void)exportBytesWithCompletion:(void *)handler;
- (void)verifyData:(NSData *)signedData signature:(NSData *)signature secKeyAlgorithm:(SecKeyAlgorithm)algorithm completion:(void *)handler;
@end

@implementation LAPublicKey

- (LAPublicKey)initWithKey:(id)key
{
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = LAPublicKey;
  v6 = [(LAPublicKey *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, key);
    v8 = [MEMORY[0x1E69AD238] createDefaultSerialQueueWithIdentifier:@"LAPublicKey"];
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;

    mEMORY[0x1E696EE90] = [MEMORY[0x1E696EE90] sharedInstance];
    v7->_instanceID = [mEMORY[0x1E696EE90] nextInstanceIDInDomain:@"LAPublicKey"];

    v11 = LA_LOG_4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(LARightStore *)v7 init];
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = LA_LOG_4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(LARightStore *)self dealloc];
  }

  v4.receiver = self;
  v4.super_class = LAPublicKey;
  [(LAPublicKey *)&v4 dealloc];
}

- (id)right
{
  WeakRetained = objc_loadWeakRetained(&self->_right);

  return WeakRetained;
}

- (void)exportBytesWithCompletion:(void *)handler
{
  v4 = handler;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__LAPublicKey_exportBytesWithCompletion___block_invoke;
  v7[3] = &unk_1E77CB2C0;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __41__LAPublicKey_exportBytesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.exportBytes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__LAPublicKey_exportBytesWithCompletion___block_invoke_2;
  block[3] = &unk_1E77CB2C0;
  block[4] = *(a1 + 32);
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  os_activity_apply(v2, block);

  objc_destroyWeak(&v5);
}

void __41__LAPublicKey_exportBytesWithCompletion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ exportBytes started", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__LAPublicKey_exportBytesWithCompletion___block_invoke_8;
    v12[3] = &unk_1E77CB9C0;
    objc_copyWeak(&v14, (a1 + 48));
    v13 = *(a1 + 40);
    [v6 exportBytesWithCompletion:v12];

    objc_destroyWeak(&v14);
  }

  else
  {
    v7 = LA_LOG_4();
    v8 = LALogTypeForInternalError();
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v7, v8, "Operation interrupted", buf, 2u);
    }

    v9 = *(a1 + 40);
    v10 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v9 + 16))(v9, 0, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __41__LAPublicKey_exportBytesWithCompletion___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LA_LOG_4();
  v8 = v7;
  if (v5)
  {
    v9 = LALogTypeForInternalError();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", v5];
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = OS_LOG_TYPE_DEFAULT;
    v11 = @"successfully";
  }

  *buf = 138543618;
  v14 = WeakRetained;
  v15 = 2114;
  v16 = v11;
  _os_log_impl(&dword_1A784E000, v8, v9, "%{public}@ exportBytes finished %{public}@", buf, 0x16u);
  if (v5)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)encryptData:(NSData *)data secKeyAlgorithm:(SecKeyAlgorithm)algorithm completion:(void *)handler
{
  v8 = data;
  v9 = handler;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__LAPublicKey_encryptData_secKeyAlgorithm_completion___block_invoke;
  v13[3] = &unk_1E77CC3C0;
  v13[4] = self;
  objc_copyWeak(v16, &location);
  v14 = v8;
  v15 = v9;
  v16[1] = algorithm;
  v11 = v8;
  v12 = v9;
  dispatch_async(workQueue, v13);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __54__LAPublicKey_encryptData_secKeyAlgorithm_completion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.encrypt", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__LAPublicKey_encryptData_secKeyAlgorithm_completion___block_invoke_2;
  block[3] = &unk_1E77CC3C0;
  block[4] = *(a1 + 32);
  objc_copyWeak(v8, (a1 + 56));
  v7 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v6 = v3;
  v8[1] = v4;
  os_activity_apply(v2, block);

  objc_destroyWeak(v8);
}

void __54__LAPublicKey_encryptData_secKeyAlgorithm_completion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ encrypt started", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 2);
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__LAPublicKey_encryptData_secKeyAlgorithm_completion___block_invoke_18;
    v14[3] = &unk_1E77CB9C0;
    objc_copyWeak(&v16, (a1 + 56));
    v15 = *(a1 + 48);
    [v6 encryptData:v7 secKeyAlgorithm:v8 completion:v14];

    objc_destroyWeak(&v16);
  }

  else
  {
    v9 = LA_LOG_4();
    v10 = LALogTypeForInternalError();
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v9, v10, "Operation interrupted", buf, 2u);
    }

    v11 = *(a1 + 48);
    v12 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v11 + 16))(v11, 0, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __54__LAPublicKey_encryptData_secKeyAlgorithm_completion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LA_LOG_4();
  v8 = v7;
  if (v5)
  {
    v9 = LALogTypeForInternalError();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", v5];
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = OS_LOG_TYPE_DEFAULT;
    v11 = @"successfully";
  }

  *buf = 138543618;
  v14 = WeakRetained;
  v15 = 2114;
  v16 = v11;
  _os_log_impl(&dword_1A784E000, v8, v9, "%{public}@ encrypt finished %{public}@", buf, 0x16u);
  if (v5)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)canEncryptUsingSecKeyAlgorithm:(SecKeyAlgorithm)algorithm
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.canEncrypt", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__LAPublicKey_canEncryptUsingSecKeyAlgorithm___block_invoke;
  block[3] = &unk_1E77CC3E8;
  block[4] = self;
  block[5] = &v8;
  block[6] = algorithm;
  os_activity_apply(v5, block);
  LOBYTE(algorithm) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return algorithm;
}

uint64_t __46__LAPublicKey_canEncryptUsingSecKeyAlgorithm___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) canEncryptUsingSecKeyAlgorithm:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (void)verifyData:(NSData *)signedData signature:(NSData *)signature secKeyAlgorithm:(SecKeyAlgorithm)algorithm completion:(void *)handler
{
  v10 = signedData;
  v11 = signature;
  v12 = handler;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__LAPublicKey_verifyData_signature_secKeyAlgorithm_completion___block_invoke;
  block[3] = &unk_1E77CC410;
  block[4] = self;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21[1] = algorithm;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  dispatch_async(workQueue, block);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __63__LAPublicKey_verifyData_signature_secKeyAlgorithm_completion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.verify", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__LAPublicKey_verifyData_signature_secKeyAlgorithm_completion___block_invoke_2;
  v5[3] = &unk_1E77CC410;
  v5[4] = *(a1 + 32);
  objc_copyWeak(v9, (a1 + 64));
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v7 = v3;
  v9[1] = v4;
  os_activity_apply(v2, v5);

  objc_destroyWeak(v9);
}

void __63__LAPublicKey_verifyData_signature_secKeyAlgorithm_completion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v19 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ verify started", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 2);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 72);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__LAPublicKey_verifyData_signature_secKeyAlgorithm_completion___block_invoke_19;
    v15[3] = &unk_1E77CB0A8;
    objc_copyWeak(&v17, (a1 + 64));
    v16 = *(a1 + 56);
    [v6 verifyData:v7 signature:v8 secKeyAlgorithm:v9 completion:v15];

    objc_destroyWeak(&v17);
  }

  else
  {
    v10 = LA_LOG_4();
    v11 = LALogTypeForInternalError();
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v10, v11, "Operation interrupted", buf, 2u);
    }

    v12 = *(a1 + 56);
    v13 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v12 + 16))(v12, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __63__LAPublicKey_verifyData_signature_secKeyAlgorithm_completion___block_invoke_19(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LA_LOG_4();
  v5 = v4;
  if (v3)
  {
    v6 = LALogTypeForInternalError();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", v3];
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = OS_LOG_TYPE_DEFAULT;
    v8 = @"successfully";
  }

  *buf = 138543618;
  v11 = WeakRetained;
  v12 = 2114;
  v13 = v8;
  _os_log_impl(&dword_1A784E000, v5, v6, "%{public}@ verify finished %{public}@", buf, 0x16u);
  if (v3)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)canVerifyUsingSecKeyAlgorithm:(SecKeyAlgorithm)algorithm
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.canVerify", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__LAPublicKey_canVerifyUsingSecKeyAlgorithm___block_invoke;
  block[3] = &unk_1E77CC3E8;
  block[4] = self;
  block[5] = &v8;
  block[6] = algorithm;
  os_activity_apply(v5, block);
  LOBYTE(algorithm) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return algorithm;
}

uint64_t __45__LAPublicKey_canVerifyUsingSecKeyAlgorithm___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) canVerifyUsingSecKeyAlgorithm:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

@end