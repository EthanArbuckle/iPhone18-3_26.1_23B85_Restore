@interface VSAccountMonitor
+ (id)sharedInstance;
- (VSAccountMonitor)init;
- (void)_sendNotification;
- (void)accountCredentialChanged:(id)a3;
- (void)accountWasAdded:(id)a3;
- (void)accountWasModified:(id)a3;
- (void)accountWasRemoved:(id)a3;
@end

@implementation VSAccountMonitor

+ (id)sharedInstance
{
  if (sharedInstance___vs_lazy_init_predicate_1 != -1)
  {
    +[VSAccountMonitor sharedInstance];
  }

  v3 = sharedInstance___vs_lazy_init_variable_1;

  return v3;
}

uint64_t __34__VSAccountMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VSAccountMonitor);
  v1 = sharedInstance___vs_lazy_init_variable_1;
  sharedInstance___vs_lazy_init_variable_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (VSAccountMonitor)init
{
  v7.receiver = self;
  v7.super_class = VSAccountMonitor;
  v2 = [(VSAccountMonitor *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CB8D58]];
    v4 = [objc_alloc(MEMORY[0x277CB8F80]) initWithAccountTypes:v3 delegate:v2];
    monitoredAccountStore = v2->_monitoredAccountStore;
    v2->_monitoredAccountStore = v4;

    [(ACMonitoredAccountStore *)v2->_monitoredAccountStore registerWithCompletion:&__block_literal_global_6];
  }

  return v2;
}

void __24__VSAccountMonitor_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "VSAccountMonitor - ACMonitoredAccountStore registration found accounts: %@ with error: %@", &v7, 0x16u);
  }
}

- (void)_sendNotification
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"VSAccountMonitorAccountDidChange" object:0];
}

- (void)accountWasAdded:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "VSAccountMonitor - accountWasAdded: %@", &v6, 0xCu);
  }

  [(VSAccountMonitor *)self _sendNotification];
}

- (void)accountWasModified:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "VSAccountMonitor - accountWasModified: %@", &v6, 0xCu);
  }

  [(VSAccountMonitor *)self _sendNotification];
}

- (void)accountWasRemoved:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "VSAccountMonitor - accountWasRemoved: %@", &v6, 0xCu);
  }

  [(VSAccountMonitor *)self _sendNotification];
}

- (void)accountCredentialChanged:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "VSAccountMonitor - accountCredentialChanged: %@", &v6, 0xCu);
  }

  [(VSAccountMonitor *)self _sendNotification];
}

@end