@interface BuddySIMActivationController
- (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)simSetupFlowCompleted:(unint64_t)a3;
- (void)updateSourceProxCardState:(BOOL)a3;
@end

@implementation BuddySIMActivationController

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddySIMActivationController *)self runState];
  v3 = [(BYRunState *)v2 hasCompletedInitialRun];
  v8 = 0;
  v6 = 0;
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v9 = [(BuddySIMActivationController *)self miscState];
    v8 = 1;
    v7 = [(BuddyMiscState *)v9 activationPlanRequest];
    v6 = 1;
    v4 = v7 != 0;
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

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  [(BuddySIMActivationController *)v23 setTelephonyClient:v7];

  objc_initWeak(&from, v23);
  v8 = [(BuddySIMActivationController *)v23 telephonyClient];
  v9 = [(BuddySIMActivationController *)v23 miscState];
  v10 = [(BuddyMiscState *)v9 activationPlanRequest];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_10024B6F8;
  v15 = &unk_10032F7E8;
  objc_copyWeak(v17, &from);
  v16 = location[0];
  [(CoreTelephonyClient *)v8 addPlanWith:v10 completionHandler:&v11];

  objc_storeStrong(&v16, 0);
  objc_destroyWeak(v17);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

- (id)viewController
{
  v2 = [(BuddySIMActivationController *)self setupFlow:a2];
  v3 = [(TSSIMSetupFlow *)v2 rootViewController];

  return v3;
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  v16 = self;
  v15[2] = a2;
  v15[1] = a3;
  v3 = [(BuddySIMActivationController *)self viewController];
  v15[0] = [v3 navigationController];

  v4 = [v15[0] viewControllers];
  v5 = [(BuddySIMActivationController *)v16 viewController];
  v6 = [v4 indexOfObject:v5];

  v14 = v6;
  v7 = [v15[0] viewControllers];
  v8 = v6;
  v9 = [v15[0] viewControllers];
  v18 = v8;
  v17 = ([v9 count] - v14);
  v19 = v8;
  v20 = v17;
  v10 = [NSIndexSet indexSetWithIndexesInRange:v8, v17, v8, v17];
  location = [v7 objectsAtIndexes:v10];

  v11 = [(BuddySIMActivationController *)v16 delegate];
  [(BFFFlowItemDelegate *)v11 removeViewControllersOnNextPush:location];

  v12 = [(BuddySIMActivationController *)v16 delegate];
  [(BFFFlowItemDelegate *)v12 flowItemDone:v16];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v15, 0);
}

- (void)updateSourceProxCardState:(BOOL)a3
{
  v3 = [(BuddySIMActivationController *)self proximitySetupController];
  [(ProximitySetupController *)v3 setSourceProxCardVisibliityForSIMSetupExternalAuthentication:a3];
}

@end