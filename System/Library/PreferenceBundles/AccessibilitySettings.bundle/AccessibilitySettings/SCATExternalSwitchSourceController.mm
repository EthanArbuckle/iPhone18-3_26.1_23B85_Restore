@interface SCATExternalSwitchSourceController
- (BOOL)switchRegistrarShouldFilterEvents:(id)events;
- (BOOL)switchRegistrarShouldProcessGamepadEvent:(id)event;
- (BOOL)switchRegistrarShouldProcessKeyboardKeyEvent:(id)event;
- (BOOL)switchRegistrarShouldProcessMFIButtonEvent:(id)event;
- (BOOL)switchRegistrarShouldProcessMIDIEvent:(id)event;
- (SCATExternalSwitchSourceController)init;
- (id)_labelOfType:(int64_t)type text:(id)text;
- (void)_showSoftwareKeyboard:(BOOL)keyboard;
- (void)dealloc;
- (void)loadView;
- (void)switchRegistrar:(id)registrar didUpdateSwitch:(id)switch;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

    switchRegistrar = [(SCATExternalSwitchSourceController *)v2 switchRegistrar];
    [switchRegistrar setDelegate:v2];

    v5 = [[SCATAlertCoordinator alloc] initWithViewController:v2];
    [(SCATExternalSwitchSourceController *)v2 setSwitchAlertCoordinator:v5];
  }

  return v2;
}

- (void)dealloc
{
  switchRegistrar = [(SCATExternalSwitchSourceController *)self switchRegistrar];
  [switchRegistrar endFilteringEvents];

  switchRegistrar2 = [(SCATExternalSwitchSourceController *)self switchRegistrar];
  [switchRegistrar2 setDelegate:0];

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
  topAnchor = [v10 topAnchor];
  safeAreaLayoutGuide = [v8 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v16 setActive:1];

  leftAnchor = [v10 leftAnchor];
  safeAreaLayoutGuide2 = [v8 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide2 leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v20 setActive:1];

  rightAnchor = [v10 rightAnchor];
  safeAreaLayoutGuide3 = [v8 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide3 rightAnchor];
  v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v24 setActive:1];

  topAnchor3 = [v12 topAnchor];
  bottomAnchor = [v10 bottomAnchor];
  v27 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:15.0];
  [v27 setActive:1];

  leftAnchor3 = [v12 leftAnchor];
  safeAreaLayoutGuide4 = [v8 safeAreaLayoutGuide];
  leftAnchor4 = [safeAreaLayoutGuide4 leftAnchor];
  v31 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  [v31 setActive:1];

  rightAnchor3 = [v12 rightAnchor];
  safeAreaLayoutGuide5 = [v8 safeAreaLayoutGuide];
  rightAnchor4 = [safeAreaLayoutGuide5 rightAnchor];
  v35 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  [v35 setActive:1];

  bottomAnchor2 = [v12 bottomAnchor];
  safeAreaLayoutGuide6 = [v8 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide6 bottomAnchor];
  v39 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [v39 setActive:1];

  centerYAnchor = [v8 centerYAnchor];
  centerYAnchor2 = [v49 centerYAnchor];
  v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v42 setActive:1];

  leftAnchor5 = [v8 leftAnchor];
  leftAnchor6 = [v49 leftAnchor];
  v45 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6 constant:20.0];
  [v45 setActive:1];

  rightAnchor5 = [v8 rightAnchor];
  rightAnchor6 = [v49 rightAnchor];
  v48 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6 constant:-20.0];
  [v48 setActive:1];
}

