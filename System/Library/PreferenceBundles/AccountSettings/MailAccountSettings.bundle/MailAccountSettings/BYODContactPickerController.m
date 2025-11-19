@interface BYODContactPickerController
+ (id)log;
- (BYODContactPickerController)initWithNavBarTitle:(id)a3 rightButtonBarText:(id)a4;
- (BYODContactPickerControllerDelegate)delegate;
- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4;
- (id)searchController:(id)a3 tintColorForRecipient:(id)a4;
- (void)_contactSelected;
- (void)_prepareInviteButton;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4;
- (void)searchController:(id)a3 didAddRecipient:(id)a4;
@end

@implementation BYODContactPickerController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2D1F8;
  block[3] = &unk_B8D78;
  block[4] = a1;
  if (qword_D64C0 != -1)
  {
    dispatch_once(&qword_D64C0, block);
  }

  v2 = qword_D64B8;

  return v2;
}

- (BYODContactPickerController)initWithNavBarTitle:(id)a3 rightButtonBarText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = BYODContactPickerController;
  v8 = [(BYODContactPickerController *)&v15 init];
  if (v8)
  {
    v9 = [[CNAutocompleteSearchController alloc] initWithSearchType:1];
    contactSearchController = v8->_contactSearchController;
    v8->_contactSearchController = v9;

    [(CNAutocompleteSearchController *)v8->_contactSearchController setDelegate:v8];
    v11 = [(CNAutocompleteSearchController *)v8->_contactSearchController navigationItem];
    [v11 setTitle:v6];

    v12 = objc_opt_new();
    [v12 setTitle:v7];
    [v12 setTarget:v8];
    [v12 setAction:"_contactSelected"];
    v13 = [(CNAutocompleteSearchController *)v8->_contactSearchController navigationItem];
    [v13 setRightBarButtonItem:v12];

    [(BYODContactPickerController *)v8 _prepareInviteButton];
  }

  return v8;
}

- (void)_contactSelected
{
  v5 = [(BYODContactPickerController *)self delegate];
  v3 = [(CNAutocompleteSearchController *)self->_contactSearchController recipients];
  v4 = [v3 firstObject];
  [v5 chooseContactController:self didSelectContact:v4];
}

- (void)_prepareInviteButton
{
  v5 = [(CNAutocompleteSearchController *)self->_contactSearchController recipients];
  v3 = [v5 count];

  v6 = [(CNAutocompleteSearchController *)self->_contactSearchController navigationItem];
  v4 = [v6 rightBarButtonItem];
  [v4 setEnabled:v3 == &dword_0 + 1];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[BYODContactPickerController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "extracting handle and type for contact: %@", buf, 0xCu);
  }

  v9 = [v7 phoneNumbers];
  if ([v9 count] == &dword_0 + 1)
  {
    v10 = [v7 emailAddresses];
    v11 = [v10 count] == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 phoneNumbers];
  if ([v12 count])
  {

    if (!v11)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v13 = [v7 emailAddresses];
  v14 = [v13 count];

  if (v11)
  {
LABEL_10:
    v15 = [v7 phoneNumbers];
    v16 = [v15 firstObject];
    v17 = [v16 value];
    v18 = [v17 stringValue];

    v19 = +[BYODContactPickerController log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v18;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "extracted phone number: %@", buf, 0xCu);
    }

    v20 = 1;
    goto LABEL_13;
  }

  if (v14 != &dword_0 + 1)
  {
LABEL_18:
    v18 = 0;
    v20 = 5;
    goto LABEL_19;
  }

  v21 = [v7 emailAddresses];
  v22 = [v21 firstObject];
  v18 = [v22 value];

  v19 = +[BYODContactPickerController log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v18;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "extracted email number: %@", buf, 0xCu);
  }

  v20 = 0;
LABEL_13:

LABEL_19:
  v23 = [[CNComposeRecipient alloc] initWithContact:v7 address:v18 kind:v20];
  v25 = v23;
  v24 = [NSArray arrayWithObjects:&v25 count:1];
  [(CNAutocompleteSearchController *)self->_contactSearchController setRecipients:v24];

  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 stringValue];
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 5;
    }
  }

  v11 = [CNComposeRecipient alloc];
  v12 = [v7 contact];
  v13 = [v11 initWithContact:v12 address:v9 kind:v10];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(CNAutocompleteSearchController *)self->_contactSearchController setRecipients:v14];

  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (id)searchController:(id)a3 tintColorForRecipient:(id)a4
{
  v4 = a4;
  if ([v4 kind] >= 2)
  {
    v5 = +[UIColor systemGrayColor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4
{
  v4 = a4;
  v5 = +[BYODContactPickerController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "creating contact for address in recepient: %@", &v9, 0xCu);
  }

  if ([v4 _appearsToBeEmail])
  {
    v6 = 0;
  }

  else if ([v4 _appearsToBePhoneNumber])
  {
    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  v7 = [[CNComposeRecipient alloc] initWithContact:0 address:v4 kind:v6];

  return v7;
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4
{
  v5 = objc_alloc_init(CNContactPickerViewController);
  v6 = [NSPredicate predicateWithFormat:@"(emailAddresses.@count > 0) OR (phoneNumbers.@count > 0)"];
  [v5 setPredicateForEnablingContact:v6];

  v7 = [NSPredicate predicateWithFormat:@"(emailAddresses.@count == 1 AND phoneNumbers.@count == 0) OR (emailAddresses.@count == 0 AND phoneNumbers.@count == 1)"];
  [v5 setPredicateForSelectionOfContact:v7];

  v8 = [NSPredicate predicateWithFormat:@"(property == 'emailAddresses') OR (property == 'phoneNumbers')"];
  [v5 setPredicateForSelectionOfProperty:v8];

  v12[0] = CNContactEmailAddressesKey;
  v12[1] = CNContactPhoneNumbersKey;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  [v5 setDisplayedPropertyKeys:v9];

  [v5 setDelegate:self];
  v10 = [(BYODContactPickerController *)self chooseContactViewController];
  v11 = [v10 navigationController];
  [v11 presentViewController:v5 animated:1 completion:0];
}

- (void)searchController:(id)a3 didAddRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recipients];
  v9 = [v8 count];

  if (v9 >= 2)
  {
    v11 = v7;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [v6 setRecipients:v10];
  }

  [(BYODContactPickerController *)self _prepareInviteButton];
}

- (BYODContactPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end