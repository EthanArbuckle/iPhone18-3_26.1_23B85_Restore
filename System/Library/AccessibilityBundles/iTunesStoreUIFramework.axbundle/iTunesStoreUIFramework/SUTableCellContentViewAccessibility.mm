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
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (id)accessibilityHint
{
  v2 = [(SUTableCellContentViewAccessibility *)self safeValueForKey:@"_configuration"];
  v3 = [v2 accessibilityHint];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(SUTableCellContentViewAccessibility *)self safeValueForKey:@"_configuration"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(SUTableCellContentViewAccessibility *)self safeValueForKey:@"_configuration"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = [(SUTableCellContentViewAccessibility *)self safeValueForKey:@"_configuration"];
  v5 = [v3 stringWithFormat:@"<SUTableCellContentView %p> : %@", self, v4];

  return v5;
}

@end