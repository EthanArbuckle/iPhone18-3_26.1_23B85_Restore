@interface WGCarouselListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
@end

@implementation WGCarouselListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WGCarouselListViewController" hasInstanceMethod:@"setFooterVisible:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"WGCarouselListViewController" hasInstanceMethod:@"isVisuallyRevealed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WGCarouselListViewController" hasInstanceMethod:@"setVisuallyRevealed:" withFullSignature:{"v", "B", 0}];
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 4 && ([(WGCarouselListViewControllerAccessibility *)self safeBoolForKey:@"isVisuallyRevealed"]& 1) == 0)
  {
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WGCarouselListViewControllerAccessibility;
    return [(WGCarouselListViewControllerAccessibility *)&v6 accessibilityScroll:scroll];
  }
}

void __65__WGCarouselListViewControllerAccessibility_accessibilityScroll___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVisuallyRevealed:1];
  v1 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v1, 0);
}

@end