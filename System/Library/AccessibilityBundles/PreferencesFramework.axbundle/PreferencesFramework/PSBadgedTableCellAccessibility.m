@interface PSBadgedTableCellAccessibility
- (id)accessibilityValue;
- (void)badgeWithInteger:(int64_t)a3;
@end

@implementation PSBadgedTableCellAccessibility

- (void)badgeWithInteger:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = PSBadgedTableCellAccessibility;
  [(PSBadgedTableCellAccessibility *)&v6 badgeWithInteger:?];
  v5 = [MEMORY[0x29EDBA070] numberWithInteger:a3];
  [(PSBadgedTableCellAccessibility *)self _accessibilitySetRetainedValue:v5 forKey:@"AXBadgeNumber"];
}

- (id)accessibilityValue
{
  v3 = [(PSBadgedTableCellAccessibility *)self _accessibilityValueForKey:@"AXBadgeNumber"];
  v4 = [v3 intValue];
  if (v4 < 1)
  {
    v10.receiver = self;
    v10.super_class = PSBadgedTableCellAccessibility;
    v8 = [(PSBadgedTableCellAccessibility *)&v10 accessibilityValue];
  }

  else
  {
    v5 = v4;
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"software.update.cell.count");
    v8 = [v6 localizedStringWithFormat:v7, v5];
  }

  return v8;
}

@end