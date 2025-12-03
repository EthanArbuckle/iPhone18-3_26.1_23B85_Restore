@interface BuddyProximityApplySettingsController
- (BOOL)addWirelessNetworks;
- (BuddyProximityApplySettingsController)init;
- (void)endProximityIfApplicable;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)waitForWirelessConnection:(id)connection;
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
    navigationItem = [location navigationItem];
    [navigationItem setTitle:&stru_10032F900];

    navigationItem2 = [location navigationItem];
    [navigationItem2 setHidesBackButton:1 animated:0];
  }

  v8 = location;
  objc_storeStrong(v11, 0);
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v12 = a2;
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = BuddyProximityApplySettingsController;
  [(BuddyProximityApplySettingsController *)&v10 viewDidAppear:appear];
  v3 = dispatch_get_global_queue(0, 0);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10009F8CC;
  v8 = &unk_10032B0D0;
  v9 = selfCopy;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
}

- (BOOL)addWirelessNetworks
{
  v21[2] = self;
  v21[1] = a2;
  proximitySetupController = [(BuddyProximityApplySettingsController *)self proximitySetupController];
  v21[0] = [(ProximitySetupController *)proximitySetupController information];

  v20 = WiFiManagerClientCreate();
  v19 = 0;
  if (v20)
  {
    oslog = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      networks = [v21[0] networks];
      sub_100077E48(buf, [networks count]);
      _os_log_impl(&_mh_execute_header, oslog, v17, "Adding auto-join information for %llu Wi-Fi networks...", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    for (i = 0; ; ++i)
    {
      v4 = i;
      networks2 = [v21[0] networks];
      v6 = [networks2 count];

      if (v4 >= v6)
      {
        break;
      }

      networks3 = [v21[0] networks];
      v15 = [networks3 objectAtIndexedSubscript:i];

      networkPasswords = [v21[0] networkPasswords];
      location = [networkPasswords objectAtIndexedSubscript:i];

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

- (void)waitForWirelessConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
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
  v9 = selfCopy;
  v10 = location[0];
  [(BYNetworkMonitor *)v3 withMinimumNetworkType:1 timeout:&v4 runBlock:15.0];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)endProximityIfApplicable
{
  proximitySetupController = [(BuddyProximityApplySettingsController *)self proximitySetupController];
  v3 = ![(ProximitySetupController *)proximitySetupController hasConnection];

  if ((v3 & 1) == 0)
  {
    proximitySetupController2 = [(BuddyProximityApplySettingsController *)self proximitySetupController];
    information = [(ProximitySetupController *)proximitySetupController2 information];
    appleID = [(SASProximityInformation *)information appleID];
    v7 = appleID != 0;

    v18 = v7;
    proximitySetupController3 = [(BuddyProximityApplySettingsController *)self proximitySetupController];
    information2 = [(ProximitySetupController *)proximitySetupController3 information];
    hasTransferrableTelephonyPlan = [(SASProximityInformation *)information2 hasTransferrableTelephonyPlan];
    bOOLValue = [hasTransferrableTelephonyPlan BOOLValue];

    v17 = bOOLValue & 1;
    proximitySetupController4 = [(BuddyProximityApplySettingsController *)self proximitySetupController];
    information3 = [(ProximitySetupController *)proximitySetupController4 information];
    supportsDeviceToDeviceMigration = [(SASProximityInformation *)information3 supportsDeviceToDeviceMigration];
    bOOLValue2 = [supportsDeviceToDeviceMigration BOOLValue];

    if (!v18 && (v17 & 1) == 0 && (bOOLValue2 & 1) == 0)
    {
      proximitySetupController5 = [(BuddyProximityApplySettingsController *)self proximitySetupController];
      [(ProximitySetupController *)proximitySetupController5 setupFinished];
    }
  }
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  proximitySetupController = [(BuddyProximityApplySettingsController *)selfCopy proximitySetupController];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000A0570;
  v8 = &unk_10032BB88;
  v9 = selfCopy;
  v10 = location[0];
  [(ProximitySetupController *)proximitySetupController waitForIntent:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end