@interface SCATOnboardingManager
+ (id)sharedInstance;
- (SCATOnboardingManager)init;
- (SCATOnboardingManager)initWithController:(id)controller;
- (void)addOnboardingSwitch:(id)switch;
- (void)addOnboardingSwitch:(id)switch navigationController:(id)controller;
- (void)didPopStartSetUpSwitchController;
- (void)removeAllOnboardingSwitches;
- (void)removeOnboardingSwitchForAction:(int64_t)action;
- (void)resetManager;
- (void)resumeAutoScanningForSelectItemSwitch;
- (void)setLastSwitchSourceController:(id)controller;
- (void)setSwitchControlEnabled:(BOOL)enabled;
@end

@implementation SCATOnboardingManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SCATOnboardingManager sharedInstance];
  }

  v3 = sharedInstance__shared;

  return v3;
}

void __39__SCATOnboardingManager_sharedInstance__block_invoke(id a1)
{
  sharedInstance__shared = objc_alloc_init(SCATOnboardingManager);

  _objc_release_x1();
}

- (SCATOnboardingManager)init
{
  v3.receiver = self;
  v3.super_class = SCATOnboardingManager;
  return [(SCATOnboardingManager *)&v3 init];
}

- (SCATOnboardingManager)initWithController:(id)controller
{
  [(SCATOnboardingManager *)self setOnboardController:controller];
  [(SCATOnboardingManager *)self setInSCATOnboarding:1];
  [(SCATOnboardingManager *)self setOnboardAction:0];
  [(SCATOnboardingManager *)self setSelectItemSwitch:0];

  return [(SCATOnboardingManager *)self setMoveToNextItemSwitch:0];
}

- (void)resetManager
{
  [(SCATOnboardingManager *)self setInSCATOnboarding:0];
  [(SCATOnboardingManager *)self setOnboardAction:0];
  [(SCATOnboardingManager *)self setOnboardController:0];
  [(SCATOnboardingManager *)self setSelectItemSwitch:0];
  [(SCATOnboardingManager *)self setMoveToNextItemSwitch:0];
  [(SCATOnboardingManager *)self setLastSelectItemController:0];

  [(SCATOnboardingManager *)self setLastMoveToNextItemController:0];
}

- (void)addOnboardingSwitch:(id)switch navigationController:(id)controller
{
  controllerCopy = controller;
  switchCopy = switch;
  onboardController = [(SCATOnboardingManager *)self onboardController];
  [onboardController setOnboardNavigationController:controllerCopy];

  [(SCATOnboardingManager *)self addOnboardingSwitch:switchCopy];
}

- (void)addOnboardingSwitch:(id)switch
{
  switchCopy = switch;
  if ([(SCATOnboardingManager *)self onboardAction]== &stru_20.flags + 3)
  {
    [(SCATOnboardingManager *)self setSelectItemSwitch:switchCopy];
  }

  else if ([(SCATOnboardingManager *)self onboardAction]== &stru_68)
  {
    [(SCATOnboardingManager *)self setMoveToNextItemSwitch:switchCopy];
  }

  [switchCopy setAction:{-[SCATOnboardingManager onboardAction](self, "onboardAction")}];
  SCATAddOrUpdateSwitchToSettings();
  selectItemSwitch = [(SCATOnboardingManager *)self selectItemSwitch];
  if (selectItemSwitch && (v5 = selectItemSwitch, [(SCATOnboardingManager *)self moveToNextItemSwitch], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    onboardController = [(SCATOnboardingManager *)self onboardController];
    [onboardController startAfterSetUpSelectItemSwitchFlow];
  }

  else
  {
    onboardController = [(SCATOnboardingManager *)self onboardController];
    [onboardController startAfterSetUpMoveToNextItemSwitchFlow];
  }
}

- (void)resumeAutoScanningForSelectItemSwitch
{
  selectItemSwitch = [(SCATOnboardingManager *)self selectItemSwitch];
  [selectItemSwitch setAction:109];

  selectItemSwitch2 = [(SCATOnboardingManager *)self selectItemSwitch];
  SCATAddOrUpdateSwitchToSettings();
}

- (void)removeAllOnboardingSwitches
{
  selectItemSwitch = [(SCATOnboardingManager *)self selectItemSwitch];

  if (selectItemSwitch)
  {
    selectItemSwitch2 = [(SCATOnboardingManager *)self selectItemSwitch];
    SCATRemoveSwitchFromSettings();

    [(SCATOnboardingManager *)self setSelectItemSwitch:0];
  }

  moveToNextItemSwitch = [(SCATOnboardingManager *)self moveToNextItemSwitch];

  if (moveToNextItemSwitch)
  {
    moveToNextItemSwitch2 = [(SCATOnboardingManager *)self moveToNextItemSwitch];
    SCATRemoveSwitchFromSettings();

    [(SCATOnboardingManager *)self setMoveToNextItemSwitch:0];
  }
}

- (void)removeOnboardingSwitchForAction:(int64_t)action
{
  if (action == 104)
  {
    moveToNextItemSwitch = [(SCATOnboardingManager *)self moveToNextItemSwitch];

    if (moveToNextItemSwitch)
    {
      moveToNextItemSwitch2 = [(SCATOnboardingManager *)self moveToNextItemSwitch];
      SCATRemoveSwitchFromSettings();

      [(SCATOnboardingManager *)self setMoveToNextItemSwitch:0];
    }
  }

  else if (action == 103)
  {
    selectItemSwitch = [(SCATOnboardingManager *)self selectItemSwitch];

    if (selectItemSwitch)
    {
      selectItemSwitch2 = [(SCATOnboardingManager *)self selectItemSwitch];
      SCATRemoveSwitchFromSettings();

      [(SCATOnboardingManager *)self setSelectItemSwitch:0];
      if (_AXSAssistiveTouchScannerEnabled())
      {

        [(SCATOnboardingManager *)self setSwitchControlEnabled:0];
      }
    }
  }
}

- (void)didPopStartSetUpSwitchController
{
  if ([(SCATOnboardingManager *)self onboardAction]== &stru_68)
  {

    [(SCATOnboardingManager *)self setOnboardAction:103];
  }
}

- (void)setLastSwitchSourceController:(id)controller
{
  controllerCopy = controller;
  if ([(SCATOnboardingManager *)self onboardAction]== &stru_20.flags + 3)
  {
    [(SCATOnboardingManager *)self setLastSelectItemController:controllerCopy];
  }

  else if ([(SCATOnboardingManager *)self onboardAction]== &stru_68)
  {
    [(SCATOnboardingManager *)self setLastMoveToNextItemController:controllerCopy];
  }
}

- (void)setSwitchControlEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = _AXSTripleClickCopyOptions();
  _AXSAssistiveTouchScannerSetEnabled();
  if (enabledCopy)
  {
    if ([v8 containsObject:&off_2799A8])
    {
      goto LABEL_8;
    }

    _AXSTripleClickAddOption();
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    assistiveTouchScannerAddedTripleClickAutomatically = [v4 assistiveTouchScannerAddedTripleClickAutomatically];

    if (!assistiveTouchScannerAddedTripleClickAutomatically)
    {
      goto LABEL_8;
    }

    if ([v8 containsObject:&off_2799A8])
    {
      v6 = [v8 mutableCopy];
      [v6 removeObject:&off_2799A8];
      _AXSSetTripleClickOptions();
    }
  }

  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchScannerAddedTripleClickAutomatically:enabledCopy];

LABEL_8:
}

@end