@interface SCATCustomizeGesturesMenuForTopLevelController
- (id)itemsFromPreferences;
- (void)updateItemsInPreferences:(id)a3;
- (void)viewDidLoad;
@end

@implementation SCATCustomizeGesturesMenuForTopLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SCATCustomizeGesturesMenuForTopLevelController;
  [(AXReorderableCheckmarkListController *)&v4 viewDidLoad];
  [(AXReorderableCheckmarkListController *)self clearItemCache];
  v3 = [(SCATCustomizeGesturesMenuForTopLevelController *)self table];
  [v3 setEditing:0 animated:0];
}

- (id)itemsFromPreferences
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlGesturesTopLevelMenuItems];

  return v3;
}

- (void)updateItemsInPreferences:(id)a3
{
  v4 = a3;
  [(SCATCustomizeMenuBaseController *)self updateElementsInTopLevelWithItems:v4];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlGesturesTopLevelMenuItems:v4];
}

@end