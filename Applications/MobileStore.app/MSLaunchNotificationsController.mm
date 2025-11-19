@interface MSLaunchNotificationsController
- (BOOL)_hasDisplayedFamilySetup;
- (MSLaunchNotificationsController)initWithParentViewController:(id)a3;
- (void)_showFamilySetupPrompt;
- (void)checkForNotifications;
@end

@implementation MSLaunchNotificationsController

- (MSLaunchNotificationsController)initWithParentViewController:(id)a3
{
  objc_initWeak(&location, a3);
  v7.receiver = self;
  v7.super_class = MSLaunchNotificationsController;
  v4 = [(MSLaunchNotificationsController *)&v7 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_parentViewController, v5);
  }

  objc_destroyWeak(&location);
  return v4;
}

- (void)checkForNotifications
{
  if (![(MSLaunchNotificationsController *)self _hasDisplayedFamilySetup])
  {

    [(MSLaunchNotificationsController *)self _showFamilySetupPrompt];
  }
}

- (BOOL)_hasDisplayedFamilySetup
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SUUIFamilySetupDisplayed"];

  return v3;
}

- (void)_showFamilySetupPrompt
{
  v3 = +[SSAccountStore defaultStore];
  v10 = [v3 activeAccount];

  if (v10)
  {
    v4 = sub_100003088();
    v5 = [objc_alloc(sub_100003150(@"AAUIFamilySetupPrompter" v4))];
    familySetupPrompter = self->_familySetupPrompter;
    self->_familySetupPrompter = v5;

    v7 = self->_familySetupPrompter;
    WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
    [(AAUIFamilySetupPrompter *)v7 promptIfEligibleWithPresentingViewController:WeakRetained isFirstRun:1];

    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 setBool:1 forKey:@"SUUIFamilySetupDisplayed"];
    [v9 synchronize];
  }
}

@end