@interface LASecret
- (LASecret)initWithGenericPassword:(id)password;
- (id)right;
- (void)dealloc;
- (void)loadDataWithCompletion:(void *)handler;
@end

@implementation LASecret

- (LASecret)initWithGenericPassword:(id)password
{
  passwordCopy = password;
  v13.receiver = self;
  v13.super_class = LASecret;
  v6 = [(LASecret *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_genp, password);
    v8 = [MEMORY[0x1E69AD238] createDefaultSerialQueueWithIdentifier:@"LASecret"];
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;

    mEMORY[0x1E696EE90] = [MEMORY[0x1E696EE90] sharedInstance];
    v7->_instanceID = [mEMORY[0x1E696EE90] nextInstanceIDInDomain:@"LASecret"];

    v11 = LA_LOG_2();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(LARightStore *)v7 init];
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = LA_LOG_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(LARightStore *)self dealloc];
  }

  v4.receiver = self;
  v4.super_class = LASecret;
  [(LASecret *)&v4 dealloc];
}

- (id)right
{
  WeakRetained = objc_loadWeakRetained(&self->_right);

  return WeakRetained;
}

- (void)loadDataWithCompletion:(void *)handler
{
  v4 = handler;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__LASecret_loadDataWithCompletion___block_invoke;
  v7[3] = &unk_1E77CB2C0;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __35__LASecret_loadDataWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.fetchData", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__LASecret_loadDataWithCompletion___block_invoke_2;
  block[3] = &unk_1E77CB2C0;
  block[4] = *(a1 + 32);
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  os_activity_apply(v2, block);

  objc_destroyWeak(&v5);
}

void __35__LASecret_loadDataWithCompletion___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v24 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_INFO, "%{public}@ fetchData", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 1);
    v7 = v6 == 0;

    if (v7)
    {
      v15 = LA_LOG_2();
      v16 = LALogTypeForInternalError();
      if (os_log_type_enabled(v15, v16))
      {
        *buf = 0;
        _os_log_impl(&dword_1A784E000, v15, v16, "The right associated with this secret was deallocated", buf, 2u);
      }

      v17 = *(a1 + 40);
      v18 = [LAAuthorizationError genericErrorWithMessage:@"The right associated with this secret was deallocated"];
      (*(v17 + 16))(v17, 0, v18);
    }

    else
    {
      v8 = v5[2];
      v9 = objc_loadWeakRetained(v5 + 1);
      v10 = [v9 context];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __35__LASecret_loadDataWithCompletion___block_invoke_11;
      v20[3] = &unk_1E77CB9C0;
      objc_copyWeak(&v22, (a1 + 48));
      v21 = *(a1 + 40);
      [v8 fetchDataWithContext:v10 completion:v20];

      objc_destroyWeak(&v22);
    }
  }

  else
  {
    v11 = LA_LOG_2();
    v12 = LALogTypeForInternalError();
    if (os_log_type_enabled(v11, v12))
    {
      *buf = 0;
      _os_log_impl(&dword_1A784E000, v11, v12, "Operation interrupted", buf, 2u);
    }

    v13 = *(a1 + 40);
    v14 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v13 + 16))(v13, 0, v14);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __35__LASecret_loadDataWithCompletion___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = LA_LOG_2();
  v8 = v7;
  if (v5)
  {
    v9 = LALogTypeForInternalError();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err=%@)", v5];
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = &stru_1F1A66748;
    v9 = OS_LOG_TYPE_INFO;
  }

  *buf = 138543618;
  v14 = WeakRetained;
  v15 = 2114;
  v16 = v11;
  _os_log_impl(&dword_1A784E000, v8, v9, "%{public}@ fetchData finished %{public}@", buf, 0x16u);
  if (v5)
  {
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

@end