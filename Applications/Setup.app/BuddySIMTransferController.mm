@interface BuddySIMTransferController
- (id)viewController;
- (void)_endProximityIfApplicable;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)updateSourceProxCardState:(BOOL)state;
@end

@implementation BuddySIMTransferController

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  proximitySetupController = [(BuddySIMTransferController *)selfCopy proximitySetupController];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001C9DC8;
  v8 = &unk_10032BB88;
  v9 = selfCopy;
  v10 = location[0];
  [(ProximitySetupController *)proximitySetupController waitForIntent:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_endProximityIfApplicable
{
  selfCopy = self;
  v8[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001CA9B8;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (id)viewController
{
  v2 = [(BuddySIMTransferController *)self setupFlow:a2];
  rootViewController = [(TSSIMSetupFlow *)v2 rootViewController];

  return rootViewController;
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  [(BuddySIMTransferController *)self _endProximityIfApplicable];
  delegate = [(BuddySIMTransferController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self];
}

- (void)updateSourceProxCardState:(BOOL)state
{
  proximitySetupController = [(BuddySIMTransferController *)self proximitySetupController];
  [(ProximitySetupController *)proximitySetupController setSourceProxCardVisibliityForSIMSetupExternalAuthentication:state];
}

@end