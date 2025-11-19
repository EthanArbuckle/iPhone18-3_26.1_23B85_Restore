@interface MT
@end

@implementation MT

void __56__MT_UIPageControlAccessibility__axStopWatchAdjustPage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentPage:*(a1 + 40)];
  v1 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v1, 0);
}

@end