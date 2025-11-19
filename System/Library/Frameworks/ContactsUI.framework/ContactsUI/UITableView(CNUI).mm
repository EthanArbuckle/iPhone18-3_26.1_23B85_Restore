@interface UITableView(CNUI)
- (uint64_t)_cnui_adjustCollectiveContentInset:()CNUI;
@end

@implementation UITableView(CNUI)

- (uint64_t)_cnui_adjustCollectiveContentInset:()CNUI
{
  [a1 setContentInset:?];

  return [a1 setScrollIndicatorInsets:{a2, a3, a4, a5}];
}

@end