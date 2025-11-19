@interface SCATExternalSwitchSourceController
- (BOOL)switchRegistrarShouldFilterEvents:(id)a3;
- (BOOL)switchRegistrarShouldProcessGamepadEvent:(id)a3;
- (BOOL)switchRegistrarShouldProcessKeyboardKeyEvent:(id)a3;
- (BOOL)switchRegistrarShouldProcessMFIButtonEvent:(id)a3;
- (BOOL)switchRegistrarShouldProcessMIDIEvent:(id)a3;
- (SCATExternalSwitchSourceController)init;
- (id)_labelOfType:(int64_t)a3 text:(id)a4;
- (void)_showSoftwareKeyboard:(BOOL)a3;
- (void)dealloc;
- (void)loadView;
- (void)switchRegistrar:(id)a3 didUpdateSwitch:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willBecomeActive;
- (void)willResignActive;
@end

@implementation SCATExternalSwitchSourceController

- (SCATExternalSwitchSourceController)init
{
  v7.receiver = self;
  v7.super_class = SCATExternalSwitchSourceController;
  v2 = [(SCATExternalSwitchSourceController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(AXSwitchRegistrar);
    [(SCATExternalSwitchSourceController *)v2 setSwitchRegistrar:v3];

    v4 = [(SCATExternalSwitchSourceController *)v2 switchRegistrar];
    [v4 setDelegate:v2];

    v5 = [[SCATAlertCoordinator alloc] initWithViewController:v2];
    [(SCATExternalSwitchSourceController *)v2 setSwitchAlertCoordinator:v5];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(SCATExternalSwitchSourceController *)self switchRegistrar];
  [v3 endFilteringEvents];

  v4 = [(SCATExternalSwitchSourceController *)self switchRegistrar];
  [v4 setDelegate:0];

  [(SCATExternalSwitchSourceController *)self setSwitchRegistrar:0];
  [(SCATExternalSwitchSourceController *)self setSwitchAlertCoordinator:0];
  v5.receiver = self;
  v5.super_class = SCATExternalSwitchSourceController;
  [(SCATExternalSwitchSourceController *)&v5 dealloc];
}

- (void)loadView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v49 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v49 setAutoresizingMask:18];
  v7 = +[UIColor systemGroupedBackgroundColor];
  [v49 setBackgroundColor:v7];

  [(SCATExternalSwitchSourceController *)self setView:v49];
  v8 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v49 addSubview:v8];
  v9 = AXParameterizedLocalizedString();
  v10 = [(SCATExternalSwitchSourceController *)self _labelOfType:0 text:v9];

  v11 = AXParameterizedLocalizedString();
  v12 = [(SCATExternalSwitchSourceController *)self _labelOfType:1 text:v11];

  [v8 addSubview:v10];
  [v8 addSubview:v12];
  v13 = [v10 topAnchor];
  v14 = [v8 safeAreaLayoutGuide];
  v15 = [v14 topAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [v10 leftAnchor];
  v18 = [v8 safeAreaLayoutGuide];
  v19 = [v18 leftAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [v10 rightAnchor];
  v22 = [v8 safeAreaLayoutGuide];
  v23 = [v22 rightAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [v12 topAnchor];
  v26 = [v10 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:15.0];
  [v27 setActive:1];

  v28 = [v12 leftAnchor];
  v29 = [v8 safeAreaLayoutGuide];
  v30 = [v29 leftAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v31 setActive:1];

  v32 = [v12 rightAnchor];
  v33 = [v8 safeAreaLayoutGuide];
  v34 = [v33 rightAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  [v35 setActive:1];

  v36 = [v12 bottomAnchor];
  v37 = [v8 safeAreaLayoutGuide];
  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  [v39 setActive:1];

  v40 = [v8 centerYAnchor];
  v41 = [v49 centerYAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = [v8 leftAnchor];
  v44 = [v49 leftAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:20.0];
  [v45 setActive:1];

  v46 = [v8 rightAnchor];
  v47 = [v49 rightAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-20.0];
  [v48 setActive:1];
}

- (id)_labelOfType:(int64_t)a3 text:(id)a4
{
  v5 = a4;
  v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setNumberOfLines:0];
  [v6 setText:v5];

  [v6 setTextAlignment:1];
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v7 = &UIFontTextStyleSubheadline1;
  }

  else
  {
    v7 = &UIFontTextStyleHeadline1;
  }

  v8 = [UIFont preferredFontForTextStyle:*v7];
  [v6 setFont:v8];

LABEL_6:

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SCATExternalSwitchSourceController;
  [(SCATExternalSwitchSourceController *)&v4 viewDidLoad];
  -[SCATExternalSwitchSourceController setCachedIdleTimerPref:](self, "setCachedIdleTimerPref:", [UIApp isIdleTimerDisabled]);
  [UIApp setIdleTimerDisabled:1];
  v3 = AXParameterizedLocalizedString();
  [(SCATExternalSwitchSourceController *)self setTitle:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SCATExternalSwitchSourceController;
  [(SCATExternalSwitchSourceController *)&v6 viewWillAppear:a3];
  [(SCATExternalSwitchSourceController *)self setVisible:1];
  [(SCATExternalSwitchSourceController *)self _showSoftwareKeyboard:1];
  v4 = [(SCATExternalSwitchSourceController *)self presentedViewController];

  if (!v4)
  {
    v5 = [(SCATExternalSwitchSourceController *)self switchRegistrar];
    [v5 beginFilteringEvents];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SCATExternalSwitchSourceController;
  [(SCATExternalSwitchSourceController *)&v5 viewWillDisappear:a3];
  [(SCATExternalSwitchSourceController *)self setVisible:0];
  [(SCATExternalSwitchSourceController *)self _showSoftwareKeyboard:0];
  v4 = [(SCATExternalSwitchSourceController *)self switchRegistrar];
  [v4 endFilteringEvents];

  [UIApp setIdleTimerDisabled:{-[SCATExternalSwitchSourceController cachedIdleTimerPref](self, "cachedIdleTimerPref")}];
}

- (void)willBecomeActive
{
  v5.receiver = self;
  v5.super_class = SCATExternalSwitchSourceController;
  [(SCATExternalSwitchSourceController *)&v5 willBecomeActive];
  if ([(SCATExternalSwitchSourceController *)self isVisible])
  {
    [(SCATExternalSwitchSourceController *)self _showSoftwareKeyboard:1];
    v3 = [(SCATExternalSwitchSourceController *)self presentedViewController];

    if (!v3)
    {
      v4 = [(SCATExternalSwitchSourceController *)self switchRegistrar];
      [v4 beginFilteringEvents];
    }
  }
}

- (void)willResignActive
{
  v4.receiver = self;
  v4.super_class = SCATExternalSwitchSourceController;
  [(SCATExternalSwitchSourceController *)&v4 willResignActive];
  [(SCATExternalSwitchSourceController *)self _showSoftwareKeyboard:0];
  v3 = [(SCATExternalSwitchSourceController *)self switchRegistrar];
  [v3 endFilteringEvents];
}

- (void)_showSoftwareKeyboard:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl sharedInstance];
  v5 = v4;
  if (v3)
  {
    [v4 showKeyboardWithoutSuppressionPolicy];
  }

  else
  {
    [v4 dismissKeyboard];
  }
}

- (BOOL)switchRegistrarShouldFilterEvents:(id)a3
{
  if (![(SCATExternalSwitchSourceController *)self isVisible])
  {
    return 0;
  }

  v4 = [(SCATExternalSwitchSourceController *)self presentedViewController];
  v5 = v4 == 0;

  return v5;
}

- (BOOL)switchRegistrarShouldProcessKeyboardKeyEvent:(id)a3
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v4 - *&switchRegistrarShouldProcessKeyboardKeyEvent___LastEventTime < 1.5)
  {
    return 0;
  }

  switchRegistrarShouldProcessKeyboardKeyEvent___LastEventTime = *&v4;
  v6 = [(SCATExternalSwitchSourceController *)self presentedViewController];
  v5 = v6 == 0;

  return v5;
}

