@interface BKActionControllerAccessibility
- (id)barButtonItem;
@end

@implementation BKActionControllerAccessibility

- (id)barButtonItem
{
  v5.receiver = self;
  v5.super_class = BKActionControllerAccessibility;
  barButtonItem = [(BKActionControllerAccessibility *)&v5 barButtonItem];
  v3 = AEAXLocString(@"action.button");
  [barButtonItem setAccessibilityLabel:v3];

  return barButtonItem;
}

@end