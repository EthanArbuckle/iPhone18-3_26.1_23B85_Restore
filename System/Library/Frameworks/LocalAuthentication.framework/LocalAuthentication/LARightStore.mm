@interface LARightStore
+ (LARightStore)sharedStore;
- (LARightStore)init;
- (id)keyStore;
- (void)_saveRight:(void *)right identifier:(void *)identifier secret:(void *)secret completion:;
- (void)dealloc;
- (void)init;
- (void)removeAllRightsWithCompletion:(void *)handler;
- (void)removeRight:(LAPersistedRight *)right completion:(void *)handler;
- (void)removeRightForIdentifier:(NSString *)identifier completion:(void *)handler;
- (void)rightForIdentifier:(NSString *)identifier completion:(void *)handler;
- (void)saveRight:(LARight *)right identifier:(NSString *)identifier completion:(void *)handler;
- (void)saveRight:(LARight *)right identifier:(NSString *)identifier secret:(NSData *)secret completion:(void *)handler;
- (void)setKeyStore:(uint64_t)store;
@end

@implementation LARightStore

- (LARightStore)init
{
  v10.receiver = self;
  v10.super_class = LARightStore;
  v2 = [(LARightStore *)&v10 init];
  if (v2)
  {
    v3 = +[LAKeyStoreBuilder buildKeyStore];
    keyStore = v2->_keyStore;
    v2->_keyStore = v3;

    v5 = [MEMORY[0x1E69AD238] createDefaultSerialQueueWithIdentifier:@"LARightStore"];
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;

    mEMORY[0x1E696EE90] = [MEMORY[0x1E696EE90] sharedInstance];
    v2->_instanceID = [mEMORY[0x1E696EE90] nextInstanceIDInDomain:@"LARightStore"];

    v8 = LA_LOG_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(LARightStore *)v2 init];
    }
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_1A784E000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ deallocated", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (LARightStore)sharedStore
{
  if (sharedStore_onceToken != -1)
  {
    +[LARightStore sharedStore];
  }

  v3 = sharedStore_sharedInstance;

  return v3;
}

uint64_t __27__LARightStore_sharedStore__block_invoke()
{
  v0 = objc_alloc_init(LARightStore);
  v1 = sharedStore_sharedInstance;
  sharedStore_sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)rightForIdentifier:(NSString *)identifier completion:(void *)handler
{
  v6 = identifier;
  v7 = handler;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__LARightStore_rightForIdentifier_completion___block_invoke;
  block[3] = &unk_1E77CB4C8;
  block[4] = self;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __46__LARightStore_rightForIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.rightForIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__LARightStore_rightForIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E77CB4A0;
  block[4] = *(a1 + 32);
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = v2;
  v3 = v2;
  os_activity_apply(v3, block);

  objc_destroyWeak(&v8);
}

