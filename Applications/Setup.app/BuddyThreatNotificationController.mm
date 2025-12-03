@interface BuddyThreatNotificationController
- (BFFFlowItemDelegate)delegate;
- (id)viewController;
- (void)setDelegate:(id)delegate;
@end

@implementation BuddyThreatNotificationController

- (void)setDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  objc_storeWeak(&selfCopy->_delegate, location[0]);
  objc_storeStrong(location, 0);
}

- (id)viewController
{
  selfCopy = self;
  location[1] = a2;
  initialViewController = [(BuddyThreatNotificationController *)self initialViewController];

  if (initialViewController)
  {
    initialViewController2 = [(BuddyThreatNotificationController *)selfCopy initialViewController];
  }

  else
  {
    objc_initWeak(location, selfCopy);
    threatNotificationProvider = [(BuddyThreatNotificationController *)selfCopy threatNotificationProvider];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1000F7420;
    v11 = &unk_10032AF58;
    objc_copyWeak(&v12, location);
    v4 = [(BuddyThreatNotificationProviding *)threatNotificationProvider threatNotificationFlowWithCompletion:&v7];
    [(BuddyThreatNotificationController *)selfCopy setInitialViewController:v4];

    initialViewController2 = [(BuddyThreatNotificationController *)selfCopy initialViewController];
    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  v5 = initialViewController2;

  return v5;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end