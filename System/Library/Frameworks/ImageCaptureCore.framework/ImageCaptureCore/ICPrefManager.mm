@interface ICPrefManager
+ (id)defaultAuthManager;
+ (void)defaultAuthManager;
- (BOOL)getGoodNewsStatus;
- (BOOL)openRemoteAuthenticationManager;
- (ICPrefManager)init;
- (id)authManagerConnection;
- (id)getContentsAuthorizationStatus;
- (id)getControlAuthorizationStatus;
- (id)remoteAuthManager;
- (void)dealloc;
- (void)endQuery:(id)a3;
- (void)invalidateQueries;
- (void)resetContentsAuthorizationWithCompletion:(id)a3;
- (void)resetControlAuthorizationWithCompletion:(id)a3;
- (void)startQuery:(id)a3;
@end

@implementation ICPrefManager

+ (id)defaultAuthManager
{
  if (defaultAuthManager__sOnceToken != -1)
  {
    +[ICPrefManager defaultAuthManager];
  }

  v2 = defaultAuthManager__sAuthManager;
  if (!defaultAuthManager__sAuthManager)
  {
    __ICOSLogCreate();
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create an instance of ICPrefManager"];
    v4 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_ERROR))
    {
      +[(ICPrefManager *)v3];
    }

    v2 = defaultAuthManager__sAuthManager;
  }

  return v2;
}

uint64_t __35__ICPrefManager_defaultAuthManager__block_invoke()
{
  defaultAuthManager__sAuthManager = objc_alloc_init(ICPrefManager);

  return MEMORY[0x1EEE66BB8]();
}

- (id)remoteAuthManager
{
  v3 = [(ICPrefManager *)self authConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__ICPrefManager_remoteAuthManager__block_invoke;
  v6[3] = &unk_1E829C820;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

void __34__ICPrefManager_remoteAuthManager__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    __ICOSLogCreate();
    v4 = @"xpc error";
    if ([@"xpc error" length] >= 0x15)
    {
      v5 = [@"xpc error" substringWithRange:{0, 18}];
      v4 = [v5 stringByAppendingString:@".."];
    }

    v6 = MEMORY[0x1E696AEC0];
    v7 = [*(a1 + 32) authConnection];
    v8 = [v6 stringWithFormat:@"%@:%@?", v7, v3];

    v9 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v4;
      v11 = v9;
      *buf = 136446466;
      v14 = [(__CFString *)v4 UTF8String];
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __62__ICPrefManager_addSelectorToInterface_selectorString_origin___block_invoke()
{
  v11 = objc_alloc(MEMORY[0x1E695DFD8]);
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  addSelectorToInterface_selectorString_origin__incomingClasses = [v11 initWithObjects:{v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (ICPrefManager)init
{
  v11.receiver = self;
  v11.super_class = ICPrefManager;
  v2 = [(ICPrefManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    authConnection = v2->_authConnection;
    v2->_authConnection = 0;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    authConnectionSemaphores = v3->_authConnectionSemaphores;
    v3->_authConnectionSemaphores = v5;

    v3->_authConnectionLock._os_unfair_lock_opaque = 0;
    [(ICPrefManager *)v3 openRemoteAuthenticationManager];
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __21__ICPrefManager_init__block_invoke;
    block[3] = &unk_1E829C848;
    v10 = v3;
    dispatch_async(v7, block);
  }

  return v3;
}

uint64_t __21__ICPrefManager_init__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  __ICOSLogCreate();
  v2 = @"Auth Query";
  if ([@"Auth Query" length] >= 0x15)
  {
    v3 = [@"Auth Query" substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fetching Authorization Status"];
  v5 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v2;
    v7 = v5;
    v12 = 136446466;
    v13 = [(__CFString *)v2 UTF8String];
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1C6F19000, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v12, 0x16u);
  }

  v8 = [*(a1 + 32) getContentsAuthorizationStatus];
  v9 = [*(a1 + 32) getControlAuthorizationStatus];
  result = [*(a1 + 32) getGoodNewsStatus];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_authConnection invalidate];
  v3.receiver = self;
  v3.super_class = ICPrefManager;
  [(ICPrefManager *)&v3 dealloc];
}

- (id)authManagerConnection
{
  v3 = [(ICPrefManager *)self authConnection];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.icprefd-xpc"];
    [(ICPrefManager *)self setAuthConnection:v4];
  }

  return [(ICPrefManager *)self authConnection];
}

- (void)startQuery:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_authConnectionLock);
  __ICOSLogCreate();
  if (__ICLogTypeEnabled())
  {
    v5 = @"Add(ONE)";
    if ([@"Add(ONE)" length] >= 0x15)
    {
      v6 = [@"Add(ONE)" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"%@", v9];

    v11 = *MEMORY[0x1E69A8B08];
    if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v5;
      v13 = v11;
      *buf = 136446466;
      v16 = [(__CFString *)v5 UTF8String];
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1C6F19000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }
  }

  [(NSMutableArray *)self->_authConnectionSemaphores addObject:v4];
  os_unfair_lock_unlock(&self->_authConnectionLock);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)endQuery:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_authConnectionLock);
  if (v4)
  {
    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v5 = @"Rem(ONE)";
      if ([@"Rem(ONE)" length] >= 0x15)
      {
        v6 = [@"Rem(ONE)" substringWithRange:{0, 18}];
        v5 = [v6 stringByAppendingString:@".."];
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v7 stringWithFormat:@"%@", v9];

      v11 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v12 = v5;
        v13 = v11;
        *buf = 136446466;
        v16 = [(__CFString *)v5 UTF8String];
        v17 = 2114;
        v18 = v10;
        _os_log_impl(&dword_1C6F19000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }

    [(NSMutableArray *)self->_authConnectionSemaphores removeObject:v4];
  }

  os_unfair_lock_unlock(&self->_authConnectionLock);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)invalidateQueries
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_authConnectionLock);
  if ([(NSMutableArray *)self->_authConnectionSemaphores count])
  {
    __ICOSLogCreate();
    if (__ICLogTypeEnabled())
    {
      v3 = @"Sig(ALL)";
      if ([@"Sig(ALL)" length] >= 0x15)
      {
        v4 = [@"Sig(ALL)" substringWithRange:{0, 18}];
        v3 = [v4 stringByAppendingString:@".."];
      }

      v5 = MEMORY[0x1E696AEC0];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v5 stringWithFormat:@"%@", v7];

      v9 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v3;
        v11 = v9;
        *buf = 136446466;
        v24 = [(__CFString *)v3 UTF8String];
        v25 = 2114;
        v26 = v8;
        _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = self->_authConnectionSemaphores;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        dispatch_semaphore_signal(*(*(&v18 + 1) + 8 * v16++));
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_authConnectionLock);
  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)openRemoteAuthenticationManager
{
  v3 = [(ICPrefManager *)self authManagerConnection];
  if (v3)
  {
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F46A0418];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F46A0418];
    [(ICPrefManager *)self addSelectorToInterface:v5 selectorString:@"requestContentsAuthorizationStatusShouldPrompt:withReply:" origin:1];
    [(ICPrefManager *)self addSelectorToInterface:v5 selectorString:@"requestControlAuthorizationStatusShouldPrompt:withReply:" origin:1];
    [(ICPrefManager *)self addSelectorToInterface:v5 selectorString:@"requestGoodNewsStatusWithReply:" origin:1];
    [(ICPrefManager *)self addSelectorToInterface:v5 selectorString:@"resetContentsAuthorizationStatusWithReply:" origin:1];
    [(ICPrefManager *)self addSelectorToInterface:v5 selectorString:@"resetControlAuthorizationStatusWithReply:" origin:1];
    [v3 setExportedInterface:v4];
    [v3 setRemoteObjectInterface:v5];
    [v3 setExportedObject:self];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __48__ICPrefManager_openRemoteAuthenticationManager__block_invoke;
    v12 = &unk_1E829C870;
    v13 = self;
    v14 = self;
    v6 = self;
    [v3 setInvalidationHandler:&v9];
    v7 = [v3 invalidationHandler];
    [v3 setInterruptionHandler:v7];

    [v3 resume];
  }

  return v3 != 0;
}

