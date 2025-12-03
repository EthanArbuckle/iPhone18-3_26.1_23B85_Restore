@interface ClarityUIAppSelectionController
- (BOOL)_shouldPresentPrivacyDisclosureControllerForBundleIdentifier:(id)identifier;
- (ClarityUIAppSelectionController)init;
- (id)tableView;
- (void)_addAppWithBundleIdentifier:(id)identifier didDismissPrivacyDisclosureController:(BOOL)controller;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_presentViewController:(id)controller animated:(BOOL)animated;
- (void)cancelButtonTappedForPrivacyDisclosureController:(id)controller;
- (void)dataSource:(id)source didSelectBundleIdentifier:(id)identifier;
- (void)didUpdateApplicationIdentifiersForDataSource:(id)source;
- (void)loadView;
- (void)nextButtonTappedForAppSetupController:(id)controller;
- (void)nextButtonTappedForBundleIdentifier:(id)identifier;
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
  dataSource = [(ClarityUIAppSelectionController *)self dataSource];
  tableView = [dataSource tableView];
  [(ClarityUIAppSelectionController *)self setView:tableView];
}

- (id)tableView
{
  [(ClarityUIAppSelectionController *)self view];

  dataSource = [(ClarityUIAppSelectionController *)self dataSource];
  tableView = [dataSource tableView];

  return tableView;
}

- (void)dataSource:(id)source didSelectBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(ClarityUIAppSelectionController *)self _shouldPresentPrivacyDisclosureControllerForBundleIdentifier:identifierCopy])
  {
    v6 = +[CLFLog commonLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = identifierCopy;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Presenting privacy disclosure controller for application with bundle identifier %@.", &v9, 0xCu);
    }

    v7 = +[ClarityUIAppSetupCoordinator sharedInstance];
    v8 = [v7 createPrivacyDisclosureControllerForBundleIdentifier:identifierCopy];

    [v8 setDelegate:self];
    [(ClarityUIAppSelectionController *)self _presentViewController:v8 animated:1];
    [(ClarityUIAppSelectionController *)self setBundleIdentifierForPrivacyDisclosureController:identifierCopy];
  }

  else
  {
    [(ClarityUIAppSelectionController *)self _addAppWithBundleIdentifier:identifierCopy didDismissPrivacyDisclosureController:0];
  }
}

- (void)didUpdateApplicationIdentifiersForDataSource:(id)source
{
  applicationIdentifiers = [source applicationIdentifiers];
  v3 = +[CLFSettings sharedInstance];
  [v3 setApplicationBundleIdentifiers:applicationIdentifiers];
}

- (void)_addAppWithBundleIdentifier:(id)identifier didDismissPrivacyDisclosureController:(BOOL)controller
{
  controllerCopy = controller;
  identifierCopy = identifier;
  v6 = +[ClarityUIAppSetupCoordinator sharedInstance];
  v7 = [v6 createSetupNavigationControllerForBundleIdentifier:identifierCopy];

  if (v7)
  {
    [v7 setDelegate:self];
    [(ClarityUIAppSelectionController *)self _presentViewController:v7 animated:!controllerCopy];
  }

  else
  {
    dataSource = [(ClarityUIAppSelectionController *)self dataSource];
    [dataSource commitChangeForApplicationIdentifier:identifierCopy];
  }
}

- (BOOL)_shouldPresentPrivacyDisclosureControllerForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CLFAppAvailabilityChecker sharedInstance];
  v5 = [v4 requiresPreflightForBundleIdentifier:identifierCopy];

  return v5;
}

- (void)_presentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setShouldPresentWithAnimation:animatedCopy];
    [(ClarityUIAppSelectionController *)self presentViewController:controllerCopy animated:0 completion:0];
  }

  else
  {
    v6 = [[ClarityOnboardingNavigationWrapperController alloc] initWithController:controllerCopy shouldPresentWithAnimation:animatedCopy];
    [(ClarityOnboardingNavigationWrapperController *)v6 setModalPresentationStyle:5];
    [(ClarityUIAppSelectionController *)self presentViewController:v6 animated:0 completion:0];
  }
}

- (void)_applicationDidBecomeActive:(id)active
{
  bundleIdentifierForPrivacyDisclosureController = [(ClarityUIAppSelectionController *)self bundleIdentifierForPrivacyDisclosureController];
  if (bundleIdentifierForPrivacyDisclosureController && ![(ClarityUIAppSelectionController *)self _shouldPresentPrivacyDisclosureControllerForBundleIdentifier:bundleIdentifierForPrivacyDisclosureController])
  {
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = __63__ClarityUIAppSelectionController__applicationDidBecomeActive___block_invoke;
    v8 = &unk_255538;
    selfCopy = self;
    v10 = bundleIdentifierForPrivacyDisclosureController;
    [(ClarityUIAppSelectionController *)self dismissViewControllerAnimated:0 completion:&v5];
    [(ClarityUIAppSelectionController *)self setBundleIdentifierForPrivacyDisclosureController:0, v5, v6, v7, v8, selfCopy];
  }
}

- (void)nextButtonTappedForAppSetupController:(id)controller
{
  controllerCopy = controller;
  dataSource = [(ClarityUIAppSelectionController *)self dataSource];
  bundleIdentifier = [controllerCopy bundleIdentifier];

  [dataSource commitChangeForApplicationIdentifier:bundleIdentifier];

  [(ClarityUIAppSelectionController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)nextButtonTappedForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(ClarityUIAppSelectionController *)self dataSource];
  [dataSource commitChangeForApplicationIdentifier:identifierCopy];

  [(ClarityUIAppSelectionController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelButtonTappedForPrivacyDisclosureController:(id)controller
{
  bundleIdentifierForPrivacyDisclosureController = [(ClarityUIAppSelectionController *)self bundleIdentifierForPrivacyDisclosureController];

  if (!bundleIdentifierForPrivacyDisclosureController)
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