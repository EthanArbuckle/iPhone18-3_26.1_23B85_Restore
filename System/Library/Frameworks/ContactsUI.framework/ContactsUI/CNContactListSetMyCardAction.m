@interface CNContactListSetMyCardAction
+ (id)log;
- (CNContactListSetMyCardAction)initWithContact:(id)a3 configuration:(id)a4;
- (id)updatedMeContact;
- (void)fetchOriginalMeContact;
- (void)performAction;
- (void)performUndoAction;
- (void)updateMeContact:(id)a3;
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
  v3 = [(CNContactListSetMyCardAction *)self originalMeContact];
  [(CNContactListSetMyCardAction *)self updateMeContact:v3];

  v4 = [(CNContactListAction *)self delegate];
  [v4 actionDidFinish:self];
}

- (void)updateMeContact:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactListAction *)self configuration];
  v6 = [v5 contactStore];
  v10 = 0;
  v7 = [v6 setMeContact:v4 error:&v10];

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
  v3 = [(CNContactListAction *)self configuration];
  v4 = [v3 contactStore];
  v8 = 0;
  v5 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch:MEMORY[0x1E695E0F0] error:&v8];
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
  v6 = [(CNContactListAction *)self configuration];
  v7 = [v6 contactFormatter];
  v8 = [(CNContactListSetMyCardAction *)self updatedMeContact];
  v9 = [v7 stringFromContact:v8];
  v10 = [v3 localizedStringWithFormat:v5, v9];

  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:0 preferredStyle:1];
  v12 = [(CNContactListAction *)self configuration];
  v13 = [v12 environment];
  v14 = [v13 componentsFactory];
  v15 = CNContactsUIBundle();
  v16 = [v15 localizedStringForKey:@"LIST_MENU_ACTION_MY_CARD" value:&stru_1F0CE7398 table:@"Localized"];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __45__CNContactListSetMyCardAction_performAction__block_invoke;
  v25[3] = &unk_1E74E6C28;
  v25[4] = self;
  v17 = [v14 alertActionWithTitle:v16 style:0 handler:v25];
  [v11 addAction:v17];

  v18 = [(CNContactListAction *)self configuration];
  v19 = [v18 environment];
  v20 = [v19 componentsFactory];
  v21 = CNContactsUIBundle();
  v22 = [v21 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v23 = [v20 alertActionWithTitle:v22 style:1 handler:&__block_literal_global_20_35152];
  [v11 addAction:v23];

  v24 = [(CNContactListAction *)self delegate];
  [v24 action:self presentViewController:v11];
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
  v2 = [(CNContactListAction *)self contacts];
  v3 = [v2 firstObject];

  return v3;
}

- (CNContactListSetMyCardAction)initWithContact:(id)a3 configuration:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [(CNContactListAction *)self initWithContacts:v9 configuration:v7, v12, v13];
  return v10;
}

@end