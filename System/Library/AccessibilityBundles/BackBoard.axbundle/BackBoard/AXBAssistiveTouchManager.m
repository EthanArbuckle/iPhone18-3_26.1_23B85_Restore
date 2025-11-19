@interface AXBAssistiveTouchManager
+ (void)initializeMonitor;
- (AXBAssistiveTouchManager)init;
- (void)_kickstartAssistiveTouchIfNeeded;
@end

@implementation AXBAssistiveTouchManager

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_12 != -1)
  {
    +[AXBAssistiveTouchManager initializeMonitor];
  }
}

uint64_t __45__AXBAssistiveTouchManager_initializeMonitor__block_invoke()
{
  SharedManager_3 = objc_opt_new();

  return MEMORY[0x2A1C71028]();
}

- (AXBAssistiveTouchManager)init
{
  v7.receiver = self;
  v7.super_class = AXBAssistiveTouchManager;
  v2 = [(AXBAssistiveTouchManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(AXBAssistiveTouchManager *)v2 _kickstartAssistiveTouchIfNeeded];
    v4 = [MEMORY[0x29EDBA068] defaultCenter];
    [v4 addObserver:v3 selector:sel__kickstartAssistiveTouchIfNeeded name:*MEMORY[0x29EDC83E0] object:0];

    v5 = [MEMORY[0x29EDBA068] defaultCenter];
    [v5 addObserver:v3 selector:sel__kickstartAssistiveTouchIfNeeded name:*MEMORY[0x29EDC83E8] object:0];
  }

  return v3;
}

- (void)_kickstartAssistiveTouchIfNeeded
{
  if (_AXSAssistiveTouchEnabled() || _AXSAssistiveTouchScannerEnabled())
  {

    MEMORY[0x2A1C6C938]();
  }
}

@end