@interface CNSharingProfileAudienceDataSource
- (CNSharingProfileAudienceDataSource)initWithSelectedSharingAudience:(unint64_t)audience;
- (id)itemForIndex:(unint64_t)index;
- (id)sectionFooterLabel;
- (id)sectionHeaderLabel;
- (unint64_t)indexForSharingAudience:(unint64_t)audience;
- (unint64_t)sharingAudienceForIndex:(unint64_t)index;
- (unint64_t)sharingAudienceForItem:(id)item;
- (void)didSelectItemAtIndex:(unint64_t)index;
- (void)reloadItems;
- (void)setSelectedSharingAudience:(unint64_t)audience;
@end

@implementation CNSharingProfileAudienceDataSource

- (void)didSelectItemAtIndex:(unint64_t)index
{
  if ([(NSArray *)self->_items count]> index)
  {
    items = self->_items;
    v8 = self->_selectedItem;
    v6 = [(NSArray *)items objectAtIndexedSubscript:index];
    [(CNSharingProfileRowItem *)v8 setIsSelected:0];
    [(CNSharingProfileRowItem *)v6 setIsSelected:1];
    selectedItem = self->_selectedItem;
    self->_selectedItem = v6;

    self->_selectedSharingAudience = [(CNSharingProfileAudienceDataSource *)self sharingAudienceForIndex:index];
  }
}

- (id)itemForIndex:(unint64_t)index
{
  if ([(NSArray *)self->_items count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_items objectAtIndexedSubscript:index];
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
  v4 = [CNSharingProfileRowItem alloc];
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"SHARING_AUDIENCE_CONTACTS_ONLY" value:&stru_1F0CE7398 table:@"Localized"];
  v7 = [(CNSharingProfileRowItem *)v4 initWithLabel:v6 accessoryView:0];

  [v19 addObject:v7];
  [v3 addObject:&unk_1F0D4B478];
  v8 = [CNSharingProfileRowItem alloc];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"SHARING_AUDIENCE_ALWAYS_ASK" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [(CNSharingProfileRowItem *)v8 initWithLabel:v10 accessoryView:0];

  [v19 addObject:v11];
  [v3 addObject:&unk_1F0D4B490];
  v12 = [v19 copy];
  items = self->_items;
  self->_items = v12;

  v14 = [v3 copy];
  valuesArray = self->_valuesArray;
  self->_valuesArray = v14;

  v16 = [(CNSharingProfileAudienceDataSource *)self indexForSharingAudience:self->_selectedSharingAudience];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [(NSArray *)self->_items objectAtIndexedSubscript:v16];
    selectedItem = self->_selectedItem;
    self->_selectedItem = v17;

    [(CNSharingProfileRowItem *)self->_selectedItem setIsSelected:1];
  }
}

- (unint64_t)sharingAudienceForIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_valuesArray objectAtIndexedSubscript:index];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (unint64_t)indexForSharingAudience:(unint64_t)audience
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:audience];
  v5 = [(NSArray *)self->_valuesArray indexOfObject:v4];

  return v5;
}

- (unint64_t)sharingAudienceForItem:(id)item
{
  v4 = [(NSArray *)self->_items indexOfObject:item];

  return [(CNSharingProfileAudienceDataSource *)self sharingAudienceForIndex:v4];
}

- (void)setSelectedSharingAudience:(unint64_t)audience
{
  if (self->_selectedSharingAudience != audience)
  {
    self->_selectedSharingAudience = audience;
    v5 = [(CNSharingProfileAudienceDataSource *)self indexForSharingAudience:?];

    [(CNSharingProfileAudienceDataSource *)self didSelectItemAtIndex:v5];
  }
}

- (CNSharingProfileAudienceDataSource)initWithSelectedSharingAudience:(unint64_t)audience
{
  v8.receiver = self;
  v8.super_class = CNSharingProfileAudienceDataSource;
  v4 = [(CNSharingProfileAudienceDataSource *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_selectedSharingAudience = audience;
    [(CNSharingProfileAudienceDataSource *)v4 reloadItems];
    v6 = v5;
  }

  return v5;
}

@end