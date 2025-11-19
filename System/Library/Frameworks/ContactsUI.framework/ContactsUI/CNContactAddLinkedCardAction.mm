@interface CNContactAddLinkedCardAction
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)peoplePickerLinkButtonTapped;
- (void)performActionWithSender:(id)a3;
@end

@implementation CNContactAddLinkedCardAction

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  [(CNContactAddLinkedCardAction *)self setSelectedContact:a4];
  v5 = [CNContactContentViewController alloc];
  v6 = [(CNContactAddLinkedCardAction *)self selectedContact];
  v14 = [(CNContactContentViewController *)v5 initWithContact:v6];

  [(CNContactContentViewController *)v14 setAllowsActions:0];
  [(CNContactContentViewController *)v14 setAllowsEditing:0];
  [(CNContactContentViewController *)v14 setAllowsConferencing:0];
  [(CNContactContentViewController *)v14 setContactDelegate:self];
  v7 = [(CNContactAddLinkedCardAction *)self contactPicker];
  v8 = [v7 navigationController];
  [v8 pushViewController:v14 animated:1];

  v9 = objc_alloc(MEMORY[0x1E69DC708]);
  v10 = CNContactsUIBundle();
  v11 = [v10 localizedStringForKey:@"LINK_BAR_BUTTON_ITEM_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v12 = [v9 initWithTitle:v11 style:2 target:self action:sel_peoplePickerLinkButtonTapped];

  v13 = [(CNContactContentViewController *)v14 navigationItem];
  [v13 setRightBarButtonItem:v12 animated:0];
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = [(CNContactAction *)self delegate];
  [v4 actionWasCanceled:self];

  v6 = [(CNContactAction *)self delegate];
  v5 = [(CNContactAddLinkedCardAction *)self contactPicker];
  [v6 action:self dismissViewController:v5 sender:self];
}

- (void)peoplePickerLinkButtonTapped
{
  v3 = [(CNContactAddLinkedCardAction *)self selectedContact];
  [(CNContactAddLinkedCardAction *)self setChosenContact:v3];

  v4 = [(CNContactAction *)self delegate];
  [v4 actionDidFinish:self];

  v6 = [(CNContactAction *)self delegate];
  v5 = [(CNContactAddLinkedCardAction *)self contactPicker];
  [v6 action:self dismissViewController:v5 sender:self];
}

- (void)performActionWithSender:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(CNContactPickerViewController);
  [(CNContactPickerViewController *)v5 setDelegate:self];
  [(CNContactPickerViewController *)v5 setMode:2];
  [(CNContactPickerViewController *)v5 setAutocloses:0];
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [(CNContactAction *)self contact];
  v8 = [v7 identifier];
  [v6 addObject:v8];

  v9 = [(CNContactAction *)self contact];
  LODWORD(v8) = [v9 isUnified];

  v10 = MEMORY[0x1E695C258];
  if (v8)
  {
    v11 = [(CNContactAction *)self contact];
    v12 = [v11 linkedContacts];
    v13 = [v12 valueForKeyPath:*v10];
    [v6 addObjectsFromArray:v13];
  }

  v14 = [(CNContactAddLinkedCardAction *)self editingLinkedContacts];

  if (v14)
  {
    v15 = [(CNContactAddLinkedCardAction *)self editingLinkedContacts];
    v16 = *v10;
    v17 = [v15 valueForKeyPath:*v10];
    [v6 addObjectsFromArray:v17];
  }

  else
  {
    v16 = *v10;
  }

  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT %K IN $IDENTIFIERS", v16];
  v24 = @"IDENTIFIERS";
  v19 = [v6 allObjects];
  v25[0] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v21 = [v18 predicateWithSubstitutionVariables:v20];
  [(CNContactPickerViewController *)v5 setPredicateForEnablingContact:v21];

  v22 = [(CNContactAction *)self contact];
  [(CNContactPickerViewController *)v5 scrollToClosestContactMatching:v22];

  [(CNContactAddLinkedCardAction *)self setContactPicker:v5];
  [(CNContactAddLinkedCardAction *)self setChosenContact:0];
  v23 = [(CNContactAction *)self delegate];
  [v23 action:self presentViewController:v5 sender:v4];
}

@end