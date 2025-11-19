@interface ClarityOnboardingController
- (void)_cancelOnboardingWithCompletion:(id)a3;
- (void)_clearOnboarding;
- (void)_showAdminPasscodeSetupController;
- (void)_showAdminSettingsOnboardingController;
- (void)_showAppSelectionController;
- (void)_showAppleIDControllerWithAppleID:(id)a3;
- (void)_showFinishedController;
- (void)_showLayoutSetupController;
- (void)_showParentalControlsSetupController;
- (void)_showPasscodeAlert;
- (void)_showSecurityConfirmationSetupController;
- (void)_showThingsToKnowController;
- (void)_startOnboardingFlow;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)viewDidLoad;
@end

@implementation ClarityOnboardingController

- (void)viewDidLoad
{
  v3 = [OBWelcomeController alloc];
  v4 = settingsLocString(@"CLARITY_UI_TITLE", @"ClarityUISettings");
  v5 = AXLocStringKeyForModel();
  v6 = settingsLocString(v5, @"ClarityUISettings");
  v7 = [v3 initWithTitle:v4 detailText:v6 icon:0 contentLayout:4];

  v8 = [v7 contentView];
  v9 = +[UIColor clearColor];
  [v8 setBackgroundColor:v9];

  v10 = [ClarityOnboardingPreviewView alloc];
  v11 = [(ClarityOnboardingPreviewView *)v10 initWithListLayout:CLFListLayoutStack];
  [(ClarityOnboardingPreviewView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addSubview:v11];
  v12 = objc_opt_new();
  v13 = _NSDictionaryOfVariableBindings(@"previewView", v11, 0);
  v14 = [NSLayoutConstraint constraintsWithVisualFormat:@"|[previewView]|" options:0 metrics:0 views:v13];
  [v12 addObjectsFromArray:v14];

  v15 = _NSDictionaryOfVariableBindings(@"previewView", v11, 0);
  v16 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[previewView]|" options:0 metrics:0 views:v15];
  [v12 addObjectsFromArray:v16];

  [NSLayoutConstraint activateConstraints:v12];
  v17 = +[OBBoldTrayButton boldButton];
  v18 = settingsLocString(@"GET_STARTED", @"ClarityUISettings");
  [v17 setTitle:v18 forState:0];

  [v17 addTarget:self action:"_didTapGetStartedButton:" forControlEvents:0x2000];
  v19 = [v7 buttonTray];
  [v19 addButton:v17];

  [(ClarityOnboardingNavigationWrapperController *)self setController:v7];
  v23.receiver = self;
  v23.super_class = ClarityOnboardingController;
  [(ClarityOnboardingController *)&v23 viewDidLoad];
  v20 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController];
  v21 = [v20 presentationController];
  [v21 setDelegate:self];

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"applicationWillTerminate:" name:UIApplicationWillTerminateNotification object:0];
}

- (void)_clearOnboarding
{
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Clarity Onboarding was interrupted. Changes to CLFSettings should not persist", v4, 2u);
  }

  [(ClarityOnboardingController *)self resetAllSettings];
}

- (void)_startOnboardingFlow
{
  v3 = +[ADCoreSettings sharedInstance];
  v4 = [v3 iCloudAccount];

  v5 = AXLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Clarity Onboarding was started with a signed in Apple ID.", buf, 2u);
    }

    [(ClarityOnboardingController *)self _showAppleIDControllerWithAppleID:v4];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Clarity Onboarding was started with no Apple ID.", v7, 2u);
    }

    [(ClarityOnboardingController *)self _showLayoutSetupController];
  }
}

- (void)_showAppleIDControllerWithAppleID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [ClarityUIAppleIDController alloc];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __65__ClarityOnboardingController__showAppleIDControllerWithAppleID___block_invoke;
  v11 = &unk_255BD0;
  objc_copyWeak(&v12, &location);
  v6 = [(ClarityUIAppleIDController *)v5 initWithAppleID:v4 delegate:self andCompletion:&v8];
  v7 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController:v8];
  [v7 pushViewController:v6 animated:1];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __65__ClarityOnboardingController__showAppleIDControllerWithAppleID___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showLayoutSetupController];
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__ClarityOnboardingController__showAppleIDControllerWithAppleID___block_invoke_cold_1();
    }

    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _cancelOnboarding];
  }
}

