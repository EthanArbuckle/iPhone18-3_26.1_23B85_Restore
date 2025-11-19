@interface CNUIFamilyMemberDowntimeContactSection
- (CNUIFamilyMemberDowntimeContactSection)initWithContactItems:(id)a3 title:(id)a4;
@end

@implementation CNUIFamilyMemberDowntimeContactSection

- (CNUIFamilyMemberDowntimeContactSection)initWithContactItems:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNUIFamilyMemberDowntimeContactSection;
  v9 = [(CNUIFamilyMemberDowntimeContactSection *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactItems, a3);
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = v10;
  }

  return v10;
}

@end