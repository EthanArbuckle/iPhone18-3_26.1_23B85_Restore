@interface ACUIRemoteSetupViewController
- (void)controller:(id)controller didFinishSettingUpAccount:(id)account;
@end

@implementation ACUIRemoteSetupViewController

- (void)controller:(id)controller didFinishSettingUpAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v26 = 0;
  objc_storeStrong(&v26, account);
  v25 = _ACUILogSystem();
  v24 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    username = [v26 username];
    sub_92B0(v30, "[ACUIRemoteSetupViewController controller:didFinishSettingUpAccount:]", 23, v11, username);
    _os_log_debug_impl(&dword_0, v25, v24, "%s (%d) Controller %@ reports being finished with setting up account %@.", v30, 0x26u);
  }

  objc_storeStrong(&v25, 0);
  v23 = 0;
  if (!selfCopy->_didAttemptDataclassSetup)
  {
    selfCopy->_didAttemptDataclassSetup = 1;
    topViewController = [(ACUIRemoteSetupViewController *)selfCopy topViewController];
    v7 = objc_opt_class();
    specifier = [topViewController specifier];
    name = [specifier name];
    v21 = [ACUISetupViewController _specifierForDataclassEditControllerClass:"_specifierForDataclassEditControllerClass:withName:account:" withName:v7 account:?];

    specifier2 = [location[0] specifier];
    v20 = [specifier2 propertyForKey:ACUIAddAccountDataSourceKey];

    if (v20)
    {
      v6 = v20;
      v5 = v26;
      oslog[1] = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_9330;
      v18 = &unk_1C4C0;
      v19 = selfCopy;
      [v6 accountControllerCompletedWithAccount:v5 action:1 data:? specifier:? viewController:? completion:?];
      objc_storeStrong(&v19, 0);
    }

    v23 = 1;
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&topViewController, 0);
  }

  oslog[0] = _ACUILogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    if (v23)
    {
      v4 = @"NO";
    }

    else
    {
      v4 = @"YES";
    }

    sub_936C(v29, "[ACUIRemoteSetupViewController controller:didFinishSettingUpAccount:]", 47, v4);
    _os_log_debug_impl(&dword_0, oslog[0], OS_LOG_TYPE_DEBUG, "%s (%d) Deciding wether to dismiss self: %@", v29, 0x1Cu);
  }

  objc_storeStrong(oslog, 0);
  if ((v23 & 1) == 0)
  {
    [(ACUIRemoteSetupViewController *)selfCopy _dismissAndNotifyParent];
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

@end