- (id)_labelOfType:(int64_t)type text:(id)text
{
  textCopy = text;
  v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setNumberOfLines:0];
  [v6 setText:textCopy];

  [v6 setTextAlignment:1];
  if (type)
  {
    if (type != 1)
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

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SCATExternalSwitchSourceController;
  [(SCATExternalSwitchSourceController *)&v6 viewWillAppear:appear];
  [(SCATExternalSwitchSourceController *)self setVisible:1];
  [(SCATExternalSwitchSourceController *)self _showSoftwareKeyboard:1];
  presentedViewController = [(SCATExternalSwitchSourceController *)self presentedViewController];

  if (!presentedViewController)
  {
    switchRegistrar = [(SCATExternalSwitchSourceController *)self switchRegistrar];
    [switchRegistrar beginFilteringEvents];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SCATExternalSwitchSourceController;
  [(SCATExternalSwitchSourceController *)&v5 viewWillDisappear:disappear];
  [(SCATExternalSwitchSourceController *)self setVisible:0];
  [(SCATExternalSwitchSourceController *)self _showSoftwareKeyboard:0];
  switchRegistrar = [(SCATExternalSwitchSourceController *)self switchRegistrar];
  [switchRegistrar endFilteringEvents];

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
    presentedViewController = [(SCATExternalSwitchSourceController *)self presentedViewController];

    if (!presentedViewController)
    {
      switchRegistrar = [(SCATExternalSwitchSourceController *)self switchRegistrar];
      [switchRegistrar beginFilteringEvents];
    }
  }
}

- (void)willResignActive
{
  v4.receiver = self;
  v4.super_class = SCATExternalSwitchSourceController;
  [(SCATExternalSwitchSourceController *)&v4 willResignActive];
  [(SCATExternalSwitchSourceController *)self _showSoftwareKeyboard:0];
  switchRegistrar = [(SCATExternalSwitchSourceController *)self switchRegistrar];
  [switchRegistrar endFilteringEvents];
}

- (void)_showSoftwareKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  v4 = +[UIKeyboardImpl sharedInstance];
  v5 = v4;
  if (keyboardCopy)
  {
    [v4 showKeyboardWithoutSuppressionPolicy];
  }

  else
  {
    [v4 dismissKeyboard];
  }
}

- (BOOL)switchRegistrarShouldFilterEvents:(id)events
{
  if (![(SCATExternalSwitchSourceController *)self isVisible])
  {
    return 0;
  }

  presentedViewController = [(SCATExternalSwitchSourceController *)self presentedViewController];
  v5 = presentedViewController == 0;

  return v5;
}

- (BOOL)switchRegistrarShouldProcessKeyboardKeyEvent:(id)event
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v4 - *&switchRegistrarShouldProcessKeyboardKeyEvent___LastEventTime < 1.5)
  {
    return 0;
  }

  switchRegistrarShouldProcessKeyboardKeyEvent___LastEventTime = *&v4;
  presentedViewController = [(SCATExternalSwitchSourceController *)self presentedViewController];
  v5 = presentedViewController == 0;

  return v5;
}

- (BOOL)switchRegistrarShouldProcessMFIButtonEvent:(id)event
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v4 - *&switchRegistrarShouldProcessMFIButtonEvent___LastEventTime < 1.5)
  {
    return 0;
  }

  switchRegistrarShouldProcessMFIButtonEvent___LastEventTime = *&v4;
  presentedViewController = [(SCATExternalSwitchSourceController *)self presentedViewController];
  v5 = presentedViewController == 0;

  return v5;
}

- (BOOL)switchRegistrarShouldProcessMIDIEvent:(id)event
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v4 - *&switchRegistrarShouldProcessMIDIEvent___LastEventTime >= 1.5)
  {
    switchRegistrarShouldProcessMIDIEvent___LastEventTime = *&v4;
    presentedViewController = [(SCATExternalSwitchSourceController *)self presentedViewController];
    v5 = presentedViewController == 0;
  }

  else
  {
    v5 = 0;
  }

  v8 = [NSNumber numberWithBool:v5];
  AXPrintLine();

  return v5;
}

- (BOOL)switchRegistrarShouldProcessGamepadEvent:(id)event
{
  +[NSDate timeIntervalSinceReferenceDate];
  if (v4 - *&switchRegistrarShouldProcessGamepadEvent___LastEventTime < 1.5)
  {
    return 0;
  }

  switchRegistrarShouldProcessGamepadEvent___LastEventTime = *&v4;
  presentedViewController = [(SCATExternalSwitchSourceController *)self presentedViewController];
  v5 = presentedViewController == 0;

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

- (void)switchRegistrar:(id)registrar didUpdateSwitch:(id)switch
{
  switchCopy = switch;
  v4 = switchCopy;
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