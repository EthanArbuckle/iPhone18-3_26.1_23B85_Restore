@interface CNMeCardSharingAudienceDataSource
- (CNMeCardSharingAudienceDataSource)initWithSelectedSharingAudience:(unint64_t)a3;
- (id)itemForIndex:(unint64_t)a3;
- (id)sectionFooterLabel;
- (id)sectionHeaderLabel;
- (unint64_t)indexForSharingAudience:(unint64_t)a3;
- (unint64_t)sharingAudienceForIndex:(unint64_t)a3;
- (void)didSelectItemAtIndex:(unint64_t)a3;
- (void)reloadItems;
- (void)setSelectedSharingAudience:(unint64_t)a3;
@end

@implementation CNMeCardSharingAudienceDataSource

- (void)didSelectItemAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_items count]> a3)
  {
    items = self->_items;
    v8 = self->_selectedItem;
    v6 = [(NSArray *)items objectAtIndexedSubscript:a3];
    [(CNMeCardSharingRowItem *)v8 setIsSelected:0];
    [(CNMeCardSharingRowItem *)v6 setIsSelected:1];
    selectedItem = self->_selectedItem;
    self->_selectedItem = v6;

    self->_selectedSharingAudience = [(CNMeCardSharingAudienceDataSource *)self sharingAudienceForIndex:a3];
  }
}

- (id)itemForIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_items count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_items objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)sectionFooterLabel
{
  selectedSharingAudience = self->_selectedSharingAudience;
  if (selectedSharingAudience == 1)
  {
    v3 = @"SHARING_AUDIENCE_CONTACTS_ONLY_FOOTER";
    goto LABEL_5;
  }

  if (selectedSharingAudience == 2)
  {
    v3 = @"SHARING_AUDIENCE_ALWAYS_ASK_FOOTER";
LABEL_5:
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F0CE7398 table:@"Localized"];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)sectionHeaderLabel
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_AUDIENCE_SECTION_HEADER" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (void)reloadItems
{
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = [CNMeCardSharingRowItem alloc];
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"SHARING_AUDIENCE_CONTACTS_ONLY" value:&stru_1F0CE7398 table:@"Localized"];
  v7 = [(CNMeCardSharingRowItem *)v4 initWithLabel:v6 accessoryView:0];

  [v19 addObject:v7];
  [v3 addObject:&unk_1F0D4B820];
  v8 = [CNMeCardSharingRowItem alloc];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"SHARING_AUDIENCE_ALWAYS_ASK" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [(CNMeCardSharingRowItem *)v8 initWithLabel:v10 accessoryView:0];

  [v19 addObject:v11];
  [v3 addObject:&unk_1F0D4B838];
  v12 = [v19 copy];
  items = self->_items;
  self->_items = v12;

  v14 = [v3 copy];
  valuesArray = self->_valuesArray;
  self->_valuesArray = v14;

  v16 = [(CNMeCardSharingAudienceDataSource *)self indexForSharingAudience:self->_selectedSharingAudience];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [(NSArray *)self->_items objectAtIndexedSubscript:v16];
    selectedItem = self->_selectedItem;
    self->_selectedItem = v17;

    [(CNMeCardSharingRowItem *)self->_selectedItem setIsSelected:1];
  }
}

- (unint64_t)sharingAudienceForIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_valuesArray objectAtIndexedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (unint64_t)indexForSharingAudience:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSArray *)self->_valuesArray indexOfObject:v4];

  return v5;
}

- (void)setSelectedSharingAudience:(unint64_t)a3
{
  if (self->_selectedSharingAudience != a3)
  {
    self->_selectedSharingAudience = a3;
    v5 = [(CNMeCardSharingAudienceDataSource *)self indexForSharingAudience:?];

    [(CNMeCardSharingAudienceDataSource *)self didSelectItemAtIndex:v5];
  }
}

- (CNMeCardSharingAudienceDataSource)initWithSelectedSharingAudience:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CNMeCardSharingAudienceDataSource;
  v4 = [(CNMeCardSharingAudienceDataSource *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_selectedSharingAudience = a3;
    [(CNMeCardSharingAudienceDataSource *)v4 reloadItems];
    v6 = v5;
  }

  return v5;
}

@end