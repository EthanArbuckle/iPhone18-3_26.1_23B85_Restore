@interface LAUIPhysicalButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_updateOnScreen;
@end

@implementation LAUIPhysicalButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LAUIPhysicalButtonView" hasInstanceMethod:@"_updateOnScreen" withFullSignature:{"v", 0}];
  [v3 validateClass:@"LAUIPhysicalButtonView" hasInstanceVariable:@"_instruction" withType:"NSString"];
  [v3 validateClass:@"LAUIPhysicalButtonView" hasInstanceVariable:@"_onScreen" withType:"B"];
}

- (void)_updateOnScreen
{
  v3.receiver = self;
  v3.super_class = LAUIPhysicalButtonViewAccessibility;
  [(LAUIPhysicalButtonViewAccessibility *)&v3 _updateOnScreen];
  if ([(LAUIPhysicalButtonViewAccessibility *)self safeBoolForKey:@"_onScreen"])
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __54__LAUIPhysicalButtonViewAccessibility__updateOnScreen__block_invoke(uint64_t a1)
{
  v2 = accessibilityLocalizedString(@"lock.button");
  v3 = [*(a1 + 32) safeStringForKey:@"_instruction"];
  v4 = __UIAXStringForVariables();

  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

@end