void __46__LARightStore_rightForIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v21 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ rightForIdentifier started", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = (a1 + 40);
    v6 = [LAKeyIdentifier defaultAccessKeyIdentifierForRightWithIdentifier:*(a1 + 40)];
    v7 = [LAKeyIdentifier domainForRightWithIdentifier:*(a1 + 40)];
    v8 = WeakRetained[1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__LARightStore_rightForIdentifier_completion___block_invoke_12;
    v14[3] = &unk_1E77CB478;
    v15 = *(a1 + 48);
    objc_copyWeak(&v19, (a1 + 64));
    v18 = *(a1 + 56);
    v9 = v7;
    v16 = v9;
    v17 = *v5;
    [v8 fetchKeyWithIdentifier:v6 domain:v9 completion:v14];

    objc_destroyWeak(&v19);
  }

  else
  {
    v10 = LA_LOG_0();
    v11 = LALogTypeForInternalError();
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v10, v11, "Operation interrupted", buf, 2u);
    }

    v12 = *(a1 + 56);
    v6 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v12 + 16))(v12, 0, v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __46__LARightStore_rightForIdentifier_completion___block_invoke_12(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__LARightStore_rightForIdentifier_completion___block_invoke_2_13;
  block[3] = &unk_1E77CB400;
  v16 = v6;
  v17 = v5;
  v8 = v5;
  v9 = v6;
  objc_copyWeak(&v20, a1 + 8);
  v10 = a1[7];
  v11 = a1[5];
  v12 = a1[4];
  *&v13 = a1[6];
  *(&v13 + 1) = v10;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v18 = v14;
  v19 = v13;
  os_activity_apply(v7, block);

  objc_destroyWeak(&v20);
}

void __46__LARightStore_rightForIdentifier_completion___block_invoke_2_13(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = LA_LOG_0();
    if (*(a1 + 32))
    {
      v3 = LALogTypeForInternalError();
    }

    else
    {
      v3 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(v2, v3))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 80));
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", *(a1 + 32)];
      }

      else
      {
        v12 = @"successfully";
      }

      *buf = 138543618;
      v26 = WeakRetained;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_1A784E000, v2, v3, "%{public}@ rightForIdentifier finished %{public}@", buf, 0x16u);
      if (v11)
      {
      }
    }

    v16 = *(a1 + 32);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (!*(a1 + 40))
    {
      __46__LARightStore_rightForIdentifier_completion___block_invoke_2_13_cold_1();
    }

    v4 = [[LAAccessKey alloc] initWithKey:*(a1 + 40)];
    v5 = objc_loadWeakRetained((a1 + 80));
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 1);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __46__LARightStore_rightForIdentifier_completion___block_invoke_24;
      v18[3] = &unk_1E77CB428;
      v8 = *(a1 + 48);
      v19 = *(a1 + 56);
      objc_copyWeak(&v24, (a1 + 80));
      v23 = *(a1 + 72);
      v20 = *(a1 + 48);
      v21 = *(a1 + 64);
      v22 = v4;
      [v7 fetchGenericPasswordsWithDomain:v8 completion:v18];

      objc_destroyWeak(&v24);
      v9 = v19;
    }

    else
    {
      v13 = LA_LOG_0();
      v14 = LALogTypeForInternalError();
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 0;
        _os_log_impl(&dword_1A784E000, v13, v14, "Operation interrupted", buf, 2u);
      }

      v15 = *(a1 + 72);
      v9 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
      (*(v15 + 16))(v15, 0, v9);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __46__LARightStore_rightForIdentifier_completion___block_invoke_24(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__LARightStore_rightForIdentifier_completion___block_invoke_2_25;
  v16[3] = &unk_1E77CB450;
  v17 = v6;
  v18 = v5;
  v8 = v5;
  v9 = v6;
  objc_copyWeak(&v22, a1 + 9);
  v21 = a1[8];
  v10 = a1[5];
  v11 = a1[4];
  v12 = a1[6];
  v13 = a1[7];
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v19 = v15;
  v20 = v14;
  os_activity_apply(v7, v16);

  objc_destroyWeak(&v22);
}

void __46__LARightStore_rightForIdentifier_completion___block_invoke_2_25(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (![LAAuthorizationError isResourceNotFoundError:?])
    {
      v2 = LA_LOG_0();
      if (*(a1 + 32))
      {
        v3 = LALogTypeForInternalError();
      }

      else
      {
        v3 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(v2, v3))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 88));
        v19 = *(a1 + 32);
        if (v19)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", *(a1 + 32)];
        }

        else
        {
          v20 = @"successfully";
        }

        *buf = 138543618;
        v33 = WeakRetained;
        v34 = 2114;
        v35 = v20;
        _os_log_impl(&dword_1A784E000, v2, v3, "%{public}@ rightForIdentifier finished %{public}@", buf, 0x16u);
        if (v19)
        {
        }
      }

      v21 = *(a1 + 32);
      (*(*(a1 + 80) + 16))();
      goto LABEL_23;
    }
  }

  else if (!*(a1 + 40))
  {
    __46__LARightStore_rightForIdentifier_completion___block_invoke_2_25_cold_1();
  }

  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v5 = *(a1 + 40);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __46__LARightStore_rightForIdentifier_completion___block_invoke_27;
  v30[3] = &unk_1E77CB3B0;
  v6 = v4;
  v31 = v6;
  [v5 enumerateObjectsUsingBlock:v30];
  if (![v6 count])
  {
    v7 = [LASecret alloc];
    v8 = +[LAKeyStoreItemBuilder buildNullGenericPassword];
    v9 = [(LASecret *)v7 initWithGenericPassword:v8];
    [v6 addObject:v9];
  }

  v10 = objc_loadWeakRetained((a1 + 88));
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 1);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __46__LARightStore_rightForIdentifier_completion___block_invoke_31;
    v23[3] = &unk_1E77CB428;
    v13 = *(a1 + 48);
    v24 = *(a1 + 56);
    objc_copyWeak(&v29, (a1 + 88));
    v28 = *(a1 + 80);
    v25 = *(a1 + 64);
    v26 = *(a1 + 72);
    v27 = v6;
    [v12 fetchKeysWithDomain:v13 completion:v23];

    objc_destroyWeak(&v29);
    v14 = v24;
  }

  else
  {
    v15 = LA_LOG_0();
    v16 = LALogTypeForInternalError();
    if (os_log_type_enabled(v15, v16))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v15, v16, "Operation interrupted", buf, 2u);
    }

    v17 = *(a1 + 80);
    v14 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v17 + 16))(v17, 0, v14);
  }

