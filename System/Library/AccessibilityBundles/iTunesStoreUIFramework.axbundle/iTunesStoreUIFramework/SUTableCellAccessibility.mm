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
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  v2 = [(SUTableCellAccessibility *)self safeValueForKey:@"_configurationView"];
  accessibilityHint = [v2 accessibilityHint];

  return accessibilityHint;
}

- (id)accessibilityValue
{
  v2 = [(SUTableCellAccessibility *)self safeValueForKey:@"_configurationView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v11.receiver = self;
  v11.super_class = SUTableCellAccessibility;
  accessibilityTraits = [(SUTableCellAccessibility *)&v11 accessibilityTraits];
  v4 = [(SUTableCellAccessibility *)self safeValueForKey:@"_configurationView"];
  accessibilityTraits2 = [v4 accessibilityTraits];

  if (accessibilityTraits2 == *MEMORY[0x29EDC7FA0])
  {
    v6 = *MEMORY[0x29EDC7FA0];
  }

  else
  {
    v6 = accessibilityTraits2 | accessibilityTraits;
  }

  v7 = [(SUTableCellAccessibility *)self safeValueForKey:@"showHighlight"];
  bOOLValue = [v7 BOOLValue];

  v9 = *MEMORY[0x29EDC7FC0];
  if (!bOOLValue)
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
  accessibilityTableViewCellText = [(SUTableCellAccessibility *)self accessibilityTableViewCellText];
  v7 = [v3 stringWithFormat:@"<%@ %p> : %@ -- :%@:", v4, self, v5, accessibilityTableViewCellText];

  return v7;
}

@end