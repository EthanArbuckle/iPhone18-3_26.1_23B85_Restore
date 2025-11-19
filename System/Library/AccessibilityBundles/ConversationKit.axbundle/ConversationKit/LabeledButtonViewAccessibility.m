@interface LabeledButtonViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation LabeledButtonViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(LabeledButtonViewAccessibility *)self controlView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(LabeledButtonViewAccessibility *)self controlView];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(LabeledButtonViewAccessibility *)self controlView];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end