LABEL_23:
  v22 = *MEMORY[0x1E69E9840];
}

void __46__LARightStore_rightForIdentifier_completion___block_invoke_27(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[LASecret alloc] initWithGenericPassword:v3];

  [v2 addObject:v4];
}

void __46__LARightStore_rightForIdentifier_completion___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__LARightStore_rightForIdentifier_completion___block_invoke_2_32;
  block[3] = &unk_1E77CB400;
  v16 = v6;
  v17 = v5;
  v8 = v5;
  v9 = v6;
  objc_copyWeak(&v20, (a1 + 72));
  v10 = *(a1 + 64);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *&v13 = *(a1 + 56);
  *(&v13 + 1) = v10;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v18 = v14;
  v19 = v13;
  os_activity_apply(v7, block);

  objc_destroyWeak(&v20);
}

void __46__LARightStore_rightForIdentifier_completion___block_invoke_2_32(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = LA_LOG_0();
    if (*(a1 + 32))
    {
      v3 = LALogTypeForInternalError();
    }

    else
    {
      v3 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(v2, v3))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 80));
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", *(a1 + 32)];
      }

      else
      {
        v13 = @"successfully";
      }

      *buf = 138543618;
      v19 = WeakRetained;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_1A784E000, v2, v3, "%{public}@ rightForIdentifier finished %{public}@", buf, 0x16u);
      if (v12)
      {
      }
    }

    v14 = *(a1 + 32);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (!*(a1 + 40))
    {
      __46__LARightStore_rightForIdentifier_completion___block_invoke_2_32_cold_1();
    }

    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
    v5 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __46__LARightStore_rightForIdentifier_completion___block_invoke_34;
    v16[3] = &unk_1E77CB3D8;
    v17 = v4;
    v6 = v4;
    [v5 enumerateObjectsUsingBlock:v16];
    v7 = LA_LOG_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained((a1 + 80));
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&dword_1A784E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ rightForIdentifier finished successfully", buf, 0xCu);
    }

    v9 = *(a1 + 72);
    v10 = [[LAPersistedRight alloc] initWithIdentifier:*(a1 + 48) accessKey:*(a1 + 56) privateKeys:v6 secrets:*(a1 + 64)];
    (*(v9 + 16))(v9, v10, 0);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __46__LARightStore_rightForIdentifier_completion___block_invoke_34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[LAPrivateKey alloc] initWithKey:v3];

  [v2 addObject:v4];
}

- (void)saveRight:(LARight *)right identifier:(NSString *)identifier completion:(void *)handler
{
  v8 = right;
  v9 = identifier;
  v10 = handler;
  v11 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.saveRight", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__LARightStore_saveRight_identifier_completion___block_invoke;
  v15[3] = &unk_1E77CB310;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  os_activity_apply(v11, v15);
}

void __48__LARightStore_saveRight_identifier_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ saveRight started", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__LARightStore_saveRight_identifier_completion___block_invoke_40;
  v8[3] = &unk_1E77CB4F0;
  objc_copyWeak(&v10, buf);
  v9 = *(a1 + 56);
  [(LARightStore *)v4 _saveRight:v5 identifier:v6 secret:0 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x1E69E9840];
}

void __48__LARightStore_saveRight_identifier_completion___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LA_LOG_0();
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
  _os_log_impl(&dword_1A784E000, v8, v9, "%{public}@ saveRight finished %{public}@", buf, 0x16u);
  if (v5)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)saveRight:(LARight *)right identifier:(NSString *)identifier secret:(NSData *)secret completion:(void *)handler
{
  v10 = right;
  v11 = identifier;
  v12 = secret;
  v13 = handler;
  v14 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.saveRightWithSecret", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__LARightStore_saveRight_identifier_secret_completion___block_invoke;
  block[3] = &unk_1E77CB518;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  os_activity_apply(v14, block);
}

