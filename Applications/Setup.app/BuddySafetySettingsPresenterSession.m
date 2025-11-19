@interface BuddySafetySettingsPresenterSession
- (BuddySafetySettingsPresenterSessionDelegate)delegate;
- (void)presentWithNavigationController:(id)a3;
- (void)safetySettingsDidFinishWithResult:(id)a3 viewControllersToRemove:(id)a4 error:(id)a5;
@end

@implementation BuddySafetySettingsPresenterSession

- (void)safetySettingsDidFinishWithResult:(id)a3 viewControllersToRemove:(id)a4 error:(id)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = [(BuddySafetySettingsPresenterSession *)v21 delegate];
  oslog = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(buf, v17);
    _os_log_impl(&_mh_execute_header, oslog, v15, "Safety session presentation session did finish. Forwarding to delegate %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (v17)
  {
    if (+[NSThread isMainThread])
    {
      [v17 safetySettingsPresenterSessionDidFinishWithViewControllersToRemove:v19];
    }

    else
    {
      v7 = &_dispatch_main_q;
      v8 = _NSConcreteStackBlock;
      v9 = -1073741824;
      v10 = 0;
      v11 = sub_1001BE024;
      v12 = &unk_10032B838;
      v13 = v17;
      v14 = v19;
      dispatch_async(v7, &v8);

      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
    }
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)presentWithNavigationController:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Safety session presentation session will present with navigation controller %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [(BuddySafetySettingsPresenterSession *)v7 presenter];
  v4 = [(BuddySafetySettingsPresenterSession *)v7 context];
  [(AISSafetySettingsFlowPresenter *)v3 presentSafetySettingsWithContext:v4 navigationController:location[0]];

  objc_storeStrong(location, 0);
}

- (BuddySafetySettingsPresenterSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end