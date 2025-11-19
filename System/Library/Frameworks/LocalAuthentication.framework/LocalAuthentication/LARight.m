@interface LARight
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LARight)init;
- (LARight)initWithAccessKey:(id)a3;
- (LARight)initWithIdentifier:(id)a3 accessKey:(id)a4;
- (LARight)initWithRequirement:(LAAuthenticationRequirement *)requirement;
- (void)_authorizeWithOptions:(void *)a3 completionHandler:;
- (void)authorizeWithLocalizedReason:(NSString *)localizedReason completion:(void *)handler;
- (void)authorizeWithOptions:(id)a3 completion:(id)a4;
- (void)checkCanAuthorizeWithCompletion:(void *)handler;
- (void)dealloc;
- (void)deauthorizeWithCompletion:(void *)handler;
- (void)setContext:(id)a3;
- (void)setState:(int64_t)a3;
@end

@implementation LARight

- (LARight)init
{
  v3 = +[LAAuthenticationRequirement defaultRequirement];
  v4 = [(LARight *)self initWithRequirement:v3];

  return v4;
}

- (LARight)initWithRequirement:(LAAuthenticationRequirement *)requirement
{
  v4 = [(LAAuthenticationRequirement *)requirement key];
  v5 = [(LARight *)self initWithAccessKey:v4];

  return v5;
}

- (LARight)initWithAccessKey:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [(LARight *)self initWithIdentifier:v7 accessKey:v5];

  return v8;
}

- (LARight)initWithIdentifier:(id)a3 accessKey:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = LARight;
  v9 = [(LARight *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_accessKey, a4);
    v11 = [[LARightContextHandler alloc] initWithDelegate:v10];
    contextHandler = v10->_contextHandler;
    v10->_contextHandler = v11;

    v10->_state = 0;
    v13 = [MEMORY[0x1E69AD238] createDefaultSerialQueueWithIdentifier:@"LARight"];
    workQueue = v10->_workQueue;
    v10->_workQueue = v13;

    v15 = [MEMORY[0x1E696EE90] sharedInstance];
    v10->_instanceID = [v15 nextInstanceIDInDomain:@"LARight"];

    v16 = LA_LOG();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&dword_1A784E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = LA_LOG();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_1A784E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocated", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = LARight;
  [(LARight *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)authorizeWithLocalizedReason:(NSString *)localizedReason completion:(void *)handler
{
  v6 = localizedReason;
  v7 = handler;
  v8 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.authorizeWithLocalizedReason", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__LARight_authorizeWithLocalizedReason_completion___block_invoke;
  v12[3] = &unk_1E77CB310;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v7;
  v10 = v8;
  v11 = v6;
  os_activity_apply(v10, v12);
}

void __51__LARight_authorizeWithLocalizedReason_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v16 = v3;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ authorizeWithLocalizedReason '%{public}@' started", buf, 0x16u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v13 = &unk_1F1A6FBC0;
  v14 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__LARight_authorizeWithLocalizedReason_completion___block_invoke_75;
  v9[3] = &unk_1E77CB2E8;
  v10 = *(a1 + 48);
  objc_copyWeak(&v12, buf);
  v11 = *(a1 + 56);
  [v5 authorizeWithOptions:v7 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x1E69E9840];
}

void __51__LARight_authorizeWithLocalizedReason_completion___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__LARight_authorizeWithLocalizedReason_completion___block_invoke_2;
  block[3] = &unk_1E77CB2C0;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v9, (a1 + 48));
  v8 = *(a1 + 40);
  os_activity_apply(v4, block);

  objc_destroyWeak(&v9);
}

uint64_t __51__LARight_authorizeWithLocalizedReason_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG();
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
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", *(a1 + 32)];
    }

    else
    {
      v6 = @"successfully";
    }

    *buf = 138543618;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1A784E000, v2, v3, "%{public}@ authorizeWithLocalizedReason finished %{public}@", buf, 0x16u);
    if (v5)
    {
    }
  }

  v7 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)checkCanAuthorizeWithCompletion:(void *)handler
{
  v4 = handler;
  v5 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.checkCanAuthorizeWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__LARight_checkCanAuthorizeWithCompletion___block_invoke;
  v7[3] = &unk_1E77CB338;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  os_activity_apply(v5, v7);
}

void __43__LARight_checkCanAuthorizeWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v13 = v3;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ checkCanAuthorizeWithCompletion started", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 32));
  v4 = *(a1 + 32);
  v10 = &unk_1F1A6FBD8;
  v11 = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__LARight_checkCanAuthorizeWithCompletion___block_invoke_87;
  v7[3] = &unk_1E77CB0A8;
  objc_copyWeak(&v9, buf);
  v8 = *(a1 + 40);
  [(LARight *)v4 _authorizeWithOptions:v5 completionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x1E69E9840];
}

