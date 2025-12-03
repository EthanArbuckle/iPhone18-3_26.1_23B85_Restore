@interface BuddyMoveFromAndroidController
+ (BOOL)showMoveFromAndroidRestoreChoice;
- (BFFFlowItemDelegate)delegate;
- (BOOL)responsibleForViewController:(id)controller;
- (BuddyMoveFromAndroidController)init;
- (void)_eraseDevice;
- (void)migrationDidComplete:(BOOL)complete zoomEnabled:(BOOL)enabled;
@end

@implementation BuddyMoveFromAndroidController

+ (BOOL)showMoveFromAndroidRestoreChoice
{
  v2 = +[BuddyCloudConfigManager sharedManager];
  v3 = [v2 cloudConfigWantsToSkipControllerClass:objc_opt_class()] ^ 1;

  return v3 & 1;
}

- (BuddyMoveFromAndroidController)init
{
  v8 = a2;
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyMoveFromAndroidController;
  v2 = [(BuddyMoveFromAndroidController *)&v7 init];
  location = v2;
  objc_storeStrong(&location, v2);
  if (v2)
  {
    v3 = [sub_1000DAA94() viewController:location];
    v4 = *(location + 1);
    *(location + 1) = v3;
  }

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (BOOL)responsibleForViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(NSBundle *)v3 isEqual:v4];

  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)_eraseDevice
{
  selfCopy = self;
  location[1] = a2;
  navigationController = [(BuddyMoveFromAndroidController *)self navigationController];
  view = [(BFFNavigationController *)navigationController view];
  window = [view window];
  navigationController2 = [(BuddyMoveFromAndroidController *)selfCopy navigationController];
  proximitySetupController = [(BuddyMoveFromAndroidController *)selfCopy proximitySetupController];
  analyticsManager = [(BuddyMoveFromAndroidController *)selfCopy analyticsManager];
  location[0] = [BuddyEraseAlertController alertControllerWithWindow:window navigationController:navigationController2 proximitySetupController:proximitySetupController analyticsManager:analyticsManager];

  navigationController3 = [(BuddyMoveFromAndroidController *)selfCopy navigationController];
  [(BFFNavigationController *)navigationController3 presentViewController:location[0] animated:1 completion:0];

  objc_storeStrong(location, 0);
}

- (void)migrationDidComplete:(BOOL)complete zoomEnabled:(BOOL)enabled
{
  if (complete)
  {
    displayZoomExecutor = [(BuddyMoveFromAndroidController *)self displayZoomExecutor];
    if (enabled)
    {
      [(BuddyDisplayZoomExecutor *)displayZoomExecutor setPendingOption:1 chosenByUser:0];
    }

    else
    {
      [(BuddyDisplayZoomExecutor *)displayZoomExecutor setPendingOption:0 chosenByUser:0];
    }

    setupMethod = [(BuddyMoveFromAndroidController *)self setupMethod];
    [(BuddySetupMethod *)setupMethod setDataTransferMethod:3];

    delegate = [(BuddyMoveFromAndroidController *)self delegate];
    [(BFFFlowItemDelegate *)delegate flowItemDone:self];
  }

  else
  {
    delegate2 = [(BuddyMoveFromAndroidController *)self delegate];
    v8 = [(BFFFlowItemDelegate *)delegate2 popToBuddyControllerWithClass:objc_opt_class() withOffset:1 animated:1];
  }
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end