void __55__LARightStore_saveRight_identifier_secret_completion___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LA_LOG_0();
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
  _os_log_impl(&dword_1A784E000, v8, v9, "%{public}@ saveRightWithSecret finished %{public}@", buf, 0x16u);
  if (v5)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeRight:(LAPersistedRight *)right completion:(void *)handler
{
  v6 = right;
  v7 = handler;
  v8 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.removeRight", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__LARightStore_removeRight_completion___block_invoke;
  block[3] = &unk_1E77CB540;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  os_activity_apply(v8, block);
}

void __39__LARightStore_removeRight_completion___block_invoke(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ removeRight started", buf, 0xCu);
  }

  objc_initWeak(buf, a1[4]);
  v4 = a1[4];
  v5 = [a1[5] identifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__LARightStore_removeRight_completion___block_invoke_43;
  v7[3] = &unk_1E77CB0A8;
  objc_copyWeak(&v9, buf);
  v8 = a1[6];
  [v4 removeRightForIdentifier:v5 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x1E69E9840];
}

void __39__LARightStore_removeRight_completion___block_invoke_43(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LA_LOG_0();
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
  _os_log_impl(&dword_1A784E000, v5, v6, "%{public}@ removeRight finished %{public}@", buf, 0x16u);
  if (v3)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeRightForIdentifier:(NSString *)identifier completion:(void *)handler
{
  v6 = identifier;
  v7 = handler;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__LARightStore_removeRightForIdentifier_completion___block_invoke;
  block[3] = &unk_1E77CB4C8;
  block[4] = self;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __52__LARightStore_removeRightForIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.removeRightForIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__LARightStore_removeRightForIdentifier_completion___block_invoke_2;
  v3[3] = &unk_1E77CB4C8;
  v3[4] = *(a1 + 32);
  objc_copyWeak(&v6, (a1 + 56));
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  os_activity_apply(v2, v3);

  objc_destroyWeak(&v6);
}

void __52__LARightStore_removeRightForIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ removeRightForIdentifier started", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = [LAKeyIdentifier domainForRightWithIdentifier:*(a1 + 40)];
    v6 = WeakRetained[1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__LARightStore_removeRightForIdentifier_completion___block_invoke_45;
    v11[3] = &unk_1E77CB0A8;
    objc_copyWeak(&v13, (a1 + 56));
    v12 = *(a1 + 48);
    [v6 removeItemsWithDomain:v5 completion:v11];

    objc_destroyWeak(&v13);
  }

  else
  {
    v7 = LA_LOG_0();
    v8 = LALogTypeForInternalError();
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v7, v8, "Operation interrupted", buf, 2u);
    }

    v9 = *(a1 + 48);
    v5 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v9 + 16))(v9, v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __52__LARightStore_removeRightForIdentifier_completion___block_invoke_45(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LA_LOG_0();
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
  _os_log_impl(&dword_1A784E000, v5, v6, "%{public}@ removeRightForIdentifier finished %{public}@", buf, 0x16u);
  if (v3)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeAllRightsWithCompletion:(void *)handler
{
  v4 = handler;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__LARightStore_removeAllRightsWithCompletion___block_invoke;
  v7[3] = &unk_1E77CB2C0;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__LARightStore_removeAllRightsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.removeAllRights", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__LARightStore_removeAllRightsWithCompletion___block_invoke_2;
  block[3] = &unk_1E77CB2C0;
  block[4] = *(a1 + 32);
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  os_activity_apply(v2, block);

  objc_destroyWeak(&v5);
}

void __46__LARightStore_removeAllRightsWithCompletion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ removeAllRights started", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__LARightStore_removeAllRightsWithCompletion___block_invoke_46;
    v12[3] = &unk_1E77CB0A8;
    objc_copyWeak(&v14, (a1 + 48));
    v13 = *(a1 + 40);
    [v6 removeItemsWithCompletion:v12];

    objc_destroyWeak(&v14);
  }

  else
  {
    v7 = LA_LOG_0();
    v8 = LALogTypeForInternalError();
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v7, v8, "Operation interrupted", buf, 2u);
    }

    v9 = *(a1 + 40);
    v10 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v9 + 16))(v9, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __46__LARightStore_removeAllRightsWithCompletion___block_invoke_46(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LA_LOG_0();
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
  _os_log_impl(&dword_1A784E000, v5, v6, "%{public}@ removeAllRights finished %{public}@", buf, 0x16u);
  if (v3)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

void __56__LARightStore__saveRight_identifier_secret_completion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization._saveRight", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_2;
  block[3] = &unk_1E77CB630;
  block[4] = *(a1 + 32);
  objc_copyWeak(&v10, (a1 + 72));
  v9 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = v2;
  v8 = *(a1 + 56);
  v3 = v2;
  os_activity_apply(v3, block);

  objc_destroyWeak(&v10);
}

void __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v24 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ _saveRight started", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v5 = [LAKeyIdentifier defaultAccessKeyIdentifierForRightWithIdentifier:*(a1 + 40)];
    v6 = [LAKeyIdentifier domainForRightWithIdentifier:*(a1 + 40)];
    v7 = WeakRetained[1];
    v8 = [*(a1 + 48) accessKey];
    v9 = [v8 acl];
    v10 = [v9 data];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_47;
    v16[3] = &unk_1E77CB608;
    v17 = *(a1 + 56);
    objc_copyWeak(&v22, (a1 + 80));
    v21 = *(a1 + 72);
    v18 = *(a1 + 64);
    v19 = *(a1 + 40);
    v11 = v6;
    v20 = v11;
    [v7 storeKeyWithIdentifier:v5 domain:v11 protectedBy:v10 completion:v16];

    objc_destroyWeak(&v22);
  }

  else
  {
    v12 = LA_LOG_0();
    v13 = LALogTypeForInternalError();
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v12, v13, "Operation interrupted", buf, 2u);
    }

    v14 = *(a1 + 72);
    v5 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v14 + 16))(v14, 0, v5);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_47(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_2_48;
  v10[3] = &unk_1E77CB5E0;
  v11 = v6;
  v8 = v6;
  objc_copyWeak(&v18, a1 + 9);
  v17 = a1[8];
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v15 = v5;
  v16 = a1[4];
  v9 = v5;
  os_activity_apply(v7, v10);

  objc_destroyWeak(&v18);
}

