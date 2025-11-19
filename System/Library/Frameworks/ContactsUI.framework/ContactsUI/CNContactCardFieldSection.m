@interface CNContactCardFieldSection
- (CNContactCardFieldSection)initWithSectionType:(id)a3 items:(id)a4 displayTitle:(id)a5;
@end

@implementation CNContactCardFieldSection

- (CNContactCardFieldSection)initWithSectionType:(id)a3 items:(id)a4 displayTitle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNContactCardFieldSection;
  v12 = [(CNContactCardFieldSection *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sectionType, a3);
    objc_storeStrong(&v13->_items, a4);
    objc_storeStrong(&v13->_displayTitle, a5);
    v14 = v13;
  }

  return v13;
}

@end