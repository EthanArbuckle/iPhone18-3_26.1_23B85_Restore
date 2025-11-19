@interface WGWidgetListScrollViewAccessibility
@end

@implementation WGWidgetListScrollViewAccessibility

uint64_t __65___WGWidgetListScrollViewAccessibility__axAdjustedFrameForFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29ED42A50](@"WGMajorListViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end