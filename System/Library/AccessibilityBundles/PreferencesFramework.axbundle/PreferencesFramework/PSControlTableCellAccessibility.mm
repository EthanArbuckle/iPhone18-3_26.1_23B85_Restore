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
  v3 = [(PSControlTableCellAccessibility *)&v9 accessibilityLabel];
  if ([v3 length])
  {
    v4 = v3;
    v5 = v4;
  }

  else
  {
    v6 = [(PSControlTableCellAccessibility *)self specifier];
    v4 = [v6 accessibilityLabel];

    if ([v4 length])
    {
      v7 = v4;
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
    v4 = [v3 accessibilityTraits];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PSControlTableCellAccessibility;
    v4 = [(PSControlTableCellAccessibility *)&v11 accessibilityTraits];
  }

  v5 = *MEMORY[0x29EDC7F70];
  if ((*MEMORY[0x29EDC7F70] & v4) == 0)
  {
    v5 = 0;
  }

  v6 = v5 ^ v4;
  v7 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"isUserInteractionEnabled"];
  v8 = [v7 BOOLValue];

  v9 = *MEMORY[0x29EDC7FA8];
  if (v8)
  {
    v9 = 0;
  }

  return v9 | v6;
}

- (id)_accessibilityAbsoluteValue
{
  v2 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"_control"];
  v3 = [v2 _accessibilityAbsoluteValue];

  return v3;
}

- (void)accessibilityIncrement
{
  v3 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"isUserInteractionEnabled"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"_control"];
    [v5 accessibilityIncrement];
  }
}

- (void)accessibilityDecrement
{
  v3 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"isUserInteractionEnabled"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(PSControlTableCellAccessibility *)self safeValueForKey:@"_control"];
    [v5 accessibilityDecrement];
  }
}

@end