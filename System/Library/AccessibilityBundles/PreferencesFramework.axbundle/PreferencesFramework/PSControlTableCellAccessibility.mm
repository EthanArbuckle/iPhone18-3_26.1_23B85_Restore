@interface PSControlTableCellAccessibility
- (id)_accessibilityAbsoluteValue;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation PSControlTableCellAccessibility

- (id)accessibilityLabel
{
  v9.receiver = self;
  v9.super_class = PSControlTableCellAccessibility;
  accessibilityLabel = [(PSControlTableCellAccessibility *)&v9 accessibilityLabel];
  if ([accessibilityLabel length])
  {
    accessibilityLabel2 = accessibilityLabel;
    v5 = accessibilityLabel2;
  }

  else
  {
    specifier = [(PSControlTableCellAccessibility *)self specifier];
    accessibilityLabel2 = [specifier accessibilityLabel];

    if ([accessibilityLabel2 length])
    {
      v7 = accessibilityLabel2;
    }

    else
    {
      v7 = [(PSControlTableCellAccessibility *)self safeStringForKey:@"title"];
    }

    v5 = v7;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  if ([(PSControlTableCellAccessibility *)self type]== 5)
  {
    v3 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"control"];
    accessibilityTraits = [v3 accessibilityTraits];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PSControlTableCellAccessibility;
    accessibilityTraits = [(PSControlTableCellAccessibility *)&v11 accessibilityTraits];
  }

  v5 = *MEMORY[0x29EDC7F70];
  if ((*MEMORY[0x29EDC7F70] & accessibilityTraits) == 0)
  {
    v5 = 0;
  }

  v6 = v5 ^ accessibilityTraits;
  v7 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"isUserInteractionEnabled"];
  bOOLValue = [v7 BOOLValue];

  v9 = *MEMORY[0x29EDC7FA8];
  if (bOOLValue)
  {
    v9 = 0;
  }

  return v9 | v6;
}

- (id)_accessibilityAbsoluteValue
{
  v2 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"_control"];
  _accessibilityAbsoluteValue = [v2 _accessibilityAbsoluteValue];

  return _accessibilityAbsoluteValue;
}

- (void)accessibilityIncrement
{
  v3 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"isUserInteractionEnabled"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    v5 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"_control"];
    [v5 accessibilityIncrement];
  }
}

- (void)accessibilityDecrement
{
  v3 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"isUserInteractionEnabled"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    v5 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"_control"];
    [v5 accessibilityDecrement];
  }
}

@end