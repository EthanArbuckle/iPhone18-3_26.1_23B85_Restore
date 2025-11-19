@interface CNContactAddNewFieldAction
- (CNContactGroupPickerDelegate)groupPickerDelegate;
- (void)performActionWithSender:(id)a3;
@end

@implementation CNContactAddNewFieldAction

- (CNContactGroupPickerDelegate)groupPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_groupPickerDelegate);

  return WeakRetained;
}

- (void)performActionWithSender:(id)a3
{
  v4 = a3;
  v13 = objc_alloc_init(CNContactPropertyGroupPickerViewController);
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"ADD_MORE_PROPERTIES_NAV_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNContactPropertyGroupPickerViewController *)v13 setTitle:v6];

  v7 = [(CNContactAddNewFieldAction *)self prohibitedPropertyKeys];
  [(CNContactPropertyGroupPickerViewController *)v13 setProhibitedPropertyKeys:v7];

  v8 = [(CNContactAddNewFieldAction *)self groupPickerDelegate];
  [(CNContactPropertyGroupPickerViewController *)v13 setGroupPickerDelegate:v8];

  v9 = [(CNContactAction *)self contact];
  [(CNContactPropertyGroupPickerViewController *)v13 setContact:v9];

  v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v13];
  v11 = [v10 navigationBar];
  [v11 _cnui_applyContactStyle];

  v12 = [(CNContactAction *)self delegate];
  [v12 action:self presentViewController:v10 sender:v4];
}

@end