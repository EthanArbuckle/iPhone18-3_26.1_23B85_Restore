@interface BuddySIMController
- (BuddySIMController)init;
- (id)viewController;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)updateSourceProxCardState:(BOOL)state;
@end

@implementation BuddySIMController

- (BuddySIMController)init
{
  v9 = a2;
  location = 0;
  v8.receiver = self;
  v8.super_class = BuddySIMController;
  v2 = [(BuddySIMController *)&v8 init];
  location = v2;
  objc_storeStrong(&location, v2);
  if (v2)
  {
    v3 = objc_alloc_init(sub_1001A7260());
    [location setSetupFlow:v3];

    v4 = location;
    setupFlow = [location setupFlow];
    [setupFlow setDelegate:v4];
  }

  v6 = location;
  objc_storeStrong(&location, 0);
  return v6;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1001A7584;
  v15 = &unk_10032C630;
  v16 = location[0];
  v17 = objc_retainBlock(&v11);
  v3 = sub_1001A7260();
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001A7604;
  v8 = &unk_10032E2E8;
  v10 = v17;
  v9 = selfCopy;
  [v3 needsToRun:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (id)viewController
{
  v2 = [(BuddySIMController *)self setupFlow:a2];
  rootViewController = [(TSSetupAssistantSIMSetupFlow *)v2 rootViewController];

  return rootViewController;
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, BYSetupAssistantDidCompleteSIMSetupNotification, 0, 0, 1u);
  delegate = [(BuddySIMController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self];
}

- (void)updateSourceProxCardState:(BOOL)state
{
  proximitySetupController = [(BuddySIMController *)self proximitySetupController];
  [(ProximitySetupController *)proximitySetupController setSourceProxCardVisibliityForSIMSetupExternalAuthentication:state];
}

@end