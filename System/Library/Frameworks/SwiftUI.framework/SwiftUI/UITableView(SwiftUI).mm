@interface UITableView(SwiftUI)
- (uint64_t)horizontalMargin;
@end

@implementation UITableView(SwiftUI)

- (uint64_t)horizontalMargin
{
  [self effectiveUserInterfaceLayoutDirection];
  [self safeAreaInsets];
  [self _defaultLeadingCellMarginWidth];
  return [self _sectionContentInsetFollowsLayoutMargins];
}

@end