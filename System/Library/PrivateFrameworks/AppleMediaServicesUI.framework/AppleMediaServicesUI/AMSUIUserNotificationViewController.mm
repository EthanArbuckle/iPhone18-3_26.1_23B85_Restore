@interface AMSUIUserNotificationViewController
+ (id)userNotificationFromNotification:(id)notification;
- (void)didReceiveNotification:(id)notification;
- (void)openNotification;
- (void)renderUserNotification:(id)notification;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIUserNotificationViewController

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = AMSUIUserNotificationViewController;
  [(AMSUIUserNotificationViewController *)&v15 viewWillLayoutSubviews];
  contentViewController = [(AMSUIUserNotificationViewController *)self contentViewController];

  if (contentViewController)
  {
    view = [(AMSUIUserNotificationViewController *)self view];
    [view frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    contentViewController2 = [(AMSUIUserNotificationViewController *)self contentViewController];
    view2 = [contentViewController2 view];
    [view2 setFrame:{v6, v8, v10, v12}];
  }
}

+ (id)userNotificationFromNotification:(id)notification
{
  v3 = MEMORY[0x1E698CBC0];
  notificationCopy = notification;
  v5 = [[v3 alloc] initWithUNNotification:notificationCopy];

  return v5;
}

- (void)openNotification
{
  extensionContext = [(AMSUIUserNotificationViewController *)self extensionContext];
  [extensionContext performNotificationDefaultAction];
}

- (void)renderUserNotification:(id)notification
{
  v23 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedUserNotificationConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [notificationCopy logKey];
    *buf = 138543618;
    selfCopy = self;
    v21 = 2114;
    v22 = logKey;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Will render notification", buf, 0x16u);
  }

  createUNNotificationActions = [notificationCopy createUNNotificationActions];
  if (createUNNotificationActions)
  {
    extensionContext = [(AMSUIUserNotificationViewController *)self extensionContext];
    [extensionContext setNotificationActions:createUNNotificationActions];
  }

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(AMSUIUserNotificationViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v12 = [[AMSUIUserNotificationContentViewController alloc] initWithNotification:notificationCopy delegate:self];
  [(AMSUIUserNotificationViewController *)self setContentViewController:v12];

  contentViewController = [(AMSUIUserNotificationViewController *)self contentViewController];
  [contentViewController setDelegate:self];

  contentViewController2 = [(AMSUIUserNotificationViewController *)self contentViewController];
  [contentViewController2 setModalPresentationStyle:0];

  contentViewController3 = [(AMSUIUserNotificationViewController *)self contentViewController];
  [contentViewController3 expectedContentSize];
  [(AMSUIUserNotificationViewController *)self setPreferredContentSize:?];

  contentViewController4 = [(AMSUIUserNotificationViewController *)self contentViewController];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__AMSUIUserNotificationViewController_renderUserNotification___block_invoke;
  v18[3] = &unk_1E7F242D0;
  v18[4] = self;
  [(AMSUIUserNotificationViewController *)self presentViewController:contentViewController4 animated:0 completion:v18];

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

- (void)didReceiveNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = [objc_opt_class() userNotificationFromNotification:notificationCopy];

  if (v5)
  {
    [(AMSUIUserNotificationViewController *)self renderUserNotification:v5];
  }

  else
  {
    isRunningUnitTests = [MEMORY[0x1E698CBB0] isRunningUnitTests];
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
    if (isRunningUnitTests)
    {
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543362;
        v16 = objc_opt_class();
        v10 = v16;
        _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: didReceiveNotification: received for a notification that did not originate from an AMS", &v15, 0xCu);
      }

      mEMORY[0x1E698C968]2 = [MEMORY[0x1E696AD88] defaultCenter];
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      [mEMORY[0x1E698C968]2 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:mEMORY[0x1E698C968]3 userInfo:0];
    }

    else
    {
      if (!mEMORY[0x1E698C968])
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v15 = 138543362;
        v16 = objc_opt_class();
        v13 = v16;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@: didReceiveNotification: received for a notification that did not originate from an AMS", &v15, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end