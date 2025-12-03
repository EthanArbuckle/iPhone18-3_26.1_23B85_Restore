@interface LAPrivateKey
- (BOOL)canDecryptUsingSecKeyAlgorithm:(SecKeyAlgorithm)algorithm;
- (BOOL)canExchangeKeysUsingSecKeyAlgorithm:(SecKeyAlgorithm)algorithm;
- (BOOL)canSignUsingSecKeyAlgorithm:(SecKeyAlgorithm)algorithm;
- (LAPrivateKey)initWithKey:(id)key;
- (LAPublicKey)publicKey;
- (id)context;
- (id)right;
- (void)dealloc;
- (void)decryptData:(NSData *)data secKeyAlgorithm:(SecKeyAlgorithm)algorithm completion:(void *)handler;
- (void)exchangeKeysWithPublicKey:(NSData *)publicKey secKeyAlgorithm:(SecKeyAlgorithm)algorithm secKeyParameters:(NSDictionary *)parameters completion:(void *)handler;
- (void)signData:(NSData *)data secKeyAlgorithm:(SecKeyAlgorithm)algorithm completion:(void *)handler;
@end

@implementation LAPrivateKey

- (LAPrivateKey)initWithKey:(id)key
{
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = LAPrivateKey;
  v6 = [(LAPrivateKey *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, key);
    v8 = [MEMORY[0x1E69AD238] createDefaultSerialQueueWithIdentifier:@"LAPrivateKey"];
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;

    mEMORY[0x1E696EE90] = [MEMORY[0x1E696EE90] sharedInstance];
    v7->_instanceID = [mEMORY[0x1E696EE90] nextInstanceIDInDomain:@"LAPrivateKey"];

    v11 = LA_LOG_5();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(LARightStore *)v7 init];
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = LA_LOG_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(LARightStore *)self dealloc];
  }

  v4.receiver = self;
  v4.super_class = LAPrivateKey;
  [(LAPrivateKey *)&v4 dealloc];
}

- (id)right
{
  WeakRetained = objc_loadWeakRetained(&self->_right);

  return WeakRetained;
}

- (LAPublicKey)publicKey
{
  v3 = [[LAPublicKey alloc] initWithKey:self->_key];
  WeakRetained = objc_loadWeakRetained(&self->_right);
  [(LAPublicKey *)v3 setRight:WeakRetained];

  return v3;
}

- (void)signData:(NSData *)data secKeyAlgorithm:(SecKeyAlgorithm)algorithm completion:(void *)handler
{
  v8 = data;
  v9 = handler;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__LAPrivateKey_signData_secKeyAlgorithm_completion___block_invoke;
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

void __52__LAPrivateKey_signData_secKeyAlgorithm_completion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.sign", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__LAPrivateKey_signData_secKeyAlgorithm_completion___block_invoke_2;
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

void __52__LAPrivateKey_signData_secKeyAlgorithm_completion___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_5();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v25 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ sign started", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    v7 = v6 == 0;

    if (v7)
    {
      v16 = LA_LOG_5();
      v17 = LALogTypeForInternalError();
      if (os_log_type_enabled(v16, v17))
      {
        *buf = 0;
        _os_log_impl(&dword_1A784E000, v16, v17, "The right associated with this key was deallocated", buf, 2u);
      }

      v18 = *(a1 + 48);
      v19 = [LAAuthorizationError genericErrorWithMessage:@"The right associated with this key was deallocated"];
      (*(v18 + 16))(v18, 0, v19);
    }

    else
    {
      v8 = v5[2];
      v9 = *(a1 + 40);
      v10 = *(a1 + 64);
      v11 = [(LAPrivateKey *)v5 context];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __52__LAPrivateKey_signData_secKeyAlgorithm_completion___block_invoke_12;
      v21[3] = &unk_1E77CB9C0;
      objc_copyWeak(&v23, (a1 + 56));
      v22 = *(a1 + 48);
      [v8 signData:v9 secKeyAlgorithm:v10 context:v11 completion:v21];

      objc_destroyWeak(&v23);
    }
  }

  else
  {
    v12 = LA_LOG_5();
    v13 = LALogTypeForInternalError();
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v12, v13, "Operation interrupted", buf, 2u);
    }

    v14 = *(a1 + 48);
    v15 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v14 + 16))(v14, 0, v15);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __52__LAPrivateKey_signData_secKeyAlgorithm_completion___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LA_LOG_5();
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
  _os_log_impl(&dword_1A784E000, v8, v9, "%{public}@ sign finished %{public}@", buf, 0x16u);
  if (v5)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)canSignUsingSecKeyAlgorithm:(SecKeyAlgorithm)algorithm
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.canSign", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__LAPrivateKey_canSignUsingSecKeyAlgorithm___block_invoke;
  block[3] = &unk_1E77CC3E8;
  block[4] = self;
  block[5] = &v8;
  block[6] = algorithm;
  os_activity_apply(v5, block);
  LOBYTE(algorithm) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return algorithm;
}

