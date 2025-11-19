@interface SCATOnboardingManager
+ (id)sharedInstance;
- (SCATOnboardingManager)init;
- (SCATOnboardingManager)initWithController:(id)a3;
- (void)addOnboardingSwitch:(id)a3;
- (void)addOnboardingSwitch:(id)a3 navigationController:(id)a4;
- (void)didPopStartSetUpSwitchController;
- (void)removeAllOnboardingSwitches;
- (void)removeOnboardingSwitchForAction:(int64_t)a3;
- (void)resetManager;
- (void)resumeAutoScanningForSelectItemSwitch;
- (void)setLastSwitchSourceController:(id)a3;
- (void)setSwitchControlEnabled:(BOOL)a3;
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

- (SCATOnboardingManager)initWithController:(id)a3
{
  [(SCATOnboardingManager *)self setOnboardController:a3];
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

- (void)addOnboardingSwitch:(id)a3 navigationController:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(SCATOnboardingManager *)self onboardController];
  [v7 setOnboardNavigationController:v6];

  [(SCATOnboardingManager *)self addOnboardingSwitch:v8];
}

- (void)addOnboardingSwitch:(id)a3
{
  v8 = a3;
  if ([(SCATOnboardingManager *)self onboardAction]== &stru_20.flags + 3)
  {
    [(SCATOnboardingManager *)self setSelectItemSwitch:v8];
  }

  else if ([(SCATOnboardingManager *)self onboardAction]== &stru_68)
  {
    [(SCATOnboardingManager *)self setMoveToNextItemSwitch:v8];
  }

  [v8 setAction:{-[SCATOnboardingManager onboardAction](self, "onboardAction")}];
  SCATAddOrUpdateSwitchToSettings();
  v4 = [(SCATOnboardingManager *)self selectItemSwitch];
  if (v4 && (v5 = v4, [(SCATOnboardingManager *)self moveToNextItemSwitch], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v7 = [(SCATOnboardingManager *)self onboardController];
    [v7 startAfterSetUpSelectItemSwitchFlow];
  }

  else
  {
    v7 = [(SCATOnboardingManager *)self onboardController];
    [v7 startAfterSetUpMoveToNextItemSwitchFlow];
  }
}

- (void)resumeAutoScanningForSelectItemSwitch
{
  v3 = [(SCATOnboardingManager *)self selectItemSwitch];
  [v3 setAction:109];

  v4 = [(SCATOnboardingManager *)self selectItemSwitch];
  SCATAddOrUpdateSwitchToSettings();
}

- (void)removeAllOnboardingSwitches
{
  v3 = [(SCATOnboardingManager *)self selectItemSwitch];

  if (v3)
  {
    v4 = [(SCATOnboardingManager *)self selectItemSwitch];
    SCATRemoveSwitchFromSettings();

    [(SCATOnboardingManager *)self setSelectItemSwitch:0];
  }

  v5 = [(SCATOnboardingManager *)self moveToNextItemSwitch];

  if (v5)
  {
    v6 = [(SCATOnboardingManager *)self moveToNextItemSwitch];
    SCATRemoveSwitchFromSettings();

    [(SCATOnboardingManager *)self setMoveToNextItemSwitch:0];
  }
}

- (void)removeOnboardingSwitchForAction:(int64_t)a3
{
  if (a3 == 104)
  {
    v6 = [(SCATOnboardingManager *)self moveToNextItemSwitch];

    if (v6)
    {
      v7 = [(SCATOnboardingManager *)self moveToNextItemSwitch];
      SCATRemoveSwitchFromSettings();

      [(SCATOnboardingManager *)self setMoveToNextItemSwitch:0];
    }
  }

  else if (a3 == 103)
  {
    v4 = [(SCATOnboardingManager *)self selectItemSwitch];

    if (v4)
    {
      v5 = [(SCATOnboardingManager *)self selectItemSwitch];
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

- (void)setLastSwitchSourceController:(id)a3
{
  v4 = a3;
  if ([(SCATOnboardingManager *)self onboardAction]== &stru_20.flags + 3)
  {
    [(SCATOnboardingManager *)self setLastSelectItemController:v4];
  }

  else if ([(SCATOnboardingManager *)self onboardAction]== &stru_68)
  {
    [(SCATOnboardingManager *)self setLastMoveToNextItemController:v4];
  }
}

- (void)setSwitchControlEnabled:(BOOL)a3
{
  v3 = a3;
  v8 = _AXSTripleClickCopyOptions();
  _AXSAssistiveTouchScannerSetEnabled();
  if (v3)
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
    v5 = [v4 assistiveTouchScannerAddedTripleClickAutomatically];

    if (!v5)
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
  [v7 setAssistiveTouchScannerAddedTripleClickAutomatically:v3];

LABEL_8:
}

@end