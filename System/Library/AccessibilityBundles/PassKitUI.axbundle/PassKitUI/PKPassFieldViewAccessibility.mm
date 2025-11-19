@interface PKPassFieldViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKPassFieldViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(PKPassFieldViewAccessibility *)self safeValueForKey:@"labelLabel"];
  v3 = [v2 accessibilityLabel];

  if ([v3 isEqualToString:@"***"])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (id)accessibilityValue
{
  v2 = [(PKPassFieldViewAccessibility *)self safeValueForKey:@"valueLabel"];
  v3 = [v2 accessibilityLabel];

  if ([v3 isEqualToString:@"***"])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

@end