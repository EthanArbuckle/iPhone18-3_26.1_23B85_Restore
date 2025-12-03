@interface SCATCustomizeMediaControlsMenuForTopLevelController
- (id)itemsFromPreferences;
- (void)updateItemsInPreferences:(id)preferences;
- (void)viewDidLoad;
@end

@implementation SCATCustomizeMediaControlsMenuForTopLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SCATCustomizeMediaControlsMenuForTopLevelController;
  [(AXReorderableCheckmarkListController *)&v4 viewDidLoad];
  [(AXReorderableCheckmarkListController *)self clearItemCache];
  table = [(SCATCustomizeMediaControlsMenuForTopLevelController *)self table];
  [table setEditing:0 animated:0];
}

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  switchControlMediaControlsTopLevelMenuItems = [v2 switchControlMediaControlsTopLevelMenuItems];

  return switchControlMediaControlsTopLevelMenuItems;
}

- (void)updateItemsInPreferences:(id)preferences
{
  preferencesCopy = preferences;
  [(SCATCustomizeMenuBaseController *)self updateElementsInTopLevelWithItems:preferencesCopy];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlMediaControlsTopLevelMenuItems:preferencesCopy];
}

@end