- (void)_showLayoutSetupController
{
  v13 = 0;
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 unlockScreenTypeWithOutSimplePasscodeType:&v13];

  objc_initWeak(&location, self);
  v5 = [ClarityUILayoutSetupController alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __57__ClarityOnboardingController__showLayoutSetupController__block_invoke;
  v10[3] = &unk_255BD0;
  objc_copyWeak(&v11, &location);
  v6 = [(ClarityUILayoutSetupController *)v5 initWithCompletion:v10];
  v7 = +[MCProfileConnection sharedConnection];
  if (![v7 isPasscodeSet])
  {

LABEL_6:
    v9 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController];
    [v9 pushViewController:v6 animated:1];

    goto LABEL_7;
  }

  v8 = v13;

  if (!v4 && v8 != -1)
  {
    goto LABEL_6;
  }

  [(ClarityOnboardingController *)self _showPasscodeAlert];
LABEL_7:

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __57__ClarityOnboardingController__showLayoutSetupController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showAppSelectionController];
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __57__ClarityOnboardingController__showLayoutSetupController__block_invoke_cold_1();
    }
  }
}

- (void)_showAppSelectionController
{
  objc_initWeak(&location, self);
  v3 = [ClarityUIAppSelectionWelcomeController alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __58__ClarityOnboardingController__showAppSelectionController__block_invoke;
  v9 = &unk_255BD0;
  objc_copyWeak(&v10, &location);
  v4 = [(ClarityUIAppSelectionWelcomeController *)v3 initWithCompletion:&v6];
  v5 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController:v6];
  [v5 pushViewController:v4 animated:1];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __58__ClarityOnboardingController__showAppSelectionController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showThingsToKnowController];
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __65__ClarityOnboardingController__showAppleIDControllerWithAppleID___block_invoke_cold_1();
    }
  }
}

- (void)_showThingsToKnowController
{
  objc_initWeak(&location, self);
  v3 = [ClarityUIThingsToKnowOnboardingController alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __58__ClarityOnboardingController__showThingsToKnowController__block_invoke;
  v9 = &unk_255BD0;
  objc_copyWeak(&v10, &location);
  v4 = [(ClarityUIThingsToKnowOnboardingController *)v3 initWithCompletion:&v6];
  v5 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController:v6];
  [v5 pushViewController:v4 animated:1];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __58__ClarityOnboardingController__showThingsToKnowController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showSecurityConfirmationSetupController];
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Cancelled onboarding in Things to Know", buf, 2u);
    }

    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _cancelOnboarding];
  }
}

- (void)_showSecurityConfirmationSetupController
{
  v3 = +[ADCoreSettings sharedInstance];
  v4 = [v3 iCloudAccount];

  v5 = [v4 clarityUI_shortName];
  objc_initWeak(&location, self);
  v6 = [ClarityUISecurityConfirmationSetupController alloc];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = __71__ClarityOnboardingController__showSecurityConfirmationSetupController__block_invoke;
  v12 = &unk_255BD0;
  objc_copyWeak(&v13, &location);
  v7 = [(ClarityUISecurityConfirmationSetupController *)v6 initWithShortName:v5 delegate:self andCompletion:&v9];
  v8 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController:v9];
  [v8 pushViewController:v7 animated:1];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __71__ClarityOnboardingController__showSecurityConfirmationSetupController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[SFRestrictionsPasscodeController settingEnabled];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = WeakRetained;
    if (v3)
    {
      [WeakRetained _showParentalControlsSetupController];
    }

    else
    {
      [WeakRetained _showAdminPasscodeSetupController];
    }
  }

  else
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__ClarityOnboardingController__showSecurityConfirmationSetupController__block_invoke_cold_1();
    }
  }
}

- (void)_showParentalControlsSetupController
{
  objc_initWeak(&location, self);
  v3 = [ClarityUIParentalControlsSetupController alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __67__ClarityOnboardingController__showParentalControlsSetupController__block_invoke;
  v9 = &unk_255BD0;
  objc_copyWeak(&v10, &location);
  v4 = [(ClarityUIParentalControlsSetupController *)v3 initWithCompletion:&v6];
  v5 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController:v6];
  [v5 pushViewController:v4 animated:1];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __67__ClarityOnboardingController__showParentalControlsSetupController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showAdminSettingsOnboardingController];
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__ClarityOnboardingController__showParentalControlsSetupController__block_invoke_cold_1();
    }

    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _showAdminPasscodeSetupController];
  }
}

- (void)_showAdminPasscodeSetupController
{
  objc_initWeak(&location, self);
  v3 = [ClarityUIAdminPasscodeSetupController alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __64__ClarityOnboardingController__showAdminPasscodeSetupController__block_invoke;
  v9 = &unk_255BD0;
  objc_copyWeak(&v10, &location);
  v4 = [(ClarityUIAdminPasscodeSetupController *)v3 initWithCompletion:&v6];
  v5 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController:v6];
  [v5 pushViewController:v4 animated:1];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __64__ClarityOnboardingController__showAdminPasscodeSetupController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showAdminSettingsOnboardingController];
  }

  else
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __64__ClarityOnboardingController__showAdminPasscodeSetupController__block_invoke_cold_1();
    }
  }
}

