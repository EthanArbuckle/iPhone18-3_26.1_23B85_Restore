@interface CNCardGroupMembershipPlaceholderGroupItem
- (NSString)title;
@end

@implementation CNCardGroupMembershipPlaceholderGroupItem

- (NSString)title
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"ADD_TO_LIST_TABLE_CELL_TITLE_EDIT_MODE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

@end