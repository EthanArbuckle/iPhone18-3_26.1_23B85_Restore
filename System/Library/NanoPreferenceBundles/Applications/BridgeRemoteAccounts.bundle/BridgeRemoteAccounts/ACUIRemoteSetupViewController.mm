@interface ACUIRemoteSetupViewController
- (void)controller:(id)a3 didFinishSettingUpAccount:(id)a4;
@end

@implementation ACUIRemoteSetupViewController

- (void)controller:(id)a3 didFinishSettingUpAccount:(id)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = _ACUILogSystem();
  v24 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = [v26 username];
    sub_92B0(v30, "[ACUIRemoteSetupViewController controller:didFinishSettingUpAccount:]", 23, v11, v12);
    _os_log_debug_impl(&dword_0, v25, v24, "%s (%d) Controller %@ reports being finished with setting up account %@.", v30, 0x26u);
  }

  objc_storeStrong(&v25, 0);
  v23 = 0;
  if (!v28->_didAttemptDataclassSetup)
  {
    v28->_didAttemptDataclassSetup = 1;
    v22 = [(ACUIRemoteSetupViewController *)v28 topViewController];
    v7 = objc_opt_class();
    v9 = [v22 specifier];
    v8 = [v9 name];
    v21 = [ACUISetupViewController _specifierForDataclassEditControllerClass:"_specifierForDataclassEditControllerClass:withName:account:" withName:v7 account:?];

    v10 = [location[0] specifier];
    v20 = [v10 propertyForKey:ACUIAddAccountDataSourceKey];

    if (v20)
    {
      v6 = v20;
      v5 = v26;
      oslog[1] = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_9330;
      v18 = &unk_1C4C0;
      v19 = v28;
      [v6 accountControllerCompletedWithAccount:v5 action:1 data:? specifier:? viewController:? completion:?];
      objc_storeStrong(&v19, 0);
    }

    v23 = 1;
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
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
    [(ACUIRemoteSetupViewController *)v28 _dismissAndNotifyParent];
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

@end