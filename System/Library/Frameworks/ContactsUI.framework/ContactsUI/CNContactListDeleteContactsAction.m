@interface CNContactListDeleteContactsAction
+ (id)actionForContact:(id)a3 configuration:(id)a4;
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)editRequiresAuthorization;
- (BOOL)editRequiresAuthorizationCheckForActions:(id)a3;
- (CNContactListDeleteContactsAction)initWithContacts:(id)a3 configuration:(id)a4;
- (id)alertTitle;
- (void)performAction;
- (void)performUndoAction;
- (void)showDeleteFailureAlert;
@end

@implementation CNContactListDeleteContactsAction

- (void)performUndoAction
{
  v3 = [(CNContactListDeleteContactsAction *)self actions];
  [v3 _cn_each:&__block_literal_global_91];

  v4 = [(CNContactListAction *)self delegate];
  [v4 actionDidFinish:self];
}

- (BOOL)editRequiresAuthorizationCheckForActions:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__CNContactListDeleteContactsAction_editRequiresAuthorizationCheckForActions___block_invoke;
  v4[3] = &unk_1E74E3370;
  v4[4] = self;
  return [a3 _cn_any:v4];
}

uint64_t __78__CNContactListDeleteContactsAction_editRequiresAuthorizationCheckForActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 contact];
  v5 = [v3 containerIdentifier];

  v6 = [v2 editRequiresAuthorizationCheckForContact:v4 containerIdentifier:v5];
  return v6;
}

- (BOOL)editRequiresAuthorization
{
  v2 = self;
  v3 = [(CNContactListDeleteContactsAction *)self actions];
  LOBYTE(v2) = [(CNContactListDeleteContactsAction *)v2 editRequiresAuthorizationCheckForActions:v3];

  return v2;
}

- (void)showDeleteFailureAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"DELETE_CARD_SHEET_FAILURE_ALERT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"DELETE_CARD_SHEET_FAILURE_ALERT_EXPLANATION" value:&stru_1F0CE7398 table:@"Localized"];
  v13 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v8 = [(CNContactListDeleteContactsAction *)self componentsFactory];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [v8 alertActionWithTitle:v10 style:0 handler:0];
  [v13 addAction:v11];

  v12 = [(CNContactListAction *)self delegate];
  [v12 action:self presentViewController:v13];
}

- (id)alertTitle
{
  if ([(CNContactListDeleteContactsAction *)self originalContactCount]== 1)
  {
    v3 = [(CNContactListDeleteContactsAction *)self actions];
    v4 = [v3 firstObject];
    v5 = [v4 contact];

    v6 = [(CNContactListDeleteContactsAction *)self actions];
    v7 = [v6 count];

    v8 = MEMORY[0x1E696AEC0];
    v9 = CNContactsUIBundle();
    v10 = v9;
    if (v7 < 2)
    {
      v11 = [v9 localizedStringForKey:@"LIST_ACTION_DELETE_CARD" value:&stru_1F0CE7398 table:@"Localized"];
      v12 = [(CNContactListDeleteContactsAction *)self contactFormatter];
      v15 = [v12 stringFromContact:v5];
      v13 = [v8 localizedStringWithFormat:v11, v15];
    }

    else
    {
      v11 = [v9 localizedStringForKey:@"LIST_ACTION_DELETE_CARD_SINGLE_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
      v12 = [(CNContactListDeleteContactsAction *)self actions];
      v13 = [v8 localizedStringWithFormat:v11, objc_msgSend(v12, "count") - 1];
    }
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    v5 = CNContactsUIBundle();
    v10 = [v5 localizedStringForKey:@"LIST_ACTION_DELETE_CARD_MULTIPLE" value:&stru_1F0CE7398 table:@"Localized"];
    v13 = [v14 localizedStringWithFormat:v10, -[CNContactListDeleteContactsAction originalContactCount](self, "originalContactCount")];
  }

  return v13;
}

- (void)performAction
{
  v3 = MEMORY[0x1E69DC650];
  v4 = [(CNContactListDeleteContactsAction *)self alertTitle];
  v5 = [v3 alertControllerWithTitle:v4 message:0 preferredStyle:1];

  if (-[CNContactListDeleteContactsAction originalContactCount](self, "originalContactCount") == 1 && (-[CNContactListDeleteContactsAction actions](self, "actions"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7 == 1))
  {
    v8 = @"CARD_ACTION_DELETE_CARD";
  }

  else
  {
    v8 = @"LIST_ACTION_DELETE_CARDS";
  }

  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:v8 value:&stru_1F0CE7398 table:@"Localized"];

  v11 = [(CNContactListDeleteContactsAction *)self componentsFactory];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50__CNContactListDeleteContactsAction_performAction__block_invoke;
  v18[3] = &unk_1E74E6C28;
  v18[4] = self;
  v12 = [v11 alertActionWithTitle:v10 style:2 handler:v18];
  [v5 addAction:v12];

  v13 = [(CNContactListDeleteContactsAction *)self componentsFactory];
  v14 = CNContactsUIBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v16 = [v13 alertActionWithTitle:v15 style:1 handler:&__block_literal_global_70];
  [v5 addAction:v16];

  v17 = [(CNContactListAction *)self delegate];
  [v17 action:self presentViewController:v5];
}

void __50__CNContactListDeleteContactsAction_performAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__23656;
  v7[4] = __Block_byref_object_dispose__23657;
  v8 = MEMORY[0x1E695E0F0];
  v4 = [*(a1 + 32) actions];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CNContactListDeleteContactsAction_performAction__block_invoke_63;
  v6[3] = &unk_1E74E3348;
  v6[4] = v7;
  [v4 _cn_each:v6];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [*(a1 + 32) showDeleteFailureAlert];
  }

  v5 = [*(a1 + 32) delegate];
  [v5 actionDidFinish:*(a1 + 32)];

  _Block_object_dispose(v7, 8);
}

