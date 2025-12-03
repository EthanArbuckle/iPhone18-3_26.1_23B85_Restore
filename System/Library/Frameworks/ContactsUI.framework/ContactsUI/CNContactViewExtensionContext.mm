@interface CNContactViewExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (BOOL)shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier;
- (id)host;
- (void)asyncShouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier;
- (void)asyncShouldPerformDefaultActionResponse:(BOOL)response;
- (void)didChangePreferredContentSize:(CGSize)size;
- (void)didChangeToEditMode:(BOOL)mode;
- (void)didChangeToShowTitle:(BOOL)title;
- (void)didCompleteWithContact:(id)contact;
- (void)didDeleteContact:(id)contact;
- (void)didExecuteClearRecentsDataAction;
- (void)didExecuteDeleteFromDowntimeWhitelistAction;
- (void)editCancel;
- (void)isPresentingEditingController:(BOOL)controller;
- (void)isPresentingFullscreen:(BOOL)fullscreen;
- (void)performConfirmedCancel;
- (void)presentCancelConfirmationAlert;
- (void)setupWithOptions:(id)options readyBlock:(id)block;
- (void)toggleEditing;
- (void)updateEditing:(BOOL)editing doneButtonEnabled:(BOOL)enabled doneButtonText:(id)text;
- (void)viewDidAppear;
@end

@implementation CNContactViewExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_onceToken, &__block_literal_global_111);
  }

  v3 = _extensionAuxiliaryHostProtocol___interface;

  return v3;
}

uint64_t __64__CNContactViewExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0D69688];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_onceToken, &__block_literal_global);
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface;

  return v3;
}

void __66__CNContactViewExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0E28D08];
  v1 = _extensionAuxiliaryVendorProtocol___interface;
  _extensionAuxiliaryVendorProtocol___interface = v0;

  v13 = MEMORY[0x1E695DFD8];
  v15 = _extensionAuxiliaryVendorProtocol___interface;
  v12 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v14 = [v13 setWithObjects:{v12, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [v15 setClasses:v14 forSelector:sel_setupWithOptions_readyBlock_ argumentIndex:0 ofReply:0];
}

- (void)asyncShouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier
{
  v5 = CNUILogViewService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_199A75000, v5, OS_LOG_TYPE_ERROR, "Out of process [CNContactViewExtensionContext asyncShouldPerformDefaultActionForContact] should not be invoked.", v6, 2u);
  }
}

- (void)presentCancelConfirmationAlert
{
  host = [(CNContactViewExtensionContext *)self host];
  [host presentCancelConfirmationAlert];
}

- (void)didExecuteDeleteFromDowntimeWhitelistAction
{
  host = [(CNContactViewExtensionContext *)self host];
  [host didExecuteDeleteFromDowntimeWhitelistAction];
}

- (void)didExecuteClearRecentsDataAction
{
  host = [(CNContactViewExtensionContext *)self host];
  [host didExecuteClearRecentsDataAction];
}

- (void)viewDidAppear
{
  host = [(CNContactViewExtensionContext *)self host];
  [host viewDidAppear];
}

- (void)didChangePreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  host = [(CNContactViewExtensionContext *)self host];
  [host didChangePreferredContentSize:{width, height}];
}

- (void)isPresentingEditingController:(BOOL)controller
{
  controllerCopy = controller;
  host = [(CNContactViewExtensionContext *)self host];
  [host isPresentingEditingController:controllerCopy];
}

- (void)isPresentingFullscreen:(BOOL)fullscreen
{
  fullscreenCopy = fullscreen;
  host = [(CNContactViewExtensionContext *)self host];
  [host isPresentingFullscreen:fullscreenCopy];
}

- (void)didDeleteContact:(id)contact
{
  contactCopy = contact;
  host = [(CNContactViewExtensionContext *)self host];
  [host didDeleteContact:contactCopy];
}

- (void)didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  host = [(CNContactViewExtensionContext *)self host];
  [host didCompleteWithContact:contactCopy];
}

- (void)updateEditing:(BOOL)editing doneButtonEnabled:(BOOL)enabled doneButtonText:(id)text
{
  enabledCopy = enabled;
  editingCopy = editing;
  textCopy = text;
  host = [(CNContactViewExtensionContext *)self host];
  [host updateEditing:editingCopy doneButtonEnabled:enabledCopy doneButtonText:textCopy];
}

