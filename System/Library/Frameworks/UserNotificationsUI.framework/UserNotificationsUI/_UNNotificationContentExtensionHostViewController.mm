@interface _UNNotificationContentExtensionHostViewController
- (NSExtension)extension;
- (_UNNotificationContentExtensionHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)description;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _UNNotificationContentExtensionHostViewController

- (_UNNotificationContentExtensionHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UNNotificationContentExtensionHostViewController;
  return [(_UNNotificationContentExtensionHostViewController *)&v5 initWithNibName:a3 bundle:a4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsHost;
  if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[_UNNotificationContentExtensionHostViewController viewWillAppear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionHostViewController;
  [(_UIRemoteViewController *)&v6 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsHost;
  if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[_UNNotificationContentExtensionHostViewController viewDidAppear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionHostViewController;
  [(_UIRemoteViewController *)&v6 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsHost;
  if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[_UNNotificationContentExtensionHostViewController viewWillDisappear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionHostViewController;
  [(_UIRemoteViewController *)&v6 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = UNLogExtensionsHost;
  if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v8 = "[_UNNotificationContentExtensionHostViewController viewDidDisappear:]";
    _os_log_impl(&dword_23AB78000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _UNNotificationContentExtensionHostViewController;
  [(_UIRemoteViewController *)&v6 viewDidDisappear:v3];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_UNNotificationContentExtensionHostViewController *)self notificationRequestIdentifier];
  v6 = [v5 un_logDigest];

  v7 = UNLogExtensionsHost;
  if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_23AB78000, v7, OS_LOG_TYPE_DEFAULT, "Extension view service for notification request %{public}@ disconnected with error: %{public}@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_extension);
  if (WeakRetained && self->_extensionRequestIdentifier)
  {
    v9 = UNLogExtensionsHost;
    if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_23AB78000, v9, OS_LOG_TYPE_DEFAULT, "Cancelling loaded extension for notification request %{public}@", &v12, 0xCu);
    }

    [WeakRetained cancelExtensionRequestWithIdentifier:self->_extensionRequestIdentifier];
  }

  else
  {
    v10 = UNLogExtensionsHost;
    if (os_log_type_enabled(UNLogExtensionsHost, OS_LOG_TYPE_ERROR))
    {
      extensionRequestIdentifier = self->_extensionRequestIdentifier;
      v12 = 138543874;
      v13 = WeakRetained;
      v14 = 2114;
      v15 = extensionRequestIdentifier;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_23AB78000, v10, OS_LOG_TYPE_ERROR, "Can't cancel extension request – missing extension (%{public}@) or extension request ID (%{public}@) for notification request %{public}@", &v12, 0x20u);
    }
  }
}

- (void)setPreferredContentSize:(CGSize)a3
{
  v3.receiver = self;
  v3.super_class = _UNNotificationContentExtensionHostViewController;
  [(_UNNotificationContentExtensionHostViewController *)&v3 setPreferredContentSize:a3.width, a3.height, 0.0];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(_UNNotificationContentExtensionHostViewController *)self notificationRequestIdentifier];
  v6 = [v5 un_logDigest];
  v7 = [(_UNNotificationContentExtensionHostViewController *)self extension];
  v8 = [v7 identifier];
  v9 = [(_UNNotificationContentExtensionHostViewController *)self extensionRequestIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p notificationRequestID: %@; extensionID: %@; extensionRequestID: %@>", v4, self, v6, v8, v9];;

  return v10;
}

- (NSExtension)extension
{
  WeakRetained = objc_loadWeakRetained(&self->_extension);

  return WeakRetained;
}

@end