void __50__CNContactListDeleteContactsAction_performAction__block_invoke_63(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([v6 executeAction] & 1) == 0)
  {
    v3 = [*(*(*(a1 + 32) + 8) + 40) arrayByAddingObject:v6];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (CNContactListDeleteContactsAction)initWithContacts:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = CNContactListDeleteContactsAction;
  v8 = [(CNContactListDeleteContactsAction *)&v29 init];
  v9 = v8;
  if (v8)
  {
    [(CNContactListAction *)v8 setConfiguration:v7];
    v10 = [v7 environment];
    v11 = [v10 componentsFactory];
    componentsFactory = v9->_componentsFactory;
    v9->_componentsFactory = v11;

    v13 = [v7 environment];
    v14 = [v13 recentsManager];
    recentsManager = v9->_recentsManager;
    v9->_recentsManager = v14;

    v16 = [v7 contactFormatter];
    contactFormatter = v9->_contactFormatter;
    v9->_contactFormatter = v16;

    v18 = [v7 contactStore];
    contactStore = v9->_contactStore;
    v9->_contactStore = v18;

    v9->_originalContactCount = [v6 count];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __68__CNContactListDeleteContactsAction_initWithContacts_configuration___block_invoke;
    v25[3] = &unk_1E74E3320;
    v20 = v9;
    v26 = v20;
    v27 = v6;
    v28 = v7;
    v21 = [v27 _cn_flatMap:v25];
    actions = v20->_actions;
    v20->_actions = v21;

    v23 = v20;
  }

  return v9;
}

id __68__CNContactListDeleteContactsAction_initWithContacts_configuration___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 isUnified])
    {
      v5 = [v4 linkedContacts];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68__CNContactListDeleteContactsAction_initWithContacts_configuration___block_invoke_50;
      v10[3] = &unk_1E74E32F8;
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v6 = [v5 _cn_map:v10];

      v7 = v11;
    }

    else
    {
      v7 = [objc_opt_class() actionForContact:v4 configuration:*(a1 + 48)];
      v13 = v7;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    }
  }

  else
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138412290;
      v15 = v9;
      _os_log_error_impl(&dword_199A75000, v7, OS_LOG_TYPE_ERROR, "Contact was nil for delete action with contacts: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

id __68__CNContactListDeleteContactsAction_initWithContacts_configuration___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() actionForContact:v3 configuration:*(a1 + 40)];

  return v4;
}

+ (id)actionForContact:(id)a3 configuration:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 contactViewCache];
  v8 = [v7 containerForContact:v6];
  v9 = [v8 identifier];

  v10 = [CNContactListDeleteContactAction alloc];
  v11 = [v5 contactStore];
  v12 = [v5 environment];

  v13 = [v12 recentsManager];
  v14 = [(CNContactListDeleteContactAction *)v10 initWithContact:v6 contactStore:v11 containerIdentifier:v9 recentsManager:v13];

  return v14;
}

+ (id)descriptorForRequiredKeys
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = [MEMORY[0x1E6996B38] descriptorForRequiredKeys];
  v4 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:{0, v3}];
  v5 = *MEMORY[0x1E695C200];
  v10[1] = v4;
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactListDeleteContactsAction descriptorForRequiredKeys]"];
  v8 = [v2 descriptorWithKeyDescriptors:v6 description:v7];

  return v8;
}

+ (id)log
{
  if (log_cn_once_token_9_23673 != -1)
  {
    dispatch_once(&log_cn_once_token_9_23673, &__block_literal_global_41_23674);
  }

  v3 = log_cn_once_object_9_23675;

  return v3;
}

uint64_t __40__CNContactListDeleteContactsAction_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNUIListDeleteContactsAction");
  v1 = log_cn_once_object_9_23675;
  log_cn_once_object_9_23675 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end