- (BOOL)shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  keyCopy = key;
  contactCopy = contact;
  v11 = dispatch_semaphore_create(0);
  [(CNContactViewExtensionContext *)self setAsyncShouldPerformSemaphore:v11];

  [(CNContactViewExtensionContext *)self setAsyncShouldPerformResponse:1];
  host = [(CNContactViewExtensionContext *)self host];
  [host asyncShouldPerformDefaultActionForContact:contactCopy propertyKey:keyCopy propertyIdentifier:identifierCopy];

  asyncShouldPerformSemaphore = [(CNContactViewExtensionContext *)self asyncShouldPerformSemaphore];

  if (asyncShouldPerformSemaphore)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    timeProvider = [currentEnvironment timeProvider];
    [timeProvider timestamp];
    v17 = v16;

    asyncShouldPerformSemaphore2 = [(CNContactViewExtensionContext *)self asyncShouldPerformSemaphore];
    LOBYTE(timeProvider) = CNDispatchSemaphoreWait();

    if ((timeProvider & 1) == 0)
    {
      v24 = CNUILogViewService();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v27) = 0;
        _os_log_fault_impl(&dword_199A75000, v24, OS_LOG_TYPE_FAULT, "OOP [CNContactViewExtensionContext shouldPerformDefaultActionForContact:propertyKey:propertyIdentifier:] call timed out", &v27, 2u);
      }

      goto LABEL_8;
    }

    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    timeProvider2 = [currentEnvironment2 timeProvider];
    [timeProvider2 timestamp];
    v22 = v21;

    v23 = v22 - v17;
    if (v23 > 0.1)
    {
      v24 = CNUILogViewService();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        v25 = [MEMORY[0x1E6996858] stringForTimeInterval:v23];
        v27 = 138412290;
        v28 = v25;
        _os_log_fault_impl(&dword_199A75000, v24, OS_LOG_TYPE_FAULT, "OOP [CNContactViewExtensionContext shouldPerformDefaultActionForContact:propertyKey:propertyIdentifier:] call took longer than desired: %@", &v27, 0xCu);
      }

LABEL_8:
    }
  }

  return [(CNContactViewExtensionContext *)self asyncShouldPerformResponse];
}

- (void)asyncShouldPerformDefaultActionResponse:(BOOL)response
{
  [(CNContactViewExtensionContext *)self setAsyncShouldPerformResponse:response];
  asyncShouldPerformSemaphore = [(CNContactViewExtensionContext *)self asyncShouldPerformSemaphore];

  if (asyncShouldPerformSemaphore)
  {
    asyncShouldPerformSemaphore2 = [(CNContactViewExtensionContext *)self asyncShouldPerformSemaphore];
    dispatch_semaphore_signal(asyncShouldPerformSemaphore2);
  }
}

- (void)performConfirmedCancel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CNContactViewExtensionContext_performConfirmedCancel__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__CNContactViewExtensionContext_performConfirmedCancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  v1 = [v2 contactContentVC];
  [v1 performConfirmedCancel];
}

- (void)toggleEditing
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CNContactViewExtensionContext_toggleEditing__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __46__CNContactViewExtensionContext_toggleEditing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  v1 = [v2 contactContentVC];
  [v1 toggleEditing];
}

- (void)editCancel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CNContactViewExtensionContext_editCancel__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __43__CNContactViewExtensionContext_editCancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  v1 = [v2 contactContentVC];
  [v1 editCancel];
}

- (void)didChangeToShowTitle:(BOOL)title
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__CNContactViewExtensionContext_didChangeToShowTitle___block_invoke;
  v3[3] = &unk_1E74E4768;
  v3[4] = self;
  titleCopy = title;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __54__CNContactViewExtensionContext_didChangeToShowTitle___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _principalObject];
  v2 = [v3 contactContentVC];
  [v2 didChangeToShowTitle:*(a1 + 40)];
}

- (void)didChangeToEditMode:(BOOL)mode
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__CNContactViewExtensionContext_didChangeToEditMode___block_invoke;
  v3[3] = &unk_1E74E4768;
  v3[4] = self;
  modeCopy = mode;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __53__CNContactViewExtensionContext_didChangeToEditMode___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _principalObject];
  v2 = [v3 contactContentVC];
  [v2 didChangeToEditMode:*(a1 + 40)];
}

- (void)setupWithOptions:(id)options readyBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CNContactViewExtensionContext_setupWithOptions_readyBlock___block_invoke;
  block[3] = &unk_1E74E6650;
  block[4] = self;
  v11 = optionsCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = optionsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __61__CNContactViewExtensionContext_setupWithOptions_readyBlock___block_invoke(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) _auxiliaryConnection];
  v3 = v2;
  if (v2)
  {
    [v2 auditToken];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v14 = v16;
  v15 = v17;
  v4 = [MEMORY[0x1E6996638] auditToken:&v14];
  v5 = [objc_alloc(MEMORY[0x1E6996648]) initWithAuditToken:v4 assumedIdentity:0];
  v6 = +[CNUIContactsEnvironment currentEnvironment];
  [v6 setAuthorizationContext:v5];

  v7 = objc_alloc(MEMORY[0x1E6996760]);
  v8 = [MEMORY[0x1E6996768] sharedConnection];
  v14 = v16;
  v15 = v17;
  v9 = [v7 initWithAuditToken:&v14 managedProfileConnection:v8];

  v10 = [*(a1 + 32) _principalObject];
  v11 = [v10 contactContentVC];
  [v11 setManagedConfiguration:v9];

  v12 = [*(a1 + 32) _principalObject];
  v13 = [v12 contactContentVC];
  [v13 setupWithOptions:*(a1 + 40) readyBlock:*(a1 + 48)];
}

- (id)host
{
  _auxiliaryConnection = [(CNContactViewExtensionContext *)self _auxiliaryConnection];
  v5 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_118];

  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactViewServiceViewController.m" lineNumber:193 description:@"host object is nil!"];
  }

  return v5;
}

void __37__CNContactViewExtensionContext_host__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CNUILogViewService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_199A75000, v3, OS_LOG_TYPE_ERROR, "error calling host - %@", &v5, 0xCu);
  }
}

@end