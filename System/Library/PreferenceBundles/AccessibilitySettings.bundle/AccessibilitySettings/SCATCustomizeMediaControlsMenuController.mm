@interface SCATCustomizeMediaControlsMenuController
- (id)itemsFromPreferences;
- (void)updateItemsInPreferences:(id)preferences;
@end

@implementation SCATCustomizeMediaControlsMenuController

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  switchControlMediaControlsMenuItems = [v2 switchControlMediaControlsMenuItems];

  return switchControlMediaControlsMenuItems;
}

- (void)updateItemsInPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v4 = +[AXSettings sharedInstance];
  [v4 setSwitchControlMediaControlsMenuItems:preferencesCopy];
}

@end