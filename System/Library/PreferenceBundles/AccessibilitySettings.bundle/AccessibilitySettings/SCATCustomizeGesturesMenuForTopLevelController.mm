@interface SCATCustomizeGesturesMenuForTopLevelController
- (id)itemsFromPreferences;
- (void)updateItemsInPreferences:(id)preferences;
- (void)viewDidLoad;
@end

@implementation SCATCustomizeGesturesMenuForTopLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SCATCustomizeGesturesMenuForTopLevelController;
  [(AXReorderableCheckmarkListController *)&v4 viewDidLoad];
  [(AXReorderableCheckmarkListController *)self clearItemCache];
  table = [(SCATCustomizeGesturesMenuForTopLevelController *)self table];
  [table setEditing:0 animated:0];
}

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  switchControlGesturesTopLevelMenuItems = [v2 switchControlGesturesTopLevelMenuItems];

  return switchControlGesturesTopLevelMenuItems;
}

- (void)updateItemsInPreferences:(id)preferences
{
  preferencesCopy = preferences;
  [(SCATCustomizeMenuBaseController *)self updateElementsInTopLevelWithItems:preferencesCopy];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlGesturesTopLevelMenuItems:preferencesCopy];
}

@end