@interface CNContactDisableGuardianRestrictionsAction
- (BOOL)canPerformAction;
- (CNContactDisableGuardianRestrictionsAction)initWithContact:(id)a3 inContainer:(id)a4 contactStore:(id)a5;
- (id)title;
- (void)performActionWithSender:(id)a3;
@end

@implementation CNContactDisableGuardianRestrictionsAction

- (void)performActionWithSender:(id)a3
{
  v4 = [(CNContactDisableGuardianRestrictionsAction *)self container];
  v5 = [v4 mutableCopy];

  [v5 setGuardianRestricted:0];
  v6 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v6 setIgnoresGuardianRestrictions:1];
  [v6 updateContainer:v5];
  v7 = [(CNContactDisableGuardianRestrictionsAction *)self contactStore];
  v9 = 0;
  [v7 executeSaveRequest:v6 error:&v9];

  v8 = [(CNContactAction *)self delegate];
  [v8 actionDidFinish:self];
}

- (BOOL)canPerformAction
{
  v2 = [(CNContactDisableGuardianRestrictionsAction *)self container];
  v3 = [v2 isGuardianRestricted];

  return v3;
}

- (id)title
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"ALLOW_CONTACT_EDITING" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (CNContactDisableGuardianRestrictionsAction)initWithContact:(id)a3 inContainer:(id)a4 contactStore:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = CNContactDisableGuardianRestrictionsAction;
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