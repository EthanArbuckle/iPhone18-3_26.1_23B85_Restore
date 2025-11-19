@interface CNContactDeleteContactAction
- (BOOL)deleteContact;
- (CNContactDeleteContactAction)initWithContact:(id)a3 recentsManager:(id)a4 componentsFactory:(id)a5;
- (id)_makeAvatarImageForTraitCollection:(id)a3;
- (void)performActionWithSender:(id)a3;
- (void)showDeleteFailureAlert;
@end

@implementation CNContactDeleteContactAction

- (id)_makeAvatarImageForTraitCollection:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [CNAvatarImageRenderer alloc];
  v6 = +[CNAvatarImageRendererSettings defaultSettings];
  v7 = [(CNAvatarImageRenderer *)v5 initWithSettings:v6];

  [v4 displayScale];
  v9 = v8;
  v10 = [v4 layoutDirection];

  v11 = [CNAvatarImageRenderingScope scopeWithPointSize:v10 == 1 scale:0 rightToLeft:40.0 style:40.0, v9];
  v12 = [(CNContactAction *)self contact];
  v17[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v14 = [(CNAvatarImageRenderer *)v7 avatarImageForContacts:v13 scope:v11];

  if (!v14)
  {
    v15 = [(CNAvatarImageRenderer *)v7 placeholderImageProvider];
    v14 = [v15 imageForSize:40.0 scale:{40.0, v9}];
  }

  return v14;
}

- (void)showDeleteFailureAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"DELETE_CARD_SHEET_FAILURE_ALERT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"DELETE_CARD_SHEET_FAILURE_ALERT_EXPLANATION" value:&stru_1F0CE7398 table:@"Localized"];
  v13 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v8 = [(CNContactDeleteContactAction *)self componentsFactory];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [v8 alertActionWithTitle:v10 style:0 handler:0];
  [v13 addAction:v11];

  v12 = [(CNContactAction *)self delegate];
  [v12 action:self presentViewController:v13 sender:self];
}

- (BOOL)deleteContact
{
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v3 setIgnoresGuardianRestrictions:1];
  v4 = [(CNContactAction *)self delegate];
  v5 = [v4 contactViewCache];
  v6 = [v5 contactStore];

  v7 = [(CNContactAction *)self mutableContact];
  v8 = [v7 copy];

  v9 = [(CNContactAction *)self mutableContact];
  [v3 deleteContact:v9];

  v22 = 0;
  [v6 executeSaveRequest:v3 error:&v22];
  v10 = v22;
  v15 = v10;
  if (v10)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactDeleteContactAction.m", 105, 3, @"Could not delete contact: %@", v11, v12, v13, v14, v10);
  }

  else
  {
    v16 = [(CNContactDeleteContactAction *)self recentsManager];
    v17 = [v16 recentContactsMatchingAllPropertiesOfContact:v8];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__CNContactDeleteContactAction_deleteContact__block_invoke;
    v20[3] = &unk_1E74E42C0;
    v21 = v16;
    v18 = v16;
    [v17 addSuccessBlock:v20];
  }

  return v15 == 0;
}

- (void)performActionWithSender:(id)a3
{
  v4 = a3;
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"CARD_ACTION_DELETE_CARD" value:&stru_1F0CE7398 table:@"Localized"];

  v7 = [(CNContactAction *)self contact];
  v8 = [v7 mainStoreLinkedContacts];
  v9 = [v8 count];

  if (v9 < 2)
  {
    v15 = 0;
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"CARD_ACTION_DELETE_CARD_MULTIPLE" value:&stru_1F0CE7398 table:@"Localized"];
    v13 = [(CNContactAction *)self contact];
    v14 = [v13 mainStoreLinkedContacts];
    v15 = [v10 localizedStringWithFormat:v12, objc_msgSend(v14, "count")];
  }

  v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v15 message:0 preferredStyle:0];
  v17 = [(CNContactDeleteContactAction *)self componentsFactory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__CNContactDeleteContactAction_performActionWithSender___block_invoke;
  v25[3] = &unk_1E74E6C28;
  v25[4] = self;
  v18 = [v17 alertActionWithTitle:v6 style:2 handler:v25];
  [v16 addAction:v18];

  v19 = [(CNContactDeleteContactAction *)self componentsFactory];
  v20 = CNContactsUIBundle();
  v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__CNContactDeleteContactAction_performActionWithSender___block_invoke_2;
  v24[3] = &unk_1E74E6C28;
  v24[4] = self;
  v22 = [v19 alertActionWithTitle:v21 style:1 handler:v24];
  [v16 addAction:v22];

  v23 = [(CNContactAction *)self delegate];
  [v23 action:self presentViewController:v16 sender:v4];
}

void __56__CNContactDeleteContactAction_performActionWithSender___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) deleteContact] & 1) == 0)
  {
    [*(a1 + 32) showDeleteFailureAlert];
  }

  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinish:*(a1 + 32)];
}

void __56__CNContactDeleteContactAction_performActionWithSender___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionWasCanceled:*(a1 + 32)];
}

- (CNContactDeleteContactAction)initWithContact:(id)a3 recentsManager:(id)a4 componentsFactory:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = CNContactDeleteContactAction;
  v11 = [(CNContactAction *)&v15 initWithContact:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_componentsFactory, a5);
    objc_storeStrong(&v12->_recentsManager, a4);
    v13 = v12;
  }

  return v12;
}

@end