uint64_t __44__LAPrivateKey_canSignUsingSecKeyAlgorithm___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) canSignUsingSecKeyAlgorithm:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (void)decryptData:(NSData *)data secKeyAlgorithm:(SecKeyAlgorithm)algorithm completion:(void *)handler
{
  v8 = data;
  v9 = handler;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__LAPrivateKey_decryptData_secKeyAlgorithm_completion___block_invoke;
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

void __55__LAPrivateKey_decryptData_secKeyAlgorithm_completion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.decrypt", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__LAPrivateKey_decryptData_secKeyAlgorithm_completion___block_invoke_2;
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

void __55__LAPrivateKey_decryptData_secKeyAlgorithm_completion___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_5();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v25 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ decrypt started", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    v7 = v6 == 0;

    if (v7)
    {
      v16 = LA_LOG_5();
      v17 = LALogTypeForInternalError();
      if (os_log_type_enabled(v16, v17))
      {
        *buf = 0;
        _os_log_impl(&dword_1A784E000, v16, v17, "The right associated with this key was deallocated", buf, 2u);
      }

      v18 = *(a1 + 48);
      v19 = [LAAuthorizationError genericErrorWithMessage:@"The right associated with this key was deallocated"];
      (*(v18 + 16))(v18, 0, v19);
    }

    else
    {
      v8 = v5[2];
      v9 = *(a1 + 40);
      v10 = *(a1 + 64);
      v11 = [(LAPrivateKey *)v5 context];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __55__LAPrivateKey_decryptData_secKeyAlgorithm_completion___block_invoke_22;
      v21[3] = &unk_1E77CB9C0;
      objc_copyWeak(&v23, (a1 + 56));
      v22 = *(a1 + 48);
      [v8 decryptData:v9 secKeyAlgorithm:v10 context:v11 completion:v21];

      objc_destroyWeak(&v23);
    }
  }

  else
  {
    v12 = LA_LOG_5();
    v13 = LALogTypeForInternalError();
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v12, v13, "Operation interrupted", buf, 2u);
    }

    v14 = *(a1 + 48);
    v15 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v14 + 16))(v14, 0, v15);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __55__LAPrivateKey_decryptData_secKeyAlgorithm_completion___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LA_LOG_5();
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
  _os_log_impl(&dword_1A784E000, v8, v9, "%{public}@ decrypt finished %{public}@", buf, 0x16u);
  if (v5)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)canDecryptUsingSecKeyAlgorithm:(SecKeyAlgorithm)algorithm
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.canDecrypt", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__LAPrivateKey_canDecryptUsingSecKeyAlgorithm___block_invoke;
  block[3] = &unk_1E77CC3E8;
  block[4] = self;
  block[5] = &v8;
  block[6] = algorithm;
  os_activity_apply(v5, block);
  LOBYTE(algorithm) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return algorithm;
}

