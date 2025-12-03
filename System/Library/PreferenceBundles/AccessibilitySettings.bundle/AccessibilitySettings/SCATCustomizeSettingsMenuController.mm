@interface SCATCustomizeSettingsMenuController
- (id)itemsFromPreferences;
- (id)originalItemsFromPreference;
- (void)updateItemsInPreferences:(id)preferences;
@end

@implementation SCATCustomizeSettingsMenuController

- (id)itemsFromPreferences
{
  originalItemsFromPreference = [(SCATCustomizeSettingsMenuController *)self originalItemsFromPreference];
  v4 = [(SCATCustomizeMenuBaseController *)self filterAndTrackMenuItemsMatchingBlock:&__block_literal_global_58 allItems:originalItemsFromPreference];

  return v4;
}

BOOL __59__SCATCustomizeSettingsMenuController_itemsFromPreferences__block_invoke(id a1, NSString *a2)
{
  if (![(NSString *)a2 isEqualToString:AXSSwitchControlMenuItemSettingsSpeedUpDown])
  {
    return 0;
  }

  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlScanningStyle] != 0;

  return v3;
}

- (void)updateItemsInPreferences:(id)preferences
{
  v4 = [(SCATCustomizeMenuBaseController *)self restorePreviouslyFilteredItemsToItems:preferences];
  v3 = +[AXSettings sharedInstance];
  [v3 setSwitchControlSettingsMenuItems:v4];
}

- (id)originalItemsFromPreference
{
  v2 = +[AXSettings sharedInstance];
  switchControlSettingsMenuItems = [v2 switchControlSettingsMenuItems];

  return switchControlSettingsMenuItems;
}

@end