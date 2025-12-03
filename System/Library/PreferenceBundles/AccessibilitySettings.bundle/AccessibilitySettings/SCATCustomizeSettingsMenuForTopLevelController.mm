@interface SCATCustomizeSettingsMenuForTopLevelController
- (id)originalItemsFromPreference;
- (void)updateItemsInPreferences:(id)preferences;
- (void)viewDidLoad;
@end

@implementation SCATCustomizeSettingsMenuForTopLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SCATCustomizeSettingsMenuForTopLevelController;
  [(AXReorderableCheckmarkListController *)&v4 viewDidLoad];
  [(AXReorderableCheckmarkListController *)self clearItemCache];
  table = [(SCATCustomizeSettingsMenuForTopLevelController *)self table];
  [table setEditing:0 animated:0];
}

- (void)updateItemsInPreferences:(id)preferences
{
  preferencesCopy = preferences;
  [(SCATCustomizeMenuBaseController *)self updateElementsInTopLevelWithItems:preferencesCopy];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlSettingsTopLevelMenuItems:preferencesCopy];
}

- (id)originalItemsFromPreference
{
  v2 = +[AXSettings sharedInstance];
  switchControlSettingsTopLevelMenuItems = [v2 switchControlSettingsTopLevelMenuItems];

  return switchControlSettingsTopLevelMenuItems;
}

@end