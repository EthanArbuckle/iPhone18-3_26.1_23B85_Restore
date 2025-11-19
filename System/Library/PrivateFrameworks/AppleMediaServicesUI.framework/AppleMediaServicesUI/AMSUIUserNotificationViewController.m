@interface AMSUIUserNotificationViewController
+ (id)userNotificationFromNotification:(id)a3;
- (void)didReceiveNotification:(id)a3;
- (void)openNotification;
- (void)renderUserNotification:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIUserNotificationViewController

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = AMSUIUserNotificationViewController;
  [(AMSUIUserNotificationViewController *)&v15 viewWillLayoutSubviews];
  v3 = [(AMSUIUserNotificationViewController *)self contentViewController];

  if (v3)
  {
    v4 = [(AMSUIUserNotificationViewController *)self view];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(AMSUIUserNotificationViewController *)self contentViewController];
    v14 = [v13 view];
    [v14 setFrame:{v6, v8, v10, v12}];
  }
}

+ (id)userNotificationFromNotification:(id)a3
{
  v3 = MEMORY[0x1E698CBC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUNNotification:v4];

  return v5;
}

- (void)openNotification
{
  v2 = [(AMSUIUserNotificationViewController *)self extensionContext];
  [v2 performNotificationDefaultAction];
}

- (void)renderUserNotification:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698C968] sharedUserNotificationConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 logKey];
    *buf = 138543618;
    v20 = self;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Will render notification", buf, 0x16u);
  }

  v8 = [v4 createUNNotificationActions];
  if (v8)
  {
    v9 = [(AMSUIUserNotificationViewController *)self extensionContext];
    [v9 setNotificationActions:v8];
  }

  v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v11 = [(AMSUIUserNotificationViewController *)self view];
  [v11 setBackgroundColor:v10];

  v12 = [[AMSUIUserNotificationContentViewController alloc] initWithNotification:v4 delegate:self];
  [(AMSUIUserNotificationViewController *)self setContentViewController:v12];

  v13 = [(AMSUIUserNotificationViewController *)self contentViewController];
  [v13 setDelegate:self];

  v14 = [(AMSUIUserNotificationViewController *)self contentViewController];
  [v14 setModalPresentationStyle:0];

  v15 = [(AMSUIUserNotificationViewController *)self contentViewController];
  [v15 expectedContentSize];
  [(AMSUIUserNotificationViewController *)self setPreferredContentSize:?];

  v16 = [(AMSUIUserNotificationViewController *)self contentViewController];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__AMSUIUserNotificationViewController_renderUserNotification___block_invoke;
  v18[3] = &unk_1E7F242D0;
  v18[4] = self;
  [(AMSUIUserNotificationViewController *)self presentViewController:v16 animated:0 completion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __62__AMSUIUserNotificationViewController_renderUserNotification___block_invoke(uint64_t a1)
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
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() userNotificationFromNotification:v4];

  if (v5)
  {
    [(AMSUIUserNotificationViewController *)self renderUserNotification:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E698CBB0] isRunningUnitTests];
    v7 = [MEMORY[0x1E698C968] sharedConfig];
    v8 = v7;
    if (v6)
    {
      if (!v7)
      {
        v8 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543362;
        v16 = objc_opt_class();
        v10 = v16;
        _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: didReceiveNotification: received for a notification that did not originate from an AMS", &v15, 0xCu);
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      v11 = [MEMORY[0x1E698C968] sharedConfig];
      [v8 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v11 userInfo:0];
    }

    else
    {
      if (!v7)
      {
        v8 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v12 = [v8 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v15 = 138543362;
        v16 = objc_opt_class();
        v13 = v16;
        _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_FAULT, "%{public}@: didReceiveNotification: received for a notification that did not originate from an AMS", &v15, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end