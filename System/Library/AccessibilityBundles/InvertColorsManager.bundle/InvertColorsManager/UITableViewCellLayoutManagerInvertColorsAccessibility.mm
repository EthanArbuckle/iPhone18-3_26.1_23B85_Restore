@interface UITableViewCellLayoutManagerInvertColorsAccessibility
- (id)defaultImageViewForCell:(id)a3;
@end

@implementation UITableViewCellLayoutManagerInvertColorsAccessibility

- (id)defaultImageViewForCell:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITableViewCellLayoutManagerInvertColorsAccessibility;
  v3 = [(UITableViewCellLayoutManagerInvertColorsAccessibility *)&v5 defaultImageViewForCell:a3];
  [v3 setAccessibilityIgnoresInvertColors:1];

  return v3;
}

@end