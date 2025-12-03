@interface CNContactCardFieldSection
- (CNContactCardFieldSection)initWithSectionType:(id)type items:(id)items displayTitle:(id)title;
@end

@implementation CNContactCardFieldSection

- (CNContactCardFieldSection)initWithSectionType:(id)type items:(id)items displayTitle:(id)title
{
  typeCopy = type;
  itemsCopy = items;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = CNContactCardFieldSection;
  v12 = [(CNContactCardFieldSection *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sectionType, type);
    objc_storeStrong(&v13->_items, items);
    objc_storeStrong(&v13->_displayTitle, title);
    v14 = v13;
  }

  return v13;
}

@end