void __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_2_48(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = LA_LOG_0();
    if (*(a1 + 32))
    {
      v3 = LALogTypeForInternalError();
    }

    else
    {
      v3 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(v2, v3))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 88));
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", *(a1 + 32)];
      }

      else
      {
        v13 = @"successfully";
      }

      *buf = 138543618;
      v28 = WeakRetained;
      v29 = 2114;
      v30 = v13;
      _os_log_impl(&dword_1A784E000, v2, v3, "%{public}@ _saveRight finished %{public}@", buf, 0x16u);
      if (v12)
      {
      }
    }

    v18 = *(a1 + 32);
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 88));
    v5 = v4;
    if (v4)
    {
      if (*(a1 + 40))
      {
        v6 = [LAKeyIdentifier defaultSecretIdentifierForRightWithIdentifier:*(a1 + 48)];
        v7 = v5[1];
        v8 = *(a1 + 56);
        v9 = *(a1 + 40);
        v10 = [*(a1 + 64) publicKeyHash];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_49;
        v20[3] = &unk_1E77CB5B8;
        v21 = *(a1 + 72);
        objc_copyWeak(&v26, (a1 + 88));
        v25 = *(a1 + 80);
        v22 = *(a1 + 32);
        v23 = *(a1 + 56);
        v24 = *(a1 + 48);
        [v7 storeGenericPassword:v9 identifier:v6 domain:v8 protectedBy:v10 completion:v20];

        objc_destroyWeak(&v26);
      }

      else
      {
        [v4 rightForIdentifier:*(a1 + 48) completion:*(a1 + 80)];
      }
    }

    else
    {
      v14 = LA_LOG_0();
      v15 = LALogTypeForInternalError();
      if (os_log_type_enabled(v14, v15))
      {
        *buf = 0;
        _os_log_impl(&dword_1A784E000, v14, v15, "Operation interrupted", buf, 2u);
      }

      v16 = *(a1 + 80);
      v17 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
      (*(v16 + 16))(v16, 0, v17);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_49(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_2_50;
  block[3] = &unk_1E77CB590;
  objc_copyWeak(&v18, a1 + 9);
  v17 = a1[8];
  v14 = v4;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[4];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  v12 = v4;
  os_activity_apply(v5, block);

  objc_destroyWeak(&v18);
}

void __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_2_50(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = LA_LOG_0();
      if (*(a1 + 40))
      {
        v4 = LALogTypeForInternalError();
      }

      else
      {
        v4 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(v3, v4))
      {
        v10 = objc_loadWeakRetained((a1 + 80));
        v11 = *(a1 + 40);
        if (v11)
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", *(a1 + 40)];
        }

        else
        {
          v12 = @"successfully";
        }

        *buf = 138543618;
        v24 = v10;
        v25 = 2114;
        v26 = v12;
        _os_log_impl(&dword_1A784E000, v3, v4, "%{public}@ _saveRight finished %{public}@", buf, 0x16u);
        if (v11)
        {
        }
      }

      v13 = WeakRetained[1];
      v14 = *(a1 + 48);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_51;
      v20[3] = &unk_1E77CB298;
      v22 = *(a1 + 72);
      v21 = *(a1 + 32);
      [v13 removeItemsWithDomain:v14 completion:v20];

      v8 = v22;
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_2_55;
      v16[3] = &unk_1E77CB568;
      v9 = *(a1 + 56);
      v17 = *(a1 + 64);
      objc_copyWeak(&v19, (a1 + 80));
      v18 = *(a1 + 72);
      [WeakRetained rightForIdentifier:v9 completion:v16];

      objc_destroyWeak(&v19);
      v8 = v17;
    }
  }

  else
  {
    v5 = LA_LOG_0();
    v6 = LALogTypeForInternalError();
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v5, v6, "Operation interrupted", buf, 2u);
    }

    v7 = *(a1 + 72);
    v8 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v7 + 16))(v7, 0, v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_51(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = MEMORY[0x1E696EE88];
  v7 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v7;
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = [v6 errorWithCode:-1008 withUnderlyingErrors:v9];
  (*(v4 + 16))(v4, 0, v10);

  if (!v3)
  {

    if (v5)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_7:

  v11 = *MEMORY[0x1E69E9840];
}

void __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_2_55(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_3;
  v11[3] = &unk_1E77CB4C8;
  v12 = v6;
  v8 = v6;
  objc_copyWeak(&v15, (a1 + 48));
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v9;
  v10 = v5;
  os_activity_apply(v7, v11);

  objc_destroyWeak(&v15);
}

uint64_t __56__LARightStore__saveRight_identifier_secret_completion___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = LA_LOG_0();
  v4 = v3;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v5 = LALogTypeForInternalError();
    }

    else
    {
      v5 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(v4, v5))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", *(a1 + 32)];
      }

      else
      {
        v11 = @"successfully";
      }

      *buf = 138543618;
      v16 = WeakRetained;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_1A784E000, v4, v5, "%{public}@ _saveRight finished %{public}@", buf, 0x16u);
      if (v10)
      {
      }
    }

    v12 = *(a1 + 32);
    v8 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 56));
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1A784E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ _saveRight finished successfully", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    v8 = *(*(a1 + 48) + 16);
  }

  result = v8();
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_saveRight:(void *)right identifier:(void *)identifier secret:(void *)secret completion:
{
  v9 = a2;
  rightCopy = right;
  identifierCopy = identifier;
  secretCopy = secret;
  if (self)
  {
    objc_initWeak(&location, self);
    v13 = self[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__LARightStore__saveRight_identifier_secret_completion___block_invoke;
    block[3] = &unk_1E77CB658;
    block[4] = self;
    objc_copyWeak(&v19, &location);
    v18 = secretCopy;
    v15 = rightCopy;
    v16 = v9;
    v17 = identifierCopy;
    dispatch_async(v13, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __55__LARightStore_saveRight_identifier_secret_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v13 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ saveRightWithSecret started", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__LARightStore_saveRight_identifier_secret_completion___block_invoke_42;
  v9[3] = &unk_1E77CB4F0;
  objc_copyWeak(&v11, buf);
  v10 = *(a1 + 64);
  [(LARightStore *)v4 _saveRight:v5 identifier:v6 secret:v7 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)keyStore
{
  if (self)
  {
    self = self[1];
    v1 = vars8;
  }

  return self;
}

- (void)setKeyStore:(uint64_t)store
{
  v4 = a2;
  if (store)
  {
    objc_storeStrong((store + 8), a2);
  }
}

- (void)init
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_1A784E000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ initialized", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end