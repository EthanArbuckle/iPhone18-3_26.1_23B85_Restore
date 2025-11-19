@interface BuddyAwaitUserConfigurationViewController
- (BOOL)_reverifyUserConfigurationState;
- (BuddyAwaitUserConfigurationController)awaitUserConfigurationController;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation BuddyAwaitUserConfigurationViewController

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = [(BuddyAwaitUserConfigurationViewController *)self timer];
  [(NSTimer *)v2 invalidate];

  [(BuddyAwaitUserConfigurationViewController *)v5 setTimer:0];
  if (notify_is_valid_token(v5->_token))
  {
    notify_cancel(v5->_token);
  }

  v3.receiver = v5;
  v3.super_class = BuddyAwaitUserConfigurationViewController;
  [(BuddyAwaitUserConfigurationViewController *)&v3 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v38 = self;
  v37 = a2;
  v36 = a3;
  v35.receiver = self;
  v35.super_class = BuddyAwaitUserConfigurationViewController;
  [(BuddyAwaitUserConfigurationViewController *)&v35 viewDidAppear:a3];
  if (![(BuddyAwaitUserConfigurationViewController *)v38 _reverifyUserConfigurationState])
  {
    objc_initWeak(&location, v38);
    v27 = _NSConcreteStackBlock;
    v28 = -1073741824;
    v29 = 0;
    v30 = sub_10009CCCC;
    v31 = &unk_10032AF58;
    objc_copyWeak(&v32, &location);
    v33 = objc_retainBlock(&v27);
    v3 = [DMCUserSettingsChangedNotification UTF8String];
    p_token = &v38->_token;
    v5 = v3;
    v6 = &_dispatch_main_q;
    v7 = &_dispatch_main_q;
    handler = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_10009CD28;
    v24 = &unk_10032BA48;
    v25 = v33;
    LODWORD(p_token) = notify_register_dispatch(v5, p_token, v7, &handler);

    v26 = p_token;
    if (p_token)
    {
      oslog = _BYLoggingFacility();
      v18 = 16;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v8 = oslog;
        v9 = v18;
        sub_10006AA68(buf);
        _os_log_error_impl(&_mh_execute_header, v8, v9, "Failed to register for user settings changed notification!", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v11 = _NSConcreteStackBlock;
      v12 = -1073741824;
      v13 = 0;
      v14 = sub_10009CD60;
      v15 = &unk_10032BA70;
      v16 = v33;
      v10 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:&v11 block:5.0];
      [(BuddyAwaitUserConfigurationViewController *)v38 setTimer:v10];

      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v33, 0);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_reverifyUserConfigurationState
{
  v13 = self;
  oslog[1] = a2;
  v2 = [(BuddyAwaitUserConfigurationViewController *)self awaitUserConfigurationController];
  v3 = [(BuddyAwaitUserConfigurationController *)v2 managedConfiguration];
  v4 = [(MCProfileConnection *)v3 isAwaitingUserConfigured];

  if (v4)
  {
    return 0;
  }

  oslog[0] = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog[0];
    v6 = v11;
    sub_10006AA68(v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "Current user is configured", v10, 2u);
  }

  objc_storeStrong(oslog, 0);
  v7 = [(BuddyAwaitUserConfigurationViewController *)v13 timer];
  [(NSTimer *)v7 invalidate];

  v8 = [(BuddyAwaitUserConfigurationViewController *)v13 awaitUserConfigurationController];
  [(BuddyAwaitUserConfigurationController *)v8 controllerDone];

  return 1;
}

- (BuddyAwaitUserConfigurationController)awaitUserConfigurationController
{
  WeakRetained = objc_loadWeakRetained(&self->_awaitUserConfigurationController);

  return WeakRetained;
}

@end