@interface SCATCustomizeSettingsMenuController
- (id)itemsFromPreferences;
- (id)originalItemsFromPreference;
- (void)updateItemsInPreferences:(id)a3;
@end

@implementation SCATCustomizeSettingsMenuController

- (id)itemsFromPreferences
{
  v3 = [(SCATCustomizeSettingsMenuController *)self originalItemsFromPreference];
  v4 = [(SCATCustomizeMenuBaseController *)self filterAndTrackMenuItemsMatchingBlock:&__block_literal_global_58 allItems:v3];

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

- (void)updateItemsInPreferences:(id)a3
{
  v4 = [(SCATCustomizeMenuBaseController *)self restorePreviouslyFilteredItemsToItems:a3];
  v3 = +[AXSettings sharedInstance];
  [v3 setSwitchControlSettingsMenuItems:v4];
}

- (id)originalItemsFromPreference
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlSettingsMenuItems];

  return v3;
}

@end