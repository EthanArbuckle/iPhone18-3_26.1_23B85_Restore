@interface BuddyThreatNotificationController
- (BFFFlowItemDelegate)delegate;
- (id)viewController;
- (void)setDelegate:(id)a3;
@end

@implementation BuddyThreatNotificationController

- (void)setDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_delegate, location[0]);
  objc_storeStrong(location, 0);
}

- (id)viewController
{
  v14 = self;
  location[1] = a2;
  v2 = [(BuddyThreatNotificationController *)self initialViewController];

  if (v2)
  {
    v15 = [(BuddyThreatNotificationController *)v14 initialViewController];
  }

  else
  {
    objc_initWeak(location, v14);
    v3 = [(BuddyThreatNotificationController *)v14 threatNotificationProvider];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1000F7420;
    v11 = &unk_10032AF58;
    objc_copyWeak(&v12, location);
    v4 = [(BuddyThreatNotificationProviding *)v3 threatNotificationFlowWithCompletion:&v7];
    [(BuddyThreatNotificationController *)v14 setInitialViewController:v4];

    v15 = [(BuddyThreatNotificationController *)v14 initialViewController];
    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  v5 = v15;

  return v5;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end