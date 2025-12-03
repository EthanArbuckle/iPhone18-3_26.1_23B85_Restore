@interface CNUIFamilyMemberDowntimeContactItem
- (CNUIFamilyMemberDowntimeContactItem)initWithContact:(id)contact label:(id)label;
@end

@implementation CNUIFamilyMemberDowntimeContactItem

- (CNUIFamilyMemberDowntimeContactItem)initWithContact:(id)contact label:(id)label
{
  contactCopy = contact;
  labelCopy = label;
  v13.receiver = self;
  v13.super_class = CNUIFamilyMemberDowntimeContactItem;
  v9 = [(CNUIFamilyMemberDowntimeContactItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, contact);
    objc_storeStrong(&v10->_label, label);
    v11 = v10;
  }

  return v10;
}

@end