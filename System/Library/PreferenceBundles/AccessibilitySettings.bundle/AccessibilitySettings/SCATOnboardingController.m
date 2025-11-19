@interface SCATOnboardingController
- (BOOL)_shouldShowRemoveSwitchAlertForViewController:(id)a3;
- (SCATOnboardingController)init;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)_popToLastSwitchSourceController;
- (void)_popToLastViewControllerClass:(Class)a3;
- (void)_showActivateExternalSwitchController;
- (void)_showAirPodGesturesSwitches;
- (void)_showAutoScanningTimeController;
- (void)_showBasicActionsController;
- (void)_showConnectBluetoothController;
- (void)_showExitOnboardingController;
- (void)_showExternalSwitchBluetoothController;
- (void)_showExternalSwitchNoBluetoothController;
- (void)_showGlidingCursorHorizantalCrossHairController;
- (void)_showGlidingCursorModeController;
- (void)_showGlidingCursorVerticalCrossHairController;
- (void)_showHandGesturesSwitches;
- (void)_showHeadGesturesSwitches;
- (void)_showManualScanningController;
- (void)_showMoveToNextItemSwitchController;
- (void)_showMoveToNextItemVideoController;
- (void)_showNoMoreSwitchOptionsAlert;
- (void)_showOnboardingCompleteController;
- (void)_showScreenSwitches;
- (void)_showSelectItemSwitchController;
- (void)_showSelectItemVideoController;
- (void)_showSoundSwitches;
- (void)_showStartAddAirPodGesturesSwitches;
- (void)_showStartAddExternalSwitchController;
- (void)_showStartAddHandGesturesSwitches;
- (void)_showStartAddHeadGesturesSwitches;
- (void)_showStartAddSoundSwitches;
- (void)_showStartGlidingCursorTutorialController;
- (void)_showStartScreenSwitches;
- (void)_showTurnOnSwitchControlController;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SCATOnboardingController

- (SCATOnboardingController)init
{
  v8.receiver = self;
  v8.super_class = SCATOnboardingController;
  v2 = [(SCATOnboardingController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(SCATOnboardingController *)v2 setOnboardNavigationController:v2];
    v4 = [(SCATOnboardingController *)v3 onboardNavigationController];
    [v4 setModalInPresentation:1];

    v5 = +[SCATOnboardingManager sharedInstance];
    [(SCATOnboardingController *)v3 setManager:v5];

    v6 = [[SCATAlertCoordinator alloc] initWithViewController:v3];
    [(SCATOnboardingController *)v3 setSwitchAlertCoordinator:v6];
  }

  return v3;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = SCATOnboardingController;
  [(SCATOnboardingController *)&v13 viewDidLoad];
  v3 = [(SCATOnboardingController *)self manager];
  [v3 initWithController:self];

  objc_initWeak(&location, self);
  v4 = [SCATOnboardingWelcomeController alloc];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __39__SCATOnboardingController_viewDidLoad__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingWelcomeController *)v4 initWithCompletion:&v7];
  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __39__SCATOnboardingController_viewDidLoad__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _startOnboardingFlow];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SCATOnboardingController;
  [(SCATOnboardingController *)&v5 viewWillDisappear:a3];
  v4 = [(SCATOnboardingController *)self manager];
  [v4 resetManager];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = SCATOnboardingController;
  v6 = a3;
  [(SCATOnboardingController *)&v10 pushViewController:v6 animated:v4];
  v7 = [UIBarButtonItem alloc];
  v8 = [v7 initWithBarButtonSystemItem:1 target:self action:{"_cancelOnboarding", v10.receiver, v10.super_class}];
  v9 = [v6 navigationItem];

  [v9 setRightBarButtonItem:v8];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATOnboardingController *)self viewControllers];
  if ([v5 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 2}];
    if ([(SCATOnboardingController *)self _shouldShowRemoveSwitchAlertForViewController:v6])
    {
      v7 = AXParameterizedLocalizedString();
      v8 = AXParameterizedLocalizedString();
      v9 = [(SCATOnboardingController *)self switchAlertCoordinator];
      v10 = AXParameterizedLocalizedString();
      v11 = AXParameterizedLocalizedString();
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __54__SCATOnboardingController_popViewControllerAnimated___block_invoke;
      v17[3] = &unk_2553B0;
      v17[4] = self;
      [v9 showOnboardingAlertWithTitle:v7 message:v8 successTitle:v10 cancelTitle:v11 successHandler:0 cancelHandler:v17];

      v12 = v6;
      v13 = v12;
      goto LABEL_8;
    }
  }

  v12 = [v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 1}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(SCATOnboardingController *)self manager];
    [v14 didPopStartSetUpSwitchController];
  }

  v16.receiver = self;
  v16.super_class = SCATOnboardingController;
  v13 = [(SCATOnboardingController *)&v16 popViewControllerAnimated:v3];
