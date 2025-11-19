@interface PHScreenTimeHostViewController
- (PHScreenTimeHostViewController)initWithRequest:(id)a3 delegate:(id)a4;
- (PHScreenTimeHostViewControllerDelegate)delegate;
- (void)dismissAlert;
- (void)lockoutViewControllerDidFinishDismissing:(id)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PHScreenTimeHostViewController

- (PHScreenTimeHostViewController)initWithRequest:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = PHScreenTimeHostViewController;
  v8 = [(PHScreenTimeHostViewController *)&v25 init];
  if (v8)
  {
    v9 = [v6 bundleIdentifier];
    if ([v9 length])
    {
      v10 = [CNContactStoreConfiguration tu_contactStoreConfigurationForBundleIdentifier:v9];
      v11 = [[CNContactStore alloc] initWithConfiguration:v10];
      objc_storeWeak(&v8->_delegate, v7);
      v12 = [v6 sanitizedHandles];
      v13 = [v12 allObjects];
      v14 = [v6 contactNamesByHandleWithContactsDataSource:v11];
      v15 = [STLockoutViewController lockoutViewControllerWithBundleIdentifier:v9 contactsHandles:v13 contactNameByHandle:v14];
      lockoutViewController = v8->_lockoutViewController;
      v8->_lockoutViewController = v15;

      [(STLockoutViewController *)v8->_lockoutViewController setViewControllerDelegate:v8];
      [(STLockoutViewController *)v8->_lockoutViewController setOkButtonAction:1];
      v17 = [(STLockoutViewController *)v8->_lockoutViewController view];
      [v17 setAutoresizingMask:18];

      v18 = [(PHScreenTimeHostViewController *)v8 lockoutViewController];
      [v18 willMoveToParentViewController:v8];

      v19 = [(PHScreenTimeHostViewController *)v8 lockoutViewController];
      [(PHScreenTimeHostViewController *)v8 addChildViewController:v19];

      v20 = [(PHScreenTimeHostViewController *)v8 view];
      v21 = [(PHScreenTimeHostViewController *)v8 lockoutViewController];
      v22 = [v21 view];
      [v20 addSubview:v22];

      v23 = [(PHScreenTimeHostViewController *)v8 lockoutViewController];
      [v23 didMoveToParentViewController:v8];
    }

    else
    {
      v10 = sub_100004F84();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1002545D8(v6, v10);
      }
    }
  }

  return v8;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHScreenTimeHostViewController;
  [(PHScreenTimeHostViewController *)&v5 viewWillDisappear:a3];
  if ([(PHScreenTimeHostViewController *)self isBeingDismissed])
  {
    v4 = [(PHScreenTimeHostViewController *)self delegate];
    [v4 didDismissAlertFromHostViewController];
  }
}

- (void)lockoutViewControllerDidFinishDismissing:(id)a3
{
  v3 = [(PHScreenTimeHostViewController *)self delegate];
  [v3 didDismissAlertFromHostViewController];
}

- (void)dismissAlert
{
  v2 = [(PHScreenTimeHostViewController *)self lockoutViewController];
  [v2 dismissViewControllerAnimated:1 completion:&stru_100357280];
}

- (PHScreenTimeHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end