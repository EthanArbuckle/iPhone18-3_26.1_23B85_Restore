@interface SeymourUI_ProgramBrickItemCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SeymourUI_ProgramBrickItemCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SeymourUI_ProgramBrickItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SeymourUI_ProgramBrickItemCellAccessibility *)&v3 accessibilityTraits];
}

@end