LABEL_8:

  return v13;
}

id __54__SCATOnboardingController_popViewControllerAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  v3 = [*(a1 + 32) manager];
  [v2 removeOnboardingSwitchForAction:{objc_msgSend(v3, "onboardAction")}];

  v4 = *(a1 + 32);

  return [v4 _popToLastSwitchSourceController];
}

- (void)_popToLastViewControllerClass:(Class)a3
{
  v4 = [(SCATOnboardingController *)self viewControllers];
  v5 = [v4 reverseObjectEnumerator];
  v6 = [v5 allObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v13 = [(SCATOnboardingController *)self popToViewController:v12 animated:1, v14];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_popToLastSwitchSourceController
{
  v3 = [(SCATOnboardingController *)self manager];
  v13 = [v3 lastSelectItemController];

  v4 = [(SCATOnboardingController *)self manager];
  v5 = [v4 lastMoveToNextItemController];

  v6 = [(SCATOnboardingController *)self manager];
  v7 = [v6 onboardAction];

  if (v7 == &stru_20.flags + 3 && v13)
  {
    v8 = [(SCATOnboardingController *)self popToViewController:v13 animated:1];
    v9 = [(SCATOnboardingController *)self manager];
    [v9 setLastSelectItemController:0];
LABEL_7:

    goto LABEL_8;
  }

  v10 = [(SCATOnboardingController *)self manager];
  v11 = [v10 onboardAction];

  if (v11 == &stru_68 && v5)
  {
    v12 = [(SCATOnboardingController *)self popToViewController:v5 animated:1];
    v9 = [(SCATOnboardingController *)self manager];
    [v9 setLastMoveToNextItemController:0];
    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)_shouldShowRemoveSwitchAlertForViewController:(id)a3
{
  v4 = a3;
  v5 = [(SCATOnboardingController *)self manager];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([v4 isMemberOfClass:objc_opt_class()])
    {
      if ([v5 onboardAction] == &stru_20.flags + 3)
      {
        v7 = [v5 selectItemSwitch];
LABEL_8:
        v6 = v7 != 0;

        goto LABEL_10;
      }

      if ([v5 onboardAction] == &stru_68)
      {
        v7 = [v5 moveToNextItemSwitch];
        goto LABEL_8;
      }
    }

    v6 = 0;
    goto LABEL_10;
  }

  v6 = 1;
LABEL_10:

  return v6;
}

- (void)_showBasicActionsController
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingBasicActionsController alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __55__SCATOnboardingController__showBasicActionsController__block_invoke;
  v9 = &unk_255BD0;
  objc_copyWeak(&v10, &location);
  v4 = [(SCATOnboardingBasicActionsController *)v3 initWithCompletion:&v6];
  v5 = [(SCATOnboardingController *)self onboardNavigationController:v6];
  [v5 pushViewController:v4 animated:1];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __55__SCATOnboardingController__showBasicActionsController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showSelectItemVideoController];
  }
}

