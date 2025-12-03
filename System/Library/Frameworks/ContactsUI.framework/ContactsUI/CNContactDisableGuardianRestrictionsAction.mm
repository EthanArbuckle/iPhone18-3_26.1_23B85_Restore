@interface CNContactDisableGuardianRestrictionsAction
- (BOOL)canPerformAction;
- (CNContactDisableGuardianRestrictionsAction)initWithContact:(id)contact inContainer:(id)container contactStore:(id)store;
- (id)title;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactDisableGuardianRestrictionsAction

- (void)performActionWithSender:(id)sender
{
  container = [(CNContactDisableGuardianRestrictionsAction *)self container];
  v5 = [container mutableCopy];

  [v5 setGuardianRestricted:0];
  v6 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v6 setIgnoresGuardianRestrictions:1];
  [v6 updateContainer:v5];
  contactStore = [(CNContactDisableGuardianRestrictionsAction *)self contactStore];
  v9 = 0;
  [contactStore executeSaveRequest:v6 error:&v9];

  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];
}

- (BOOL)canPerformAction
{
  container = [(CNContactDisableGuardianRestrictionsAction *)self container];
  isGuardianRestricted = [container isGuardianRestricted];

  return isGuardianRestricted;
}

- (id)title
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"ALLOW_CONTACT_EDITING" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (CNContactDisableGuardianRestrictionsAction)initWithContact:(id)contact inContainer:(id)container contactStore:(id)store
{
  containerCopy = container;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = CNContactDisableGuardianRestrictionsAction;
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