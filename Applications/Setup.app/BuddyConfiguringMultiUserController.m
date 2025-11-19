@interface BuddyConfiguringMultiUserController
- (BOOL)controllerNeedsToRun;
- (BuddyConfiguringMultiUserController)init;
- (void)_showConfigurationFailedForError:(id)a3;
- (void)provisionDeviceForMultiUserAndSwitchToLoginWindow;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyConfiguringMultiUserController

- (BuddyConfiguringMultiUserController)init
{
  v8 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"MULTI_USER_TIME_IPAD" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyConfiguringMultiUserController;
  location = [(BuddyConfiguringMultiUserController *)&v7 initWithSpinnerText:v4];
  v5 = location;

  objc_storeStrong(&location, 0);
  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = BuddyConfiguringMultiUserController;
  [(BuddyConfiguringMultiUserController *)&v5 viewWillAppear:a3];
  v3 = [(BuddyConfiguringMultiUserController *)v8 navigationItem];
  [v3 setHidesBackButton:1];

  v4 = +[UIApplication sharedApplication];
  [(UIApplication *)v4 setIdleTimerDisabled:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = BuddyConfiguringMultiUserController;
  [(BuddyConfiguringMultiUserController *)&v3 viewDidAppear:a3];
  [(BuddyConfiguringMultiUserController *)v6 provisionDeviceForMultiUserAndSwitchToLoginWindow];
}

- (void)provisionDeviceForMultiUserAndSwitchToLoginWindow
{
  v9 = self;
  v8[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100183464;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)_showConfigurationFailedForError:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10018380C;
  v8 = &unk_10032B838;
  v9 = location[0];
  v10 = v12;
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyConfiguringMultiUserController *)self managedConfiguration];
  v3 = [(MCProfileConnection *)v2 userMode];
  v6 = 0;
  v4 = 0;
  if (v3 == 1)
  {
    v7 = [(BuddyConfiguringMultiUserController *)self managedConfiguration];
    v6 = 1;
    v4 = [(MCProfileConnection *)v7 isEphemeralMultiUser]^ 1;
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

@end