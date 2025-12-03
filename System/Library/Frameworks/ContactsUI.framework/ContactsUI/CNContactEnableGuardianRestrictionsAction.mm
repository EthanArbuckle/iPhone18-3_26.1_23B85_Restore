@interface CNContactEnableGuardianRestrictionsAction
- (CNContactEnableGuardianRestrictionsAction)initWithContact:(id)contact inContainer:(id)container contactStore:(id)store;
@end

@implementation CNContactEnableGuardianRestrictionsAction

- (CNContactEnableGuardianRestrictionsAction)initWithContact:(id)contact inContainer:(id)container contactStore:(id)store
{
  containerCopy = container;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = CNContactEnableGuardianRestrictionsAction;
  v11 = [(CNContactAction *)&v15 initWithContact:contact];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_container, container);
    objc_storeStrong(&v12->_contactStore, store);
    v13 = v12;
  }

  return v12;
}

@end