@interface AXBuddySettingsTitleItem
- (void)registerCellClassWithTableView:(id)a3;
@end

@implementation AXBuddySettingsTitleItem

- (void)registerCellClassWithTableView:(id)a3
{
  v3 = a3;
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"TitleCellReuseIdentifier"];
}

@end