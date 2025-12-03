@interface BuddySafetySettingsPresenterSession
- (BuddySafetySettingsPresenterSessionDelegate)delegate;
- (void)presentWithNavigationController:(id)controller;
- (void)safetySettingsDidFinishWithResult:(id)result viewControllersToRemove:(id)remove error:(id)error;
@end

@implementation BuddySafetySettingsPresenterSession

- (void)safetySettingsDidFinishWithResult:(id)result viewControllersToRemove:(id)remove error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  v19 = 0;
  objc_storeStrong(&v19, remove);
  v18 = 0;
  objc_storeStrong(&v18, error);
  delegate = [(BuddySafetySettingsPresenterSession *)selfCopy delegate];
  oslog = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100071CBC(buf, delegate);
    _os_log_impl(&_mh_execute_header, oslog, v15, "Safety session presentation session did finish. Forwarding to delegate %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (delegate)
  {
    if (+[NSThread isMainThread])
    {
      [delegate safetySettingsPresenterSessionDidFinishWithViewControllersToRemove:v19];
    }

    else
    {
      v7 = &_dispatch_main_q;
      v8 = _NSConcreteStackBlock;
      v9 = -1073741824;
      v10 = 0;
      v11 = sub_1001BE024;
      v12 = &unk_10032B838;
      v13 = delegate;
      v14 = v19;
      dispatch_async(v7, &v8);

      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
    }
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)presentWithNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Safety session presentation session will present with navigation controller %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  presenter = [(BuddySafetySettingsPresenterSession *)selfCopy presenter];
  context = [(BuddySafetySettingsPresenterSession *)selfCopy context];
  [(AISSafetySettingsFlowPresenter *)presenter presentSafetySettingsWithContext:context navigationController:location[0]];

  objc_storeStrong(location, 0);
}

- (BuddySafetySettingsPresenterSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end