@interface CNContactPickerHostViewController
+ (BOOL)getViewController:(id)a3;
+ (id)contactPickerExtension;
+ (id)contextForIdentifier:(id)a3;
- (CNContactPickerContentDelegate)delegate;
- (void)invalidate;
- (void)invalidateSelectionAnimated:(BOOL)a3;
- (void)pickerDidCancel;
- (void)pickerDidCompleteWithNewContact:(id)a3;
- (void)pickerDidSelectAddNewContact;
- (void)pickerDidSelectContact:(id)a3 property:(id)a4;
- (void)pickerDidSelectContacts:(id)a3 properties:(id)a4;
- (void)setupWithOptions:(id)a3 readyBlock:(id)a4;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation CNContactPickerHostViewController

+ (BOOL)getViewController:(id)a3
{
  v4 = a3;
  v5 = [a1 contactPickerExtension];
  v10 = v5;
  if (v5)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 90, 7, @"Instantiate view controller from extension %@", v6, v7, v8, v9, v5);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__CNContactPickerHostViewController_getViewController___block_invoke;
    v12[3] = &unk_1E74E4DE8;
    v14 = v4;
    v13 = v10;
    v15 = a1;
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

+ (id)contextForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 contactPickerExtension];
  v6 = [v5 _extensionContextForUUID:v4];

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
  v2 = [(CNContactPickerHostViewController *)self delegate];
  [v2 pickerDidCancel];
}

- (void)pickerDidCompleteWithNewContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactPickerHostViewController *)self delegate];
  [v5 pickerDidCompleteWithNewContact:v4];
}

- (void)pickerDidSelectContacts:(id)a3 properties:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNContactPickerHostViewController *)self delegate];
  [v8 pickerDidSelectContacts:v7 properties:v6];
}

- (void)pickerDidSelectContact:(id)a3 property:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNContactPickerHostViewController *)self delegate];
  [v8 pickerDidSelectContact:v7 property:v6];
}

- (void)pickerDidSelectAddNewContact
{
  v2 = [(CNContactPickerHostViewController *)self delegate];
  [v2 pickerDidSelectAddNewContact];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 141, 7, @"view service did terminate with error: %@", v3, v4, v5, v6, a3);

  [(CNContactPickerHostViewController *)self pickerDidCancel];
}

- (void)invalidate
{
  v3 = [(CNContactPickerHostViewController *)self extension];
  v9 = [(CNContactPickerHostViewController *)self currentRequestIdentifier];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 133, 7, @"Invalidate extension %@ identifier %@", v4, v5, v6, v7, v3);

  v10 = [(CNContactPickerHostViewController *)self extension];
  v8 = [(CNContactPickerHostViewController *)self currentRequestIdentifier];
  [v10 cancelExtensionRequestWithIdentifier:v8];
}

- (void)invalidateSelectionAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(CNContactPickerHostViewController *)self currentRequestIdentifier];
  v7 = [v5 contextForIdentifier:v6];

  [v7 invalidateSelectionAnimated:v3];
}

- (void)setupWithOptions:(id)a3 readyBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(CNContactPickerHostViewController *)self currentRequestIdentifier];
  v10 = [v8 contextForIdentifier:v9];

  [v10 setupWithOptions:v7 readyBlock:v6];
}

@end