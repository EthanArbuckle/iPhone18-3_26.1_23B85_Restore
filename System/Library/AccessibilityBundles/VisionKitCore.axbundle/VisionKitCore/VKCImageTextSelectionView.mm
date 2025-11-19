@interface VKCImageTextSelectionView
@end

@implementation VKCImageTextSelectionView

void __67__VKCImageTextSelectionView_iOSAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if ([v8 length])
  {
    v7 = [[AXVKCImageTextSelectionViewAccessibilityElement alloc] initWithAccessibilityContainer:*(a1 + 32) textRange:a3, a4];
    [(AXVKCImageTextSelectionViewAccessibilityElement *)v7 set_accessibilityContent:v8];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

@end