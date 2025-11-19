@interface HUQuickControlStepperSegmentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySummaryView;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HUQuickControlStepperSegmentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUQuickControlStepperSegmentView" hasInstanceMethod:@"isSegmentViewHighlighted" withFullSignature:{"B", 0}];
  [v3 validateClass:@"HUQuickControlStepperSegmentView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlContainerView"];
  [v3 validateClass:@"HUQuickControlContainerView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlContainerView" hasInstanceMethod:@"summaryView" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v2 = [(HUQuickControlStepperSegmentViewAccessibility *)self safeBoolForKey:@"isSegmentViewHighlighted"];
  v3 = *MEMORY[0x29EDC7FC0];
  if (!v2)
  {
    v3 = 0;
  }

  return *MEMORY[0x29EDC7FC8] | *MEMORY[0x29EDC7F70] | v3;
}

- (id)accessibilityLabel
{
  v2 = [(HUQuickControlStepperSegmentViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  if ([(HUQuickControlStepperSegmentViewAccessibility *)self safeBoolForKey:@"isHighlighted"])
  {
    v3 = [(HUQuickControlStepperSegmentViewAccessibility *)self _accessibilitySummaryView];
    v4 = [v3 accessibilityValue];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = HUQuickControlStepperSegmentViewAccessibility;
    v4 = [(HUQuickControlStepperSegmentViewAccessibility *)&v6 accessibilityValue];
  }

  return v4;
}

uint64_t __76__HUQuickControlStepperSegmentViewAccessibility__accessibilityContainerView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2DA460](@"HUQuickControlContainerView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilitySummaryView
{
  v2 = [(HUQuickControlStepperSegmentViewAccessibility *)self _accessibilityContainerView];
  v3 = [v2 safeValueForKey:@"summaryView"];

  return v3;
}

@end