@interface HUQuickControlStepperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySelectedStepperSegment;
- (id)_accessibilitySummaryView;
- (void)_accessibilityAnnounceState;
- (void)_handleGesture:(id)a3;
@end

@implementation HUQuickControlStepperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUQuickControlContainerView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlContainerView" hasInstanceMethod:@"summaryView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlStepperView" hasInstanceMethod:@"segmentViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlStepperView" hasInstanceMethod:@"_handleGesture:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HUQuickControlStepperView" hasInstanceMethod:@"selectedSegmentIndex" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlStepperSegmentView" hasInstanceMethod:@"isSegmentViewHighlighted" withFullSignature:{"B", 0}];
}

- (id)_accessibilitySelectedStepperSegment
{
  objc_opt_class();
  v3 = [(HUQuickControlStepperViewAccessibility *)self safeValueForKey:@"segmentViews"];
  v4 = __UIAccessibilityCastAsClass();

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __78__HUQuickControlStepperViewAccessibility__accessibilitySelectedStepperSegment__block_invoke;
  v7[3] = &unk_29F2C6F28;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __78__HUQuickControlStepperViewAccessibility__accessibilitySelectedStepperSegment__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 safeBoolForKey:@"isSegmentViewHighlighted"])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_handleGesture:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlStepperViewAccessibility *)self safeValueForKey:@"selectedSegmentIndex"];
  v7.receiver = self;
  v7.super_class = HUQuickControlStepperViewAccessibility;
  [(HUQuickControlStepperViewAccessibility *)&v7 _handleGesture:v4];

  v6 = [(HUQuickControlStepperViewAccessibility *)self safeValueForKey:@"selectedSegmentIndex"];
  if (v5 != v6)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)_accessibilityAnnounceState
{
  v2 = [(HUQuickControlStepperViewAccessibility *)self _accessibilitySummaryView];
  v4 = [v2 accessibilityValue];

  if (v4)
  {
    v3 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:v4];
    [v3 setAttribute:&unk_2A21CEBE0 forKey:*MEMORY[0x29EDBD860]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v3);
  }
}

- (id)_accessibilitySummaryView
{
  v2 = [(HUQuickControlStepperViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_10 startWithSelf:0];
  v3 = [v2 safeValueForKey:@"summaryView"];

  return v3;
}

uint64_t __67__HUQuickControlStepperViewAccessibility__accessibilitySummaryView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2DA460](@"HUQuickControlContainerView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end