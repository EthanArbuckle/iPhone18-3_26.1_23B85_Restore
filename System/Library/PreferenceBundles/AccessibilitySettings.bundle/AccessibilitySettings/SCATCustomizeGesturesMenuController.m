@interface SCATCustomizeGesturesMenuController
- (id)itemsFromPreferences;
- (void)updateItemsInPreferences:(id)a3;
@end

@implementation SCATCustomizeGesturesMenuController

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlGesturesMenuItems];

  return v3;
}

- (void)updateItemsInPreferences:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setSwitchControlGesturesMenuItems:v3];
}

@end