@interface UIStatusBarCellularItemAccessibility
@end

@implementation UIStatusBarCellularItemAccessibility

double __83___UIStatusBarCellularItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) entryForDisplayItemWithIdentifier:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

@end