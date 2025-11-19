@interface CNCardLinkedCardsGroup
- (id)displayItems;
- (id)editingItems;
- (id)title;
@end

@implementation CNCardLinkedCardsGroup

- (id)editingItems
{
  v2 = [(CNCardLinkedCardsGroup *)self displayItems];
  v3 = [v2 mutableCopy];

  v4 = objc_alloc_init(CNCardLinkedCardsPlaceholderGroupItem);
  [v3 addObject:v4];

  return v3;
}

- (id)displayItems
{
  v2 = [(CNCardLinkedCardsGroup *)self linkedContacts];
  v3 = [v2 _cn_filter:&__block_literal_global_2140];

  if ([v3 count] < 2)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [v3 _cn_map:&__block_literal_global_10_2141];
  }

  return v4;
}

CNCardLinkedCardsGroupItem *__38__CNCardLinkedCardsGroup_displayItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNCardLinkedCardsGroupItem alloc] initWithContact:v2];

  return v3;
}

- (id)title
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"LINKED_CARDS_TABLE_SECTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

@end