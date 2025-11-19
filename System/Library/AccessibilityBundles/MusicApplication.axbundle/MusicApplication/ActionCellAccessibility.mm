@interface ActionCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation ActionCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ActionCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ActionCellAccessibility *)&v3 accessibilityTraits];
}

@end