- (BOOL)switchRegistrarShouldProcessMFIButtonEvent:(id)a3
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v4 - *&switchRegistrarShouldProcessMFIButtonEvent___LastEventTime < 1.5)
  {
    return 0;
  }

  switchRegistrarShouldProcessMFIButtonEvent___LastEventTime = *&v4;
  v6 = [(SCATExternalSwitchSourceController *)self presentedViewController];
  v5 = v6 == 0;

  return v5;
}

- (BOOL)switchRegistrarShouldProcessMIDIEvent:(id)a3
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v4 - *&switchRegistrarShouldProcessMIDIEvent___LastEventTime >= 1.5)
  {
    switchRegistrarShouldProcessMIDIEvent___LastEventTime = *&v4;
    v6 = [(SCATExternalSwitchSourceController *)self presentedViewController];
    v5 = v6 == 0;
  }

  else
  {
    v5 = 0;
  }

  v8 = [NSNumber numberWithBool:v5];
  AXPrintLine();

  return v5;
}

- (BOOL)switchRegistrarShouldProcessGamepadEvent:(id)a3
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v4 - *&switchRegistrarShouldProcessGamepadEvent___LastEventTime < 1.5)
  {
    return 0;
  }

  switchRegistrarShouldProcessGamepadEvent___LastEventTime = *&v4;
  v6 = [(SCATExternalSwitchSourceController *)self presentedViewController];
  v5 = v6 == 0;

  return v5;
}

