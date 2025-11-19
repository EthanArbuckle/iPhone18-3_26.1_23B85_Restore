@interface BuddySafetySettingsPresenterSession
- (BuddySafetySettingsPresenterSessionDelegate)delegate;
- (void)presentWithNavigationController:(id)a3;
- (void)safetySettingsDidFinishWithResult:(id)a3 viewControllersToRemove:(id)a4 error:(id)a5;
@end

@implementation BuddySafetySettingsPresenterSession

- (void)safetySettingsDidFinishWithResult:(id)a3 viewControllersToRemove:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = [(BuddySafetySettingsPresenterSession *)self delegate];
  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Safety session presentation session did finish. Forwarding to delegate %{public}@", buf, 0xCu);
  }

  if (v7)
  {
    if (+[NSThread isMainThread])
    {
      [v7 safetySettingsPresenterSessionDidFinishWithViewControllersToRemove:v6];
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_A38C;
      v9[3] = &unk_28C00;
      v10 = v7;
      v11 = v6;
      dispatch_async(&_dispatch_main_q, v9);
    }
  }
}

- (void)presentWithNavigationController:(id)a3
{
  v4 = a3;
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Safety session presentation session will present with navigation controller %@", &v8, 0xCu);
  }

  v6 = [(BuddySafetySettingsPresenterSession *)self presenter];
  v7 = [(BuddySafetySettingsPresenterSession *)self context];
  [v6 presentSafetySettingsWithContext:v7 navigationController:v4];
}

- (BuddySafetySettingsPresenterSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end