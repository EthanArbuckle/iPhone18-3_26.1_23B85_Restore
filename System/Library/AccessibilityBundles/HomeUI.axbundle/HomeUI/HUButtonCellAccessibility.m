@interface HUButtonCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation HUButtonCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUButtonCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HUButtonCellAccessibility *)&v3 accessibilityTraits];
}

@end