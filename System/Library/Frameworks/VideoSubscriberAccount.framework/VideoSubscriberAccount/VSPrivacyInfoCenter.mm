@interface VSPrivacyInfoCenter
+ (id)sharedPrivacyInfoCenter;
- (VSPrivacyInfoCenter)init;
- (id)updateAccountAccessStatusWithError:(id)a3;
- (void)dealloc;
- (void)updateAccountAccessStatusWithResponse:(id)a3;
@end

@implementation VSPrivacyInfoCenter

+ (id)sharedPrivacyInfoCenter
{
  if (sharedPrivacyInfoCenter___vs_lazy_init_predicate != -1)
  {
    +[VSPrivacyInfoCenter sharedPrivacyInfoCenter];
  }

  v3 = sharedPrivacyInfoCenter___vs_lazy_init_variable;

  return v3;
}

uint64_t __46__VSPrivacyInfoCenter_sharedPrivacyInfoCenter__block_invoke()
{
  v0 = objc_alloc_init(VSPrivacyInfoCenter);
  v1 = sharedPrivacyInfoCenter___vs_lazy_init_variable;
  sharedPrivacyInfoCenter___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (VSPrivacyInfoCenter)init
{
  v16.receiver = self;
  v16.super_class = VSPrivacyInfoCenter;
  v2 = [(VSPrivacyInfoCenter *)&v16 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __27__VSPrivacyInfoCenter_init__block_invoke;
    handler[3] = &unk_278B752E0;
    objc_copyWeak(&v14, &location);
    LODWORD(v3) = notify_register_dispatch("com.apple.tcc.access.changed", &v2->_registrationToken, v3, handler);

    if (v3)
    {
      v5 = VSErrorLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(VSPrivacyInfoCenter *)v5 init];
      }
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = [MEMORY[0x277CCABD8] mainQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __27__VSPrivacyInfoCenter_init__block_invoke_6;
    v11[3] = &unk_278B73400;
    objc_copyWeak(&v12, &location);
    v8 = [v6 addObserverForName:@"UIApplicationDidEnterBackgroundNotification" object:0 queue:v7 usingBlock:v11];

    v9 = +[VSManagedProfileConnection sharedConnection];
    [v9 registerObserver:v2];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__VSPrivacyInfoCenter_init__block_invoke(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "TCC access changed notification received.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateAccountAccessStatus];
}

void __27__VSPrivacyInfoCenter_init__block_invoke_6(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Application did enter background, invalidating access status cache.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateAccountAccessStatus];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_registrationToken))
  {
    notify_cancel(self->_registrationToken);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = +[VSManagedProfileConnection sharedConnection];
  [v4 unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = VSPrivacyInfoCenter;
  [(VSPrivacyInfoCenter *)&v5 dealloc];
}

- (void)updateAccountAccessStatusWithResponse:(id)a3
{
  [(VSPrivacyInfoCenter *)self willChangeValueForKey:@"accountAccessStatus"];
  [(VSPrivacyInfoCenter *)self setAccountAccessStatus:3];

  [(VSPrivacyInfoCenter *)self didChangeValueForKey:@"accountAccessStatus"];
}

- (id)updateAccountAccessStatusWithError:(id)a3
{
  v4 = a3;
  if (VSErrorIsPrivateError(v4, -13))
  {
    [VSPrivacyInfoCenter updateAccountAccessStatusWithError:v4];
  }

  if (VSErrorIsPrivateError(v4, -11))
  {
    v5 = 2;
LABEL_8:
    v6 = VSPublicError(0, 0, v4);

LABEL_9:
    [(VSPrivacyInfoCenter *)self setAccountAccessStatus:v5];
    goto LABEL_10;
  }

  if (VSErrorIsPrivateError(v4, -12))
  {
    v5 = 0;
    goto LABEL_8;
  }

  if (VSErrorIsPrivateError(v4, -23))
  {
    v5 = 1;
    goto LABEL_8;
  }

  v6 = v4;
  if (VSErrorIsPublicError(v4, 7))
  {
    v5 = 0;
    v6 = v4;
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (void)updateAccountAccessStatusWithError:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  NSLog(@"%@", v1);

  abort();
}

@end