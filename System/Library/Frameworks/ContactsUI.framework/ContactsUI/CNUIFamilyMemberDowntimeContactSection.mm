@interface CNUIFamilyMemberDowntimeContactSection
- (CNUIFamilyMemberDowntimeContactSection)initWithContactItems:(id)items title:(id)title;
@end

@implementation CNUIFamilyMemberDowntimeContactSection

- (CNUIFamilyMemberDowntimeContactSection)initWithContactItems:(id)items title:(id)title
{
  itemsCopy = items;
  titleCopy = title;
  v15.receiver = self;
  v15.super_class = CNUIFamilyMemberDowntimeContactSection;
  v9 = [(CNUIFamilyMemberDowntimeContactSection *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactItems, items);
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = v10;
  }

  return v10;
}

@end