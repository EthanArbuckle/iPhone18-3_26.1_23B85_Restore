@interface PSTableCellAccessibility__DNDSettings__Preferences
- (unint64_t)accessibilityTraits;
@end

@implementation PSTableCellAccessibility__DNDSettings__Preferences

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = PSTableCellAccessibility__DNDSettings__Preferences;
  v3 = [(PSTableCellAccessibility__DNDSettings__Preferences *)&v7 accessibilityTraits];
  v4 = [(PSTableCellAccessibility__DNDSettings__Preferences *)self accessibilityIdentifier];
  v5 = [v4 hasSuffix:@"DateRangePaneCell"];

  if (v5)
  {
    return v3 & ~*MEMORY[0x29EDC7FA8] | *MEMORY[0x29EDC7F70];
  }

  return v3;
}

@end