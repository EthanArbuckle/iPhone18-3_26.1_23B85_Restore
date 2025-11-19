@interface BTTableSharingCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation BTTableSharingCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = BTTableSharingCellAccessibility;
  return (*MEMORY[0x29EDC7F70] | [(BTTableSharingCellAccessibility *)&v3 accessibilityTraits]) & ~*MEMORY[0x29EDC7FA8];
}

@end