uint64_t __47__LAPrivateKey_canDecryptUsingSecKeyAlgorithm___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) canDecryptUsingSecKeyAlgorithm:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (void)exchangeKeysWithPublicKey:(NSData *)publicKey secKeyAlgorithm:(SecKeyAlgorithm)algorithm secKeyParameters:(NSDictionary *)parameters completion:(void *)handler
{
  v10 = publicKey;
  v11 = parameters;
  v12 = handler;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__LAPrivateKey_exchangeKeysWithPublicKey_secKeyAlgorithm_secKeyParameters_completion___block_invoke;
  block[3] = &unk_1E77CC410;
  block[4] = self;
  objc_copyWeak(v21, &location);
  v19 = v11;
  v20 = v12;
  v21[1] = algorithm;
  v18 = v10;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  dispatch_async(workQueue, block);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __86__LAPrivateKey_exchangeKeysWithPublicKey_secKeyAlgorithm_secKeyParameters_completion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.exchangeKeys", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__LAPrivateKey_exchangeKeysWithPublicKey_secKeyAlgorithm_secKeyParameters_completion___block_invoke_2;
  v5[3] = &unk_1E77CC410;
  v5[4] = *(a1 + 32);
  objc_copyWeak(v9, (a1 + 64));
  v8 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = v3;
  v9[1] = v4;
  v7 = *(a1 + 48);
  os_activity_apply(v2, v5);

  objc_destroyWeak(v9);
}

void __86__LAPrivateKey_exchangeKeysWithPublicKey_secKeyAlgorithm_secKeyParameters_completion___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_5();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v26 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ exchangeKeys started", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    v7 = v6 == 0;

    if (v7)
    {
      v17 = LA_LOG_5();
      v18 = LALogTypeForInternalError();
      if (os_log_type_enabled(v17, v18))
      {
        *buf = 0;
        _os_log_impl(&dword_1A784E000, v17, v18, "The right associated with this key was deallocated", buf, 2u);
      }

      v19 = *(a1 + 56);
      v20 = [LAAuthorizationError genericErrorWithMessage:@"The right associated with this key was deallocated"];
      (*(v19 + 16))(v19, 0, v20);
    }

    else
    {
      v8 = v5[2];
      v9 = *(a1 + 72);
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = [(LAPrivateKey *)v5 context];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __86__LAPrivateKey_exchangeKeysWithPublicKey_secKeyAlgorithm_secKeyParameters_completion___block_invoke_23;
      v22[3] = &unk_1E77CB9C0;
      objc_copyWeak(&v24, (a1 + 64));
      v23 = *(a1 + 56);
      [v8 exchangeKeysWithPublicKey:v11 secKeyAlgorithm:v9 secKeyParameters:v10 context:v12 completion:v22];

      objc_destroyWeak(&v24);
    }
  }

  else
  {
    v13 = LA_LOG_5();
    v14 = LALogTypeForInternalError();
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v13, v14, "Operation interrupted", buf, 2u);
    }

    v15 = *(a1 + 56);
    v16 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v15 + 16))(v15, 0, v16);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __86__LAPrivateKey_exchangeKeysWithPublicKey_secKeyAlgorithm_secKeyParameters_completion___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LA_LOG_5();
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
  _os_log_impl(&dword_1A784E000, v8, v9, "%{public}@ exchangeKeys finished %{public}@", buf, 0x16u);
  if (v5)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)canExchangeKeysUsingSecKeyAlgorithm:(SecKeyAlgorithm)algorithm
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.canExchangeKeys", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__LAPrivateKey_canExchangeKeysUsingSecKeyAlgorithm___block_invoke;
  block[3] = &unk_1E77CC3E8;
  block[4] = self;
  block[5] = &v8;
  block[6] = algorithm;
  os_activity_apply(v5, block);
  LOBYTE(algorithm) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return algorithm;
}

uint64_t __52__LAPrivateKey_canExchangeKeysUsingSecKeyAlgorithm___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) canExchangeKeysUsingSecKeyAlgorithm:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (id)context
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    context = [WeakRetained context];
  }

  else
  {
    context = 0;
  }

  return context;
}

@end