- (void)_showAdminSettingsOnboardingController
{
  objc_initWeak(&location, self);
  v3 = [ClarityUIAdminSettingsOnboardingController alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __69__ClarityOnboardingController__showAdminSettingsOnboardingController__block_invoke;
  v9 = &unk_255BD0;
  objc_copyWeak(&v10, &location);
  v4 = [(ClarityUIAdminSettingsOnboardingController *)v3 initWithCompletion:&v6];
  v5 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController:v6];
  [v5 pushViewController:v4 animated:1];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__ClarityOnboardingController__showAdminSettingsOnboardingController__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _showFinishedController];
  }

  else
  {
    [WeakRetained _cancelOnboarding];
  }
}

- (void)_showFinishedController
{
  objc_initWeak(&location, self);
  v3 = [ClarityUIFinishedController alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = __54__ClarityOnboardingController__showFinishedController__block_invoke;
  v9 = &unk_255BD0;
  objc_copyWeak(&v10, &location);
  v4 = [(ClarityUIFinishedController *)v3 initWithCompletion:&v6];
  v5 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController:v6];
  [v5 pushViewController:v4 animated:1];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __54__ClarityOnboardingController__showFinishedController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained setUpNavigationController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__ClarityOnboardingController__showFinishedController__block_invoke_cold_1();
    }
  }
}

- (void)_showPasscodeAlert
{
  v3 = settingsLocString(@"CLARITY_PASSCODE_ALERT_TITLE", @"ClarityUISettings");
  v4 = settingsLocString(@"CLARITY_PASSCODE_ALERT_MESSAGE", @"ClarityUISettings");
  v5 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  objc_initWeak(&location, self);
  v6 = settingsLocString(@"CANCEL", @"ClarityUISettings");
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __49__ClarityOnboardingController__showPasscodeAlert__block_invoke;
  v14 = &unk_255BF8;
  objc_copyWeak(&v15, &location);
  v7 = [UIAlertAction actionWithTitle:v6 style:1 handler:&v11];

  [v5 addAction:{v7, v11, v12, v13, v14}];
  v8 = settingsLocString(@"CLARITY_PASSCODE_ALERT_ACTION", @"ClarityUISettings");
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:&__block_literal_global_4];

  [v5 addAction:v9];
  v10 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController];
  [v10 presentViewController:v5 animated:1 completion:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __49__ClarityOnboardingController__showPasscodeAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained setUpNavigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 dismissViewControllerAnimated:1 completion:0];
}

void __49__ClarityOnboardingController__showPasscodeAlert__block_invoke_2(id a1, UIAlertAction *a2)
{
  v3 = [NSURL URLWithString:@"prefs:root=PASSCODE"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (void)_cancelOnboardingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = settingsLocString(@"CLARITY_UI_CANCEL_ONBOARDING_TITLE", @"ClarityUISettings");
  v6 = settingsLocString(@"CLARITY_UI_CANCEL_ONBOARDING_MESSAGE", @"ClarityUISettings");
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  objc_initWeak(&location, self);
  v8 = settingsLocString(@"CLARITY_UI_CANCEL_ONBOARDING_LEAVE", @"ClarityUISettings");
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __63__ClarityOnboardingController__cancelOnboardingWithCompletion___block_invoke;
  v14[3] = &unk_255C60;
  objc_copyWeak(&v16, &location);
  v9 = v4;
  v15 = v9;
  v10 = [UIAlertAction actionWithTitle:v8 style:2 handler:v14];
  [v7 addAction:v10];

  v11 = settingsLocString(@"CLARITY_UI_CANCEL_ONBOARDING_STAY", @"ClarityUISettings");
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:&__block_literal_global_366];
  [v7 addAction:v12];

  v13 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController];
  [v13 presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __63__ClarityOnboardingController__cancelOnboardingWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained setUpNavigationController];
  [v3 dismissViewControllerAnimated:1 completion:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController];
  v6 = [v4 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [(ClarityOnboardingNavigationWrapperController *)self setUpNavigationController];
    [v5 dismissViewControllerAnimated:1 completion:0];

    [(ClarityOnboardingController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    [(ClarityOnboardingController *)self _cancelOnboarding];
  }
}

@end