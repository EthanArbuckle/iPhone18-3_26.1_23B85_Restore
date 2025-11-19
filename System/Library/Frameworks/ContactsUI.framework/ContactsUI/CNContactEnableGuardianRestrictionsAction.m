@interface CNContactEnableGuardianRestrictionsAction
- (CNContactEnableGuardianRestrictionsAction)initWithContact:(id)a3 inContainer:(id)a4 contactStore:(id)a5;
@end

@implementation CNContactEnableGuardianRestrictionsAction

- (CNContactEnableGuardianRestrictionsAction)initWithContact:(id)a3 inContainer:(id)a4 contactStore:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = CNContactEnableGuardianRestrictionsAction;
  v11 = [(CNContactAction *)&v15 initWithContact:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_container, a4);
    objc_storeStrong(&v12->_contactStore, a5);
    v13 = v12;
  }

  return v12;
}

@end