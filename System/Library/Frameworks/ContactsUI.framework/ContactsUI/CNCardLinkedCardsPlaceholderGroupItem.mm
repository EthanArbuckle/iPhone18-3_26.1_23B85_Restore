@interface CNCardLinkedCardsPlaceholderGroupItem
- (NSString)title;
@end

@implementation CNCardLinkedCardsPlaceholderGroupItem

- (NSString)title
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"LINK_ANOTHER_CONTACT_TABLE_CELL_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

@end