void __43__LARight_checkCanAuthorizeWithCompletion___block_invoke_87(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v6 = LA_LOG();
    goto LABEL_6;
  }

  v4 = [MEMORY[0x1E696EE88] error:v3 hasCode:-1004];
  v5 = LA_LOG();
  v6 = v5;
  if (v4)
  {
LABEL_6:
    v9 = LALogTypeForInternalError();
    if (!os_log_type_enabled(v6, v9))
    {
      goto LABEL_12;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", v3];
    v8 = 1;
    goto LABEL_8;
  }

  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = 0;
  v9 = OS_LOG_TYPE_DEFAULT;
  v10 = @"successfully";
LABEL_8:
  *buf = 138543618;
  v13 = WeakRetained;
  v14 = 2114;
  v15 = v10;
  _os_log_impl(&dword_1A784E000, v6, v9, "%{public}@ checkCanAuthorizeWithCompletion finished %{public}@", buf, 0x16u);
  if (v8)
  {
  }

  else
  {
  }

LABEL_12:

  (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x1E69E9840];
}

- (void)deauthorizeWithCompletion:(void *)handler
{
  v4 = handler;
  v5 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.deauthorizeWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__LARight_deauthorizeWithCompletion___block_invoke;
  v7[3] = &unk_1E77CB338;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  os_activity_apply(v5, v7);
}

uint64_t __37__LARight_deauthorizeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LAContext);
  [*(a1 + 32) setContext:v2];

  if (*(*(a1 + 32) + 48) != 3)
  {
    __37__LARight_deauthorizeWithCompletion___block_invoke_cold_1();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)authorizeWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1A784E000, "LocalAuthentication.Authorization.authorizeWithOptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__LARight_authorizeWithOptions_completion___block_invoke;
  v12[3] = &unk_1E77CB360;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  os_activity_apply(v9, v12);
}

void __43__LARight_authorizeWithOptions_completion___block_invoke(id *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138543618;
    v22 = v3;
    v23 = 2114;
    v24 = v4;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ authorizeWithOptions %{public}@ started", buf, 0x16u);
  }

  v5 = [a1[5] objectForKeyedSubscript:&unk_1F1A6FBC0];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [a1[5] objectForKeyedSubscript:&unk_1F1A6FBC0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = [a1[5] objectForKeyedSubscript:&unk_1F1A6FBC0];
  v9 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];
  v11 = [v10 length] == 0;

  if (!v11)
  {
    objc_initWeak(buf, a1[4]);
    [a1[4] setState:1];
    v15 = a1[4];
    v16 = a1[5];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __43__LARight_authorizeWithOptions_completion___block_invoke_96;
    v17[3] = &unk_1E77CB2E8;
    v18 = a1[6];
    objc_copyWeak(&v20, buf);
    v19 = a1[7];
    [(LARight *)v15 _authorizeWithOptions:v16 completionHandler:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
LABEL_6:
    v12 = a1[7];
    v13 = [LAAuthorizationError genericErrorWithMessage:@"Missing required 'LAOptionAuthenticationReason' option"];
    v12[2](v12, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __43__LARight_authorizeWithOptions_completion___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__LARight_authorizeWithOptions_completion___block_invoke_2;
  block[3] = &unk_1E77CB2C0;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v9, (a1 + 48));
  v8 = *(a1 + 40);
  os_activity_apply(v4, block);

  objc_destroyWeak(&v9);
}

void __43__LARight_authorizeWithOptions_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = LA_LOG();
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
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(err:%@)", *(a1 + 32)];
    }

    else
    {
      v6 = @"successfully";
    }

    *buf = 138543618;
    v13 = WeakRetained;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1A784E000, v2, v3, "%{public}@ authorizeWithOptions finished %{public}@", buf, 0x16u);
    if (v5)
    {
    }
  }

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = v7;
  if (v7)
  {
    if (*(a1 + 32))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    [v7 setState:v9];
  }

  v10 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    v6 = NSStringFromSelector(sel_state);
    [(LARight *)self willChangeValueForKey:v6];

    self->_state = a3;
    v7 = NSStringFromSelector(sel_state);
    [(LARight *)self didChangeValueForKey:v7];
  }
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_state);
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___LARight;
    v7 = objc_msgSendSuper2(&v9, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v7;
}

- (void)setContext:(id)a3
{
  [(LARightContextHandler *)self->_contextHandler setContext:a3];

  [(LARight *)self setState:3];
}

void __51__LARight__authorizeWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5 = [WeakRetained context];
    [v4 armInContext:v5 options:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v6 = LA_LOG();
    v7 = LALogTypeForInternalError();
    if (os_log_type_enabled(v6, v7))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A784E000, v6, v7, "Operation interrupted", v10, 2u);
    }

    v8 = *(a1 + 40);
    v9 = [LAAuthorizationError genericErrorWithMessage:@"Operation interrupted"];
    (*(v8 + 16))(v8, v9);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 accessKey];
    v7 = [(LARight *)self accessKey];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [v5 context];
      v10 = [(LARight *)self context];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_authorizeWithOptions:(void *)a3 completionHandler:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v7 = a1[4];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__LARight__authorizeWithOptions_completionHandler___block_invoke;
    v8[3] = &unk_1E77CB388;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    v9 = v5;
    dispatch_async(v7, v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

@end