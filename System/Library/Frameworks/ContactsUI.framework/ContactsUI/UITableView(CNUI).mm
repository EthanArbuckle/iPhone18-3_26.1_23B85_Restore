@interface UITableView(CNUI)
- (uint64_t)_cnui_adjustCollectiveContentInset:()CNUI;
@end

@implementation UITableView(CNUI)

- (uint64_t)_cnui_adjustCollectiveContentInset:()CNUI
{
  [self setContentInset:?];

  return [self setScrollIndicatorInsets:{a2, a3, a4, a5}];
}

@end