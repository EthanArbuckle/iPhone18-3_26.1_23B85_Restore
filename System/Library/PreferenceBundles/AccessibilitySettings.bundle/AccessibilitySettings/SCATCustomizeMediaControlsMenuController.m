@interface SCATCustomizeMediaControlsMenuController
- (id)itemsFromPreferences;
- (void)updateItemsInPreferences:(id)a3;
@end

@implementation SCATCustomizeMediaControlsMenuController

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlMediaControlsMenuItems];

  return v3;
}

- (void)updateItemsInPreferences:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setSwitchControlMediaControlsMenuItems:v3];
}

@end