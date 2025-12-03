@interface PSTableCellAccessibility__DNDSettings__Preferences
- (unint64_t)accessibilityTraits;
@end

@implementation PSTableCellAccessibility__DNDSettings__Preferences

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = PSTableCellAccessibility__DNDSettings__Preferences;
  accessibilityTraits = [(PSTableCellAccessibility__DNDSettings__Preferences *)&v7 accessibilityTraits];
  accessibilityIdentifier = [(PSTableCellAccessibility__DNDSettings__Preferences *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier hasSuffix:@"DateRangePaneCell"];

  if (v5)
  {
    return accessibilityTraits & ~*MEMORY[0x29EDC7FA8] | *MEMORY[0x29EDC7F70];
  }

  return accessibilityTraits;
}

@end