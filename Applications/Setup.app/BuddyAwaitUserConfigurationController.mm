@interface BuddyAwaitUserConfigurationController
- (BFFFlowItemDelegate)delegate;
- (id)viewController;
- (void)controllerDone;
- (void)setDelegate:(id)a3;
@end

@implementation BuddyAwaitUserConfigurationController

- (id)viewController
{
  v13 = self;
  v12[1] = a2;
  if ((+[DMCMultiUserModeUtilities awaitUserConfigurationEnabled]& 1) != 0)
  {
    v2 = [(BuddyAwaitUserConfigurationController *)v13 awaitUserConfigurationViewController];

    if (!v2)
    {
      v3 = [(BuddyAwaitUserConfigurationController *)v13 managedConfiguration];
      v12[0] = [(MCProfileConnection *)v3 cloudConfigurationDetails];

      v11 = [v12[0] objectForKeyedSubscript:kMCCCOrganizationNameKey];
      v4 = [BuddyAwaitUserConfigurationViewController alloc];
      v5 = +[NSBundle mainBundle];
      v6 = [(NSBundle *)v5 localizedStringForKey:@"CLOUD_CONFIG_GETTING_CONFIGURATION_DESCRIPTION_%@" value:&stru_10032F900 table:@"Localizable"];
      v7 = [NSString localizedStringWithFormat:v6, v11];
      location = [(BuddyAwaitUserConfigurationViewController *)v4 initWithSpinnerText:v7];

      [location setAwaitUserConfigurationController:v13];
      [(BuddyAwaitUserConfigurationController *)v13 setAwaitUserConfigurationViewController:location];
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v11, 0);
      objc_storeStrong(v12, 0);
    }

    v14 = [(BuddyAwaitUserConfigurationController *)v13 awaitUserConfigurationViewController];
  }

  else
  {
    v14 = 0;
  }

  v8 = v14;

  return v8;
}

- (void)setDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_delegate, location[0]);
  objc_storeStrong(location, 0);
}

- (void)controllerDone
{
  v2 = [(BuddyAwaitUserConfigurationController *)self delegate];
  [(BFFFlowItemDelegate *)v2 flowItemDone:self nextItemClass:objc_opt_class()];
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end