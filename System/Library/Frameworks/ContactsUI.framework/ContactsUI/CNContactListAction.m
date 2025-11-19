@interface CNContactListAction
- (BOOL)editRequiresAuthorization;
- (BOOL)editRequiresAuthorizationCheckForContact:(id)a3 containerIdentifier:(id)a4;
- (CNContactListAction)initWithContacts:(id)a3 configuration:(id)a4;
- (CNContactListActionDelegate)delegate;
@end

@implementation CNContactListAction

- (CNContactListActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)editRequiresAuthorizationCheckForContact:(id)a3 containerIdentifier:(id)a4
{
  v6 = MEMORY[0x1E6996B08];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [(CNContactListAction *)self configuration];
  v11 = [v10 containerForContainerIdentifier:v7];

  v12 = [v9 initWithContact:v8 parentContainer:v11 ignoresParentalRestrictions:0];
  LOBYTE(v8) = [v12 shouldPromptForPasscodeAuthorization];

  return v8;
}

- (BOOL)editRequiresAuthorization
{
  v2 = self;
  v3 = [(CNContactListAction *)self contacts];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CNContactListAction_editRequiresAuthorization__block_invoke;
  v5[3] = &unk_1E74E7880;
  v5[4] = v2;
  LOBYTE(v2) = [v3 _cn_any:v5];

  return v2;
}

uint64_t __48__CNContactListAction_editRequiresAuthorization__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 configuration];
  v6 = [v5 contactViewCache];
  v7 = [v6 containerForContact:v4];
  v8 = [v7 identifier];

  v9 = [*(a1 + 32) editRequiresAuthorizationCheckForContact:v4 containerIdentifier:v8];
  return v9;
}

- (CNContactListAction)initWithContacts:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContactListAction;
  v9 = [(CNContactListAction *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a4);
    objc_storeStrong(&v10->_contacts, a3);
    v11 = v10;
  }

  return v10;
}

@end