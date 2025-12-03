@interface PSBadgedTableCellAccessibility
- (id)accessibilityValue;
- (void)badgeWithInteger:(int64_t)integer;
@end

@implementation PSBadgedTableCellAccessibility

- (void)badgeWithInteger:(int64_t)integer
{
  v6.receiver = self;
  v6.super_class = PSBadgedTableCellAccessibility;
  [(PSBadgedTableCellAccessibility *)&v6 badgeWithInteger:?];
  v5 = [MEMORY[0x29EDBA070] numberWithInteger:integer];
  [(PSBadgedTableCellAccessibility *)self _accessibilitySetRetainedValue:v5 forKey:@"AXBadgeNumber"];
}

- (id)accessibilityValue
{
  v3 = [(PSBadgedTableCellAccessibility *)self _accessibilityValueForKey:@"AXBadgeNumber"];
  intValue = [v3 intValue];
  if (intValue < 1)
  {
    v10.receiver = self;
    v10.super_class = PSBadgedTableCellAccessibility;
    accessibilityValue = [(PSBadgedTableCellAccessibility *)&v10 accessibilityValue];
  }

  else
  {
    v5 = intValue;
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"software.update.cell.count");
    accessibilityValue = [v6 localizedStringWithFormat:v7, v5];
  }

  return accessibilityValue;
}

@end