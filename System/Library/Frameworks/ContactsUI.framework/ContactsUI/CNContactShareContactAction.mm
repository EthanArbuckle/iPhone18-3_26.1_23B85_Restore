@interface CNContactShareContactAction
- (BOOL)_customizationAvailableForActivityViewController:(id)controller;
- (id)activityItemForContact:(id)contact;
- (id)customLocalizedActionTitleForActivityViewController:(id)controller;
- (void)contactCardFieldPicker:(id)picker didFinishWithContacts:(id)contacts;
- (void)performActionWithSender:(id)sender;
- (void)presentFilterFieldPicker;
- (void)presentShareSheet;
- (void)setupForContactFieldPicker;
@end

@implementation CNContactShareContactAction

- (void)contactCardFieldPicker:(id)picker didFinishWithContacts:(id)contacts
{
  v13[1] = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    firstObject = [contactsCopy firstObject];
    [(CNContactShareContactAction *)self setFilteredContact:firstObject];

    activityViewController = [(CNContactShareContactAction *)self activityViewController];

    if (activityViewController)
    {
      filteredContact = [(CNContactShareContactAction *)self filteredContact];
      v9 = [(CNContactShareContactAction *)self activityItemForContact:filteredContact];

      activityViewController2 = [(CNContactShareContactAction *)self activityViewController];
      v13[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [activityViewController2 _updateActivityItems:v11];

      activityViewController3 = [(CNContactShareContactAction *)self activityViewController];
      [activityViewController3 setObjectManipulationDelegate:self];
    }

    else
    {
      [(CNContactShareContactAction *)self presentShareSheet];
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
  fieldPicker = [(CNContactShareContactAction *)self fieldPicker];

  if (!fieldPicker)
  {
    return 0;
  }

  fieldPicker2 = [(CNContactShareContactAction *)self fieldPicker];
  fieldPickerDataSource = [fieldPicker2 fieldPickerDataSource];
  sections = [fieldPickerDataSource sections];
  v8 = [sections count] != 0;

  return v8;
}

- (id)activityItemForContact:(id)contact
{
  v15[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = [[CNShareContactActivityItem alloc] initWithContact:contactCopy];

  contact = [(CNContactAction *)self contact];
  v15[0] = contact;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  if ([CNContactCardFieldPickerDataSource canSharePronounsForContacts:v7])
  {
    contact2 = [(CNContactAction *)self contact];
    v14 = contact2;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [(CNShareContactActivityItem *)v5 setCanSharePronouns:[CNContactShareActionHelper contactsHaveShareableAddressingGrammarValue:v9]];
  }

  else
  {
    [(CNShareContactActivityItem *)v5 setCanSharePronouns:0];
  }

  contact3 = [(CNContactAction *)self contact];
  v13 = contact3;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [(CNShareContactActivityItem *)v5 setCanShareMeCardOnlySharingProperties:[CNContactCardFieldPickerDataSource isSharingMeContactForContacts:v11]];

  return v5;
}

- (void)presentShareSheet
{
  v24[1] = *MEMORY[0x1E69E9840];
  filteredContact = [(CNContactShareContactAction *)self filteredContact];
  v4 = filteredContact;
  if (filteredContact)
  {
    contact = filteredContact;
  }

  else
  {
    contact = [(CNContactAction *)self contact];
  }

  v6 = contact;

  v7 = [(CNContactShareContactAction *)self activityItemForContact:v6];
  v8 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v24[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v10 = [v8 initWithActivityItems:v9 applicationActivities:0];

  delegate = [(CNContactAction *)self delegate];
  objc_initWeak(&location, v10);
  objc_initWeak(&from, delegate);
  [v10 setObjectManipulationDelegate:self];
  [v10 setShowKeyboardAutomatically:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __48__CNContactShareContactAction_presentShareSheet__block_invoke;
  v19[3] = &unk_1E74E27B0;
  objc_copyWeak(&v20, &from);
  objc_copyWeak(&v21, &location);
  v19[4] = self;
  [v10 setPreCompletionHandler:v19];
  popoverPresentationController = [v10 popoverPresentationController];
  if (popoverPresentationController)
  {
    sourceView = [(CNContactShareContactAction *)self sourceView];
    v14 = sourceView == 0;

    if (!v14)
    {
      sourceView2 = [(CNContactShareContactAction *)self sourceView];
      popoverPresentationController2 = [v10 popoverPresentationController];
      [popoverPresentationController2 setSourceView:sourceView2];
    }
  }

  delegate2 = [(CNContactAction *)self delegate];
  sourceView3 = [(CNContactShareContactAction *)self sourceView];
  [delegate2 action:self presentViewController:v10 sender:sourceView3];

  [(CNContactShareContactAction *)self setActivityViewController:v10];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __48__CNContactShareContactAction_presentShareSheet__block_invoke(uint64_t a1, void *a2, int a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_loadWeakRetained((a1 + 48));
  if (a3)
  {
    v8 = +[CNUIDataCollector sharedCollector];
    v9 = CNUIContactActionTypeShare;
    v13 = CNUIContactActionShareActivityType;
    v14[0] = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v8 logContactActionType:v9 attributes:v10];

    [WeakRetained actionDidFinish:*(a1 + 32)];
  }

  else
  {
    [WeakRetained actionWasCanceled:*(a1 + 32)];
  }

  v11 = *(a1 + 32);
  v12 = [v11 sourceView];
  [WeakRetained action:v11 dismissViewController:v7 sender:v12];
}

- (void)presentFilterFieldPicker
{
  v3 = objc_alloc(MEMORY[0x1E69DCCD8]);
  fieldPicker = [(CNContactShareContactAction *)self fieldPicker];
  v7 = [v3 initWithRootViewController:fieldPicker];

  delegate = [(CNContactAction *)self delegate];
  sourceView = [(CNContactShareContactAction *)self sourceView];
  [delegate action:self presentViewController:v7 sender:sourceView];
}

- (void)setupForContactFieldPicker
{
  [(CNContactShareContactAction *)self setFilteredContact:0];
  v3 = [CNContactCardFieldPicker alloc];
  contact = [(CNContactAction *)self contact];
  v5 = [(CNContactCardFieldPicker *)v3 initWithContact:contact];
  [(CNContactShareContactAction *)self setFieldPicker:v5];

  fieldPicker = [(CNContactShareContactAction *)self fieldPicker];
  [fieldPicker setDelegate:self];
}

- (void)performActionWithSender:(id)sender
{
  v8[1] = *MEMORY[0x1E69E9840];
  [(CNContactShareContactAction *)self setSourceView:sender];
  [(CNContactShareContactAction *)self setupForContactFieldPicker];
  activityViewController = self->_activityViewController;
  self->_activityViewController = 0;

  contact = [(CNContactAction *)self contact];
  v8[0] = contact;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7 = [CNContactShareActionHelper contactsHavePrivateProperties:v6];

  if (v7)
  {
    [(CNContactShareContactAction *)self presentFilterFieldPicker];
  }

  else
  {
    [(CNContactShareContactAction *)self presentShareSheet];
  }
}

@end