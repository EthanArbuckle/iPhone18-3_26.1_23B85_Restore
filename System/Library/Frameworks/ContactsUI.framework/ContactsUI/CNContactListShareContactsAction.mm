@interface CNContactListShareContactsAction
+ (id)descriptorForRequiredKeys;
- (BOOL)_customizationAvailableForActivityViewController:(id)controller;
- (CNContactListActionDelegate)delegate;
- (CNContactListShareContactsAction)initWithContacts:(id)contacts sourceView:(id)view context:(id)context;
- (id)activityItemForContacts:(id)contacts;
- (id)customLocalizedActionTitleForActivityViewController:(id)controller;
- (void)contactCardFieldPicker:(id)picker didFinishWithContacts:(id)contacts;
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

- (void)contactCardFieldPicker:(id)picker didFinishWithContacts:(id)contacts
{
  v11[1] = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [(CNContactListShareContactsAction *)self setFilteredContacts:contactsCopy];
    activityViewController = [(CNContactListShareContactsAction *)self activityViewController];

    if (activityViewController)
    {
      v7 = [(CNContactListShareContactsAction *)self activityItemForContacts:contactsCopy];
      activityViewController2 = [(CNContactListShareContactsAction *)self activityViewController];
      v11[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [activityViewController2 _updateActivityItems:v9];

      activityViewController3 = [(CNContactListShareContactsAction *)self activityViewController];
      [activityViewController3 setObjectManipulationDelegate:self];
    }

    else
    {
      [(CNContactListShareContactsAction *)self presentShareSheet];
    }
  }
}

- (id)customLocalizedActionTitleForActivityViewController:(id)controller
{
  v3 = CNContactsUIBundle();
  v4 = [v3 localizedStringForKey:@"SHARE_SELECTED_FIELDS_OPTION_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  return v4;
}

- (BOOL)_customizationAvailableForActivityViewController:(id)controller
{
  fieldPicker = [(CNContactListShareContactsAction *)self fieldPicker];

  if (!fieldPicker)
  {
    return 0;
  }

  fieldPicker2 = [(CNContactListShareContactsAction *)self fieldPicker];
  fieldPickerDataSource = [fieldPicker2 fieldPickerDataSource];
  sections = [fieldPickerDataSource sections];
  v8 = [sections count] != 0;

  return v8;
}

- (id)activityItemForContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = [CNShareContactActivityItem alloc];
  context = [(CNContactListShareContactsAction *)self context];
  groupName = [context groupName];
  v8 = [(CNShareContactActivityItem *)v5 initWithContacts:contactsCopy inGroupNamed:groupName];

  contacts = [(CNContactListShareContactsAction *)self contacts];
  if ([CNContactCardFieldPickerDataSource canSharePronounsForContacts:contacts])
  {
    v10 = [CNContactShareActionHelper contactsHaveShareableAddressingGrammarValue:contactsCopy];
  }

  else
  {
    v10 = 0;
  }

  [(CNShareContactActivityItem *)v8 setCanSharePronouns:v10];

  contacts2 = [(CNContactListShareContactsAction *)self contacts];
  [(CNShareContactActivityItem *)v8 setCanShareMeCardOnlySharingProperties:[CNContactCardFieldPickerDataSource isSharingMeContactForContacts:contacts2]];

  return v8;
}

- (void)presentShareSheet
{
  v32[1] = *MEMORY[0x1E69E9840];
  filteredContacts = [(CNContactListShareContactsAction *)self filteredContacts];
  v4 = filteredContacts;
  if (filteredContacts)
  {
    contacts = filteredContacts;
  }

  else
  {
    contacts = [(CNContactListShareContactsAction *)self contacts];
  }

  v6 = contacts;

  v7 = [(CNContactListShareContactsAction *)self activityItemForContacts:v6];
  v8 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v32[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v10 = [v8 initWithActivityItems:v9 applicationActivities:0];

  delegate = [(CNContactListShareContactsAction *)self delegate];
  objc_initWeak(&location, delegate);
  [v10 setObjectManipulationDelegate:self];
  [v10 setShowKeyboardAutomatically:1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __53__CNContactListShareContactsAction_presentShareSheet__block_invoke;
  v29[3] = &unk_1E74E6618;
  objc_copyWeak(&v30, &location);
  v29[4] = self;
  [v10 setPreCompletionHandler:v29];
  sourceView = [(CNContactListShareContactsAction *)self sourceView];
  v13 = sourceView == 0;

  if (!v13)
  {
    sourceView2 = [(CNContactListShareContactsAction *)self sourceView];
    popoverPresentationController = [v10 popoverPresentationController];
    [popoverPresentationController setSourceView:sourceView2];

    sourceView3 = [(CNContactListShareContactsAction *)self sourceView];
    [sourceView3 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    popoverPresentationController2 = [v10 popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{v18, v20, v22, v24}];

    contacts2 = [(CNContactListShareContactsAction *)self contacts];
    LODWORD(popoverPresentationController2) = [contacts2 count] > 1;

    if (popoverPresentationController2)
    {
      popoverPresentationController3 = [v10 popoverPresentationController];
      [popoverPresentationController3 setPermittedArrowDirections:12];
    }
  }

  delegate2 = [(CNContactListShareContactsAction *)self delegate];
  [delegate2 action:self presentViewController:v10];

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
  fieldPicker = [(CNContactListShareContactsAction *)self fieldPicker];
  v6 = [v3 initWithRootViewController:fieldPicker];

  delegate = [(CNContactListShareContactsAction *)self delegate];
  [delegate action:self presentViewController:v6];
}

- (void)setupForContactFieldPicker
{
  [(CNContactListShareContactsAction *)self setFilteredContacts:0];
  v3 = [CNContactCardFieldPicker alloc];
  contacts = [(CNContactListShareContactsAction *)self contacts];
  v5 = [(CNContactCardFieldPicker *)v3 initWithContacts:contacts];
  [(CNContactListShareContactsAction *)self setFieldPicker:v5];

  fieldPicker = [(CNContactListShareContactsAction *)self fieldPicker];
  [fieldPicker setDelegate:self];
}

- (void)performAction
{
  [(CNContactListShareContactsAction *)self setupForContactFieldPicker];
  activityViewController = self->_activityViewController;
  self->_activityViewController = 0;

  contacts = [(CNContactListShareContactsAction *)self contacts];
  v5 = [CNContactShareActionHelper contactsHavePrivateProperties:contacts];

  if (v5)
  {

    [(CNContactListShareContactsAction *)self presentFilterFieldPicker];
  }

  else
  {

    [(CNContactListShareContactsAction *)self presentShareSheet];
  }
}

- (CNContactListShareContactsAction)initWithContacts:(id)contacts sourceView:(id)view context:(id)context
{
  contactsCopy = contacts;
  viewCopy = view;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = CNContactListShareContactsAction;
  v12 = [(CNContactListShareContactsAction *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contacts, contacts);
    objc_storeStrong(&v13->_sourceView, view);
    objc_storeStrong(&v13->_context, context);
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