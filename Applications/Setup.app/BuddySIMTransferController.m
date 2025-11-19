@interface BuddySIMTransferController
- (id)viewController;
- (void)_endProximityIfApplicable;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)simSetupFlowCompleted:(unint64_t)a3;
- (void)updateSourceProxCardState:(BOOL)a3;
@end

@implementation BuddySIMTransferController

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddySIMTransferController *)v12 proximitySetupController];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001C9DC8;
  v8 = &unk_10032BB88;
  v9 = v12;
  v10 = location[0];
  [(ProximitySetupController *)v3 waitForIntent:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_endProximityIfApplicable
{
  v9 = self;
  v8[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001CA9B8;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (id)viewController
{
  v2 = [(BuddySIMTransferController *)self setupFlow:a2];
  v3 = [(TSSIMSetupFlow *)v2 rootViewController];

  return v3;
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  [(BuddySIMTransferController *)self _endProximityIfApplicable];
  v3 = [(BuddySIMTransferController *)self delegate];
  [(BFFFlowItemDelegate *)v3 flowItemDone:self];
}

- (void)updateSourceProxCardState:(BOOL)a3
{
  v3 = [(BuddySIMTransferController *)self proximitySetupController];
  [(ProximitySetupController *)v3 setSourceProxCardVisibliityForSIMSetupExternalAuthentication:a3];
}

@end