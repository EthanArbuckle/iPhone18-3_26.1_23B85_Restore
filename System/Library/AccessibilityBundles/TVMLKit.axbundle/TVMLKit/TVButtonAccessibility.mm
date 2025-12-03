@interface TVButtonAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation TVButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TVButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TVButtonAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v3 = [(TVButtonAccessibility *)self safeValueForKey:@"textContentView"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(TVButtonAccessibility *)self safeValueForKey:@"imageView"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    if ([accessibilityLabel2 length])
    {
      [(TVButtonAccessibility *)self setAccessibilityHint:accessibilityLabel2];
    }
  }

  else
  {
    v7 = accessibilityLabel2;

    accessibilityLabel = v7;
  }

  if (![accessibilityLabel length])
  {
    v8 = [(TVButtonAccessibility *)self safeValueForKey:@"accessoryView"];
    accessibilityLabel3 = [v8 accessibilityLabel];

    accessibilityLabel = accessibilityLabel3;
  }

  return accessibilityLabel;
}

@end