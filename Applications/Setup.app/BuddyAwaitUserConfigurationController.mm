@interface BuddyAwaitUserConfigurationController
- (BFFFlowItemDelegate)delegate;
- (id)viewController;
- (void)controllerDone;
- (void)setDelegate:(id)delegate;
@end

@implementation BuddyAwaitUserConfigurationController

- (id)viewController
{
  selfCopy = self;
  v12[1] = a2;
  if ((+[DMCMultiUserModeUtilities awaitUserConfigurationEnabled]& 1) != 0)
  {
    awaitUserConfigurationViewController = [(BuddyAwaitUserConfigurationController *)selfCopy awaitUserConfigurationViewController];

    if (!awaitUserConfigurationViewController)
    {
      managedConfiguration = [(BuddyAwaitUserConfigurationController *)selfCopy managedConfiguration];
      v12[0] = [(MCProfileConnection *)managedConfiguration cloudConfigurationDetails];

      v11 = [v12[0] objectForKeyedSubscript:kMCCCOrganizationNameKey];
      v4 = [BuddyAwaitUserConfigurationViewController alloc];
      v5 = +[NSBundle mainBundle];
      v6 = [(NSBundle *)v5 localizedStringForKey:@"CLOUD_CONFIG_GETTING_CONFIGURATION_DESCRIPTION_%@" value:&stru_10032F900 table:@"Localizable"];
      v7 = [NSString localizedStringWithFormat:v6, v11];
      location = [(BuddyAwaitUserConfigurationViewController *)v4 initWithSpinnerText:v7];

      [location setAwaitUserConfigurationController:selfCopy];
      [(BuddyAwaitUserConfigurationController *)selfCopy setAwaitUserConfigurationViewController:location];
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v11, 0);
      objc_storeStrong(v12, 0);
    }

    awaitUserConfigurationViewController2 = [(BuddyAwaitUserConfigurationController *)selfCopy awaitUserConfigurationViewController];
  }

  else
  {
    awaitUserConfigurationViewController2 = 0;
  }

  v8 = awaitUserConfigurationViewController2;

  return v8;
}

- (void)setDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  objc_storeWeak(&selfCopy->_delegate, location[0]);
  objc_storeStrong(location, 0);
}

- (void)controllerDone
{
  delegate = [(BuddyAwaitUserConfigurationController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self nextItemClass:objc_opt_class()];
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end