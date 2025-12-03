@interface ATXDistributedNotificationHandler
+ (id)sharedInstance;
- (ATXDistributedNotificationHandler)init;
- (void)_notificationFired:(id)fired;
- (void)_pruneOldRecents;
- (void)_repostNotificationFromSource:(id)source name:(id)name userInfo:(id)info;
- (void)dealloc;
- (void)registerXPCHandler;
@end

@implementation ATXDistributedNotificationHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_16 != -1)
  {
    +[ATXDistributedNotificationHandler sharedInstance];
  }

  v3 = sharedInstance_handler;

  return v3;
}

uint64_t __51__ATXDistributedNotificationHandler_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_handler;
  sharedInstance_handler = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ATXDistributedNotificationHandler)init
{
  v7.receiver = self;
  v7.super_class = ATXDistributedNotificationHandler;
  v2 = [(ATXDistributedNotificationHandler *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recentNotifications = v2->_recentNotifications;
    v2->_recentNotifications = v3;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__notificationFired_ name:@"com.apple.LaunchServices.applicationRegistered" object:0 suspensionBehavior:0];
    [defaultCenter addObserver:v2 selector:sel__notificationFired_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0 suspensionBehavior:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ATXDistributedNotificationHandler;
  [(ATXDistributedNotificationHandler *)&v4 dealloc];
}

- (void)_notificationFired:(id)fired
{
  firedCopy = fired;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__ATXDistributedNotificationHandler__notificationFired___block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = firedCopy;
  v5 = firedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __56__ATXDistributedNotificationHandler__notificationFired___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) name];
  v3 = [*(a1 + 40) userInfo];
  [v2 _repostNotificationFromSource:@"distributed notification" name:v4 userInfo:v3];
}

- (void)_pruneOldRecents
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [self count];
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXDistributedNotificationHandler: removing %ld old notifications", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

BOOL __53__ATXDistributedNotificationHandler__pruneOldRecents__block_invoke(uint64_t a1, void *a2)
{
  [a2 timestamp];
  v3 = v2;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  return vabdd_f64(v3, v4) > 10.0;
}

- (void)_repostNotificationFromSource:(id)source name:(id)name userInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  nameCopy = name;
  infoCopy = info;
  [(ATXDistributedNotificationHandler *)self _pruneOldRecents];
  v11 = [[_ATXDistributedNotification alloc] initWithName:nameCopy userInfo:infoCopy];
  if ([(NSMutableSet *)self->_recentNotifications containsObject:v11])
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543874;
      v17 = sourceCopy;
      v18 = 2114;
      v19 = nameCopy;
      v20 = 2112;
      v21 = infoCopy;
      v13 = "ATXDistributedNotificationHandler: dropping duplicate event (%{public}@) %{public}@; userInfo=%@";
LABEL_6:
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, v13, &v16, 0x20u);
    }
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:nameCopy object:0 userInfo:infoCopy];

    [(NSMutableSet *)self->_recentNotifications addObject:v11];
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543874;
      v17 = sourceCopy;
      v18 = 2114;
      v19 = nameCopy;
      v20 = 2112;
      v21 = infoCopy;
      v13 = "ATXDistributedNotificationHandler: handled event (%{public}@) %{public}@; userInfo=%@";
      goto LABEL_6;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)registerXPCHandler
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ATXDistributedNotificationHandler_registerXPCHandler__block_invoke;
  v4[3] = &unk_2785A1EB0;
  objc_copyWeak(&v5, &location);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v2, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __55__ATXDistributedNotificationHandler_registerXPCHandler__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430])}];
  v6 = xpc_dictionary_get_value(xdict, "UserInfo");
  v7 = _CFXPCCreateCFObjectFromXPCObject();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _repostNotificationFromSource:@"XPC stream" name:v5 userInfo:v7];

  objc_autoreleasePoolPop(v4);
  v9 = objc_opt_self();
}

@end