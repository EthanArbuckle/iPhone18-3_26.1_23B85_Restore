@interface RPControlCenterMenuModuleViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axSpeakAndGo:(int64_t)go;
- (void)transitionToCountdownState;
- (void)updateStateAndUI;
@end

@implementation RPControlCenterMenuModuleViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RPControlCenterMenuModuleViewController" hasInstanceMethod:@"updateStateAndUI" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"RPControlCenterMenuModuleViewController" hasInstanceMethod:@"transitionToCountdownState" withFullSignature:{"v", 0}];
}

- (void)updateStateAndUI
{
  v4.receiver = self;
  v4.super_class = RPControlCenterMenuModuleViewControllerAccessibility;
  [(RPControlCenterMenuModuleViewControllerAccessibility *)&v4 updateStateAndUI];
  _axCountdownTimer = [(RPControlCenterMenuModuleViewControllerAccessibility *)self _axCountdownTimer];
  [_axCountdownTimer cancel];
}

- (void)_axSpeakAndGo:(int64_t)go
{
  v5 = AXFormatInteger();
  UIAccessibilitySpeakAndDoNotBeInterrupted();

  if (go >= 2)
  {
    _axCountdownTimer = [(RPControlCenterMenuModuleViewControllerAccessibility *)self _axCountdownTimer];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __70__RPControlCenterMenuModuleViewControllerAccessibility__axSpeakAndGo___block_invoke;
    v7[3] = &unk_29F2F1F08;
    v7[4] = self;
    v7[5] = go;
    [_axCountdownTimer afterDelay:v7 processBlock:1.0];
  }
}

- (void)transitionToCountdownState
{
  v5.receiver = self;
  v5.super_class = RPControlCenterMenuModuleViewControllerAccessibility;
  [(RPControlCenterMenuModuleViewControllerAccessibility *)&v5 transitionToCountdownState];
  _axCountdownTimer = [(RPControlCenterMenuModuleViewControllerAccessibility *)self _axCountdownTimer];
  if (!_axCountdownTimer)
  {
    v4 = objc_alloc(MEMORY[0x29EDBD6A0]);
    _axCountdownTimer = [v4 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(RPControlCenterMenuModuleViewControllerAccessibility *)self _setAXCountdownTimer:_axCountdownTimer];
  }

  [(RPControlCenterMenuModuleViewControllerAccessibility *)self _axSpeakAndGo:3];
}

@end