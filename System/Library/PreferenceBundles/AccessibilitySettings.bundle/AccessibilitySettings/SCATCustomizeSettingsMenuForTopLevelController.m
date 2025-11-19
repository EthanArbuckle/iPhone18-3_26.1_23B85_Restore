@interface SCATCustomizeSettingsMenuForTopLevelController
- (id)originalItemsFromPreference;
- (void)updateItemsInPreferences:(id)a3;
- (void)viewDidLoad;
@end

@implementation SCATCustomizeSettingsMenuForTopLevelController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SCATCustomizeSettingsMenuForTopLevelController;
  [(AXReorderableCheckmarkListController *)&v4 viewDidLoad];
  [(AXReorderableCheckmarkListController *)self clearItemCache];
  v3 = [(SCATCustomizeSettingsMenuForTopLevelController *)self table];
  [v3 setEditing:0 animated:0];
}

- (void)updateItemsInPreferences:(id)a3
{
  v4 = a3;
  [(SCATCustomizeMenuBaseController *)self updateElementsInTopLevelWithItems:v4];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlSettingsTopLevelMenuItems:v4];
}

- (id)originalItemsFromPreference
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlSettingsTopLevelMenuItems];

  return v3;
}

@end