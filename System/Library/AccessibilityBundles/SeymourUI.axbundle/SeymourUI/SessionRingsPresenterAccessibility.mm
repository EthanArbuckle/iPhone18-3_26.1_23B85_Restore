@interface SessionRingsPresenterAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
+ (void)onAllRingsCompletion;
+ (void)onExerciseRingCompletion;
+ (void)onMoveRingCompletion;
+ (void)onStandRingCompletion;
@end

@implementation SessionRingsPresenterAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.AccessibilitySessionRingsPresenter" hasClassMethod:@"onMoveRingCompletion" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SeymourUI.AccessibilitySessionRingsPresenter" hasClassMethod:@"onExerciseRingCompletion" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SeymourUI.AccessibilitySessionRingsPresenter" hasClassMethod:@"onStandRingCompletion" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SeymourUI.AccessibilitySessionRingsPresenter" hasClassMethod:@"onAllRingsCompletion" withFullSignature:{"v", 0}];
}

+ (void)onMoveRingCompletion
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SessionRingsPresenterAccessibility;
  objc_msgSendSuper2(&v4, sel_onMoveRingCompletion);
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = accessibilityLocalizedString(@"rings.closed.move");
  UIAccessibilityPostNotification(v2, v3);
}

+ (void)onExerciseRingCompletion
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SessionRingsPresenterAccessibility;
  objc_msgSendSuper2(&v4, sel_onExerciseRingCompletion);
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = accessibilityLocalizedString(@"rings.closed.exercise");
  UIAccessibilityPostNotification(v2, v3);
}

+ (void)onStandRingCompletion
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SessionRingsPresenterAccessibility;
  objc_msgSendSuper2(&v4, sel_onStandRingCompletion);
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = accessibilityLocalizedString(@"rings.closed.stand");
  UIAccessibilityPostNotification(v2, v3);
}

+ (void)onAllRingsCompletion
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SessionRingsPresenterAccessibility;
  objc_msgSendSuper2(&v4, sel_onAllRingsCompletion);
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = accessibilityLocalizedString(@"rings.closed.all");
  UIAccessibilityPostNotification(v2, v3);
}

@end