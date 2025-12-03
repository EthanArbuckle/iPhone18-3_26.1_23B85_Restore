@interface PKPassFieldViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKPassFieldViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(PKPassFieldViewAccessibility *)self safeValueForKey:@"labelLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  if ([accessibilityLabel isEqualToString:@"***"])
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLabel;
  }

  return v4;
}

- (id)accessibilityValue
{
  v2 = [(PKPassFieldViewAccessibility *)self safeValueForKey:@"valueLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  if ([accessibilityLabel isEqualToString:@"***"])
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLabel;
  }

  return v4;
}

@end