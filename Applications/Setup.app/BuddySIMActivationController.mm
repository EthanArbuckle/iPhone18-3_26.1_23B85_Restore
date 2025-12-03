@interface BuddySIMActivationController
- (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)updateSourceProxCardState:(BOOL)state;
@end

@implementation BuddySIMActivationController

- (BOOL)controllerNeedsToRun
{
  runState = [(BuddySIMActivationController *)self runState];
  hasCompletedInitialRun = [(BYRunState *)runState hasCompletedInitialRun];
  v8 = 0;
  v6 = 0;
  v4 = 0;
  if ((hasCompletedInitialRun & 1) == 0)
  {
    miscState = [(BuddySIMActivationController *)self miscState];
    v8 = 1;
    activationPlanRequest = [(BuddyMiscState *)miscState activationPlanRequest];
    v6 = 1;
    v4 = activationPlanRequest != 0;
  }

  v11 = v4;
  if (v6)
  {
  }

  if (v8)
  {
  }

  return v11;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v21 = _BYLoggingFacility();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v21;
    v4 = v20;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Adding cellular plan...", buf, 2u);
  }

  objc_storeStrong(&v21, 0);
  v5 = [CoreTelephonyClient alloc];
  v6 = &_dispatch_main_q;
  v7 = [v5 initWithQueue:v6];
  [(BuddySIMActivationController *)selfCopy setTelephonyClient:v7];

  objc_initWeak(&from, selfCopy);
  telephonyClient = [(BuddySIMActivationController *)selfCopy telephonyClient];
  miscState = [(BuddySIMActivationController *)selfCopy miscState];
  activationPlanRequest = [(BuddyMiscState *)miscState activationPlanRequest];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10024B6F8;
  v15 = &unk_10032F7E8;
  objc_copyWeak(v17, &from);
  v16 = location[0];
  [(CoreTelephonyClient *)telephonyClient addPlanWith:activationPlanRequest completionHandler:&v11];

  objc_storeStrong(&v16, 0);
  objc_destroyWeak(v17);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (id)viewController
{
  v2 = [(BuddySIMActivationController *)self setupFlow:a2];
  rootViewController = [(TSSIMSetupFlow *)v2 rootViewController];

  return rootViewController;
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  selfCopy = self;
  v15[2] = a2;
  v15[1] = completed;
  viewController = [(BuddySIMActivationController *)self viewController];
  v15[0] = [viewController navigationController];

  viewControllers = [v15[0] viewControllers];
  viewController2 = [(BuddySIMActivationController *)selfCopy viewController];
  v6 = [viewControllers indexOfObject:viewController2];

  v14 = v6;
  viewControllers2 = [v15[0] viewControllers];
  v8 = v6;
  viewControllers3 = [v15[0] viewControllers];
  v18 = v8;
  v17 = ([viewControllers3 count] - v14);
  v19 = v8;
  v20 = v17;
  v10 = [NSIndexSet indexSetWithIndexesInRange:v8, v17, v8, v17];
  location = [viewControllers2 objectsAtIndexes:v10];

  delegate = [(BuddySIMActivationController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate removeViewControllersOnNextPush:location];

  delegate2 = [(BuddySIMActivationController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate2 flowItemDone:selfCopy];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v15, 0);
}

- (void)updateSourceProxCardState:(BOOL)state
{
  proximitySetupController = [(BuddySIMActivationController *)self proximitySetupController];
  [(ProximitySetupController *)proximitySetupController setSourceProxCardVisibliityForSIMSetupExternalAuthentication:state];
}

@end