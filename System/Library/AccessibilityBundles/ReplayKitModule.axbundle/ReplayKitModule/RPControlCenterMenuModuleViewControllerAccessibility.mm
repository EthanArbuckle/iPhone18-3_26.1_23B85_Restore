@interface RPControlCenterMenuModuleViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axSpeakAndGo:(int64_t)a3;
- (void)transitionToCountdownState;
- (void)updateStateAndUI;
@end

@implementation RPControlCenterMenuModuleViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RPControlCenterMenuModuleViewController" hasInstanceMethod:@"updateStateAndUI" withFullSignature:{"v", 0}];
  [v3 validateClass:@"RPControlCenterMenuModuleViewController" hasInstanceMethod:@"transitionToCountdownState" withFullSignature:{"v", 0}];
}

- (void)updateStateAndUI
{
  v4.receiver = self;
  v4.super_class = RPControlCenterMenuModuleViewControllerAccessibility;
  [(RPControlCenterMenuModuleViewControllerAccessibility *)&v4 updateStateAndUI];
  v3 = [(RPControlCenterMenuModuleViewControllerAccessibility *)self _axCountdownTimer];
  [v3 cancel];
}

- (void)_axSpeakAndGo:(int64_t)a3
{
  v5 = AXFormatInteger();
  UIAccessibilitySpeakAndDoNotBeInterrupted();

  if (a3 >= 2)
  {
    v6 = [(RPControlCenterMenuModuleViewControllerAccessibility *)self _axCountdownTimer];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __70__RPControlCenterMenuModuleViewControllerAccessibility__axSpeakAndGo___block_invoke;
    v7[3] = &unk_29F2F1F08;
    v7[4] = self;
    v7[5] = a3;
    [v6 afterDelay:v7 processBlock:1.0];
  }
}

- (void)transitionToCountdownState
{
  v5.receiver = self;
  v5.super_class = RPControlCenterMenuModuleViewControllerAccessibility;
  [(RPControlCenterMenuModuleViewControllerAccessibility *)&v5 transitionToCountdownState];
  v3 = [(RPControlCenterMenuModuleViewControllerAccessibility *)self _axCountdownTimer];
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v3 = [v4 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(RPControlCenterMenuModuleViewControllerAccessibility *)self _setAXCountdownTimer:v3];
  }

  [(RPControlCenterMenuModuleViewControllerAccessibility *)self _axSpeakAndGo:3];
}

@end