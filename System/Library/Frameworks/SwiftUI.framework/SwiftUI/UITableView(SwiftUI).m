@interface UITableView(SwiftUI)
- (uint64_t)horizontalMargin;
@end

@implementation UITableView(SwiftUI)

- (uint64_t)horizontalMargin
{
  [a1 effectiveUserInterfaceLayoutDirection];
  [a1 safeAreaInsets];
  [a1 _defaultLeadingCellMarginWidth];
  return [a1 _sectionContentInsetFollowsLayoutMargins];
}

@end