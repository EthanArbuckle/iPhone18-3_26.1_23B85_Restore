@interface CNContactPickerExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)invalidateSelectionAnimated:(BOOL)animated;
- (void)pickerDidCancel;
- (void)pickerDidCompleteWithNewContact:(id)contact;
- (void)pickerDidSelectAddNewContact;
- (void)pickerDidSelectContact:(id)contact property:(id)property;
- (void)pickerDidSelectContacts:(id)contacts properties:(id)properties;
- (void)setupWithOptions:(id)options readyBlock:(id)block;
@end

@implementation CNContactPickerExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_24920 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_onceToken_24920, &__block_literal_global_103);
  }

  v3 = _extensionAuxiliaryHostProtocol___interface_24921;

  return v3;
}

void __66__CNContactPickerExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0D7DF80];
  v1 = _extensionAuxiliaryHostProtocol___interface_24921;
  _extensionAuxiliaryHostProtocol___interface_24921 = v0;

  v2 = _extensionAuxiliaryHostProtocol___interface_24921;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_pickerDidSelectContacts_properties_ argumentIndex:0 ofReply:0];

  v6 = _extensionAuxiliaryHostProtocol___interface_24921;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_pickerDidSelectContacts_properties_ argumentIndex:1 ofReply:0];
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_24926 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_onceToken_24926, &__block_literal_global_87_24927);
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface_24928;

  return v3;
}

void __68__CNContactPickerExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DC5638];
  v1 = _extensionAuxiliaryVendorProtocol___interface_24928;
  _extensionAuxiliaryVendorProtocol___interface_24928 = v0;

  v2 = _extensionAuxiliaryVendorProtocol___interface_24928;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v2 setClasses:v10 forSelector:sel_setupWithOptions_readyBlock_ argumentIndex:0 ofReply:0];
}

- (void)pickerDidCancel
{
  _auxiliaryConnection = [(CNContactPickerExtensionContext *)self _auxiliaryConnection];
  v7 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_128];

  v5 = v7;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactPickerServiceViewController.m" lineNumber:306 description:@"host object is nil!"];

    v5 = 0;
  }

  [v5 pickerDidCancel];
}

void __50__CNContactPickerExtensionContext_pickerDidCancel__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 localizedDescription];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerServiceViewController.m", 304, 3, @"error calling host - %@", v2, v3, v4, v5, v6);
}

- (void)pickerDidCompleteWithNewContact:(id)contact
{
  contactCopy = contact;
  _auxiliaryConnection = [(CNContactPickerExtensionContext *)self _auxiliaryConnection];
  v6 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_126];

  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactPickerServiceViewController.m" lineNumber:296 description:@"host object is nil!"];
  }

  [v6 pickerDidCompleteWithNewContact:contactCopy];
}

void __67__CNContactPickerExtensionContext_pickerDidCompleteWithNewContact___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 localizedDescription];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerServiceViewController.m", 294, 3, @"error calling host - %@", v2, v3, v4, v5, v6);
}

- (void)pickerDidSelectContacts:(id)contacts properties:(id)properties
{
  contactsCopy = contacts;
  propertiesCopy = properties;
  _auxiliaryConnection = [(CNContactPickerExtensionContext *)self _auxiliaryConnection];
  v9 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_124];

  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactPickerServiceViewController.m" lineNumber:286 description:@"host object is nil!"];
  }

  [v9 pickerDidSelectContacts:contactsCopy properties:propertiesCopy];
}

void __70__CNContactPickerExtensionContext_pickerDidSelectContacts_properties___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 localizedDescription];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerServiceViewController.m", 284, 3, @"error calling host - %@", v2, v3, v4, v5, v6);
}

- (void)pickerDidSelectContact:(id)contact property:(id)property
{
  contactCopy = contact;
  propertyCopy = property;
  _auxiliaryConnection = [(CNContactPickerExtensionContext *)self _auxiliaryConnection];
  v9 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_122];

  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactPickerServiceViewController.m" lineNumber:276 description:@"host object is nil!"];
  }

  [v9 pickerDidSelectContact:contactCopy property:propertyCopy];
}

void __67__CNContactPickerExtensionContext_pickerDidSelectContact_property___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 localizedDescription];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerServiceViewController.m", 274, 3, @"error calling host - %@", v2, v3, v4, v5, v6);
}

- (void)pickerDidSelectAddNewContact
{
  _auxiliaryConnection = [(CNContactPickerExtensionContext *)self _auxiliaryConnection];
  v7 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_110];

  v5 = v7;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactPickerServiceViewController.m" lineNumber:266 description:@"host object is nil!"];

    v5 = 0;
  }

  [v5 pickerDidSelectAddNewContact];
}

void __63__CNContactPickerExtensionContext_pickerDidSelectAddNewContact__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 localizedDescription];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerServiceViewController.m", 264, 3, @"error calling host - %@", v2, v3, v4, v5, v6);
}

- (void)invalidateSelectionAnimated:(BOOL)animated
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__CNContactPickerExtensionContext_invalidateSelectionAnimated___block_invoke;
  v3[3] = &unk_1E74E4768;
  v3[4] = self;
  animatedCopy = animated;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __63__CNContactPickerExtensionContext_invalidateSelectionAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  [v2 invalidateSelectionAnimated:*(a1 + 40)];
}

- (void)setupWithOptions:(id)options readyBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CNContactPickerExtensionContext_setupWithOptions_readyBlock___block_invoke;
  block[3] = &unk_1E74E6650;
  block[4] = self;
  v11 = optionsCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = optionsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __63__CNContactPickerExtensionContext_setupWithOptions_readyBlock___block_invoke(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) _auxiliaryConnection];
  v3 = v2;
  if (v2)
  {
    [v2 auditToken];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v12 = v14;
  v13 = v15;
  v4 = [MEMORY[0x1E6996638] auditToken:&v12];
  v5 = [objc_alloc(MEMORY[0x1E6996648]) initWithAuditToken:v4 assumedIdentity:0];
  v6 = +[CNUIContactsEnvironment currentEnvironment];
  [v6 setAuthorizationContext:v5];

  v7 = objc_alloc(MEMORY[0x1E6996760]);
  v8 = [MEMORY[0x1E6996768] sharedConnection];
  v12 = v14;
  v13 = v15;
  v9 = [v7 initWithAuditToken:&v12 managedProfileConnection:v8];

  v10 = [*(a1 + 32) _principalObject];
  [v10 setManagedConfiguration:v9];

  v11 = [*(a1 + 32) _principalObject];
  [v11 setupWithOptions:*(a1 + 40) readyBlock:*(a1 + 48)];
}

@end