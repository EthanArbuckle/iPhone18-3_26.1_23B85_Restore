@interface BuddyProximityAutomatedDeviceEnrollmentController
- (BuddyProximityAutomatedDeviceEnrollmentController)init;
- (BuddyProximityAutomatedDeviceEnrollmentControllerDelegate)delegate;
- (NSString)deviceClass;
- (void)activateUsingWiFiWithCompletion:(id)completion;
- (void)beginAdvertising;
- (void)configuratorPairingSuccessfulWithViewModel:(id)model;
- (void)dismissProximityPinCodeWithError:(id)error;
- (void)displayProximityPinCode:(id)code;
- (void)displayShutdownUI;
- (void)endAdvertising;
- (void)enrollmentCompleteWithViewModel:(id)model;
- (void)enrollmentHasStatusUpdateWithViewModel:(id)model;
- (void)fetchActivationStateWithCompletion:(id)completion;
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

- (void)dismissProximityPinCodeWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F0FA0;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)displayProximityPinCode:(id)code
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F1248;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)configuratorPairingSuccessfulWithViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F14F0;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)enrollmentHasStatusUpdateWithViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F17A4;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchActivationStateWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = location[0];
  wifiActivator = [(BuddyProximityAutomatedDeviceEnrollmentController *)selfCopy wifiActivator];
  v3[2](v3, [(BuddyNonInteractiveDeviceActivator *)wifiActivator isActivated]);

  objc_storeStrong(location, 0);
}

- (void)activateUsingWiFiWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  wifiActivator = [(BuddyProximityAutomatedDeviceEnrollmentController *)selfCopy wifiActivator];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F1AB8;
  v8 = &unk_10032B460;
  v9 = location[0];
  [(BuddyNonInteractiveDeviceActivator *)wifiActivator activateWithCompletion:&v4];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)enrollmentCompleteWithViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  [(BuddyProximityAutomatedDeviceEnrollmentController *)selfCopy setCompletionViewModel:location[0]];
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001F1C18;
  v8 = &unk_10032B0D0;
  v9 = selfCopy;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)displayShutdownUI
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001F1E78;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
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
  selfCopy = self;
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
  [(BuddyProximityAutomatedDeviceEnrollmentController *)selfCopy endAdvertising];
}

- (BuddyProximityAutomatedDeviceEnrollmentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end