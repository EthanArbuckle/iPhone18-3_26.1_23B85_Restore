@interface CNContactPickerHostViewController
+ (BOOL)getViewController:(id)controller;
+ (id)contactPickerExtension;
+ (id)contextForIdentifier:(id)identifier;
- (CNContactPickerContentDelegate)delegate;
- (void)invalidate;
- (void)invalidateSelectionAnimated:(BOOL)animated;
- (void)pickerDidCancel;
- (void)pickerDidCompleteWithNewContact:(id)contact;
- (void)pickerDidSelectAddNewContact;
- (void)pickerDidSelectContact:(id)contact property:(id)property;
- (void)pickerDidSelectContacts:(id)contacts properties:(id)properties;
- (void)setupWithOptions:(id)options readyBlock:(id)block;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation CNContactPickerHostViewController

+ (BOOL)getViewController:(id)controller
{
  controllerCopy = controller;
  contactPickerExtension = [self contactPickerExtension];
  v10 = contactPickerExtension;
  if (contactPickerExtension)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 90, 7, @"Instantiate view controller from extension %@", v6, v7, v8, v9, contactPickerExtension);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__CNContactPickerHostViewController_getViewController___block_invoke;
    v12[3] = &unk_1E74E4DE8;
    v14 = controllerCopy;
    v13 = v10;
    selfCopy = self;
    [v13 instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] listenerEndpoint:0 connectionHandler:v12];
  }

  return v10 != 0;
}

void __55__CNContactPickerHostViewController_getViewController___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = a2;
  v7 = a3;
  v8 = a4;
  v13 = v8;
  if (v8)
  {
    v14 = [v8 description];
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 94, 3, @"View Service Error, %@", v15, v16, v17, v18, v14);

    v19 = [CNContactPickerServiceErrorViewController alloc];
    v20 = [v13 localizedDescription];
    v21 = [(CNErrorViewController *)v19 initWithMessage:v20];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 99, 7, @"Got view controller %@ identifier %@", v9, v10, v11, v12, v7);
    v22 = *(a1 + 32);
    v23 = v7;
    [v23 setExtension:v22];
    [v23 setCurrentRequestIdentifier:v24];
    v21 = [objc_opt_class() contextForIdentifier:v24];
    [(CNContactPickerServiceErrorViewController *)v21 setViewController:v23];
    (*(*(a1 + 40) + 16))();
  }
}

+ (id)contextForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contactPickerExtension = [self contactPickerExtension];
  v6 = [contactPickerExtension _extensionContextForUUID:identifierCopy];

  return v6;
}

+ (id)contactPickerExtension
{
  if (contactPickerExtension_onceToken != -1)
  {
    dispatch_once(&contactPickerExtension_onceToken, &__block_literal_global_43323);
  }

  v3 = contactPickerExtension_extension;

  return v3;
}

void __59__CNContactPickerHostViewController_contactPickerExtension__block_invoke()
{
  v7 = 0;
  v0 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:@"com.apple.ContactsUI.ContactsViewService" error:&v7];
  v1 = v7;
  v2 = contactPickerExtension_extension;
  contactPickerExtension_extension = v0;

  if (v1)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 69, 3, @"Could not get Contacts extension: %@", v3, v4, v5, v6, v1);
  }

  else
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 71, 7, @"Got extension %@", v3, v4, v5, v6, contactPickerExtension_extension);
  }
}

- (CNContactPickerContentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pickerDidCancel
{
  delegate = [(CNContactPickerHostViewController *)self delegate];
  [delegate pickerDidCancel];
}

- (void)pickerDidCompleteWithNewContact:(id)contact
{
  contactCopy = contact;
  delegate = [(CNContactPickerHostViewController *)self delegate];
  [delegate pickerDidCompleteWithNewContact:contactCopy];
}

- (void)pickerDidSelectContacts:(id)contacts properties:(id)properties
{
  propertiesCopy = properties;
  contactsCopy = contacts;
  delegate = [(CNContactPickerHostViewController *)self delegate];
  [delegate pickerDidSelectContacts:contactsCopy properties:propertiesCopy];
}

- (void)pickerDidSelectContact:(id)contact property:(id)property
{
  propertyCopy = property;
  contactCopy = contact;
  delegate = [(CNContactPickerHostViewController *)self delegate];
  [delegate pickerDidSelectContact:contactCopy property:propertyCopy];
}

- (void)pickerDidSelectAddNewContact
{
  delegate = [(CNContactPickerHostViewController *)self delegate];
  [delegate pickerDidSelectAddNewContact];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 141, 7, @"view service did terminate with error: %@", v3, v4, v5, v6, error);

  [(CNContactPickerHostViewController *)self pickerDidCancel];
}

- (void)invalidate
{
  extension = [(CNContactPickerHostViewController *)self extension];
  currentRequestIdentifier = [(CNContactPickerHostViewController *)self currentRequestIdentifier];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 133, 7, @"Invalidate extension %@ identifier %@", v4, v5, v6, v7, extension);

  extension2 = [(CNContactPickerHostViewController *)self extension];
  currentRequestIdentifier2 = [(CNContactPickerHostViewController *)self currentRequestIdentifier];
  [extension2 cancelExtensionRequestWithIdentifier:currentRequestIdentifier2];
}

- (void)invalidateSelectionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = objc_opt_class();
  currentRequestIdentifier = [(CNContactPickerHostViewController *)self currentRequestIdentifier];
  v7 = [v5 contextForIdentifier:currentRequestIdentifier];

  [v7 invalidateSelectionAnimated:animatedCopy];
}

- (void)setupWithOptions:(id)options readyBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  v8 = objc_opt_class();
  currentRequestIdentifier = [(CNContactPickerHostViewController *)self currentRequestIdentifier];
  v10 = [v8 contextForIdentifier:currentRequestIdentifier];

  [v10 setupWithOptions:optionsCopy readyBlock:blockCopy];
}

@end