void __48__ICPrefManager_openRemoteAuthenticationManager__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__ICPrefManager_openRemoteAuthenticationManager__block_invoke_2;
  block[3] = &unk_1E829C848;
  v2 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v3 = _block_invoke_onceToken;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&_block_invoke_onceToken, block);
  }

  [v4 setAuthConnection:0];
  [*(a1 + 40) invalidateQueries];
  v5 = drand48();
  v6 = dispatch_time(0, (v5 + 1000000000.0));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ICPrefManager_openRemoteAuthenticationManager__block_invoke_78;
  v7[3] = &unk_1E829C848;
  v7[4] = *(a1 + 40);
  dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
}

void __48__ICPrefManager_openRemoteAuthenticationManager__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  __ICOSLogCreate();
  v2 = @"Auth ▼";
  if ([@"Auth ▼" length] >= 0x15)
  {
    v3 = [@"Auth ▼" substringWithRange:{0, 18}];
    v2 = [v3 stringByAppendingString:@".."];
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@", v7];

  v9 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v2;
    v11 = v9;
    *buf = 136446466;
    v14 = [(__CFString *)v2 UTF8String];
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)getContentsAuthorizationStatus
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = @"ICAuthorizationStatusNotDetermined";
  v3 = [(ICPrefManager *)self authConnection];
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    [(ICPrefManager *)self startQuery:v4];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__ICPrefManager_getContentsAuthorizationStatus__block_invoke;
    v15[3] = &unk_1E829C898;
    v17 = &v18;
    v5 = v4;
    v16 = v5;
    [(ICPrefManager *)self requestContentsAuthorizationShouldPrompt:0 completion:v15];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    [(ICPrefManager *)self endQuery:v5];
  }

  __ICOSLogCreate();
  if ([@"🔐 ICAuth" length] < 0x15)
  {
    v7 = @"🔐 ICAuth";
  }

  else
  {
    v6 = [@"🔐 ICAuth" substringWithRange:{0, 18}];
    v7 = [v6 stringByAppendingString:@".."];
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Contents Access: %@", v19[5]];
  v9 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v7;
    v11 = [(__CFString *)v7 UTF8String];
    *buf = 136446466;
    v25 = v11;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&dword_1C6F19000, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

intptr_t __47__ICPrefManager_getContentsAuthorizationStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ICAuthorizationStatus"];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

intptr_t __69__ICPrefManager_requestContentsAuthorizationShouldPrompt_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (id)getControlAuthorizationStatus
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = @"ICAuthorizationStatusNotDetermined";
  v3 = [(ICPrefManager *)self authConnection];
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    [(ICPrefManager *)self startQuery:v4];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__ICPrefManager_getControlAuthorizationStatus__block_invoke;
    v15[3] = &unk_1E829C898;
    v17 = &v18;
    v5 = v4;
    v16 = v5;
    [(ICPrefManager *)self requestControlAuthorizationShouldPrompt:0 completion:v15];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    [(ICPrefManager *)self endQuery:v5];
  }

  __ICOSLogCreate();
  if ([@"🔐 ICAuth" length] < 0x15)
  {
    v7 = @"🔐 ICAuth";
  }

  else
  {
    v6 = [@"🔐 ICAuth" substringWithRange:{0, 18}];
    v7 = [v6 stringByAppendingString:@".."];
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Control Access:  %@", v19[5]];
  v9 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v7;
    v11 = [(__CFString *)v7 UTF8String];
    *buf = 136446466;
    v25 = v11;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&dword_1C6F19000, v9, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

intptr_t __46__ICPrefManager_getControlAuthorizationStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ICAuthorizationStatus"];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

intptr_t __68__ICPrefManager_requestControlAuthorizationShouldPrompt_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (BOOL)getGoodNewsStatus
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(ICPrefManager *)self authConnection];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    [(ICPrefManager *)self startQuery:v4];
    v5 = [(ICPrefManager *)self remoteAuthManager];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __34__ICPrefManager_getGoodNewsStatus__block_invoke;
    v17[3] = &unk_1E829C8E8;
    v19 = &v20;
    v6 = v4;
    v18 = v6;
    [v5 requestGoodNewsStatusWithReply:v17];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    [(ICPrefManager *)self endQuery:v6];
  }

  __ICOSLogCreate();
  if ([@"🔐 ICAuth" length] < 0x15)
  {
    v8 = @"🔐 ICAuth";
  }

  else
  {
    v7 = [@"🔐 ICAuth" substringWithRange:{0, 18}];
    v8 = [v7 stringByAppendingString:@".."];
  }

  if (*(v21 + 24))
  {
    v9 = "Yes";
  }

  else
  {
    v9 = "No";
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Shown Good News: %s", v9];
  v11 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v8;
    v13 = [(__CFString *)v8 UTF8String];
    *buf = 136446466;
    v25 = v13;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&dword_1C6F19000, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v14 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  v15 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

intptr_t __34__ICPrefManager_getGoodNewsStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ICAuthorizationStatus"];
  *(*(*(a1 + 40) + 8) + 24) = v3 == @"ICAuthorizationStatusAuthorized";

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (void)resetContentsAuthorizationWithCompletion:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ICPrefManager *)self authConnection];
  if (v5)
  {
    v6 = dispatch_semaphore_create(0);
    [(ICPrefManager *)self startQuery:v6];
    v7 = [(ICPrefManager *)self remoteAuthManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__ICPrefManager_resetContentsAuthorizationWithCompletion___block_invoke;
    v10[3] = &unk_1E829C8C0;
    v11 = v6;
    v12 = v4;
    v8 = v6;
    [v7 resetContentsAuthorizationStatusWithReply:v10];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    [(ICPrefManager *)self endQuery:v8];
  }

  else
  {
    v7 = [(ICPrefManager *)self getContentsAuthorizationStatus];
    v13 = @"ICAuthorizationStatus";
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    (*(v4 + 2))(v4, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

intptr_t __58__ICPrefManager_resetContentsAuthorizationWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)resetControlAuthorizationWithCompletion:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ICPrefManager *)self authConnection];
  if (v5)
  {
    v6 = dispatch_semaphore_create(0);
    [(ICPrefManager *)self startQuery:v6];
    v7 = [(ICPrefManager *)self remoteAuthManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__ICPrefManager_resetControlAuthorizationWithCompletion___block_invoke;
    v10[3] = &unk_1E829C8C0;
    v11 = v6;
    v12 = v4;
    v8 = v6;
    [v7 resetControlAuthorizationStatusWithReply:v10];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    [(ICPrefManager *)self endQuery:v8];
  }

  else
  {
    v7 = [(ICPrefManager *)self getControlAuthorizationStatus];
    v13 = @"ICAuthorizationStatus";
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    (*(v4 + 2))(v4, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

intptr_t __57__ICPrefManager_resetControlAuthorizationWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

+ (void)defaultAuthManager
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C6F19000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end