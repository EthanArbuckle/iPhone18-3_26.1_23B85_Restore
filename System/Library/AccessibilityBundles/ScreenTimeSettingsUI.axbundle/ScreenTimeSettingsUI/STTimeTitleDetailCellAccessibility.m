@interface STTimeTitleDetailCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation STTimeTitleDetailCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = STTimeTitleDetailCellAccessibility;
  return [(STTimeTitleDetailCellAccessibility *)&v3 accessibilityTraits]& ~*MEMORY[0x29EDC7FA8];
}

@end