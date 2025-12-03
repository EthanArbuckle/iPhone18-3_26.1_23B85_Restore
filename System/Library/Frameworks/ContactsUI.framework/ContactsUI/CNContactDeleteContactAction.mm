@interface CNContactDeleteContactAction
- (BOOL)deleteContact;
- (CNContactDeleteContactAction)initWithContact:(id)contact recentsManager:(id)manager componentsFactory:(id)factory;
- (id)_makeAvatarImageForTraitCollection:(id)collection;
- (void)performActionWithSender:(id)sender;
- (void)showDeleteFailureAlert;
@end

@implementation CNContactDeleteContactAction

- (id)_makeAvatarImageForTraitCollection:(id)collection
{
  v17[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v5 = [CNAvatarImageRenderer alloc];
  v6 = +[CNAvatarImageRendererSettings defaultSettings];
  v7 = [(CNAvatarImageRenderer *)v5 initWithSettings:v6];

  [collectionCopy displayScale];
  v9 = v8;
  layoutDirection = [collectionCopy layoutDirection];

  v11 = [CNAvatarImageRenderingScope scopeWithPointSize:layoutDirection == 1 scale:0 rightToLeft:40.0 style:40.0, v9];
  contact = [(CNContactAction *)self contact];
  v17[0] = contact;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v14 = [(CNAvatarImageRenderer *)v7 avatarImageForContacts:v13 scope:v11];

  if (!v14)
  {
    placeholderImageProvider = [(CNAvatarImageRenderer *)v7 placeholderImageProvider];
    v14 = [placeholderImageProvider imageForSize:40.0 scale:{40.0, v9}];
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

  componentsFactory = [(CNContactDeleteContactAction *)self componentsFactory];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [componentsFactory alertActionWithTitle:v10 style:0 handler:0];
  [v13 addAction:v11];

  delegate = [(CNContactAction *)self delegate];
  [delegate action:self presentViewController:v13 sender:self];
}

- (BOOL)deleteContact
{
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v3 setIgnoresGuardianRestrictions:1];
  delegate = [(CNContactAction *)self delegate];
  contactViewCache = [delegate contactViewCache];
  contactStore = [contactViewCache contactStore];

  mutableContact = [(CNContactAction *)self mutableContact];
  v8 = [mutableContact copy];

  mutableContact2 = [(CNContactAction *)self mutableContact];
  [v3 deleteContact:mutableContact2];

  v22 = 0;
  [contactStore executeSaveRequest:v3 error:&v22];
  v10 = v22;
  v15 = v10;
  if (v10)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactDeleteContactAction.m", 105, 3, @"Could not delete contact: %@", v11, v12, v13, v14, v10);
  }

  else
  {
    recentsManager = [(CNContactDeleteContactAction *)self recentsManager];
    v17 = [recentsManager recentContactsMatchingAllPropertiesOfContact:v8];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__CNContactDeleteContactAction_deleteContact__block_invoke;
    v20[3] = &unk_1E74E42C0;
    v21 = recentsManager;
    v18 = recentsManager;
    [v17 addSuccessBlock:v20];
  }

  return v15 == 0;
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"CARD_ACTION_DELETE_CARD" value:&stru_1F0CE7398 table:@"Localized"];

  contact = [(CNContactAction *)self contact];
  mainStoreLinkedContacts = [contact mainStoreLinkedContacts];
  v9 = [mainStoreLinkedContacts count];

  if (v9 < 2)
  {
    v15 = 0;
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"CARD_ACTION_DELETE_CARD_MULTIPLE" value:&stru_1F0CE7398 table:@"Localized"];
    contact2 = [(CNContactAction *)self contact];
    mainStoreLinkedContacts2 = [contact2 mainStoreLinkedContacts];
    v15 = [v10 localizedStringWithFormat:v12, objc_msgSend(mainStoreLinkedContacts2, "count")];
  }

  v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v15 message:0 preferredStyle:0];
  componentsFactory = [(CNContactDeleteContactAction *)self componentsFactory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__CNContactDeleteContactAction_performActionWithSender___block_invoke;
  v25[3] = &unk_1E74E6C28;
  v25[4] = self;
  v18 = [componentsFactory alertActionWithTitle:v6 style:2 handler:v25];
  [v16 addAction:v18];

  componentsFactory2 = [(CNContactDeleteContactAction *)self componentsFactory];
  v20 = CNContactsUIBundle();
  v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__CNContactDeleteContactAction_performActionWithSender___block_invoke_2;
  v24[3] = &unk_1E74E6C28;
  v24[4] = self;
  v22 = [componentsFactory2 alertActionWithTitle:v21 style:1 handler:v24];
  [v16 addAction:v22];

  delegate = [(CNContactAction *)self delegate];
  [delegate action:self presentViewController:v16 sender:senderCopy];
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

- (CNContactDeleteContactAction)initWithContact:(id)contact recentsManager:(id)manager componentsFactory:(id)factory
{
  managerCopy = manager;
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = CNContactDeleteContactAction;
  v11 = [(CNContactAction *)&v15 initWithContact:contact];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_componentsFactory, factory);
    objc_storeStrong(&v12->_recentsManager, manager);
    v13 = v12;
  }

  return v12;
}

@end