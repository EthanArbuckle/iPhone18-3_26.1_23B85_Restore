@interface SUTableCellAccessibility
- (id)accessibilityHint;
- (id)accessibilityTableViewCellText;
- (id)accessibilityValue;
- (id)description;
- (unint64_t)accessibilityTraits;
@end

@implementation SUTableCellAccessibility

- (id)accessibilityTableViewCellText
{
  v2 = [(SUTableCellAccessibility *)self safeValueForKey:@"_configurationView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityHint
{
  v2 = [(SUTableCellAccessibility *)self safeValueForKey:@"_configurationView"];
  v3 = [v2 accessibilityHint];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(SUTableCellAccessibility *)self safeValueForKey:@"_configurationView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v11.receiver = self;
  v11.super_class = SUTableCellAccessibility;
  v3 = [(SUTableCellAccessibility *)&v11 accessibilityTraits];
  v4 = [(SUTableCellAccessibility *)self safeValueForKey:@"_configurationView"];
  v5 = [v4 accessibilityTraits];

  if (v5 == *MEMORY[0x29EDC7FA0])
  {
    v6 = *MEMORY[0x29EDC7FA0];
  }

  else
  {
    v6 = v5 | v3;
  }

  v7 = [(SUTableCellAccessibility *)self safeValueForKey:@"showHighlight"];
  v8 = [v7 BOOLValue];

  v9 = *MEMORY[0x29EDC7FC0];
  if (!v8)
  {
    v9 = 0;
  }

  return v9 | v6;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  v5 = [(SUTableCellAccessibility *)self safeValueForKey:@"_configurationView"];
  v6 = [(SUTableCellAccessibility *)self accessibilityTableViewCellText];
  v7 = [v3 stringWithFormat:@"<%@ %p> : %@ -- :%@:", v4, self, v5, v6];

  return v7;
}

@end