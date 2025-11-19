@interface MTUIBaseTableViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation MTUIBaseTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MTUIBaseTableViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MTUIBaseTableViewCellAccessibility *)&v3 accessibilityTraits];
}

@end