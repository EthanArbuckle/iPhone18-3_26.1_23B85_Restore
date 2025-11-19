@interface AMPUserNotificationViewController
+ (id)userNotificationFromNotification:(id)a3;
- (void)didReceiveNotification:(id)a3;
- (void)openNotification;
- (void)renderUserNotification:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AMPUserNotificationViewController

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = AMPUserNotificationViewController;
  [(AMPUserNotificationViewController *)&v15 viewWillLayoutSubviews];
  v3 = [(AMPUserNotificationViewController *)self contentViewController];

  if (v3)
  {
    v4 = [(AMPUserNotificationViewController *)self view];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(AMPUserNotificationViewController *)self contentViewController];
    v14 = [v13 view];
    [v14 setFrame:{v6, v8, v10, v12}];
  }
}

+ (id)userNotificationFromNotification:(id)a3
{
  v3 = MEMORY[0x277CEE710];
  v4 = a3;
  v5 = [[v3 alloc] initWithUNNotification:v4];

  return v5;
}

- (void)openNotification
{
  v2 = [(AMPUserNotificationViewController *)self extensionContext];
  [v2 performNotificationDefaultAction];
}

- (void)renderUserNotification:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CEE508] sharedUserNotificationConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x277CEE508] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 logKey];
    *buf = 138543618;
    v20 = self;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_23C90D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Will render notification", buf, 0x16u);
  }

  v8 = [v4 createUNNotificationActions];
  if (v8)
  {
    v9 = [(AMPUserNotificationViewController *)self extensionContext];
    [v9 setNotificationActions:v8];
  }

  v10 = [MEMORY[0x277D75348] systemBackgroundColor];
  v11 = [(AMPUserNotificationViewController *)self view];
  [v11 setBackgroundColor:v10];

  v12 = [[AMPUserNotificationContentViewController alloc] initWithNotification:v4 delegate:self];
  [(AMPUserNotificationViewController *)self setContentViewController:v12];

  v13 = [(AMPUserNotificationViewController *)self contentViewController];
  [v13 setDelegate:self];

  v14 = [(AMPUserNotificationViewController *)self contentViewController];
  [v14 setModalPresentationStyle:0];

  v15 = [(AMPUserNotificationViewController *)self contentViewController];
  [v15 expectedContentSize];
  [(AMPUserNotificationViewController *)self setPreferredContentSize:?];

  v16 = [(AMPUserNotificationViewController *)self contentViewController];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__AMPUserNotificationViewController_renderUserNotification___block_invoke;
  v18[3] = &unk_278BC2168;
  v18[4] = self;
  [(AMPUserNotificationViewController *)self presentViewController:v16 animated:0 completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __60__AMPUserNotificationViewController_renderUserNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentViewController];
  [v2 preferredContentSize];
  [*(a1 + 32) setPreferredContentSize:?];

  v4 = [*(a1 + 32) presentingViewController];
  v3 = [v4 view];
  [v3 setNeedsLayout];
}

- (void)didReceiveNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() userNotificationFromNotification:v4];

  if (v5)
  {
    [(AMPUserNotificationViewController *)self renderUserNotification:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CEE6F8] isRunningUnitTests];
    v7 = [MEMORY[0x277CEE508] sharedConfig];
    v8 = v7;
    if (v6)
    {
      if (!v7)
      {
        v8 = [MEMORY[0x277CEE508] sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543362;
        v16 = objc_opt_class();
        v10 = v16;
        _os_log_impl(&dword_23C90D000, v9, OS_LOG_TYPE_ERROR, "%{public}@: didReceiveNotification: received for a notification that did not originate from an AMS", &v15, 0xCu);
      }

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = [MEMORY[0x277CEE508] sharedConfig];
      [v8 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v11 userInfo:0];
    }

    else
    {
      if (!v7)
      {
        v8 = [MEMORY[0x277CEE508] sharedConfig];
      }

      v12 = [v8 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v15 = 138543362;
        v16 = objc_opt_class();
        v13 = v16;
        _os_log_impl(&dword_23C90D000, v12, OS_LOG_TYPE_FAULT, "%{public}@: didReceiveNotification: received for a notification that did not originate from an AMS", &v15, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end