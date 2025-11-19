@interface VSIdentityProviderAvailabilityInfoCenter
+ (id)defaultCenter;
- (VSIdentityProviderAvailabilityInfoCenter)init;
- (VSPreferences)preferences;
- (int64_t)status;
- (void)_accountStoreChanged:(id)a3;
- (void)_beginStatusUpdateAttemptWithCompletionHandler:(id)a3;
- (void)_sendStatusChangeNotification;
- (void)determineIdentityProviderAvailabilityWithCompletionHandler:(id)a3;
- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4;
- (void)setStatus:(int64_t)a3;
@end

@implementation VSIdentityProviderAvailabilityInfoCenter

- (VSIdentityProviderAvailabilityInfoCenter)init
{
  v8.receiver = self;
  v8.super_class = VSIdentityProviderAvailabilityInfoCenter;
  v2 = [(VSIdentityProviderAvailabilityInfoCenter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v3;

    [(NSOperationQueue *)v2->_privateQueue setName:@"VSIdentityProviderAvailabilityInfoCenter"];
    v5 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSDeveloperServiceDidChangeNotification"];
    remoteNotifier = v2->_remoteNotifier;
    v2->_remoteNotifier = v5;

    [(VSRemoteNotifier *)v2->_remoteNotifier setDelegate:v2];
  }

  return v2;
}

- (VSPreferences)preferences
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_preferences;
  if (!v3)
  {
    v3 = objc_alloc_init(VSPreferences);
    objc_storeStrong(&v2->_preferences, v3);
  }

  objc_sync_exit(v2);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

+ (id)defaultCenter
{
  if (defaultCenter___vs_lazy_init_predicate != -1)
  {
    +[VSIdentityProviderAvailabilityInfoCenter defaultCenter];
  }

  v3 = defaultCenter___vs_lazy_init_variable;

  return v3;
}

uint64_t __57__VSIdentityProviderAvailabilityInfoCenter_defaultCenter__block_invoke()
{
  v0 = __57__VSIdentityProviderAvailabilityInfoCenter_defaultCenter__block_invoke_2();
  v1 = defaultCenter___vs_lazy_init_variable;
  defaultCenter___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

VSIdentityProviderAvailabilityInfoCenter *__57__VSIdentityProviderAvailabilityInfoCenter_defaultCenter__block_invoke_2()
{
  v0 = objc_alloc_init(VSIdentityProviderAvailabilityInfoCenter);
  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = +[VSAccountMonitor sharedInstance];
  [v1 addObserver:v0 selector:sel__accountStoreChanged_ name:@"VSAccountMonitorAccountDidChange" object:v2];

  [(VSIdentityProviderAvailabilityInfoCenter *)v0 _beginStatusUpdateAttemptWithCompletionHandler:0];

  return v0;
}

- (void)_accountStoreChanged:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Account store changed: %@", &v6, 0xCu);
  }

  [(VSIdentityProviderAvailabilityInfoCenter *)self _beginStatusUpdateAttemptWithCompletionHandler:0];
}

- (void)_sendStatusChangeNotification
{
  VSRequireMainThread();
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Will send identity provider availability status change notification.", buf, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"VSIdentityProviderAvailabilityDidChangeNotification" object:self];
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Did send identity provider availability status change notification.", v6, 2u);
  }
}

- (void)_beginStatusUpdateAttemptWithCompletionHandler:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSIdentityProviderAvailabilityInfoCenter *)self privateQueue];
  v6 = objc_alloc_init(VSDeveloperIdentityProviderFetchAllOperation);
  v7 = [(VSIdentityProviderAvailabilityInfoCenter *)self developerServiceConnection];
  [(VSDeveloperIdentityProviderFetchAllOperation *)v6 setConnection:v7];

  [v5 addOperation:v6];
  v8 = @"MultipleSystemOperators";
  v9 = objc_alloc_init(VSAMSBagLoadOperation);
  [(VSAMSBagLoadOperation *)v9 setBagKey:v8];
  v10 = VSDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "Will load value for bag key %@", buf, 0xCu);
  }

  [v5 addOperation:v9];
  v11 = MEMORY[0x277CCA8C8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke;
  v16[3] = &unk_278B74F50;
  v16[4] = self;
  v17 = v9;
  v18 = v8;
  v19 = v6;
  v20 = v4;
  v12 = v4;
  v13 = v6;
  v14 = v9;
  v15 = [v11 blockOperationWithBlock:v16];
  [v15 addDependency:v13];
  [v15 addDependency:v14];
  [v5 addOperation:v15];
}

