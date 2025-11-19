@interface SKUIProductPageTableUpdateHistorySectionAccessibility
- (void)_reloadHeaderView;
@end

@implementation SKUIProductPageTableUpdateHistorySectionAccessibility

- (void)_reloadHeaderView
{
  v2.receiver = self;
  v2.super_class = SKUIProductPageTableUpdateHistorySectionAccessibility;
  [(SKUIProductPageTableUpdateHistorySectionAccessibility *)&v2 _reloadHeaderView];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end