- (void)_showSelectItemVideoController
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"SwitchControlWelcome" withExtension:@"mov"];

  objc_initWeak(&location, self);
  v5 = [SCATOnboardingStartSetUpSwitchController alloc];
  v6 = AXParameterizedLocalizedString();
  v7 = AXParameterizedLocalizedString();
  v8 = AXParameterizedLocalizedString();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __58__SCATOnboardingController__showSelectItemVideoController__block_invoke;
  v11[3] = &unk_258390;
  v11[4] = self;
  objc_copyWeak(&v12, &location);
  v9 = [(SCATOnboardingBaseVideoController *)v5 initWithTitle:v6 detailText:v7 nextButtonTitle:v8 videoURL:v4 completion:v11];

  v10 = [(SCATOnboardingController *)self onboardNavigationController];
  [v10 pushViewController:v9 animated:1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __58__SCATOnboardingController__showSelectItemVideoController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) manager];
    [v3 setOnboardAction:103];

    v4 = +[AXSettings sharedInstance];
    [v4 setSwitchControlScanningStyle:0];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _showStartAddExternalSwitchController];
  }
}

- (void)_showMoveToNextItemVideoController
{
  v3 = AXParameterizedLocalizedString();
  v4 = AXParameterizedLocalizedString();
  v5 = AXParameterizedLocalizedString();
  v6 = AXParameterizedLocalizedString();
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:@"SwitchControlMoveToNextItem" withExtension:@"mov"];

  objc_initWeak(&location, self);
  v9 = [SCATOnboardingStartSetUpSwitchController alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __62__SCATOnboardingController__showMoveToNextItemVideoController__block_invoke;
  v12[3] = &unk_258390;
  v12[4] = self;
  objc_copyWeak(&v13, &location);
  v10 = [(SCATOnboardingBaseVideoController *)v9 initWithTitle:v3 detailText:v4 nextButtonTitle:v5 cancelButtonTitle:v6 videoURL:v8 completion:v12];
  v11 = [(SCATOnboardingController *)self onboardNavigationController];
  [v11 pushViewController:v10 animated:1];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __62__SCATOnboardingController__showMoveToNextItemVideoController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) manager];
    [v3 setOnboardAction:104];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _showStartAddExternalSwitchController];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _showAutoScanningTimeController];
  }
}

- (void)_showSelectItemSwitchController
{
  v3 = [(SCATOnboardingController *)self manager];
  v4 = [v3 selectItemSwitch];

  v5 = AXParameterizedLocalizedString();
  v10 = [v4 name];
  v6 = AXParameterizedLocalizedString();

  objc_initWeak(&location, self);
  v7 = [SCATOnboardingAddedSwitchDetailController alloc];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __59__SCATOnboardingController__showSelectItemSwitchController__block_invoke;
  v11[3] = &unk_255BD0;
  objc_copyWeak(&v12, &location);
  v8 = [(SCATOnboardingAddedSwitchDetailController *)v7 initWithSwitch:v4 title:v5 detailText:v6 completion:v11, v10];
  v9 = [(SCATOnboardingController *)self onboardNavigationController];
  [v9 pushViewController:v8 animated:1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __59__SCATOnboardingController__showSelectItemSwitchController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showTurnOnSwitchControlController];
  }
}

- (void)_showTurnOnSwitchControlController
{
  v3 = AXParameterizedLocalizedString();
  v4 = AXParameterizedLocalizedString();
  v5 = AXParameterizedLocalizedString();
  v6 = AXParameterizedLocalizedString();
  objc_initWeak(&location, self);
  v7 = [SCATOnboardingDecisionBaseController alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __62__SCATOnboardingController__showTurnOnSwitchControlController__block_invoke;
  v10[3] = &unk_258390;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  v8 = [(SCATOnboardingDecisionBaseController *)v7 initWithTitle:v3 detailText:v4 yesButtonTitle:v5 noButtonTitle:v6 completion:v10];
  v9 = [(SCATOnboardingController *)self onboardNavigationController];
  [v9 pushViewController:v8 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __62__SCATOnboardingController__showTurnOnSwitchControlController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) manager];
    [v3 setSwitchControlEnabled:1];

    v4 = [*(a1 + 32) onboardNavigationController];
    v5 = [v4 popViewControllerAnimated:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showMoveToNextItemVideoController];
}

