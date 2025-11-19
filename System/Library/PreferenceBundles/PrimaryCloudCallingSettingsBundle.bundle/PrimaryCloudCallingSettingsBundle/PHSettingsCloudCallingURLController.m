@interface PHSettingsCloudCallingURLController
- (BOOL)shouldEnableCapability;
- (PHSettingsCloudCallingURLControllerDelegate)delegate;
- (PHSettingsWebViewController)webViewController;
- (id)_webViewControllerWithType:(int64_t)a3;
- (id)genericErrorAlertController;
- (void)loadWebViewController;
- (void)reloadWebViewController;
@end

@implementation PHSettingsCloudCallingURLController

- (id)genericErrorAlertController
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = TUStringKeyForNetwork();
  v4 = [v2 localizedStringForKey:v3 value:&stru_C920 table:@"CloudCallingURLController"];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = TUStringKeyForNetwork();
  v7 = [v5 localizedStringForKey:v6 value:&stru_C920 table:@"CloudCallingURLController"];

  v8 = [UIAlertController alertControllerWithTitle:v4 message:v7 preferredStyle:1];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_C920 table:@"CloudCallingURLController"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v8 addAction:v11];

  return v8;
}

- (void)reloadWebViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewController);

  if (WeakRetained)
  {

    [(PHSettingsCloudCallingURLController *)self loadWebViewController];
  }
}

- (void)loadWebViewController
{
  v3 = [(PHSettingsCloudCallingURLController *)self webViewController];
  if ([v3 type] == &dword_0 + 1)
  {
    if ([(PHSettingsCloudCallingURLController *)self shouldEnableCapability])
    {

LABEL_15:
      v16 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
      v17 = [v16 isEnabled];

      v18 = PHDefaultLog();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v19)
        {
          *buf = 0;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Asked to load a provision capability web view controller for a capability that is already enabled. Skipping loading web view", buf, 2u);
        }
      }

      else
      {
        if (v19)
        {
          *buf = 0;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Asked to load a provision capability web view controller for a capability that should be enabled automatically. Skipping loading web view and enabling capability now", buf, 2u);
        }

        [(PHSettingsCloudCallingURLController *)self enableCapability];
      }

      v8 = [(PHSettingsCloudCallingURLController *)self webViewController];
      [v8 cancelWebView];
      goto LABEL_23;
    }

    v14 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
    v15 = [v14 isEnabled];

    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v4 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
  v5 = [v4 isProvisioningURLInvalid];

  if (v5)
  {
    v6 = [(PHSettingsCloudCallingURLController *)self webViewController];
    v7 = [v6 isPresentingURL];

    if (v7)
    {
      v8 = PHDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "[WARN] Asked to load web view with spinner when web view controller was already presenting a URL";
LABEL_13:
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v20 = [(PHSettingsCloudCallingURLController *)self webViewController];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_3AAC;
    v28[3] = &unk_C5F0;
    v28[4] = self;
    [v20 loadWebViewWithSpinner:v28];
  }

  else
  {
    v10 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
    v11 = [v10 provisioningURL];

    if (v11)
    {
      v12 = [(PHSettingsCloudCallingURLController *)self webViewController];
      v13 = [v12 isPresentingURL];

      if (v13)
      {
        v8 = PHDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v9 = "[WARN] Asked to load URL when web view controller was already presenting a URL";
          goto LABEL_13;
        }

LABEL_23:

        return;
      }

      v20 = [(PHSettingsCloudCallingURLController *)self webViewController];
      v23 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
      v24 = [v23 provisioningURL];
      v25 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
      v26 = [v25 provisioningPostData];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_3B38;
      v27[3] = &unk_C5F0;
      v27[4] = self;
      [v20 loadURL:v24 body:v26 completion:v27];
    }

    else
    {
      v21 = PHDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_6A40();
      }

      v20 = [(PHSettingsCloudCallingURLController *)self delegate];
      v22 = [(PHSettingsCloudCallingURLController *)self genericErrorAlertController];
      [v20 presentOrUpdateViewController:v22];
    }
  }
}

- (id)_webViewControllerWithType:(int64_t)a3
{
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "_webViewControllerWithType: %ld", &v11, 0xCu);
  }

  v6 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
  if ([v6 provisioningStatus] < 1)
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_6AA8();
    }

    v8 = [(PHSettingsCloudCallingURLController *)self genericErrorAlertController];
  }

  else
  {
    v7 = [[PHSettingsWebViewController alloc] initWithType:a3];
    [(PHSettingsCloudCallingURLController *)self setWebViewController:v7];
    [(PHSettingsCloudCallingURLController *)self loadWebViewController];
    v8 = [[UINavigationController alloc] initWithRootViewController:v7];
  }

  return v8;
}

- (BOOL)shouldEnableCapability
{
  v3 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
  if ([v3 provisioningStatus] == 3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PHSettingsCloudCallingURLController *)self callingCapabilityInfo];
    v4 = [v5 provisioningStatus] == 1;
  }

  return v4;
}

- (PHSettingsCloudCallingURLControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PHSettingsWebViewController)webViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewController);

  return WeakRetained;
}

@end