void __61__SCATExternalSwitchSourceController__showSwitchAlreadyInUse__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) switchRegistrar];
  [v2 endFilteringEvents];

  v3 = [*(a1 + 32) switchAlertCoordinator];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __61__SCATExternalSwitchSourceController__showSwitchAlreadyInUse__block_invoke_2;
  v4[3] = &unk_2553B0;
  v4[4] = *(a1 + 32);
  [v3 showSwichAlreadyInUseAlert:v4];
}

void __61__SCATExternalSwitchSourceController__showSwitchAlreadyInUse__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) switchRegistrar];
  [v1 beginFilteringEvents];
}

- (void)switchRegistrar:(id)a3 didUpdateSwitch:(id)a4
{
  v5 = a4;
  v4 = v5;
  AXPerformBlockOnMainThread();
}

void __70__SCATExternalSwitchSourceController_switchRegistrar_didUpdateSwitch___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) switchRegistrar];
  [v2 endFilteringEvents];

  v3 = [*(a1 + 32) switchAlertCoordinator];
  v4 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __70__SCATExternalSwitchSourceController_switchRegistrar_didUpdateSwitch___block_invoke_2;
  v8[3] = &unk_259080;
  v5 = v4;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  objc_copyWeak(&v11, &location);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __70__SCATExternalSwitchSourceController_switchRegistrar_didUpdateSwitch___block_invoke_3;
  v7[3] = &unk_2553B0;
  v7[4] = *(a1 + 32);
  [v3 showSwitchNamingAlertWithSwitch:v5 message:0 successHandler:v8 cancelHandler:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __70__SCATExternalSwitchSourceController_switchRegistrar_didUpdateSwitch___block_invoke_2(uint64_t a1)
{
  v12 = +[SCATOnboardingManager sharedInstance];
  if ([v12 inSCATOnboarding])
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) navigationController];
    [v12 addOnboardingSwitch:v2 navigationController:v3];
  }

  else
  {
    v3 = [[SCATSwitchActionsController alloc] initWithSwitch:*(a1 + 32)];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [(SCATSwitchActionsController *)v3 setParentController:WeakRetained];

    v5 = objc_loadWeakRetained((a1 + 48));
    v6 = [v5 rootController];
    [(SCATSwitchActionsController *)v3 setRootController:v6];

    v7 = AXParameterizedLocalizedString();
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [PSSpecifier preferenceSpecifierNamed:v7 target:v8 set:0 get:0 detail:0 cell:-1 edit:0];
    [(SCATSwitchActionsController *)v3 setSpecifier:v9];

    v10 = [*(a1 + 40) completion];
    [(SCATSettingsCompletionController *)v3 setCompletion:v10];

    v11 = objc_loadWeakRetained((a1 + 48));
    [v11 showController:v3 animate:1];
  }
}

void __70__SCATExternalSwitchSourceController_switchRegistrar_didUpdateSwitch___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) switchRegistrar];
  [v1 beginFilteringEvents];
}

@end