- (void)_showMoveToNextItemSwitchController
{
  v3 = [(SCATOnboardingController *)self manager];
  v4 = [v3 moveToNextItemSwitch];

  v5 = AXParameterizedLocalizedString();
  v10 = [v4 name];
  v6 = AXParameterizedLocalizedString();

  objc_initWeak(&location, self);
  v7 = [SCATOnboardingAddedSwitchDetailController alloc];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __63__SCATOnboardingController__showMoveToNextItemSwitchController__block_invoke;
  v11[3] = &unk_255BD0;
  objc_copyWeak(&v12, &location);
  v8 = [(SCATOnboardingAddedSwitchDetailController *)v7 initWithSwitch:v4 title:v5 detailText:v6 completion:v11, v10];
  v9 = [(SCATOnboardingController *)self onboardNavigationController];
  [v9 pushViewController:v8 animated:1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __63__SCATOnboardingController__showMoveToNextItemSwitchController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showManualScanningController];
  }
}

- (void)_showManualScanningController
{
  v3 = AXParameterizedLocalizedString();
  v4 = AXParameterizedLocalizedString();
  v5 = AXParameterizedLocalizedString();
  v6 = AXParameterizedLocalizedString();
  objc_initWeak(&location, self);
  v7 = [SCATOnboardingDecisionBaseController alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __57__SCATOnboardingController__showManualScanningController__block_invoke;
  v10[3] = &unk_258390;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  v8 = [(SCATOnboardingDecisionBaseController *)v7 initWithTitle:v3 detailText:v4 yesButtonTitle:v5 noButtonTitle:v6 completion:v10];
  v9 = [(SCATOnboardingController *)self onboardNavigationController];
  [v9 pushViewController:v8 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __57__SCATOnboardingController__showManualScanningController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) manager];
    [v3 resumeAutoScanningForSelectItemSwitch];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showAutoScanningTimeController];
}

- (void)_showAutoScanningTimeController
{
  v3 = AXParameterizedLocalizedString();
  v4 = AXParameterizedLocalizedString();
  objc_initWeak(&location, self);
  v5 = [SCATOnboardingSettingsSourceController alloc];
  v6 = AXParameterizedLocalizedString();
  v7 = objc_opt_new();
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = __59__SCATOnboardingController__showAutoScanningTimeController__block_invoke;
  v13 = &unk_255BD0;
  objc_copyWeak(&v14, &location);
  v8 = [(SCATOnboardingSwitchSourceBaseController *)v5 initWithTitle:v3 detailText:v4 nextButtonTitle:v6 controller:v7 completion:&v10];

  v9 = [(SCATOnboardingController *)self onboardNavigationController:v10];
  [v9 pushViewController:v8 animated:1];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __59__SCATOnboardingController__showAutoScanningTimeController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showStartGlidingCursorTutorialController];
  }
}

- (void)_showOnboardingCompleteController
{
  v3 = AXParameterizedLocalizedString();
  v4 = AXParameterizedLocalizedString();
  objc_initWeak(&location, self);
  v5 = [SCATOnboardingDecisionBaseController alloc];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __61__SCATOnboardingController__showOnboardingCompleteController__block_invoke;
  v11 = &unk_255BD0;
  objc_copyWeak(&v12, &location);
  v6 = [(SCATOnboardingDecisionBaseController *)v5 initWithTitle:v3 detailText:v4 decision:0 completion:&v8];
  v7 = [(SCATOnboardingController *)self onboardNavigationController:v8];
  [v7 pushViewController:v6 animated:1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __61__SCATOnboardingController__showOnboardingCompleteController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showExitOnboardingController];
  }
}

- (void)_showExitOnboardingController
{
  v4 = [[SCATOnboardingExitController alloc] initWithCompletion:&__block_literal_global_59];
  v3 = [(SCATOnboardingController *)self onboardNavigationController];
  [v3 pushViewController:v4 animated:1];
}

- (void)_showStartAddExternalSwitchController
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingDecisionBaseController alloc];
  v4 = AXParameterizedLocalizedString();
  v5 = AXParameterizedLocalizedString();
  v6 = AXParameterizedLocalizedString();
  v7 = AXParameterizedLocalizedString();
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = __65__SCATOnboardingController__showStartAddExternalSwitchController__block_invoke;
  v13 = &unk_255BD0;
  objc_copyWeak(&v14, &location);
  v8 = [(SCATOnboardingDecisionBaseController *)v3 initWithTitle:v4 detailText:v5 yesButtonTitle:v6 noButtonTitle:v7 completion:&v10];

  v9 = [(SCATOnboardingController *)self onboardNavigationController:v10];
  [v9 pushViewController:v8 animated:1];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __65__SCATOnboardingController__showStartAddExternalSwitchController__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showExternalSwitchBluetoothController];
  }

  else
  {
    [WeakRetained _showStartAddHeadGesturesSwitches];
  }
}

