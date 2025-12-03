@interface SCATCustomizeDeviceMenuForTopLevelController
- (id)originalItemsFromPreference;
- (void)updateItemsInPreferences:(id)preferences;
- (void)viewDidLoad;
@end

@implementation SCATCustomizeDeviceMenuForTopLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SCATCustomizeDeviceMenuForTopLevelController;
  [(AXReorderableCheckmarkListController *)&v4 viewDidLoad];
  [(AXReorderableCheckmarkListController *)self clearItemCache];
  table = [(SCATCustomizeDeviceMenuForTopLevelController *)self table];
  [table setEditing:0 animated:0];
}

- (id)originalItemsFromPreference
{
  v2 = +[AXSettings sharedInstance];
  switchControlDeviceTopLevelMenuItems = [v2 switchControlDeviceTopLevelMenuItems];

  return switchControlDeviceTopLevelMenuItems;
}

- (void)updateItemsInPreferences:(id)preferences
{
  preferencesCopy = preferences;
  [(SCATCustomizeMenuBaseController *)self updateElementsInTopLevelWithItems:preferencesCopy];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlDeviceTopLevelMenuItems:preferencesCopy];
}

@end