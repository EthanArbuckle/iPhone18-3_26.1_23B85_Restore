@interface UITableViewCellLayoutManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_layoutFocusGuidesForCell:(id)cell;
@end

@implementation UITableViewCellLayoutManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UITableViewCellLayoutManager" hasInstanceMethod:@"_layoutFocusGuidesForCell:" withFullSignature:{"v", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (void)_layoutFocusGuidesForCell:(id)cell
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  if (([location[0] _accessibilityIsFKARunningForFocusItem] & 1) == 0)
  {
    v3.receiver = selfCopy;
    v3.super_class = UITableViewCellLayoutManagerAccessibility;
    [(UITableViewCellLayoutManagerAccessibility *)&v3 _layoutFocusGuidesForCell:location[0]];
  }

  objc_storeStrong(location, 0);
}

@end