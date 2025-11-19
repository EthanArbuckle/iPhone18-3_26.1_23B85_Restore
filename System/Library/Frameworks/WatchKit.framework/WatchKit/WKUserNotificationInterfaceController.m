@interface WKUserNotificationInterfaceController
- (WKUserNotificationInterfaceController)init;
- (void)_didReceiveNotification:(id)a3 remoteNotification:(id)a4 localNotification:(id)a5 withCompletion:(id)a6;
- (void)didReceiveLocalNotification:(id)a3 withCompletion:(id)a4;
- (void)didReceiveNotification:(id)a3 withCompletion:(id)a4;
- (void)didReceiveRemoteNotification:(id)a3 withCompletion:(id)a4;
@end

@implementation WKUserNotificationInterfaceController

- (WKUserNotificationInterfaceController)init
{
  v3.receiver = self;
  v3.super_class = WKUserNotificationInterfaceController;
  return [(WKInterfaceController *)&v3 init];
}

- (void)_didReceiveNotification:(id)a3 remoteNotification:(id)a4 localNotification:(id)a5 withCompletion:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_class();
  if (spUtils_subclassForObjectOverridesSelectorFromSuperclass(self, sel_didReceiveNotification_withCompletion_, v13))
  {
    [(WKUserNotificationInterfaceController *)self didReceiveNotification:v16 withCompletion:v12];
  }

  else if (v11)
  {
    [(WKUserNotificationInterfaceController *)self didReceiveLocalNotification:v11 withCompletion:v12];
  }

  else
  {
    if (v10)
    {
      v14 = self;
      v15 = v10;
    }

    else
    {
      v15 = MEMORY[0x277CBEC10];
      v14 = self;
    }

    [(WKUserNotificationInterfaceController *)v14 didReceiveRemoteNotification:v15 withCompletion:v12];
  }
}

- (void)didReceiveNotification:(id)a3 withCompletion:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[WKUserNotificationInterfaceController didReceiveNotification:withCompletion:]";
    v9 = 1024;
    v10 = 809;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling default implementation", &v7, 0x12u);
  }

  v4[2](v4, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveRemoteNotification:(id)a3 withCompletion:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[WKUserNotificationInterfaceController didReceiveRemoteNotification:withCompletion:]";
    v9 = 1024;
    v10 = 817;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling default implementation", &v7, 0x12u);
  }

  v4[2](v4, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveLocalNotification:(id)a3 withCompletion:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[WKUserNotificationInterfaceController didReceiveLocalNotification:withCompletion:]";
    v9 = 1024;
    v10 = 825;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling default implementation", &v7, 0x12u);
  }

  v4[2](v4, 0);
  v6 = *MEMORY[0x277D85DE8];
}

@end