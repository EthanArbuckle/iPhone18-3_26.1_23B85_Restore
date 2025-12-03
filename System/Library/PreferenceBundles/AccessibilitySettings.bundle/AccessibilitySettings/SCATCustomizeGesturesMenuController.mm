@interface SCATCustomizeGesturesMenuController
- (id)itemsFromPreferences;
- (void)updateItemsInPreferences:(id)preferences;
@end

@implementation SCATCustomizeGesturesMenuController

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  switchControlGesturesMenuItems = [v2 switchControlGesturesMenuItems];

  return switchControlGesturesMenuItems;
}

- (void)updateItemsInPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = +[AXSettings sharedInstance];
  [v4 setSwitchControlGesturesMenuItems:preferencesCopy];
}

@end