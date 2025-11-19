@interface BuddyProximityAutomatedDeviceEnrollmentController
- (BuddyProximityAutomatedDeviceEnrollmentController)init;
- (BuddyProximityAutomatedDeviceEnrollmentControllerDelegate)delegate;
- (NSString)deviceClass;
- (void)activateUsingWiFiWithCompletion:(id)a3;
- (void)beginAdvertising;
- (void)configuratorPairingSuccessfulWithViewModel:(id)a3;
- (void)dismissProximityPinCodeWithError:(id)a3;
- (void)displayProximityPinCode:(id)a3;
- (void)displayShutdownUI;
- (void)endAdvertising;
- (void)enrollmentCompleteWithViewModel:(id)a3;
- (void)enrollmentHasStatusUpdateWithViewModel:(id)a3;
- (void)fetchActivationStateWithCompletion:(id)a3;
- (void)pairingEndedByUser;
- (void)shutdownButtonTapped;
@end

@implementation BuddyProximityAutomatedDeviceEnrollmentController

- (BuddyProximityAutomatedDeviceEnrollmentController)init
{
  v9 = a2;
  location = 0;
  v8.receiver = self;
  v8.super_class = BuddyProximityAutomatedDeviceEnrollmentController;
  location = [(BuddyProximityAutomatedDeviceEnrollmentController *)&v8 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = objc_opt_new();
    v3 = *(location + 4);
    *(location + 4) = v2;

    [*(location + 4) setDelegate:location];
    v4 = +[BuddyNonInteractiveDeviceActivator activatorUsingWiFi];
    v5 = *(location + 5);
    *(location + 5) = v4;
  }

  v6 = location;
  objc_storeStrong(&location, 0);
  return v6;
}

- (void)beginAdvertising
{
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentController *)self daemonClient:a2];
  [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)v2 beginAdvertisingProximityAutomatedDeviceEnrollment];
}

- (void)endAdvertising
{
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentController *)self daemonClient:a2];
  [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)v2 endAdvertisingProximityAutomatedDeviceEnrollment];
}

- (void)shutdownButtonTapped
{
  v2 = [(BuddyProximityAutomatedDeviceEnrollmentController *)self daemonClient:a2];
  [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)v2 shutdown];
}

- (void)dismissProximityPinCodeWithError:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F0FA0;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)displayProximityPinCode:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F1248;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)configuratorPairingSuccessfulWithViewModel:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F14F0;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)enrollmentHasStatusUpdateWithViewModel:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F17A4;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchActivationStateWithCompletion:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(BuddyProximityAutomatedDeviceEnrollmentController *)v6 wifiActivator];
  v3[2](v3, [(BuddyNonInteractiveDeviceActivator *)v4 isActivated]);

  objc_storeStrong(location, 0);
}

- (void)activateUsingWiFiWithCompletion:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityAutomatedDeviceEnrollmentController *)v11 wifiActivator];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F1AB8;
  v8 = &unk_10032B460;
  v9 = location[0];
  [(BuddyNonInteractiveDeviceActivator *)v3 activateWithCompletion:&v4];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)enrollmentCompleteWithViewModel:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyProximityAutomatedDeviceEnrollmentController *)v11 setCompletionViewModel:location[0]];
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F1C18;
  v8 = &unk_10032B0D0;
  v9 = v11;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)displayShutdownUI
{
  v9 = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001F1E78;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (NSString)deviceClass
{
  v2 = MGCopyAnswer();

  return v2;
}

- (void)pairingEndedByUser
{
  v6 = self;
  aSelector = a2;
  oslog = _BYLoggingFacility();
  v3 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    location = NSStringFromSelector(aSelector);
    sub_100071CBC(buf, location);
    _os_log_impl(&_mh_execute_header, oslog, v3, "%{public}@", buf, 0xCu);

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyProximityAutomatedDeviceEnrollmentController *)v6 endAdvertising];
}

- (BuddyProximityAutomatedDeviceEnrollmentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end