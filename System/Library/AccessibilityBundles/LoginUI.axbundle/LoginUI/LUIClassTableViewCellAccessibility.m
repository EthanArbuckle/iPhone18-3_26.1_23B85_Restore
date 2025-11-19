@interface LUIClassTableViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation LUIClassTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = LUIClassTableViewCellAccessibility;
  return (*MEMORY[0x29EDC7F70] | [(LUIClassTableViewCellAccessibility *)&v3 accessibilityTraits]) & ~*MEMORY[0x29EDC7FC0];
}

@end