- (void)_showExternalSwitchBluetoothController
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingDecisionBaseController alloc];
  v4 = AXParameterizedLocalizedString();
  v5 = AXParameterizedLocalizedString();
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __66__SCATOnboardingController__showExternalSwitchBluetoothController__block_invoke;
  v11 = &unk_255BD0;
  objc_copyWeak(&v12, &location);
  v6 = [(SCATOnboardingDecisionBaseController *)v3 initWithTitle:v4 detailText:v5 decision:1 completion:&v8];

  v7 = [(SCATOnboardingController *)self onboardNavigationController:v8];
  [v7 pushViewController:v6 animated:1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __66__SCATOnboardingController__showExternalSwitchBluetoothController__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showConnectBluetoothController];
  }

  else
  {
    [WeakRetained _showExternalSwitchNoBluetoothController];
  }
}

- (void)_showConnectBluetoothController
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingBluetoothController alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __59__SCATOnboardingController__showConnectBluetoothController__block_invoke;
  v9 = &unk_255BD0;
  objc_copyWeak(&v10, &location);
  v4 = [(SCATOnboardingBluetoothController *)v3 initWithCompletion:&v6];
  v5 = [(SCATOnboardingController *)self onboardNavigationController:v6];
  [v5 pushViewController:v4 animated:1];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __59__SCATOnboardingController__showConnectBluetoothController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showActivateExternalSwitchController];
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __59__SCATOnboardingController__showConnectBluetoothController__block_invoke_cold_1(v2);
    }
  }
}

- (void)_showExternalSwitchNoBluetoothController
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingDecisionBaseController alloc];
  v4 = AXParameterizedLocalizedString();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __68__SCATOnboardingController__showExternalSwitchNoBluetoothController__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingDecisionBaseController *)v3 initWithTitle:v4 detailText:&stru_25D420 decision:0 completion:&v7];

  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __68__SCATOnboardingController__showExternalSwitchNoBluetoothController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showActivateExternalSwitchController];
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __68__SCATOnboardingController__showExternalSwitchNoBluetoothController__block_invoke_cold_1(v2);
    }
  }
}

- (void)_showActivateExternalSwitchController
{
  v4 = objc_opt_new();
  v3 = [(SCATOnboardingController *)self onboardNavigationController];
  [v3 pushViewController:v4 animated:1];
}

- (void)_showStartAddHeadGesturesSwitches
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingDecisionBaseController alloc];
  v4 = AXParameterizedLocalizedString();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __61__SCATOnboardingController__showStartAddHeadGesturesSwitches__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingDecisionBaseController *)v3 initWithTitle:v4 detailText:&stru_25D420 decision:1 completion:&v7];

  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __61__SCATOnboardingController__showStartAddHeadGesturesSwitches__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showHeadGesturesSwitches];
  }

  else
  {
    [WeakRetained _showStartAddHandGesturesSwitches];
  }
}

- (void)_showHeadGesturesSwitches
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingSwitchSourceBaseController alloc];
  v4 = objc_opt_new();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __53__SCATOnboardingController__showHeadGesturesSwitches__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingSwitchSourceBaseController *)v3 initWithSourceController:v4 completion:&v7];

  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __53__SCATOnboardingController__showHeadGesturesSwitches__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showStartAddHandGesturesSwitches];
  }
}

- (void)_showStartAddHandGesturesSwitches
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingDecisionBaseController alloc];
  v4 = AXParameterizedLocalizedString();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __61__SCATOnboardingController__showStartAddHandGesturesSwitches__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingDecisionBaseController *)v3 initWithTitle:v4 detailText:&stru_25D420 decision:1 completion:&v7];

  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __61__SCATOnboardingController__showStartAddHandGesturesSwitches__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showHandGesturesSwitches];
  }

  else
  {
    [WeakRetained _showStartAddAirPodGesturesSwitches];
  }
}

