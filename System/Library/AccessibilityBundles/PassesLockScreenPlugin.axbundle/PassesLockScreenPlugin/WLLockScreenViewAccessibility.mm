@interface WLLockScreenViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (void)didAppear;
- (void)willDisappear;
@end

@implementation WLLockScreenViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WLLockScreenCardsViewController" hasInstanceMethod:@"dismissAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"WLLockScreenView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WLLockScreenView" hasInstanceMethod:@"didAppear" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WLLockScreenView" hasInstanceMethod:@"willDisappear" withFullSignature:{"v", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __59__WLLockScreenViewAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  v3 = __UIAccessibilitySafeClass();

  [v3 dismissAnimated:1];
  AXPerformBlockOnMainThreadAfterDelay();
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (void)didAppear
{
  v2.receiver = self;
  v2.super_class = WLLockScreenViewAccessibility;
  [(WLLockScreenViewAccessibility *)&v2 didAppear];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)willDisappear
{
  v2.receiver = self;
  v2.super_class = WLLockScreenViewAccessibility;
  [(WLLockScreenViewAccessibility *)&v2 willDisappear];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end