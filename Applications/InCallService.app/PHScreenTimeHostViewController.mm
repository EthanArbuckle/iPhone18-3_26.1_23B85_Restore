@interface PHScreenTimeHostViewController
- (PHScreenTimeHostViewController)initWithRequest:(id)request delegate:(id)delegate;
- (PHScreenTimeHostViewControllerDelegate)delegate;
- (void)dismissAlert;
- (void)lockoutViewControllerDidFinishDismissing:(id)dismissing;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PHScreenTimeHostViewController

- (PHScreenTimeHostViewController)initWithRequest:(id)request delegate:(id)delegate
{
  requestCopy = request;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = PHScreenTimeHostViewController;
  v8 = [(PHScreenTimeHostViewController *)&v25 init];
  if (v8)
  {
    bundleIdentifier = [requestCopy bundleIdentifier];
    if ([bundleIdentifier length])
    {
      v10 = [CNContactStoreConfiguration tu_contactStoreConfigurationForBundleIdentifier:bundleIdentifier];
      v11 = [[CNContactStore alloc] initWithConfiguration:v10];
      objc_storeWeak(&v8->_delegate, delegateCopy);
      sanitizedHandles = [requestCopy sanitizedHandles];
      allObjects = [sanitizedHandles allObjects];
      v14 = [requestCopy contactNamesByHandleWithContactsDataSource:v11];
      v15 = [STLockoutViewController lockoutViewControllerWithBundleIdentifier:bundleIdentifier contactsHandles:allObjects contactNameByHandle:v14];
      lockoutViewController = v8->_lockoutViewController;
      v8->_lockoutViewController = v15;

      [(STLockoutViewController *)v8->_lockoutViewController setViewControllerDelegate:v8];
      [(STLockoutViewController *)v8->_lockoutViewController setOkButtonAction:1];
      view = [(STLockoutViewController *)v8->_lockoutViewController view];
      [view setAutoresizingMask:18];

      lockoutViewController = [(PHScreenTimeHostViewController *)v8 lockoutViewController];
      [lockoutViewController willMoveToParentViewController:v8];

      lockoutViewController2 = [(PHScreenTimeHostViewController *)v8 lockoutViewController];
      [(PHScreenTimeHostViewController *)v8 addChildViewController:lockoutViewController2];

      view2 = [(PHScreenTimeHostViewController *)v8 view];
      lockoutViewController3 = [(PHScreenTimeHostViewController *)v8 lockoutViewController];
      view3 = [lockoutViewController3 view];
      [view2 addSubview:view3];

      lockoutViewController4 = [(PHScreenTimeHostViewController *)v8 lockoutViewController];
      [lockoutViewController4 didMoveToParentViewController:v8];
    }

    else
    {
      v10 = sub_100004F84();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1002545D8(requestCopy, v10);
      }
    }
  }

  return v8;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHScreenTimeHostViewController;
  [(PHScreenTimeHostViewController *)&v5 viewWillDisappear:disappear];
  if ([(PHScreenTimeHostViewController *)self isBeingDismissed])
  {
    delegate = [(PHScreenTimeHostViewController *)self delegate];
    [delegate didDismissAlertFromHostViewController];
  }
}

- (void)lockoutViewControllerDidFinishDismissing:(id)dismissing
{
  delegate = [(PHScreenTimeHostViewController *)self delegate];
  [delegate didDismissAlertFromHostViewController];
}

- (void)dismissAlert
{
  lockoutViewController = [(PHScreenTimeHostViewController *)self lockoutViewController];
  [lockoutViewController dismissViewControllerAnimated:1 completion:&stru_100357280];
}

- (PHScreenTimeHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end