- (void)_showHandGesturesSwitches
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingSwitchSourceBaseController alloc];
  v4 = objc_opt_new();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __53__SCATOnboardingController__showHandGesturesSwitches__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingSwitchSourceBaseController *)v3 initWithSourceController:v4 completion:&v7];

  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __53__SCATOnboardingController__showHandGesturesSwitches__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showStartAddAirPodGesturesSwitches];
  }
}

- (void)_showStartAddAirPodGesturesSwitches
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingDecisionBaseController alloc];
  v4 = AXParameterizedLocalizedString();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __63__SCATOnboardingController__showStartAddAirPodGesturesSwitches__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingDecisionBaseController *)v3 initWithTitle:v4 detailText:&stru_25D420 decision:1 completion:&v7];

  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __63__SCATOnboardingController__showStartAddAirPodGesturesSwitches__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showAirPodGesturesSwitches];
  }

  else
  {
    [WeakRetained _showStartAddSoundSwitches];
  }
}

- (void)_showAirPodGesturesSwitches
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingSwitchSourceBaseController alloc];
  v4 = objc_opt_new();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __55__SCATOnboardingController__showAirPodGesturesSwitches__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingSwitchSourceBaseController *)v3 initWithSourceController:v4 completion:&v7];

  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __55__SCATOnboardingController__showAirPodGesturesSwitches__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showStartAddSoundSwitches];
  }
}

- (void)_showStartAddSoundSwitches
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingDecisionBaseController alloc];
  v4 = AXParameterizedLocalizedString();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __54__SCATOnboardingController__showStartAddSoundSwitches__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingDecisionBaseController *)v3 initWithTitle:v4 detailText:&stru_25D420 decision:1 completion:&v7];

  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__SCATOnboardingController__showStartAddSoundSwitches__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showSoundSwitches];
  }

  else
  {
    [WeakRetained _showStartScreenSwitches];
  }
}

- (void)_showSoundSwitches
{
  v3 = objc_opt_new();
  objc_initWeak(&location, self);
  v4 = [SCATOnboardingSwitchSourceBaseController alloc];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __46__SCATOnboardingController__showSoundSwitches__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingSwitchSourceBaseController *)v4 initWithSourceController:v3 completion:&v7];
  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __46__SCATOnboardingController__showSoundSwitches__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showStartScreenSwitches];
  }
}

- (void)_showStartScreenSwitches
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingDecisionBaseController alloc];
  v4 = AXParameterizedLocalizedString();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __52__SCATOnboardingController__showStartScreenSwitches__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingDecisionBaseController *)v3 initWithTitle:v4 detailText:&stru_25D420 decision:1 completion:&v7];

  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __52__SCATOnboardingController__showStartScreenSwitches__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showScreenSwitches];
  }

  else
  {
    [WeakRetained _showNoMoreSwitchOptionsAlert];
  }
}

- (void)_showScreenSwitches
{
  objc_initWeak(&location, self);
  v3 = [SCATOnboardingSwitchSourceBaseController alloc];
  v4 = objc_opt_new();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __47__SCATOnboardingController__showScreenSwitches__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingSwitchSourceBaseController *)v3 initWithSourceController:v4 completion:&v7];

  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __47__SCATOnboardingController__showScreenSwitches__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showNoMoreSwitchOptionsAlert];
  }
}

- (void)_showNoMoreSwitchOptionsAlert
{
  v3 = AXParameterizedLocalizedString();
  v4 = AXParameterizedLocalizedString();
  v5 = [(SCATOnboardingController *)self switchAlertCoordinator];
  v6 = AXParameterizedLocalizedString();
  v7 = AXParameterizedLocalizedString();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __57__SCATOnboardingController__showNoMoreSwitchOptionsAlert__block_invoke;
  v8[3] = &unk_2553B0;
  v8[4] = self;
  [v5 showOnboardingAlertWithTitle:v3 message:v4 successTitle:v6 cancelTitle:v7 successHandler:0 cancelHandler:v8];
}

