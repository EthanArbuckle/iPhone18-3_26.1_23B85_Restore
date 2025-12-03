@interface AXCSScrollGestureControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)accessibilitySetSystemDashBoardGesturesEnabled:(BOOL)enabled;
- (void)setScrollingStrategy:(int64_t)strategy;
@end

@implementation AXCSScrollGestureControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSScrollGestureController" hasInstanceMethod:@"setScrollingStrategy:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"CSScrollGestureController" hasInstanceMethod:@"scrollingStrategy" withFullSignature:{"q", 0}];
}

- (void)setScrollingStrategy:(int64_t)strategy
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [(AXCSScrollGestureControllerAccessibility *)self _accessibilitySetSavedScrollingStrategy:v5];

  _accessibilityForcedScrollingStrategy = [(AXCSScrollGestureControllerAccessibility *)self _accessibilityForcedScrollingStrategy];
  if (!_accessibilityForcedScrollingStrategy)
  {
    v7.receiver = self;
    v7.super_class = AXCSScrollGestureControllerAccessibility;
    [(AXCSScrollGestureControllerAccessibility *)&v7 setScrollingStrategy:strategy];
  }
}

- (void)accessibilitySetSystemDashBoardGesturesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _accessibilitySavedScrollingStrategy = [(AXCSScrollGestureControllerAccessibility *)self _accessibilitySavedScrollingStrategy];
  v6 = _accessibilitySavedScrollingStrategy;
  if (enabledCopy)
  {
    [(AXCSScrollGestureControllerAccessibility *)self _accessibilitySetForcedScrollingStrategy:0];
    if (v6)
    {
      v9 = v6;
      AXPerformSafeBlock();
    }

    [(AXCSScrollGestureControllerAccessibility *)self _accessibilitySetSavedScrollingStrategy:0];
  }

  else
  {
    if (!_accessibilitySavedScrollingStrategy)
    {
      v7 = [(AXCSScrollGestureControllerAccessibility *)self safeIntegerForKey:@"scrollingStrategy"];
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      [(AXCSScrollGestureControllerAccessibility *)self _accessibilitySetSavedScrollingStrategy:v8];
    }

    AXPerformSafeBlock();
    [(AXCSScrollGestureControllerAccessibility *)self _accessibilitySetForcedScrollingStrategy:&unk_2833B1270];
  }
}

id __91__AXCSScrollGestureControllerAccessibility_accessibilitySetSystemDashBoardGesturesEnabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) integerValue];
  v4.receiver = v1;
  v4.super_class = AXCSScrollGestureControllerAccessibility;
  return objc_msgSendSuper2(&v4, sel_setScrollingStrategy_, v2);
}

id __91__AXCSScrollGestureControllerAccessibility_accessibilitySetSystemDashBoardGesturesEnabled___block_invoke_2(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = AXCSScrollGestureControllerAccessibility;
  return objc_msgSendSuper2(&v2, sel_setScrollingStrategy_, 3);
}

@end