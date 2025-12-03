@interface LabeledButtonViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation LabeledButtonViewAccessibility

- (id)accessibilityLabel
{
  controlView = [(LabeledButtonViewAccessibility *)self controlView];
  accessibilityLabel = [controlView accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  controlView = [(LabeledButtonViewAccessibility *)self controlView];
  accessibilityTraits = [controlView accessibilityTraits];

  return accessibilityTraits;
}

- (id)accessibilityValue
{
  controlView = [(LabeledButtonViewAccessibility *)self controlView];
  accessibilityValue = [controlView accessibilityValue];

  return accessibilityValue;
}

@end