id __57__SCATOnboardingController__showNoMoreSwitchOptionsAlert__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 _popToLastViewControllerClass:v2];
}

- (void)_showStartGlidingCursorTutorialController
{
  v3 = AXParameterizedLocalizedString();
  v4 = AXParameterizedLocalizedString();
  v5 = AXParameterizedLocalizedString();
  v6 = AXParameterizedLocalizedString();
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:@"GlidingCursorTutorial" withExtension:@"mov"];

  objc_initWeak(&location, self);
  v9 = [SCATOnboardingBaseVideoController alloc];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = __69__SCATOnboardingController__showStartGlidingCursorTutorialController__block_invoke;
  v15 = &unk_255BD0;
  objc_copyWeak(&v16, &location);
  v10 = [(SCATOnboardingBaseVideoController *)v9 initWithTitle:v3 detailText:v4 nextButtonTitle:v5 cancelButtonTitle:v6 videoURL:v8 completion:&v12];
  v11 = [(SCATOnboardingController *)self onboardNavigationController:v12];
  [v11 pushViewController:v10 animated:1];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __69__SCATOnboardingController__showStartGlidingCursorTutorialController__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showGlidingCursorVerticalCrossHairController];
  }

  else
  {
    [WeakRetained _showOnboardingCompleteController];
  }
}

- (void)_showGlidingCursorVerticalCrossHairController
{
  v3 = AXParameterizedLocalizedString();
  v4 = AXParameterizedLocalizedString();
  v5 = AXParameterizedLocalizedString();
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:@"GlidingCursorVertical" withExtension:@"mov"];

  objc_initWeak(&location, self);
  v8 = [SCATOnboardingBaseVideoController alloc];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __73__SCATOnboardingController__showGlidingCursorVerticalCrossHairController__block_invoke;
  v14 = &unk_255BD0;
  objc_copyWeak(&v15, &location);
  v9 = [(SCATOnboardingBaseVideoController *)v8 initWithTitle:v3 detailText:v4 nextButtonTitle:v5 videoURL:v7 completion:&v11];
  v10 = [(SCATOnboardingController *)self onboardNavigationController:v11];
  [v10 pushViewController:v9 animated:1];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __73__SCATOnboardingController__showGlidingCursorVerticalCrossHairController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showGlidingCursorHorizantalCrossHairController];
  }
}

- (void)_showGlidingCursorHorizantalCrossHairController
{
  v3 = AXParameterizedLocalizedString();
  v4 = AXParameterizedLocalizedString();
  v5 = AXParameterizedLocalizedString();
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:@"GlidingCursorHorizantal" withExtension:@"mov"];

  objc_initWeak(&location, self);
  v8 = [SCATOnboardingBaseVideoController alloc];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __75__SCATOnboardingController__showGlidingCursorHorizantalCrossHairController__block_invoke;
  v14 = &unk_255BD0;
  objc_copyWeak(&v15, &location);
  v9 = [(SCATOnboardingBaseVideoController *)v8 initWithTitle:v3 detailText:v4 nextButtonTitle:v5 videoURL:v7 completion:&v11];
  v10 = [(SCATOnboardingController *)self onboardNavigationController:v11];
  [v10 pushViewController:v9 animated:1];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __75__SCATOnboardingController__showGlidingCursorHorizantalCrossHairController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showGlidingCursorModeController];
  }
}

- (void)_showGlidingCursorModeController
{
  v3 = AXParameterizedLocalizedString();
  objc_initWeak(&location, self);
  v4 = [SCATOnboardingDecisionBaseController alloc];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __60__SCATOnboardingController__showGlidingCursorModeController__block_invoke;
  v10 = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v5 = [(SCATOnboardingDecisionBaseController *)v4 initWithTitle:v3 detailText:&stru_25D420 decision:1 completion:&v7];
  v6 = [(SCATOnboardingController *)self onboardNavigationController:v7];
  [v6 pushViewController:v5 animated:1];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __60__SCATOnboardingController__showGlidingCursorModeController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[AXSettings sharedInstance];
    [v3 setSwitchControlFirstLaunchScanningMode:1];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showOnboardingCompleteController];
}

@end