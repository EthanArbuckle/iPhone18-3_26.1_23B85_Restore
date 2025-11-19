@interface CNContactPickerExtensionHostContext
- (CNContactPickerHostViewController)viewController;
- (id)_derivedExtensionAuxiliaryHostProtocol;
- (void)invalidateSelectionAnimated:(BOOL)a3;
- (void)pickerDidCancel;
- (void)pickerDidCompleteWithNewContact:(id)a3;
- (void)pickerDidSelectAddNewContact;
- (void)pickerDidSelectContact:(id)a3 property:(id)a4;
- (void)pickerDidSelectContacts:(id)a3 properties:(id)a4;
- (void)setupWithOptions:(id)a3 readyBlock:(id)a4;
@end

@implementation CNContactPickerExtensionHostContext

- (CNContactPickerHostViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)pickerDidCancel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CNContactPickerExtensionHostContext_pickerDidCancel__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54__CNContactPickerExtensionHostContext_pickerDidCancel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 pickerDidCancel];
}

- (void)pickerDidCompleteWithNewContact:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__CNContactPickerExtensionHostContext_pickerDidCompleteWithNewContact___block_invoke;
  v6[3] = &unk_1E74E77C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __71__CNContactPickerExtensionHostContext_pickerDidCompleteWithNewContact___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 pickerDidCompleteWithNewContact:*(a1 + 40)];
}

- (void)pickerDidSelectContacts:(id)a3 properties:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__CNContactPickerExtensionHostContext_pickerDidSelectContacts_properties___block_invoke;
  block[3] = &unk_1E74E6EE8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__CNContactPickerExtensionHostContext_pickerDidSelectContacts_properties___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 pickerDidSelectContacts:*(a1 + 40) properties:*(a1 + 48)];
}

- (void)pickerDidSelectContact:(id)a3 property:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CNContactPickerExtensionHostContext_pickerDidSelectContact_property___block_invoke;
  block[3] = &unk_1E74E6EE8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__CNContactPickerExtensionHostContext_pickerDidSelectContact_property___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 pickerDidSelectContact:*(a1 + 40) property:*(a1 + 48)];
}

- (void)pickerDidSelectAddNewContact
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CNContactPickerExtensionHostContext_pickerDidSelectAddNewContact__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__CNContactPickerExtensionHostContext_pickerDidSelectAddNewContact__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 pickerDidSelectAddNewContact];
}

- (void)invalidateSelectionAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(CNContactPickerExtensionHostContext *)self _auxiliaryConnection];
  v9 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_147];

  v7 = v9;
  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"CNContactPickerHostViewController.m" lineNumber:215 description:@"service object is nil!"];

    v7 = 0;
  }

  [v7 invalidateSelectionAnimated:v3];
}

void __67__CNContactPickerExtensionHostContext_invalidateSelectionAnimated___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 localizedDescription];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 213, 3, @"error calling service - %@", v2, v3, v4, v5, v6);
}

- (void)setupWithOptions:(id)a3 readyBlock:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = [(CNContactPickerExtensionHostContext *)self _auxiliaryConnection];
  v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_135_43405];

  if (!v9)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"CNContactPickerHostViewController.m" lineNumber:205 description:@"service object is nil!"];
  }

  [v9 setupWithOptions:v11 readyBlock:v7];
}

void __67__CNContactPickerExtensionHostContext_setupWithOptions_readyBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 localizedDescription];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 203, 3, @"error calling service - %@", v2, v3, v4, v5, v6);
}

- (id)_derivedExtensionAuxiliaryHostProtocol
{
  v10.receiver = self;
  v10.super_class = CNContactPickerExtensionHostContext;
  v2 = [(CNContactPickerExtensionHostContext *)&v10 _derivedExtensionAuxiliaryHostProtocol];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_pickerDidSelectContacts_properties_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_pickerDidSelectContacts_properties_ argumentIndex:1 ofReply:0];

  return v2;
}

@end