@interface CNContactListSetMyCardAction
+ (id)log;
- (CNContactListSetMyCardAction)initWithContact:(id)contact configuration:(id)configuration;
- (id)updatedMeContact;
- (void)fetchOriginalMeContact;
- (void)performAction;
- (void)performUndoAction;
- (void)updateMeContact:(id)contact;
@end

@implementation CNContactListSetMyCardAction

+ (id)log
{
  if (log_cn_once_token_1_35119 != -1)
  {
    dispatch_once(&log_cn_once_token_1_35119, &__block_literal_global_35120);
  }

  v3 = log_cn_once_object_1_35121;

  return v3;
}

uint64_t __35__CNContactListSetMyCardAction_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNUIContactListSetMyCardAction");
  v1 = log_cn_once_object_1_35121;
  log_cn_once_object_1_35121 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)performUndoAction
{
  originalMeContact = [(CNContactListSetMyCardAction *)self originalMeContact];
  [(CNContactListSetMyCardAction *)self updateMeContact:originalMeContact];

  delegate = [(CNContactListAction *)self delegate];
  [delegate actionDidFinish:self];
}

- (void)updateMeContact:(id)contact
{
  v13 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  configuration = [(CNContactListAction *)self configuration];
  contactStore = [configuration contactStore];
  v10 = 0;
  v7 = [contactStore setMeContact:contactCopy error:&v10];

  v8 = v10;
  if ((v7 & 1) == 0)
  {
    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_error_impl(&dword_199A75000, v9, OS_LOG_TYPE_ERROR, "Failed to set contact as me contact: %@", buf, 0xCu);
    }
  }
}

- (void)fetchOriginalMeContact
{
  v11 = *MEMORY[0x1E69E9840];
  configuration = [(CNContactListAction *)self configuration];
  contactStore = [configuration contactStore];
  v8 = 0;
  v5 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:MEMORY[0x1E695E0F0] error:&v8];
  v6 = v8;

  [(CNContactListSetMyCardAction *)self setOriginalMeContact:v5];
  if (!v5)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_199A75000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch current me contact: %@", buf, 0xCu);
    }
  }
}

- (void)performAction
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"LIST_MENU_ACTION_MY_CARD_ALERT_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
  configuration = [(CNContactListAction *)self configuration];
  contactFormatter = [configuration contactFormatter];
  updatedMeContact = [(CNContactListSetMyCardAction *)self updatedMeContact];
  v9 = [contactFormatter stringFromContact:updatedMeContact];
  v10 = [v3 localizedStringWithFormat:v5, v9];

  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:0 preferredStyle:1];
  configuration2 = [(CNContactListAction *)self configuration];
  environment = [configuration2 environment];
  componentsFactory = [environment componentsFactory];
  v15 = CNContactsUIBundle();
  v16 = [v15 localizedStringForKey:@"LIST_MENU_ACTION_MY_CARD" value:&stru_1F0CE7398 table:@"Localized"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __45__CNContactListSetMyCardAction_performAction__block_invoke;
  v25[3] = &unk_1E74E6C28;
  v25[4] = self;
  v17 = [componentsFactory alertActionWithTitle:v16 style:0 handler:v25];
  [v11 addAction:v17];

  configuration3 = [(CNContactListAction *)self configuration];
  environment2 = [configuration3 environment];
  componentsFactory2 = [environment2 componentsFactory];
  v21 = CNContactsUIBundle();
  v22 = [v21 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v23 = [componentsFactory2 alertActionWithTitle:v22 style:1 handler:&__block_literal_global_20_35152];
  [v11 addAction:v23];

  delegate = [(CNContactListAction *)self delegate];
  [delegate action:self presentViewController:v11];
}

void __45__CNContactListSetMyCardAction_performAction__block_invoke(uint64_t a1)
{
  [*(a1 + 32) fetchOriginalMeContact];
  v2 = *(a1 + 32);
  v3 = [v2 updatedMeContact];
  [v2 updateMeContact:v3];

  v4 = [*(a1 + 32) delegate];
  [v4 actionDidFinish:*(a1 + 32)];
}

- (id)updatedMeContact
{
  contacts = [(CNContactListAction *)self contacts];
  firstObject = [contacts firstObject];

  return firstObject;
}

- (CNContactListSetMyCardAction)initWithContact:(id)contact configuration:(id)configuration
{
  v13 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v6 = MEMORY[0x1E695DEC8];
  configurationCopy = configuration;
  contactCopy2 = contact;
  v9 = [v6 arrayWithObjects:&contactCopy count:1];

  v10 = [(CNContactListAction *)self initWithContacts:v9 configuration:configurationCopy, contactCopy, v13];
  return v10;
}

@end