@interface WGCarouselListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
@end

@implementation WGCarouselListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WGCarouselListViewController" hasInstanceMethod:@"setFooterVisible:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"WGCarouselListViewController" hasInstanceMethod:@"isVisuallyRevealed" withFullSignature:{"B", 0}];
  [v3 validateClass:@"WGCarouselListViewController" hasInstanceMethod:@"setVisuallyRevealed:" withFullSignature:{"v", "B", 0}];
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (a3 == 4 && ([(WGCarouselListViewControllerAccessibility *)self safeBoolForKey:@"isVisuallyRevealed"]& 1) == 0)
  {
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WGCarouselListViewControllerAccessibility;
    return [(WGCarouselListViewControllerAccessibility *)&v6 accessibilityScroll:a3];
  }
}

void __65__WGCarouselListViewControllerAccessibility_accessibilityScroll___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVisuallyRevealed:1];
  v1 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v1, 0);
}

@end