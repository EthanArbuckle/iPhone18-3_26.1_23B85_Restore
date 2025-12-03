@interface CNContactAddNewFieldAction
- (CNContactGroupPickerDelegate)groupPickerDelegate;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactAddNewFieldAction

- (CNContactGroupPickerDelegate)groupPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_groupPickerDelegate);

  return WeakRetained;
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  v13 = objc_alloc_init(CNContactPropertyGroupPickerViewController);
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"ADD_MORE_PROPERTIES_NAV_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNContactPropertyGroupPickerViewController *)v13 setTitle:v6];

  prohibitedPropertyKeys = [(CNContactAddNewFieldAction *)self prohibitedPropertyKeys];
  [(CNContactPropertyGroupPickerViewController *)v13 setProhibitedPropertyKeys:prohibitedPropertyKeys];

  groupPickerDelegate = [(CNContactAddNewFieldAction *)self groupPickerDelegate];
  [(CNContactPropertyGroupPickerViewController *)v13 setGroupPickerDelegate:groupPickerDelegate];

  contact = [(CNContactAction *)self contact];
  [(CNContactPropertyGroupPickerViewController *)v13 setContact:contact];

  v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v13];
  navigationBar = [v10 navigationBar];
  [navigationBar _cnui_applyContactStyle];

  delegate = [(CNContactAction *)self delegate];
  [delegate action:self presentViewController:v10 sender:senderCopy];
}

@end