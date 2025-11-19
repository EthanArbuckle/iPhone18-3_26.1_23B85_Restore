@interface UITabSidebarCellAccessibility
@end

@implementation UITabSidebarCellAccessibility

uint64_t __60___UITabSidebarCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) canInsertFavoriteTab:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __60___UITabSidebarCellAccessibility_accessibilityCustomActions__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v4 = MEMORY[0x29EDCA5F8];
  v5 = -1073741824;
  v6 = 0;
  v7 = __60___UITabSidebarCellAccessibility_accessibilityCustomActions__block_invoke_3;
  v8 = &unk_29F30C888;
  v9 = MEMORY[0x29EDC9748](a1[4]);
  v10[0] = MEMORY[0x29EDC9748](a1[5]);
  AXPerformSafeBlock();
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return 1;
}

uint64_t __68___UITabSidebarCellAccessibility_accessibilityDragSourceDescriptors__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) canInsertFavoriteTab:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end