void __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) preferences];
  v3 = [v2 cachedStoreProviderStatus];
  v4 = [*(a1 + 40) value];
  if (v4)
  {
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      *buf = 138412546;
      *&buf[4] = v4;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Did load value (%@) for bag key %@", buf, 0x16u);
    }

    v7 = 0;
    v3 = 1;
  }

  else
  {
    v5 = [*(a1 + 40) error];
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Did NOT load value for bag key %@: %@", buf, 0x16u);
    }

    if (v5)
    {
      v7 = VSPublicError(0, 3, v5);
      v10 = VSErrorLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_cold_1(v5, v10);
      }
    }

    else
    {
      v7 = 0;
      v3 = 2;
    }
  }

  [v2 setCachedStoreProviderStatus:v3];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = [v2 cachedDeveloperProviderStatus];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = __Block_byref_object_copy__13;
  v36 = __Block_byref_object_dispose__13;
  v37 = 0;
  v11 = [*(a1 + 56) result];
  v12 = [v11 forceUnwrapObject];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_22;
  v27[3] = &unk_278B73428;
  v27[4] = &v28;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_2;
  v26[3] = &unk_278B73450;
  v26[4] = buf;
  [v12 unwrapObject:v27 error:v26];

  [v2 setCachedDeveloperProviderStatus:v29[3]];
  if (v3 == 1 || (v13 = v29[3], v13 == 1))
  {
    v14 = 0;
    v15 = 1;
  }

  else if (v3 == 2 || v13 == 2)
  {
    v14 = VSPublicError(0, 1, 0);
    v15 = 2;
  }

  else
  {
    v19 = v7;
    if (v7 || (v19 = *(*&buf[8] + 40)) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = VSPublicError(0, 3, 0);
    }

    v14 = v20;
    v15 = 0;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_25;
  v25[3] = &unk_278B74F28;
  v25[4] = *(a1 + 32);
  v25[5] = v15;
  VSPerformBlockOnMainThread(v25);
  if (*(a1 + 64))
  {
    v16 = VSDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 136315138;
      v33 = "[VSIdentityProviderAvailabilityInfoCenter _beginStatusUpdateAttemptWithCompletionHandler:]_block_invoke_2";
      _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", v32, 0xCu);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_26;
    v21[3] = &unk_278B74268;
    v23 = *(a1 + 64);
    v24 = v15;
    v22 = v14;
    __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_26(v21);
    v17 = VSDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 136315138;
      v33 = "[VSIdentityProviderAvailabilityInfoCenter _beginStatusUpdateAttemptWithCompletionHandler:]_block_invoke_3";
      _os_log_impl(&dword_23AB8E000, v17, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", v32, 0xCu);
    }

    v18 = v23;
  }

  else
  {
    v18 = VSDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 136315138;
      v33 = "[VSIdentityProviderAvailabilityInfoCenter _beginStatusUpdateAttemptWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_23AB8E000, v18, OS_LOG_TYPE_DEFAULT, "No completion handler passed to %s", v32, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v28, 8);
}

uint64_t __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_22(uint64_t a1, void *a2)
{
  result = [a2 count];
  v4 = 1;
  if (!result)
  {
    v4 = 2;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

void __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_2_cold_1(v3, v4);
  }

  v5 = VSPublicError(0, 3, v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_26(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_2_27;
  v4[3] = &unk_278B74268;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v5 = *(a1 + 32);
  VSPerformCompletionHandler(v4);
}

- (int64_t)status
{
  v3 = [(VSIdentityProviderAvailabilityInfoCenter *)self preferences];
  v4 = [v3 forcedAvailabilityStatus];

  if (!v4)
  {
    if (![(VSIdentityProviderAvailabilityInfoCenter *)self hasDeterminedInitialStatus])
    {
      [(VSIdentityProviderAvailabilityInfoCenter *)self setHasDeterminedInitialStatus:1];
      v5 = [(VSIdentityProviderAvailabilityInfoCenter *)self preferences];
      self->_status = [v5 cachedAvailabilityStatus];
    }

    return self->_status;
  }

  return v4;
}

- (void)setStatus:(int64_t)a3
{
  if (self->_status != a3)
  {
    [(VSIdentityProviderAvailabilityInfoCenter *)self willChangeValueForKey:@"status"];
    self->_status = a3;
    v6 = [(VSIdentityProviderAvailabilityInfoCenter *)self preferences];
    [v6 setCachedAvailabilityStatus:a3];

    [(VSIdentityProviderAvailabilityInfoCenter *)self _sendStatusChangeNotification];

    [(VSIdentityProviderAvailabilityInfoCenter *)self didChangeValueForKey:@"status"];
  }
}

- (void)determineIdentityProviderAvailabilityWithCompletionHandler:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[VSIdentityProviderAvailabilityInfoCenter determineIdentityProviderAvailabilityWithCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__VSIdentityProviderAvailabilityInfoCenter_determineIdentityProviderAvailabilityWithCompletionHandler___block_invoke;
  v7[3] = &unk_278B74AE0;
  v8 = v4;
  v6 = v4;
  [(VSIdentityProviderAvailabilityInfoCenter *)self _beginStatusUpdateAttemptWithCompletionHandler:v7];
}

- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4
{
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Info center received remote notification.", v6, 2u);
  }

  [(VSIdentityProviderAvailabilityInfoCenter *)self _beginStatusUpdateAttemptWithCompletionHandler:0];
}

void __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error determining identity provider availability: %@", &v2, 0xCu);
}

void __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error fetching developer providers: %@", &v2, 0xCu);
}

@end