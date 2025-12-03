@interface UITableViewCellLayoutManagerInvertColorsAccessibility
- (id)defaultImageViewForCell:(id)cell;
@end

@implementation UITableViewCellLayoutManagerInvertColorsAccessibility

- (id)defaultImageViewForCell:(id)cell
{
  v5.receiver = self;
  v5.super_class = UITableViewCellLayoutManagerInvertColorsAccessibility;
  v3 = [(UITableViewCellLayoutManagerInvertColorsAccessibility *)&v5 defaultImageViewForCell:cell];
  [v3 setAccessibilityIgnoresInvertColors:1];

  return v3;
}

@end