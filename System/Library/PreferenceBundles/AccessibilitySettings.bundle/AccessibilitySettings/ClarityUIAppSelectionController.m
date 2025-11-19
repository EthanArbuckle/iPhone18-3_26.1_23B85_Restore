@interface ClarityUIAppSelectionController
- (BOOL)_shouldPresentPrivacyDisclosureControllerForBundleIdentifier:(id)a3;
- (ClarityUIAppSelectionController)init;
- (id)tableView;
- (void)_addAppWithBundleIdentifier:(id)a3 didDismissPrivacyDisclosureController:(BOOL)a4;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_presentViewController:(id)a3 animated:(BOOL)a4;
- (void)cancelButtonTappedForPrivacyDisclosureController:(id)a3;
- (void)dataSource:(id)a3 didSelectBundleIdentifier:(id)a4;
- (void)didUpdateApplicationIdentifiersForDataSource:(id)a3;
- (void)loadView;
- (void)nextButtonTappedForAppSetupController:(id)a3;
- (void)nextButtonTappedForBundleIdentifier:(id)a3;
@end

@implementation ClarityUIAppSelectionController

- (ClarityUIAppSelectionController)init
{
  v8.receiver = self;
  v8.super_class = ClarityUIAppSelectionController;
  v2 = [(ClarityUIAppSelectionController *)&v8 init];
  if (v2)
  {
    v3 = settingsLocString(@"SELECTED_APPS", @"ClarityUISettings");
    [(ClarityUIAppSelectionController *)v2 setTitle:v3];

    v4 = objc_opt_new();
    dataSource = v2->_dataSource;
    v2->_dataSource = v4;

    [(ClarityUIAppSelectionTableViewDataSource *)v2->_dataSource setDataSourceDelegate:v2];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
  }

  return v2;
}

- (void)loadView
{
  v4 = [(ClarityUIAppSelectionController *)self dataSource];
  v3 = [v4 tableView];
  [(ClarityUIAppSelectionController *)self setView:v3];
}

- (id)tableView
{
  [(ClarityUIAppSelectionController *)self view];

  v3 = [(ClarityUIAppSelectionController *)self dataSource];
  v4 = [v3 tableView];

  return v4;
}

- (void)dataSource:(id)a3 didSelectBundleIdentifier:(id)a4
{
  v5 = a4;
  if ([(ClarityUIAppSelectionController *)self _shouldPresentPrivacyDisclosureControllerForBundleIdentifier:v5])
  {
    v6 = +[CLFLog commonLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Presenting privacy disclosure controller for application with bundle identifier %@.", &v9, 0xCu);
    }

    v7 = +[ClarityUIAppSetupCoordinator sharedInstance];
    v8 = [v7 createPrivacyDisclosureControllerForBundleIdentifier:v5];

    [v8 setDelegate:self];
    [(ClarityUIAppSelectionController *)self _presentViewController:v8 animated:1];
    [(ClarityUIAppSelectionController *)self setBundleIdentifierForPrivacyDisclosureController:v5];
  }

  else
  {
    [(ClarityUIAppSelectionController *)self _addAppWithBundleIdentifier:v5 didDismissPrivacyDisclosureController:0];
  }
}

- (void)didUpdateApplicationIdentifiersForDataSource:(id)a3
{
  v4 = [a3 applicationIdentifiers];
  v3 = +[CLFSettings sharedInstance];
  [v3 setApplicationBundleIdentifiers:v4];
}

- (void)_addAppWithBundleIdentifier:(id)a3 didDismissPrivacyDisclosureController:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = +[ClarityUIAppSetupCoordinator sharedInstance];
  v7 = [v6 createSetupNavigationControllerForBundleIdentifier:v9];

  if (v7)
  {
    [v7 setDelegate:self];
    [(ClarityUIAppSelectionController *)self _presentViewController:v7 animated:!v4];
  }

  else
  {
    v8 = [(ClarityUIAppSelectionController *)self dataSource];
    [v8 commitChangeForApplicationIdentifier:v9];
  }
}

- (BOOL)_shouldPresentPrivacyDisclosureControllerForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[CLFAppAvailabilityChecker sharedInstance];
  v5 = [v4 requiresPreflightForBundleIdentifier:v3];

  return v5;
}

- (void)_presentViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setShouldPresentWithAnimation:v4];
    [(ClarityUIAppSelectionController *)self presentViewController:v7 animated:0 completion:0];
  }

  else
  {
    v6 = [[ClarityOnboardingNavigationWrapperController alloc] initWithController:v7 shouldPresentWithAnimation:v4];
    [(ClarityOnboardingNavigationWrapperController *)v6 setModalPresentationStyle:5];
    [(ClarityUIAppSelectionController *)self presentViewController:v6 animated:0 completion:0];
  }
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v4 = [(ClarityUIAppSelectionController *)self bundleIdentifierForPrivacyDisclosureController];
  if (v4 && ![(ClarityUIAppSelectionController *)self _shouldPresentPrivacyDisclosureControllerForBundleIdentifier:v4])
  {
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = __63__ClarityUIAppSelectionController__applicationDidBecomeActive___block_invoke;
    v8 = &unk_255538;
    v9 = self;
    v10 = v4;
    [(ClarityUIAppSelectionController *)self dismissViewControllerAnimated:0 completion:&v5];
    [(ClarityUIAppSelectionController *)self setBundleIdentifierForPrivacyDisclosureController:0, v5, v6, v7, v8, v9];
  }
}

- (void)nextButtonTappedForAppSetupController:(id)a3
{
  v4 = a3;
  v5 = [(ClarityUIAppSelectionController *)self dataSource];
  v6 = [v4 bundleIdentifier];

  [v5 commitChangeForApplicationIdentifier:v6];

  [(ClarityUIAppSelectionController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)nextButtonTappedForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ClarityUIAppSelectionController *)self dataSource];
  [v5 commitChangeForApplicationIdentifier:v4];

  [(ClarityUIAppSelectionController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelButtonTappedForPrivacyDisclosureController:(id)a3
{
  v4 = [(ClarityUIAppSelectionController *)self bundleIdentifierForPrivacyDisclosureController];

  if (!v4)
  {
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [ClarityUIAppSelectionController cancelButtonTappedForPrivacyDisclosureController:v5];
    }
  }

  [(ClarityUIAppSelectionController *)self dismissViewControllerAnimated:1 completion:0];
  [(ClarityUIAppSelectionController *)self setBundleIdentifierForPrivacyDisclosureController:0];
}

@end