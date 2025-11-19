@interface UIFloatingTabBarItemViewAccessibility
@end

@implementation UIFloatingTabBarItemViewAccessibility

double __63___UIFloatingTabBarItemViewAccessibility_accessibilityRowRange__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _indexPathForTabItem:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

uint64_t __63___UIFloatingTabBarItemViewAccessibility_accessibilityRowRange__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _indexInDataSourceForItemAtIndexPath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __68___UIFloatingTabBarItemViewAccessibility_accessibilityCustomActions__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v4 = MEMORY[0x29EDCA5F8];
  v5 = -1073741824;
  v6 = 0;
  v7 = __68___UIFloatingTabBarItemViewAccessibility_accessibilityCustomActions__block_invoke_2;
  v8 = &unk_29F30C888;
  v9 = MEMORY[0x29EDC9748](a1[4]);
  v10[0] = MEMORY[0x29EDC9748](a1[5]);
  AXPerformSafeBlock();
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return 1;
}

BOOL __59___UIFloatingTabBarItemViewAccessibility_accessibilityPath__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] layer];
  [v4 cornerRadius];
  v5 = v2;
  MEMORY[0x29EDC9740](v4);
  v7 = v5 != 0.0;
  objc_storeStrong(location, 0);
  return v7;
}

@end