@interface BuddySafetySettingsPresenterSession
- (BuddySafetySettingsPresenterSessionDelegate)delegate;
- (void)presentWithNavigationController:(id)controller;
- (void)safetySettingsDidFinishWithResult:(id)result viewControllersToRemove:(id)remove error:(id)error;
@end

@implementation BuddySafetySettingsPresenterSession

- (void)safetySettingsDidFinishWithResult:(id)result viewControllersToRemove:(id)remove error:(id)error
{
  removeCopy = remove;
  delegate = [(BuddySafetySettingsPresenterSession *)self delegate];
  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = delegate;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Safety session presentation session did finish. Forwarding to delegate %{public}@", buf, 0xCu);
  }

  if (delegate)
  {
    if (+[NSThread isMainThread])
    {
      [delegate safetySettingsPresenterSessionDidFinishWithViewControllersToRemove:removeCopy];
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_A38C;
      v9[3] = &unk_28C00;
      v10 = delegate;
      v11 = removeCopy;
      dispatch_async(&_dispatch_main_q, v9);
    }
  }
}

- (void)presentWithNavigationController:(id)controller
{
  controllerCopy = controller;
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = controllerCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Safety session presentation session will present with navigation controller %@", &v8, 0xCu);
  }

  presenter = [(BuddySafetySettingsPresenterSession *)self presenter];
  context = [(BuddySafetySettingsPresenterSession *)self context];
  [presenter presentSafetySettingsWithContext:context navigationController:controllerCopy];
}

- (BuddySafetySettingsPresenterSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end