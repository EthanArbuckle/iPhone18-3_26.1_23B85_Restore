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
  v4 = [v3 accessibilityLabel];

  v5 = [(TVButtonAccessibility *)self safeValueForKey:@"imageView"];
  v6 = [v5 accessibilityLabel];

  if ([v4 length])
  {
    if ([v6 length])
    {
      [(TVButtonAccessibility *)self setAccessibilityHint:v6];
    }
  }

  else
  {
    v7 = v6;

    v4 = v7;
  }

  if (![v4 length])
  {
    v8 = [(TVButtonAccessibility *)self safeValueForKey:@"accessoryView"];
    v9 = [v8 accessibilityLabel];

    v4 = v9;
  }

  return v4;
}

@end