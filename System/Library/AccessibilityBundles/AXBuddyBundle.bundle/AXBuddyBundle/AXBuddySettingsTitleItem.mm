@interface AXBuddySettingsTitleItem
- (void)registerCellClassWithTableView:(id)view;
@end

@implementation AXBuddySettingsTitleItem

- (void)registerCellClassWithTableView:(id)view
{
  viewCopy = view;
  [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"TitleCellReuseIdentifier"];
}

@end