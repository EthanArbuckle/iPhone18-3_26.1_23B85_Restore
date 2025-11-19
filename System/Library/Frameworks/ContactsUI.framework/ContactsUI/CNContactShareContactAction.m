@interface CNContactShareContactAction
- (BOOL)_customizationAvailableForActivityViewController:(id)a3;
- (id)activityItemForContact:(id)a3;
- (id)customLocalizedActionTitleForActivityViewController:(id)a3;
- (void)contactCardFieldPicker:(id)a3 didFinishWithContacts:(id)a4;
- (void)performActionWithSender:(id)a3;
- (void)presentFilterFieldPicker;
- (void)presentShareSheet;
- (void)setupForContactFieldPicker;
@end

@implementation CNContactShareContactAction

- (void)contactCardFieldPicker:(id)a3 didFinishWithContacts:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v6 = [v5 firstObject];
    [(CNContactShareContactAction *)self setFilteredContact:v6];

    v7 = [(CNContactShareContactAction *)self activityViewController];

    if (v7)
    {
      v8 = [(CNContactShareContactAction *)self filteredContact];
      v9 = [(CNContactShareContactAction *)self activityItemForContact:v8];

      v10 = [(CNContactShareContactAction *)self activityViewController];
      v13[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [v10 _updateActivityItems:v11];

      v12 = [(CNContactShareContactAction *)self activityViewController];
      [v12 setObjectManipulationDelegate:self];
    }

    else
    {
      [(CNContactShareContactAction *)self presentShareSheet];
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
  v4 = [(CNContactShareContactAction *)self fieldPicker];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNContactShareContactAction *)self fieldPicker];
  v6 = [v5 fieldPickerDataSource];
  v7 = [v6 sections];
  v8 = [v7 count] != 0;

  return v8;
}

- (id)activityItemForContact:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[CNShareContactActivityItem alloc] initWithContact:v4];

  v6 = [(CNContactAction *)self contact];
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  if ([CNContactCardFieldPickerDataSource canSharePronounsForContacts:v7])
  {
    v8 = [(CNContactAction *)self contact];
    v14 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [(CNShareContactActivityItem *)v5 setCanSharePronouns:[CNContactShareActionHelper contactsHaveShareableAddressingGrammarValue:v9]];
  }

  else
  {
    [(CNShareContactActivityItem *)v5 setCanSharePronouns:0];
  }

  v10 = [(CNContactAction *)self contact];
  v13 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [(CNShareContactActivityItem *)v5 setCanShareMeCardOnlySharingProperties:[CNContactCardFieldPickerDataSource isSharingMeContactForContacts:v11]];

  return v5;
}

- (void)presentShareSheet
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactShareContactAction *)self filteredContact];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CNContactAction *)self contact];
  }

  v6 = v5;

  v7 = [(CNContactShareContactAction *)self activityItemForContact:v6];
  v8 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v24[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v10 = [v8 initWithActivityItems:v9 applicationActivities:0];

  v11 = [(CNContactAction *)self delegate];
  objc_initWeak(&location, v10);
  objc_initWeak(&from, v11);
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
  v12 = [v10 popoverPresentationController];
  if (v12)
  {
    v13 = [(CNContactShareContactAction *)self sourceView];
    v14 = v13 == 0;

    if (!v14)
    {
      v15 = [(CNContactShareContactAction *)self sourceView];
      v16 = [v10 popoverPresentationController];
      [v16 setSourceView:v15];
    }
  }

  v17 = [(CNContactAction *)self delegate];
  v18 = [(CNContactShareContactAction *)self sourceView];
  [v17 action:self presentViewController:v10 sender:v18];

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
  v4 = [(CNContactShareContactAction *)self fieldPicker];
  v7 = [v3 initWithRootViewController:v4];

  v5 = [(CNContactAction *)self delegate];
  v6 = [(CNContactShareContactAction *)self sourceView];
  [v5 action:self presentViewController:v7 sender:v6];
}

- (void)setupForContactFieldPicker
{
  [(CNContactShareContactAction *)self setFilteredContact:0];
  v3 = [CNContactCardFieldPicker alloc];
  v4 = [(CNContactAction *)self contact];
  v5 = [(CNContactCardFieldPicker *)v3 initWithContact:v4];
  [(CNContactShareContactAction *)self setFieldPicker:v5];

  v6 = [(CNContactShareContactAction *)self fieldPicker];
  [v6 setDelegate:self];
}

- (void)performActionWithSender:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  [(CNContactShareContactAction *)self setSourceView:a3];
  [(CNContactShareContactAction *)self setupForContactFieldPicker];
  activityViewController = self->_activityViewController;
  self->_activityViewController = 0;

  v5 = [(CNContactAction *)self contact];
  v8[0] = v5;
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