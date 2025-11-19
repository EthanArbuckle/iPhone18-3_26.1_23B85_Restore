@interface BuddyMoveFromAndroidController
+ (BOOL)showMoveFromAndroidRestoreChoice;
- (BFFFlowItemDelegate)delegate;
- (BOOL)responsibleForViewController:(id)a3;
- (BuddyMoveFromAndroidController)init;
- (void)_eraseDevice;
- (void)migrationDidComplete:(BOOL)a3 zoomEnabled:(BOOL)a4;
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

- (BOOL)responsibleForViewController:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [(NSBundle *)v3 isEqual:v4];

  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)_eraseDevice
{
  v10 = self;
  location[1] = a2;
  v2 = [(BuddyMoveFromAndroidController *)self navigationController];
  v3 = [(BFFNavigationController *)v2 view];
  v4 = [v3 window];
  v5 = [(BuddyMoveFromAndroidController *)v10 navigationController];
  v6 = [(BuddyMoveFromAndroidController *)v10 proximitySetupController];
  v7 = [(BuddyMoveFromAndroidController *)v10 analyticsManager];
  location[0] = [BuddyEraseAlertController alertControllerWithWindow:v4 navigationController:v5 proximitySetupController:v6 analyticsManager:v7];

  v8 = [(BuddyMoveFromAndroidController *)v10 navigationController];
  [(BFFNavigationController *)v8 presentViewController:location[0] animated:1 completion:0];

  objc_storeStrong(location, 0);
}

- (void)migrationDidComplete:(BOOL)a3 zoomEnabled:(BOOL)a4
{
  if (a3)
  {
    v4 = [(BuddyMoveFromAndroidController *)self displayZoomExecutor];
    if (a4)
    {
      [(BuddyDisplayZoomExecutor *)v4 setPendingOption:1 chosenByUser:0];
    }

    else
    {
      [(BuddyDisplayZoomExecutor *)v4 setPendingOption:0 chosenByUser:0];
    }

    v5 = [(BuddyMoveFromAndroidController *)self setupMethod];
    [(BuddySetupMethod *)v5 setDataTransferMethod:3];

    v6 = [(BuddyMoveFromAndroidController *)self delegate];
    [(BFFFlowItemDelegate *)v6 flowItemDone:self];
  }

  else
  {
    v7 = [(BuddyMoveFromAndroidController *)self delegate];
    v8 = [(BFFFlowItemDelegate *)v7 popToBuddyControllerWithClass:objc_opt_class() withOffset:1 animated:1];
  }
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end