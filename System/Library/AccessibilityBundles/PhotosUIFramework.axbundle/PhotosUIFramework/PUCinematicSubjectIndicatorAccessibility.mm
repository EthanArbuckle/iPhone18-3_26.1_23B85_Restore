@interface PUCinematicSubjectIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axVideoEditOverlayViewController;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (void)_axUpdateElementFrame;
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
@end

@implementation PUCinematicSubjectIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUVideoEditOverlayViewController"];
  [validationsCopy validateClass:@"PUVideoEditOverlayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PUCinematicSubjectIndicator" hasInstanceMethod:@"shape" withFullSignature:{"q", 0}];
}

- (id)accessibilityValue
{
  v2 = [(PUCinematicSubjectIndicatorAccessibility *)self safeIntegerForKey:@"shape"]- 1;
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = accessibilityPULocalizedString(off_29F2E81C0[v2]);
  }

  return v3;
}

- (id)accessibilityHint
{
  v2 = [(PUCinematicSubjectIndicatorAccessibility *)self safeIntegerForKey:@"shape"];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = accessibilityPULocalizedString(off_29F2E81D8[v2]);
  }

  return v3;
}

- (id)_axVideoEditOverlayViewController
{
  v2 = [(PUCinematicSubjectIndicatorAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_2 startWithSelf:1];
  _accessibilityViewController = [v2 _accessibilityViewController];

  return _accessibilityViewController;
}

uint64_t __77__PUCinematicSubjectIndicatorAccessibility__axVideoEditOverlayViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Puvideoeditove_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)accessibilityElementDidBecomeFocused
{
  v9.receiver = self;
  v9.super_class = PUCinematicSubjectIndicatorAccessibility;
  [(PUCinematicSubjectIndicatorAccessibility *)&v9 accessibilityElementDidBecomeFocused];
  _axVideoEditOverlayViewController = [(PUCinematicSubjectIndicatorAccessibility *)self _axVideoEditOverlayViewController];
  [_axVideoEditOverlayViewController _axSetCinematicSubjectIndicatorDidBecomeFocused:1];
  _axCountdownTimer = [(PUCinematicSubjectIndicatorAccessibility *)self _axCountdownTimer];
  if (!_axCountdownTimer)
  {
    v5 = objc_alloc(MEMORY[0x29EDBD6A0]);
    _axCountdownTimer = [v5 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(PUCinematicSubjectIndicatorAccessibility *)self _setAXCountdownTimer:_axCountdownTimer];
  }

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __80__PUCinematicSubjectIndicatorAccessibility_accessibilityElementDidBecomeFocused__block_invoke;
  v6[3] = &unk_29F2E81A0;
  objc_copyWeak(&v7, &location);
  [_axCountdownTimer afterDelay:v6 processBlock:0.05];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __80__PUCinematicSubjectIndicatorAccessibility_accessibilityElementDidBecomeFocused__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axUpdateElementFrame];
}

- (void)accessibilityElementDidLoseFocus
{
  _axVideoEditOverlayViewController = [(PUCinematicSubjectIndicatorAccessibility *)self _axVideoEditOverlayViewController];
  [_axVideoEditOverlayViewController _axSetCinematicSubjectIndicatorDidBecomeFocused:0];
  v5.receiver = self;
  v5.super_class = PUCinematicSubjectIndicatorAccessibility;
  [(PUCinematicSubjectIndicatorAccessibility *)&v5 accessibilityElementDidLoseFocus];
  _axCountdownTimer = [(PUCinematicSubjectIndicatorAccessibility *)self _axCountdownTimer];
  [_axCountdownTimer cancel];
}

- (void)_axUpdateElementFrame
{
  _axCountdownTimer = [(PUCinematicSubjectIndicatorAccessibility *)self _axCountdownTimer];
  if (!_axCountdownTimer)
  {
    v4 = objc_alloc(MEMORY[0x29EDBD6A0]);
    _axCountdownTimer = [v4 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(PUCinematicSubjectIndicatorAccessibility *)self _setAXCountdownTimer:_axCountdownTimer];
  }

  if ([(PUCinematicSubjectIndicatorAccessibility *)self accessibilityElementIsFocused])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7428], self);
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __65__PUCinematicSubjectIndicatorAccessibility__axUpdateElementFrame__block_invoke;
    v5[3] = &unk_29F2E81A0;
    objc_copyWeak(&v6, &location);
    [_axCountdownTimer afterDelay:v5 processBlock:0.05];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __65__PUCinematicSubjectIndicatorAccessibility__axUpdateElementFrame__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axUpdateElementFrame];
}

@end