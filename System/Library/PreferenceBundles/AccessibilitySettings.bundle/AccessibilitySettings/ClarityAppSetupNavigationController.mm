@interface ClarityAppSetupNavigationController
- (ClarityAppSetupNavigationController)initWithSetupController:(id)controller;
- (ClarityAppSetupNavigationControllerDelegate)delegate;
- (int64_t)_currentIndex;
- (void)_cancelAppOnboarding;
- (void)_completeAppOnboarding;
- (void)_continueAppOnboarding;
- (void)viewDidLoad;
@end

@implementation ClarityAppSetupNavigationController

- (ClarityAppSetupNavigationController)initWithSetupController:(id)controller
{
  controllerCopy = controller;
  v33.receiver = self;
  v33.super_class = ClarityAppSetupNavigationController;
  v6 = [(ClarityOnboardingNavigationWrapperController *)&v33 initWithController:0 shouldPresentWithAnimation:1];
  if (!v6)
  {
    goto LABEL_5;
  }

  bundleIdentifier = [controllerCopy bundleIdentifier];
  bundleIdentifier = v6->_bundleIdentifier;
  v6->_bundleIdentifier = bundleIdentifier;

  objc_storeStrong(&v6->_appSetupController, controller);
  [(ClarityUIAppSetupController *)v6->_appSetupController setDelegate:v6];
  objc_initWeak(&location, v6);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = __63__ClarityAppSetupNavigationController_initWithSetupController___block_invoke;
  v30[3] = &unk_255BD0;
  objc_copyWeak(&v31, &location);
  v9 = objc_retainBlock(v30);
  appSetupCompletion = v6->_appSetupCompletion;
  v6->_appSetupCompletion = v9;

  v11 = objc_opt_new();
  setupControllers = v6->_setupControllers;
  v6->_setupControllers = v11;

  v13 = +[ClarityUIAppSetupCoordinator sharedInstance];
  v14 = [v13 bundleIdentifierHasClaritySettings:v6->_bundleIdentifier includingSystem:0];

  if (v14)
  {
    [(NSMutableArray *)v6->_setupControllers addObject:v6->_appSetupController];
  }

  v15 = +[ClarityUIAppSetupCoordinator sharedInstance];
  v16 = [v15 appNameForBundleIdentifier:v6->_bundleIdentifier];

  dataSource = [(ClarityUIAppSetupController *)v6->_appSetupController dataSource];
  privacySpecifiers = [dataSource privacySpecifiers];

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = __63__ClarityAppSetupNavigationController_initWithSetupController___block_invoke_2;
  v27 = &unk_256898;
  v19 = v16;
  v28 = v19;
  v20 = v6;
  v29 = v20;
  [privacySpecifiers enumerateObjectsUsingBlock:&v24];
  v21 = [(ClarityAppSetupNavigationController *)v20 _currentIndex:v24];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v22 = 0;
  }

  else
  {
LABEL_5:
    v22 = v6;
  }

  return v22;
}

void __63__ClarityAppSetupNavigationController_initWithSetupController___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _continueAppOnboarding];
  }

  else
  {
    [WeakRetained _cancelAppOnboarding];
  }
}

void __63__ClarityAppSetupNavigationController_initWithSetupController___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 propertyForKey:@"ClarityTCCExplanation"];

  if (v3)
  {
    v4 = [v11 identifier];
    v5 = [v4 isEqualToString:@"Allow Tracking"];

    if (v5)
    {
      v6 = settingsLocString(@"PRIVACY_ALLOW_APP_TO_TRACK", @"ClarityUISettings");
      v7 = [NSString localizedStringWithFormat:v6, *(a1 + 32)];
    }

    else
    {
      v6 = settingsLocString(@"PRIVACY_ALLOW_APP_TO_ACCESS", @"ClarityUISettings");
      v8 = *(a1 + 32);
      v9 = [v11 name];
      v7 = [NSString localizedStringWithFormat:v6, v8, v9];
    }

    [v11 setProperty:*(a1 + 32) forKey:@"ClarityTCCAppNameKey"];
    v10 = [[ClarityUIPrivacySettingOnboardingController alloc] initWithTitle:v7 privacySpecifier:v11 completion:*(*(a1 + 40) + 64)];
    [*(*(a1 + 40) + 56) addObject:v10];
  }
}

- (void)viewDidLoad
{
  v3 = [(NSMutableArray *)self->_setupControllers objectAtIndex:[(ClarityAppSetupNavigationController *)self _currentIndex]];
  [(ClarityOnboardingNavigationWrapperController *)self setController:v3];
  v4.receiver = self;
  v4.super_class = ClarityAppSetupNavigationController;
  [(ClarityAppSetupNavigationController *)&v4 viewDidLoad];
}

- (void)_continueAppOnboarding
{
  _currentIndex = [(ClarityAppSetupNavigationController *)self _currentIndex];
  if (_currentIndex < 0)
  {

    [(ClarityAppSetupNavigationController *)self _completeAppOnboarding];
  }

  else
  {
    v5 = [(NSMutableArray *)self->_setupControllers objectAtIndex:_currentIndex];
    setUpNavigationController = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController];
    [setUpNavigationController pushViewController:v5 animated:1];
  }
}

- (int64_t)_currentIndex
{
  setUpNavigationController = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController];
  viewControllers = [setUpNavigationController viewControllers];
  v5 = [viewControllers count];

  return [(NSMutableArray *)self->_setupControllers count]+ ~v5;
}

- (void)_completeAppOnboarding
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained nextButtonTappedForBundleIdentifier:self->_bundleIdentifier];
}

- (void)_cancelAppOnboarding
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cancelButtonTappedForBundleIdentifier:self->_bundleIdentifier];
}

- (ClarityAppSetupNavigationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end