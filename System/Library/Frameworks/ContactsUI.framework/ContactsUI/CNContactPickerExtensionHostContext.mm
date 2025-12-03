@interface CNContactPickerExtensionHostContext
- (CNContactPickerHostViewController)viewController;
- (id)_derivedExtensionAuxiliaryHostProtocol;
- (void)invalidateSelectionAnimated:(BOOL)animated;
- (void)pickerDidCancel;
- (void)pickerDidCompleteWithNewContact:(id)contact;
- (void)pickerDidSelectAddNewContact;
- (void)pickerDidSelectContact:(id)contact property:(id)property;
- (void)pickerDidSelectContacts:(id)contacts properties:(id)properties;
- (void)setupWithOptions:(id)options readyBlock:(id)block;
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

- (void)pickerDidCompleteWithNewContact:(id)contact
{
  contactCopy = contact;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__CNContactPickerExtensionHostContext_pickerDidCompleteWithNewContact___block_invoke;
  v6[3] = &unk_1E74E77C0;
  v6[4] = self;
  v7 = contactCopy;
  v5 = contactCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __71__CNContactPickerExtensionHostContext_pickerDidCompleteWithNewContact___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 pickerDidCompleteWithNewContact:*(a1 + 40)];
}

- (void)pickerDidSelectContacts:(id)contacts properties:(id)properties
{
  contactsCopy = contacts;
  propertiesCopy = properties;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__CNContactPickerExtensionHostContext_pickerDidSelectContacts_properties___block_invoke;
  block[3] = &unk_1E74E6EE8;
  block[4] = self;
  v11 = contactsCopy;
  v12 = propertiesCopy;
  v8 = propertiesCopy;
  v9 = contactsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__CNContactPickerExtensionHostContext_pickerDidSelectContacts_properties___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 pickerDidSelectContacts:*(a1 + 40) properties:*(a1 + 48)];
}

- (void)pickerDidSelectContact:(id)contact property:(id)property
{
  contactCopy = contact;
  propertyCopy = property;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CNContactPickerExtensionHostContext_pickerDidSelectContact_property___block_invoke;
  block[3] = &unk_1E74E6EE8;
  block[4] = self;
  v11 = contactCopy;
  v12 = propertyCopy;
  v8 = propertyCopy;
  v9 = contactCopy;
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

- (void)invalidateSelectionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _auxiliaryConnection = [(CNContactPickerExtensionHostContext *)self _auxiliaryConnection];
  v9 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_147];

  v7 = v9;
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactPickerHostViewController.m" lineNumber:215 description:@"service object is nil!"];

    v7 = 0;
  }

  [v7 invalidateSelectionAnimated:animatedCopy];
}

void __67__CNContactPickerExtensionHostContext_invalidateSelectionAnimated___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 localizedDescription];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerHostViewController.m", 213, 3, @"error calling service - %@", v2, v3, v4, v5, v6);
}

- (void)setupWithOptions:(id)options readyBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  _auxiliaryConnection = [(CNContactPickerExtensionHostContext *)self _auxiliaryConnection];
  v9 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_135_43405];

  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactPickerHostViewController.m" lineNumber:205 description:@"service object is nil!"];
  }

  [v9 setupWithOptions:optionsCopy readyBlock:blockCopy];
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
  _derivedExtensionAuxiliaryHostProtocol = [(CNContactPickerExtensionHostContext *)&v10 _derivedExtensionAuxiliaryHostProtocol];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [_derivedExtensionAuxiliaryHostProtocol setClasses:v5 forSelector:sel_pickerDidSelectContacts_properties_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [_derivedExtensionAuxiliaryHostProtocol setClasses:v8 forSelector:sel_pickerDidSelectContacts_properties_ argumentIndex:1 ofReply:0];

  return _derivedExtensionAuxiliaryHostProtocol;
}

@end