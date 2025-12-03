@interface HUQuickControlStepperSegmentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySummaryView;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HUQuickControlStepperSegmentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUQuickControlStepperSegmentView" hasInstanceMethod:@"isSegmentViewHighlighted" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HUQuickControlStepperSegmentView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlContainerView"];
  [validationsCopy validateClass:@"HUQuickControlContainerView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlContainerView" hasInstanceMethod:@"summaryView" withFullSignature:{"@", 0}];
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
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  if ([(HUQuickControlStepperSegmentViewAccessibility *)self safeBoolForKey:@"isHighlighted"])
  {
    _accessibilitySummaryView = [(HUQuickControlStepperSegmentViewAccessibility *)self _accessibilitySummaryView];
    accessibilityValue = [_accessibilitySummaryView accessibilityValue];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = HUQuickControlStepperSegmentViewAccessibility;
    accessibilityValue = [(HUQuickControlStepperSegmentViewAccessibility *)&v6 accessibilityValue];
  }

  return accessibilityValue;
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
  _accessibilityContainerView = [(HUQuickControlStepperSegmentViewAccessibility *)self _accessibilityContainerView];
  v3 = [_accessibilityContainerView safeValueForKey:@"summaryView"];

  return v3;
}

@end