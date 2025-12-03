@interface RootSideBarProfileViewAccessibility
- (id)accessibilityLabel;
@end

@implementation RootSideBarProfileViewAccessibility

- (id)accessibilityLabel
{
  v2 = MEMORY[0x29EDB8E10];
  v3 = [(RootSideBarProfileViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_16];
  v4 = [v3 ax_mappedArrayUsingBlock:&__block_literal_global_296];
  v5 = [v2 orderedSetWithArray:v4];

  array = [v5 array];
  v7 = AXLabelForElements();

  return v7;
}

uint64_t __57__RootSideBarProfileViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VUILabel");
  if (objc_opt_isKindOfClass())
  {
    v3 = 1;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v3 = [v5 axContainsString:@"SideBarClockView"];
  }

  return v3;
}

@end