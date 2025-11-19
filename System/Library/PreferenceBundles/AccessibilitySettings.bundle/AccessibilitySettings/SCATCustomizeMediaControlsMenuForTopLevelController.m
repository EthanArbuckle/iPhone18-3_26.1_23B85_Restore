@interface SCATCustomizeMediaControlsMenuForTopLevelController
- (id)itemsFromPreferences;
- (void)updateItemsInPreferences:(id)a3;
- (void)viewDidLoad;
@end

@implementation SCATCustomizeMediaControlsMenuForTopLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SCATCustomizeMediaControlsMenuForTopLevelController;
  [(AXReorderableCheckmarkListController *)&v4 viewDidLoad];
  [(AXReorderableCheckmarkListController *)self clearItemCache];
  v3 = [(SCATCustomizeMediaControlsMenuForTopLevelController *)self table];
  [v3 setEditing:0 animated:0];
}

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlMediaControlsTopLevelMenuItems];

  return v3;
}

- (void)updateItemsInPreferences:(id)a3
{
  v4 = a3;
  [(SCATCustomizeMenuBaseController *)self updateElementsInTopLevelWithItems:v4];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlMediaControlsTopLevelMenuItems:v4];
}

@end