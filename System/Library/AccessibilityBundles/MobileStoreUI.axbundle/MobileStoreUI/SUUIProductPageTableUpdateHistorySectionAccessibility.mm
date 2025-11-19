@interface SUUIProductPageTableUpdateHistorySectionAccessibility
- (void)_reloadHeaderView;
@end

@implementation SUUIProductPageTableUpdateHistorySectionAccessibility

- (void)_reloadHeaderView
{
  v2.receiver = self;
  v2.super_class = SUUIProductPageTableUpdateHistorySectionAccessibility;
  [(SUUIProductPageTableUpdateHistorySectionAccessibility *)&v2 _reloadHeaderView];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end