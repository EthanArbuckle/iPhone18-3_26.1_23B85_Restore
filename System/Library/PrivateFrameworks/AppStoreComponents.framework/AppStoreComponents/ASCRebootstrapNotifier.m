@interface ASCRebootstrapNotifier
+ (ASCRebootstrapNotifier)sharedNotifier;
- (id)_initSingleton;
- (void)_initSingleton;
- (void)dealloc;
- (void)postLocalNotification;
- (void)postLocalNotificationIfNeeded;
- (void)setRebootstrapCounterSnapshot:(unint64_t)a3;
@end

@implementation ASCRebootstrapNotifier

- (id)_initSingleton
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = ASCRebootstrapNotifier;
  v2 = [(ASCRebootstrapNotifier *)&v21 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = MEMORY[0x277D85CD0];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __40__ASCRebootstrapNotifier__initSingleton__block_invoke;
    v18 = &unk_2781CCFD0;
    objc_copyWeak(&v19, &location);
    v4 = notify_register_dispatch("com.apple.appstorecomponentsd.rebootstrap", &v2->_token, MEMORY[0x277D85CD0], &v15);

    if (v4)
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = ASCStringFromNotifyStatus(v4);
        [(ASCRebootstrapNotifier *)v7 _initSingleton];
      }

      v2->_token = -1;
    }

    else
    {
      state = notify_get_state(v2->_token, &v2->_rebootstrapCounterSnapshot);
      if (state)
      {
        v9 = MEMORY[0x277D86220];
        v10 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = ASCStringFromNotifyStatus(state);
          [(ASCRebootstrapNotifier *)v11 _initSingleton];
        }
      }
    }

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v2 selector:sel_postLocalNotificationIfNeeded name:*MEMORY[0x277D76648] object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v2 selector:sel_postLocalNotificationIfNeeded name:*MEMORY[0x277CCA0C0] object:0];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (ASCRebootstrapNotifier)sharedNotifier
{
  if (sharedNotifier_onceToken != -1)
  {
    +[ASCRebootstrapNotifier sharedNotifier];
  }

  v3 = sharedNotifier_sharedObserver;

  return v3;
}

uint64_t __40__ASCRebootstrapNotifier_sharedNotifier__block_invoke()
{
  sharedNotifier_sharedObserver = [[ASCRebootstrapNotifier alloc] _initSingleton];

  return MEMORY[0x2821F96F8]();
}

void __40__ASCRebootstrapNotifier__initSingleton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postLocalNotification];
}

- (void)dealloc
{
  token = self->_token;
  if (token != -1)
  {
    notify_cancel(token);
  }

  v4.receiver = self;
  v4.super_class = ASCRebootstrapNotifier;
  [(ASCRebootstrapNotifier *)&v4 dealloc];
}

- (void)setRebootstrapCounterSnapshot:(unint64_t)a3
{
  if (self->_rebootstrapCounterSnapshot != a3)
  {
    self->_rebootstrapCounterSnapshot = a3;
    [(ASCRebootstrapNotifier *)self postLocalNotification];
  }
}

- (void)postLocalNotificationIfNeeded
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = ASCStringFromNotifyStatus(a1);
  v2 = 136446466;
  v3 = "[ASCRebootstrapNotifier postLocalNotificationIfNeeded]";
  v4 = 2114;
  v5 = v1;
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s/notify_get_state failed: %{public}@", &v2, 0x16u);
}

- (void)postLocalNotification
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Daemon re-bootstrap detected", v4, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"ASCRebootstrapDidStartNotification" object:self];
}

- (void)_initSingleton
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_0_6(a1, a2, "[ASCRebootstrapNotifier _initSingleton]");
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s/notify_get_state failed: %{public}@", v3, 0x16u);
}

@end