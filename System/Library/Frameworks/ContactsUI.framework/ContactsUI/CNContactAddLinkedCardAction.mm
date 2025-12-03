@interface CNContactAddLinkedCardAction
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)peoplePickerLinkButtonTapped;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactAddLinkedCardAction

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  [(CNContactAddLinkedCardAction *)self setSelectedContact:contact];
  v5 = [CNContactContentViewController alloc];
  selectedContact = [(CNContactAddLinkedCardAction *)self selectedContact];
  v14 = [(CNContactContentViewController *)v5 initWithContact:selectedContact];

  [(CNContactContentViewController *)v14 setAllowsActions:0];
  [(CNContactContentViewController *)v14 setAllowsEditing:0];
  [(CNContactContentViewController *)v14 setAllowsConferencing:0];
  [(CNContactContentViewController *)v14 setContactDelegate:self];
  contactPicker = [(CNContactAddLinkedCardAction *)self contactPicker];
  navigationController = [contactPicker navigationController];
  [navigationController pushViewController:v14 animated:1];

  v9 = objc_alloc(MEMORY[0x1E69DC708]);
  v10 = CNContactsUIBundle();
  v11 = [v10 localizedStringForKey:@"LINK_BAR_BUTTON_ITEM_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v12 = [v9 initWithTitle:v11 style:2 target:self action:sel_peoplePickerLinkButtonTapped];

  navigationItem = [(CNContactContentViewController *)v14 navigationItem];
  [navigationItem setRightBarButtonItem:v12 animated:0];
}

- (void)contactPickerDidCancel:(id)cancel
{
  delegate = [(CNContactAction *)self delegate];
  [delegate actionWasCanceled:self];

  delegate2 = [(CNContactAction *)self delegate];
  contactPicker = [(CNContactAddLinkedCardAction *)self contactPicker];
  [delegate2 action:self dismissViewController:contactPicker sender:self];
}

- (void)peoplePickerLinkButtonTapped
{
  selectedContact = [(CNContactAddLinkedCardAction *)self selectedContact];
  [(CNContactAddLinkedCardAction *)self setChosenContact:selectedContact];

  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];

  delegate2 = [(CNContactAction *)self delegate];
  contactPicker = [(CNContactAddLinkedCardAction *)self contactPicker];
  [delegate2 action:self dismissViewController:contactPicker sender:self];
}

- (void)performActionWithSender:(id)sender
{
  v25[1] = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  v5 = objc_alloc_init(CNContactPickerViewController);
  [(CNContactPickerViewController *)v5 setDelegate:self];
  [(CNContactPickerViewController *)v5 setMode:2];
  [(CNContactPickerViewController *)v5 setAutocloses:0];
  v6 = [MEMORY[0x1E695DFA8] set];
  contact = [(CNContactAction *)self contact];
  identifier = [contact identifier];
  [v6 addObject:identifier];

  contact2 = [(CNContactAction *)self contact];
  LODWORD(identifier) = [contact2 isUnified];

  v10 = MEMORY[0x1E695C258];
  if (identifier)
  {
    contact3 = [(CNContactAction *)self contact];
    linkedContacts = [contact3 linkedContacts];
    v13 = [linkedContacts valueForKeyPath:*v10];
    [v6 addObjectsFromArray:v13];
  }

  editingLinkedContacts = [(CNContactAddLinkedCardAction *)self editingLinkedContacts];

  if (editingLinkedContacts)
  {
    editingLinkedContacts2 = [(CNContactAddLinkedCardAction *)self editingLinkedContacts];
    v16 = *v10;
    v17 = [editingLinkedContacts2 valueForKeyPath:*v10];
    [v6 addObjectsFromArray:v17];
  }

  else
  {
    v16 = *v10;
  }

  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT %K IN $IDENTIFIERS", v16];
  v24 = @"IDENTIFIERS";
  allObjects = [v6 allObjects];
  v25[0] = allObjects;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v21 = [v18 predicateWithSubstitutionVariables:v20];
  [(CNContactPickerViewController *)v5 setPredicateForEnablingContact:v21];

  contact4 = [(CNContactAction *)self contact];
  [(CNContactPickerViewController *)v5 scrollToClosestContactMatching:contact4];

  [(CNContactAddLinkedCardAction *)self setContactPicker:v5];
  [(CNContactAddLinkedCardAction *)self setChosenContact:0];
  delegate = [(CNContactAction *)self delegate];
  [delegate action:self presentViewController:v5 sender:senderCopy];
}

@end