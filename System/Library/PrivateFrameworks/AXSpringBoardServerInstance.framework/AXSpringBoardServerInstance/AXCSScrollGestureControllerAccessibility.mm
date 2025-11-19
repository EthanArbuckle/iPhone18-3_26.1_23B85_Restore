@interface AXCSScrollGestureControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)accessibilitySetSystemDashBoardGesturesEnabled:(BOOL)a3;
- (void)setScrollingStrategy:(int64_t)a3;
@end

@implementation AXCSScrollGestureControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CSScrollGestureController" hasInstanceMethod:@"setScrollingStrategy:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"CSScrollGestureController" hasInstanceMethod:@"scrollingStrategy" withFullSignature:{"q", 0}];
}

- (void)setScrollingStrategy:(int64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [(AXCSScrollGestureControllerAccessibility *)self _accessibilitySetSavedScrollingStrategy:v5];

  v6 = [(AXCSScrollGestureControllerAccessibility *)self _accessibilityForcedScrollingStrategy];
  if (!v6)
  {
    v7.receiver = self;
    v7.super_class = AXCSScrollGestureControllerAccessibility;
    [(AXCSScrollGestureControllerAccessibility *)&v7 setScrollingStrategy:a3];
  }
}

- (void)accessibilitySetSystemDashBoardGesturesEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXCSScrollGestureControllerAccessibility *)self _accessibilitySavedScrollingStrategy];
  v6 = v5;
  if (v3)
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
    if (!v5)
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