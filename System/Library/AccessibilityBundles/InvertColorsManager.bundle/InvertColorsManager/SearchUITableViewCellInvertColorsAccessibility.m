@interface SearchUITableViewCellInvertColorsAccessibility
- (BOOL)supportsRecycling;
@end

@implementation SearchUITableViewCellInvertColorsAccessibility

- (BOOL)supportsRecycling
{
  if (_AXSInvertColorsEnabledGlobalCached())
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SearchUITableViewCellInvertColorsAccessibility;
  return [(SearchUITableViewCellInvertColorsAccessibility *)&v4 supportsRecycling];
}

@end