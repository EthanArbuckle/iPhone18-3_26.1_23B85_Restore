@interface BuddyProximityApplySettingsController
- (BOOL)addWirelessNetworks;
- (BuddyProximityApplySettingsController)init;
- (void)endProximityIfApplicable;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)waitForWirelessConnection:(id)a3;
@end

@implementation BuddyProximityApplySettingsController

- (BuddyProximityApplySettingsController)init
{
  location = self;
  v11[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROXIMITY_SETUP_SETTING_UP"];
  v11[0] = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];

  v4 = location;
  location = 0;
  v10.receiver = v4;
  v10.super_class = BuddyProximityApplySettingsController;
  v5 = [(BuddyProximityApplySettingsController *)&v10 initWithSpinnerText:v11[0]];
  location = v5;
  objc_storeStrong(&location, v5);
  if (v5)
  {
    v6 = [location navigationItem];
    [v6 setTitle:&stru_10032F900];

    v7 = [location navigationItem];
    [v7 setHidesBackButton:1 animated:0];
  }

  v8 = location;
  objc_storeStrong(v11, 0);
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)viewDidAppear:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10.receiver = self;
  v10.super_class = BuddyProximityApplySettingsController;
  [(BuddyProximityApplySettingsController *)&v10 viewDidAppear:a3];
  v3 = dispatch_get_global_queue(0, 0);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10009F8CC;
  v8 = &unk_10032B0D0;
  v9 = v13;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
}

- (BOOL)addWirelessNetworks
{
  v21[2] = self;
  v21[1] = a2;
  v2 = [(BuddyProximityApplySettingsController *)self proximitySetupController];
  v21[0] = [(ProximitySetupController *)v2 information];

  v20 = WiFiManagerClientCreate();
  v19 = 0;
  if (v20)
  {
    oslog = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v21[0] networks];
      sub_100077E48(buf, [v3 count]);
      _os_log_impl(&_mh_execute_header, oslog, v17, "Adding auto-join information for %llu Wi-Fi networks...", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    for (i = 0; ; ++i)
    {
      v4 = i;
      v5 = [v21[0] networks];
      v6 = [v5 count];

      if (v4 >= v6)
      {
        break;
      }

      v7 = [v21[0] networks];
      v15 = [v7 objectAtIndexedSubscript:i];

      v8 = [v21[0] networkPasswords];
      location = [v8 objectAtIndexedSubscript:i];

      cf = WiFiNetworkCreate();
      v9 = location;
      v10 = +[NSNull null];
      LODWORD(v9) = [v9 isEqual:v10] & 1;

      if (!v9)
      {
        WiFiNetworkSetPassword();
      }

      WiFiManagerClientAddNetwork();
      CFRelease(cf);
      v19 = 1;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v15, 0);
    }

    CFRelease(v20);
  }

  v11 = v19;
  objc_storeStrong(v21, 0);
  return v11 & 1;
}

- (void)waitForWirelessConnection:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, 15);
    _os_log_impl(&_mh_execute_header, oslog, v11, "Proximity added Wi-Fi networks, waiting %d seconds for one to be joined...", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = +[BYNetworkMonitor sharedInstance];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000A012C;
  v8 = &unk_10032B020;
  v9 = v14;
  v10 = location[0];
  [(BYNetworkMonitor *)v3 withMinimumNetworkType:1 timeout:&v4 runBlock:15.0];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)endProximityIfApplicable
{
  v2 = [(BuddyProximityApplySettingsController *)self proximitySetupController];
  v3 = ![(ProximitySetupController *)v2 hasConnection];

  if ((v3 & 1) == 0)
  {
    v4 = [(BuddyProximityApplySettingsController *)self proximitySetupController];
    v5 = [(ProximitySetupController *)v4 information];
    v6 = [(SASProximityInformation *)v5 appleID];
    v7 = v6 != 0;

    v18 = v7;
    v8 = [(BuddyProximityApplySettingsController *)self proximitySetupController];
    v9 = [(ProximitySetupController *)v8 information];
    v10 = [(SASProximityInformation *)v9 hasTransferrableTelephonyPlan];
    v11 = [v10 BOOLValue];

    v17 = v11 & 1;
    v12 = [(BuddyProximityApplySettingsController *)self proximitySetupController];
    v13 = [(ProximitySetupController *)v12 information];
    v14 = [(SASProximityInformation *)v13 supportsDeviceToDeviceMigration];
    v15 = [v14 BOOLValue];

    if (!v18 && (v17 & 1) == 0 && (v15 & 1) == 0)
    {
      v16 = [(BuddyProximityApplySettingsController *)self proximitySetupController];
      [(ProximitySetupController *)v16 setupFinished];
    }
  }
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityApplySettingsController *)v12 proximitySetupController];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000A0570;
  v8 = &unk_10032BB88;
  v9 = v12;
  v10 = location[0];
  [(ProximitySetupController *)v3 waitForIntent:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end