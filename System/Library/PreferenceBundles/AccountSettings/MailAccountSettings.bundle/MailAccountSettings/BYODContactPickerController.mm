@interface BYODContactPickerController
+ (id)log;
- (BYODContactPickerController)initWithNavBarTitle:(id)title rightButtonBarText:(id)text;
- (BYODContactPickerControllerDelegate)delegate;
- (id)searchController:(id)controller composeRecipientForAddress:(id)address;
- (id)searchController:(id)controller tintColorForRecipient:(id)recipient;
- (void)_contactSelected;
- (void)_prepareInviteButton;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view;
- (void)searchController:(id)controller didAddRecipient:(id)recipient;
@end

@implementation BYODContactPickerController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2D1F8;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D64C0 != -1)
  {
    dispatch_once(&qword_D64C0, block);
  }

  v2 = qword_D64B8;

  return v2;
}

- (BYODContactPickerController)initWithNavBarTitle:(id)title rightButtonBarText:(id)text
{
  titleCopy = title;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = BYODContactPickerController;
  v8 = [(BYODContactPickerController *)&v15 init];
  if (v8)
  {
    v9 = [[CNAutocompleteSearchController alloc] initWithSearchType:1];
    contactSearchController = v8->_contactSearchController;
    v8->_contactSearchController = v9;

    [(CNAutocompleteSearchController *)v8->_contactSearchController setDelegate:v8];
    navigationItem = [(CNAutocompleteSearchController *)v8->_contactSearchController navigationItem];
    [navigationItem setTitle:titleCopy];

    v12 = objc_opt_new();
    [v12 setTitle:textCopy];
    [v12 setTarget:v8];
    [v12 setAction:"_contactSelected"];
    navigationItem2 = [(CNAutocompleteSearchController *)v8->_contactSearchController navigationItem];
    [navigationItem2 setRightBarButtonItem:v12];

    [(BYODContactPickerController *)v8 _prepareInviteButton];
  }

  return v8;
}

- (void)_contactSelected
{
  delegate = [(BYODContactPickerController *)self delegate];
  recipients = [(CNAutocompleteSearchController *)self->_contactSearchController recipients];
  firstObject = [recipients firstObject];
  [delegate chooseContactController:self didSelectContact:firstObject];
}

- (void)_prepareInviteButton
{
  recipients = [(CNAutocompleteSearchController *)self->_contactSearchController recipients];
  v3 = [recipients count];

  navigationItem = [(CNAutocompleteSearchController *)self->_contactSearchController navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v3 == &dword_0 + 1];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  v8 = +[BYODContactPickerController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = contactCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "extracting handle and type for contact: %@", buf, 0xCu);
  }

  phoneNumbers = [contactCopy phoneNumbers];
  if ([phoneNumbers count] == &dword_0 + 1)
  {
    emailAddresses = [contactCopy emailAddresses];
    v11 = [emailAddresses count] == 0;
  }

  else
  {
    v11 = 0;
  }

  phoneNumbers2 = [contactCopy phoneNumbers];
  if ([phoneNumbers2 count])
  {

    if (!v11)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  emailAddresses2 = [contactCopy emailAddresses];
  v14 = [emailAddresses2 count];

  if (v11)
  {
LABEL_10:
    phoneNumbers3 = [contactCopy phoneNumbers];
    firstObject = [phoneNumbers3 firstObject];
    value = [firstObject value];
    stringValue = [value stringValue];

    v19 = +[BYODContactPickerController log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = stringValue;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "extracted phone number: %@", buf, 0xCu);
    }

    v20 = 1;
    goto LABEL_13;
  }

  if (v14 != &dword_0 + 1)
  {
LABEL_18:
    stringValue = 0;
    v20 = 5;
    goto LABEL_19;
  }

  emailAddresses3 = [contactCopy emailAddresses];
  firstObject2 = [emailAddresses3 firstObject];
  stringValue = [firstObject2 value];

  v19 = +[BYODContactPickerController log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = stringValue;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "extracted email number: %@", buf, 0xCu);
  }

  v20 = 0;
LABEL_13:

LABEL_19:
  v23 = [[CNComposeRecipient alloc] initWithContact:contactCopy address:stringValue kind:v20];
  v25 = v23;
  v24 = [NSArray arrayWithObjects:&v25 count:1];
  [(CNAutocompleteSearchController *)self->_contactSearchController setRecipients:v24];

  [pickerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  pickerCopy = picker;
  propertyCopy = property;
  value = [propertyCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [value stringValue];
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = value;
      v10 = 0;
    }

    else
    {
      stringValue = 0;
      v10 = 5;
    }
  }

  v11 = [CNComposeRecipient alloc];
  contact = [propertyCopy contact];
  v13 = [v11 initWithContact:contact address:stringValue kind:v10];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(CNAutocompleteSearchController *)self->_contactSearchController setRecipients:v14];

  [pickerCopy dismissViewControllerAnimated:1 completion:0];
}

- (id)searchController:(id)controller tintColorForRecipient:(id)recipient
{
  recipientCopy = recipient;
  if ([recipientCopy kind] >= 2)
  {
    v5 = +[UIColor systemGrayColor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)searchController:(id)controller composeRecipientForAddress:(id)address
{
  addressCopy = address;
  v5 = +[BYODContactPickerController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = addressCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "creating contact for address in recepient: %@", &v9, 0xCu);
  }

  if ([addressCopy _appearsToBeEmail])
  {
    v6 = 0;
  }

  else if ([addressCopy _appearsToBePhoneNumber])
  {
    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  v7 = [[CNComposeRecipient alloc] initWithContact:0 address:addressCopy kind:v6];

  return v7;
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view
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
  chooseContactViewController = [(BYODContactPickerController *)self chooseContactViewController];
  navigationController = [chooseContactViewController navigationController];
  [navigationController presentViewController:v5 animated:1 completion:0];
}

- (void)searchController:(id)controller didAddRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  recipients = [controllerCopy recipients];
  v9 = [recipients count];

  if (v9 >= 2)
  {
    v11 = recipientCopy;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [controllerCopy setRecipients:v10];
  }

  [(BYODContactPickerController *)self _prepareInviteButton];
}

- (BYODContactPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end