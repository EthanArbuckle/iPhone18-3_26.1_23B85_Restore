@interface BuddyMigrationReconnectController
- (BuddyMigrationReconnectController)init;
- (void)_cancelTapped:(id)a3;
- (void)_startMigration;
- (void)_startMigrationIfPossible;
- (void)exitMigrationReconnectController;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation BuddyMigrationReconnectController

- (BuddyMigrationReconnectController)init
{
  v13 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"RECONNECTING" value:&stru_10032F900 table:@"Migration"];
  location = 0;
  v12.receiver = self;
  v12.super_class = BuddyMigrationReconnectController;
  location = [(BuddyMigrationReconnectController *)&v12 initWithSpinnerText:v4];
  objc_storeStrong(&location, location);

  if (location)
  {
    v5 = [location navigationItem];
    [v5 setTitle:&stru_10032F900];

    v6 = [location navigationItem];
    [v6 setHidesBackButton:1 animated:0];

    v7 = [location navigationItem];
    v8 = [UIBarButtonItem alloc];
    v9 = [v8 initWithBarButtonSystemItem:1 target:location action:"_cancelTapped:"];
    [v7 setLeftBarButtonItem:v9 animated:0];

    [location setDidReconnect:0];
    [location setUserDidCancelReconnect:0];
  }

  v10 = location;
  objc_storeStrong(&location, 0);
  return v10;
}

- (void)viewDidAppear:(BOOL)a3
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16.receiver = self;
  v16.super_class = BuddyMigrationReconnectController;
  [(BuddyMigrationReconnectController *)&v16 viewDidAppear:a3];
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Waiting for connection...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(BuddyMigrationReconnectController *)v19 proximitySetupController];
  [(ProximitySetupController *)v5 startReconnecting];

  v6 = [(BuddyMigrationReconnectController *)v19 proximitySetupController];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100147F1C;
  v11 = &unk_10032B2E0;
  v12 = v19;
  [(ProximitySetupController *)v6 waitForSessionReconnection:&v7];

  objc_storeStrong(&v12, 0);
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMigrationReconnectController *)v11 proximitySetupController];
  v4 = [(ProximitySetupController *)v3 hasConnection];

  if (v4)
  {
    oslog = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v8;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Already connected, starting migration...", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyMigrationReconnectController *)v11 _startMigration];
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0);
    }
  }

  else if (location[0])
  {
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(location, 0);
}

- (void)_startMigrationIfPossible
{
  v4 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100075A38(buf, [(BuddyMigrationReconnectController *)v4 didReconnect], [(BuddyMigrationReconnectController *)v4 userDidCancelReconnect]);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Considering starting migration - did reconnect %d, user did cancel %d", buf, 0xEu);
  }

  objc_storeStrong(oslog, 0);
  if ([(BuddyMigrationReconnectController *)v4 didReconnect]&& ![(BuddyMigrationReconnectController *)v4 userDidCancelReconnect])
  {
    [(BuddyMigrationReconnectController *)v4 _startMigration];
    v2 = [(BuddyMigrationReconnectController *)v4 delegate];
    [v2 flowItemDone:v4];
  }
}

- (void)_startMigration
{
  v2 = [(BuddyMigrationReconnectController *)self prepareForDeviceMigrationBlock];
  v2[2](v2, 1);

  v3 = [(BuddyMigrationReconnectController *)self startDeviceMigrationBlock];
  v3[2](v3);
}

- (void)_cancelTapped:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyMigrationReconnectController *)v15 setUserDidCancelReconnect:1];
  v3 = [(BuddyMigrationReconnectController *)v15 doesRestartFlowCauseEraseBlock];
  v4 = v3[2](v3);

  v13 = v4 & 1;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1001484C8;
  v9 = &unk_10032D920;
  v10 = v15;
  v11 = v4 & 1;
  v12 = [BuddyMigrationCancelAlertController alertControllerForTargetWithNeedsErase:v4 & 1 completion:&v5];
  [(BuddyMigrationReconnectController *)v15 presentViewController:v12 animated:1 completion:0];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)exitMigrationReconnectController
{
  v2 = [(BuddyMigrationReconnectController *)self delegate:a2];
  v3 = [v2 popToBuddyControllerWithClass:objc_opt_class() animated:1];
}

@end