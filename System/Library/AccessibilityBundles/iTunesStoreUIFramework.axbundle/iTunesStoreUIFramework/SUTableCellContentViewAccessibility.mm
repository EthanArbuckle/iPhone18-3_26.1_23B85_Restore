@interface SUTableCellContentViewAccessibility
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)description;
- (unint64_t)accessibilityTraits;
@end

@implementation SUTableCellContentViewAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = [(SUTableCellContentViewAccessibility *)self safeValueForKey:@"_configuration"];
  accessibilityTraits = [v2 accessibilityTraits];

  return accessibilityTraits;
}

- (id)accessibilityHint
{
  v2 = [(SUTableCellContentViewAccessibility *)self safeValueForKey:@"_configuration"];
  accessibilityHint = [v2 accessibilityHint];

  return accessibilityHint;
}

- (id)accessibilityLabel
{
  v2 = [(SUTableCellContentViewAccessibility *)self safeValueForKey:@"_configuration"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(SUTableCellContentViewAccessibility *)self safeValueForKey:@"_configuration"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = [(SUTableCellContentViewAccessibility *)self safeValueForKey:@"_configuration"];
  v5 = [v3 stringWithFormat:@"<SUTableCellContentView %p> : %@", self, v4];

  return v5;
}

@end