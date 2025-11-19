@interface LUIUserTableViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation LUIUserTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = LUIUserTableViewCellAccessibility;
  return (*MEMORY[0x29EDC7F70] | [(LUIUserTableViewCellAccessibility *)&v3 accessibilityTraits]) & ~*MEMORY[0x29EDC7FC0];
}

@end