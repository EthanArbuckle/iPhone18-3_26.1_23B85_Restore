@interface DarwinNotificationInvalidationSource
- (DarwinNotificationInvalidationSource)initWithPreflightCache:(id)a3 notificationName:(const char *)a4;
- (id)invalidationReason;
- (void)dealloc;
@end

@implementation DarwinNotificationInvalidationSource

- (DarwinNotificationInvalidationSource)initWithPreflightCache:(id)a3 notificationName:(const char *)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = DarwinNotificationInvalidationSource;
  v7 = [(PreflightCacheInvalidationSource *)&v19 initWithPreflightCache:v6];
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
    notificationName = v7->_notificationName;
    v7->_notificationName = v8;

    objc_initWeak(&location, v7);
    v10 = [(DarwinNotificationInvalidationSource *)v7 notificationName];
    v11 = [v10 UTF8String];
    v12 = +[DaemonUtils queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__DarwinNotificationInvalidationSource_initWithPreflightCache_notificationName___block_invoke;
    v16[3] = &unk_278A61600;
    objc_copyWeak(&v17, &location);
    v13 = notify_register_dispatch(v11, &v7->_token, v12, v16);

    if (v13)
    {
      if (LA_LOG_once_4 != -1)
      {
        [DarwinNotificationInvalidationSource initWithPreflightCache:notificationName:];
      }

      v14 = LA_LOG_log_4;
      if (os_log_type_enabled(LA_LOG_log_4, OS_LOG_TYPE_FAULT))
      {
        [DarwinNotificationInvalidationSource initWithPreflightCache:v13 notificationName:v14];
      }
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __80__DarwinNotificationInvalidationSource_initWithPreflightCache_notificationName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleNotificationInServerQueue];
}

- (void)dealloc
{
  token = self->_token;
  if (token)
  {
    notify_cancel(token);
  }

  v4.receiver = self;
  v4.super_class = DarwinNotificationInvalidationSource;
  [(DarwinNotificationInvalidationSource *)&v4 dealloc];
}

- (id)invalidationReason
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(DarwinNotificationInvalidationSource *)self notificationName];
  v4 = [v2 stringWithFormat:@"received %@", v3];

  return v4;
}

- (void)initWithPreflightCache:(int)a1 notificationName:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_238B7F000, a2, OS_LOG_TYPE_FAULT, "Failed to register for kMobileKeyBagLockStatusNotificationID: %u", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end