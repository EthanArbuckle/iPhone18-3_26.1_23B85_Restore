@interface WKUserNotificationInterfaceController
- (WKUserNotificationInterfaceController)init;
- (void)_didReceiveNotification:(id)notification remoteNotification:(id)remoteNotification localNotification:(id)localNotification withCompletion:(id)completion;
- (void)didReceiveLocalNotification:(id)notification withCompletion:(id)completion;
- (void)didReceiveNotification:(id)notification withCompletion:(id)completion;
- (void)didReceiveRemoteNotification:(id)notification withCompletion:(id)completion;
@end

@implementation WKUserNotificationInterfaceController

- (WKUserNotificationInterfaceController)init
{
  v3.receiver = self;
  v3.super_class = WKUserNotificationInterfaceController;
  return [(WKInterfaceController *)&v3 init];
}

- (void)_didReceiveNotification:(id)notification remoteNotification:(id)remoteNotification localNotification:(id)localNotification withCompletion:(id)completion
{
  notificationCopy = notification;
  remoteNotificationCopy = remoteNotification;
  localNotificationCopy = localNotification;
  completionCopy = completion;
  v13 = objc_opt_class();
  if (spUtils_subclassForObjectOverridesSelectorFromSuperclass(self, sel_didReceiveNotification_withCompletion_, v13))
  {
    [(WKUserNotificationInterfaceController *)self didReceiveNotification:notificationCopy withCompletion:completionCopy];
  }

  else if (localNotificationCopy)
  {
    [(WKUserNotificationInterfaceController *)self didReceiveLocalNotification:localNotificationCopy withCompletion:completionCopy];
  }

  else
  {
    if (remoteNotificationCopy)
    {
      selfCopy2 = self;
      v15 = remoteNotificationCopy;
    }

    else
    {
      v15 = MEMORY[0x277CBEC10];
      selfCopy2 = self;
    }

    [(WKUserNotificationInterfaceController *)selfCopy2 didReceiveRemoteNotification:v15 withCompletion:completionCopy];
  }
}

- (void)didReceiveNotification:(id)notification withCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[WKUserNotificationInterfaceController didReceiveNotification:withCompletion:]";
    v9 = 1024;
    v10 = 809;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling default implementation", &v7, 0x12u);
  }

  completionCopy[2](completionCopy, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveRemoteNotification:(id)notification withCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[WKUserNotificationInterfaceController didReceiveRemoteNotification:withCompletion:]";
    v9 = 1024;
    v10 = 817;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling default implementation", &v7, 0x12u);
  }

  completionCopy[2](completionCopy, 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveLocalNotification:(id)notification withCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = wk_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[WKUserNotificationInterfaceController didReceiveLocalNotification:withCompletion:]";
    v9 = 1024;
    v10 = 825;
    _os_log_impl(&dword_23B338000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling default implementation", &v7, 0x12u);
  }

  completionCopy[2](completionCopy, 0);
  v6 = *MEMORY[0x277D85DE8];
}

@end