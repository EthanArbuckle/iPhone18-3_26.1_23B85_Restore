@interface CNContactListShareContactsAction
+ (id)descriptorForRequiredKeys;
- (BOOL)_customizationAvailableForActivityViewController:(id)a3;
- (CNContactListActionDelegate)delegate;
- (CNContactListShareContactsAction)initWithContacts:(id)a3 sourceView:(id)a4 context:(id)a5;
- (id)activityItemForContacts:(id)a3;
- (id)customLocalizedActionTitleForActivityViewController:(id)a3;
- (void)contactCardFieldPicker:(id)a3 didFinishWithContacts:(id)a4;
- (void)performAction;
- (void)presentFilterFieldPicker;
- (void)presentShareSheet;
- (void)setupForContactFieldPicker;
@end

@implementation CNContactListShareContactsAction

- (CNContactListActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactCardFieldPicker:(id)a3 didFinishWithContacts:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [(CNContactListShareContactsAction *)self setFilteredContacts:v5];
    v6 = [(CNContactListShareContactsAction *)self activityViewController];

    if (v6)
    {
      v7 = [(CNContactListShareContactsAction *)self activityItemForContacts:v5];
      v8 = [(CNContactListShareContactsAction *)self activityViewController];
      v11[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [v8 _updateActivityItems:v9];

      v10 = [(CNContactListShareContactsAction *)self activityViewController];
      [v10 setObjectManipulationDelegate:self];
    }

    else
    {
      [(CNContactListShareContactsAction *)self presentShareSheet];
    }
  }
}

- (id)customLocalizedActionTitleForActivityViewController:(id)a3
{
  v3 = CNContactsUIBundle();
  v4 = [v3 localizedStringForKey:@"SHARE_SELECTED_FIELDS_OPTION_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  return v4;
}

- (BOOL)_customizationAvailableForActivityViewController:(id)a3
{
  v4 = [(CNContactListShareContactsAction *)self fieldPicker];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNContactListShareContactsAction *)self fieldPicker];
  v6 = [v5 fieldPickerDataSource];
  v7 = [v6 sections];
  v8 = [v7 count] != 0;

  return v8;
}

- (id)activityItemForContacts:(id)a3
{
  v4 = a3;
  v5 = [CNShareContactActivityItem alloc];
  v6 = [(CNContactListShareContactsAction *)self context];
  v7 = [v6 groupName];
  v8 = [(CNShareContactActivityItem *)v5 initWithContacts:v4 inGroupNamed:v7];

  v9 = [(CNContactListShareContactsAction *)self contacts];
  if ([CNContactCardFieldPickerDataSource canSharePronounsForContacts:v9])
  {
    v10 = [CNContactShareActionHelper contactsHaveShareableAddressingGrammarValue:v4];
  }

  else
  {
    v10 = 0;
  }

  [(CNShareContactActivityItem *)v8 setCanSharePronouns:v10];

  v11 = [(CNContactListShareContactsAction *)self contacts];
  [(CNShareContactActivityItem *)v8 setCanShareMeCardOnlySharingProperties:[CNContactCardFieldPickerDataSource isSharingMeContactForContacts:v11]];

  return v8;
}

- (void)presentShareSheet
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactListShareContactsAction *)self filteredContacts];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CNContactListShareContactsAction *)self contacts];
  }

  v6 = v5;

  v7 = [(CNContactListShareContactsAction *)self activityItemForContacts:v6];
  v8 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v32[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v10 = [v8 initWithActivityItems:v9 applicationActivities:0];

  v11 = [(CNContactListShareContactsAction *)self delegate];
  objc_initWeak(&location, v11);
  [v10 setObjectManipulationDelegate:self];
  [v10 setShowKeyboardAutomatically:1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __53__CNContactListShareContactsAction_presentShareSheet__block_invoke;
  v29[3] = &unk_1E74E6618;
  objc_copyWeak(&v30, &location);
  v29[4] = self;
  [v10 setPreCompletionHandler:v29];
  v12 = [(CNContactListShareContactsAction *)self sourceView];
  v13 = v12 == 0;

  if (!v13)
  {
    v14 = [(CNContactListShareContactsAction *)self sourceView];
    v15 = [v10 popoverPresentationController];
    [v15 setSourceView:v14];

    v16 = [(CNContactListShareContactsAction *)self sourceView];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [v10 popoverPresentationController];
    [v25 setSourceRect:{v18, v20, v22, v24}];

    v26 = [(CNContactListShareContactsAction *)self contacts];
    LODWORD(v25) = [v26 count] > 1;

    if (v25)
    {
      v27 = [v10 popoverPresentationController];
      [v27 setPermittedArrowDirections:12];
    }
  }

  v28 = [(CNContactListShareContactsAction *)self delegate];
  [v28 action:self presentViewController:v10];

  [(CNContactListShareContactsAction *)self setActivityViewController:v10];
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __53__CNContactListShareContactsAction_presentShareSheet__block_invoke(uint64_t a1, void *a2, int a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a3)
  {
    v7 = +[CNUIDataCollector sharedCollector];
    v8 = CNUIContactActionTypeShare;
    v10 = CNUIContactActionShareActivityType;
    v11[0] = v5;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v7 logContactActionType:v8 attributes:v9];

    [WeakRetained actionDidFinish:*(a1 + 32)];
  }
}

- (void)presentFilterFieldPicker
{
  v3 = objc_alloc(MEMORY[0x1E69DCCD8]);
  v4 = [(CNContactListShareContactsAction *)self fieldPicker];
  v6 = [v3 initWithRootViewController:v4];

  v5 = [(CNContactListShareContactsAction *)self delegate];
  [v5 action:self presentViewController:v6];
}

- (void)setupForContactFieldPicker
{
  [(CNContactListShareContactsAction *)self setFilteredContacts:0];
  v3 = [CNContactCardFieldPicker alloc];
  v4 = [(CNContactListShareContactsAction *)self contacts];
  v5 = [(CNContactCardFieldPicker *)v3 initWithContacts:v4];
  [(CNContactListShareContactsAction *)self setFieldPicker:v5];

  v6 = [(CNContactListShareContactsAction *)self fieldPicker];
  [v6 setDelegate:self];
}

- (void)performAction
{
  [(CNContactListShareContactsAction *)self setupForContactFieldPicker];
  activityViewController = self->_activityViewController;
  self->_activityViewController = 0;

  v4 = [(CNContactListShareContactsAction *)self contacts];
  v5 = [CNContactShareActionHelper contactsHavePrivateProperties:v4];

  if (v5)
  {

    [(CNContactListShareContactsAction *)self presentFilterFieldPicker];
  }

  else
  {

    [(CNContactListShareContactsAction *)self presentShareSheet];
  }
}

- (CNContactListShareContactsAction)initWithContacts:(id)a3 sourceView:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNContactListShareContactsAction;
  v12 = [(CNContactListShareContactsAction *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contacts, a3);
    objc_storeStrong(&v13->_sourceView, a4);
    objc_storeStrong(&v13->_context, a5);
    v14 = v13;
  }

  return v13;
}

+ (id)descriptorForRequiredKeys
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = +[CNContactContentViewController descriptorForRequiredKeys];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactListShareContactsAction descriptorForRequiredKeys]"];
  v6 = [v2 descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

@end