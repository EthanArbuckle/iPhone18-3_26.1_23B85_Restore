@interface CNContactViewExtensionHostContext
- (CNContactViewHostViewController)viewController;
- (id)protocolService;
- (void)asyncShouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier;
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

@implementation CNContactViewExtensionHostContext

- (CNContactViewHostViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)asyncShouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier
{
  contactCopy = contact;
  keyCopy = key;
  identifierCopy = identifier;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__CNContactViewExtensionHostContext_asyncShouldPerformDefaultActionForContact_propertyKey_propertyIdentifier___block_invoke;
  v14[3] = &unk_1E74E7240;
  v14[4] = self;
  v15 = contactCopy;
  v16 = keyCopy;
  v17 = identifierCopy;
  v11 = identifierCopy;
  v12 = keyCopy;
  v13 = contactCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __110__CNContactViewExtensionHostContext_asyncShouldPerformDefaultActionForContact_propertyKey_propertyIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v3 = [v2 shouldPerformDefaultActionForContact:*(a1 + 40) propertyKey:*(a1 + 48) propertyIdentifier:*(a1 + 56)];

  v4 = [*(a1 + 32) protocolService];
  [v4 asyncShouldPerformDefaultActionResponse:v3];
}

- (void)presentCancelConfirmationAlert
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CNContactViewExtensionHostContext_presentCancelConfirmationAlert__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__CNContactViewExtensionHostContext_presentCancelConfirmationAlert__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 presentCancelConfirmationAlert];
}

- (void)didExecuteDeleteFromDowntimeWhitelistAction
{
  mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__CNContactViewExtensionHostContext_didExecuteDeleteFromDowntimeWhitelistAction__block_invoke;
  v4[3] = &unk_1E74E6A88;
  v4[4] = self;
  [mainThreadScheduler performBlock:v4];
}

void __80__CNContactViewExtensionHostContext_didExecuteDeleteFromDowntimeWhitelistAction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 didExecuteDeleteFromDowntimeWhitelistAction];
}

- (void)didExecuteClearRecentsDataAction
{
  mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__CNContactViewExtensionHostContext_didExecuteClearRecentsDataAction__block_invoke;
  v4[3] = &unk_1E74E6A88;
  v4[4] = self;
  [mainThreadScheduler performBlock:v4];
}

void __69__CNContactViewExtensionHostContext_didExecuteClearRecentsDataAction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 didExecuteClearRecentsDataAction];
}

- (void)viewDidAppear
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CNContactViewExtensionHostContext_viewDidAppear__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __50__CNContactViewExtensionHostContext_viewDidAppear__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 viewDidAppear];
}

- (void)didChangePreferredContentSize:(CGSize)size
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CNContactViewExtensionHostContext_didChangePreferredContentSize___block_invoke;
  block[3] = &unk_1E74E5EA8;
  block[4] = self;
  sizeCopy = size;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__CNContactViewExtensionHostContext_didChangePreferredContentSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 didChangePreferredContentSize:{*(a1 + 40), *(a1 + 48)}];
}

- (void)isPresentingEditingController:(BOOL)controller
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__CNContactViewExtensionHostContext_isPresentingEditingController___block_invoke;
  v3[3] = &unk_1E74E4768;
  v3[4] = self;
  controllerCopy = controller;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __67__CNContactViewExtensionHostContext_isPresentingEditingController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 isPresentingEditingController:*(a1 + 40)];
}

- (void)isPresentingFullscreen:(BOOL)fullscreen
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__CNContactViewExtensionHostContext_isPresentingFullscreen___block_invoke;
  v3[3] = &unk_1E74E4768;
  v3[4] = self;
  fullscreenCopy = fullscreen;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __60__CNContactViewExtensionHostContext_isPresentingFullscreen___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 isPresentingFullscreen:*(a1 + 40)];
}

- (void)didDeleteContact:(id)contact
{
  contactCopy = contact;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CNContactViewExtensionHostContext_didDeleteContact___block_invoke;
  v6[3] = &unk_1E74E77C0;
  v6[4] = self;
  v7 = contactCopy;
  v5 = contactCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __54__CNContactViewExtensionHostContext_didDeleteContact___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 didDeleteContact:*(a1 + 40)];
}

- (void)didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CNContactViewExtensionHostContext_didCompleteWithContact___block_invoke;
  v6[3] = &unk_1E74E77C0;
  v6[4] = self;
  v7 = contactCopy;
  v5 = contactCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __60__CNContactViewExtensionHostContext_didCompleteWithContact___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 didCompleteWithContact:*(a1 + 40)];
}

- (void)updateEditing:(BOOL)editing doneButtonEnabled:(BOOL)enabled doneButtonText:(id)text
{
  textCopy = text;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__CNContactViewExtensionHostContext_updateEditing_doneButtonEnabled_doneButtonText___block_invoke;
  block[3] = &unk_1E74E3028;
  editingCopy = editing;
  enabledCopy = enabled;
  block[4] = self;
  v11 = textCopy;
  v9 = textCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __84__CNContactViewExtensionHostContext_updateEditing_doneButtonEnabled_doneButtonText___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 updateEditing:*(a1 + 48) doneButtonEnabled:*(a1 + 49) doneButtonText:*(a1 + 40)];
}

- (void)didChangeToShowTitle:(BOOL)title
{
  titleCopy = title;
  protocolService = [(CNContactViewExtensionHostContext *)self protocolService];
  [protocolService didChangeToShowTitle:titleCopy];
}

- (void)performConfirmedCancel
{
  protocolService = [(CNContactViewExtensionHostContext *)self protocolService];
  [protocolService performConfirmedCancel];
}

- (void)toggleEditing
{
  protocolService = [(CNContactViewExtensionHostContext *)self protocolService];
  [protocolService toggleEditing];
}

- (void)editCancel
{
  protocolService = [(CNContactViewExtensionHostContext *)self protocolService];
  [protocolService editCancel];
}

- (void)didChangeToEditMode:(BOOL)mode
{
  modeCopy = mode;
  protocolService = [(CNContactViewExtensionHostContext *)self protocolService];
  [protocolService didChangeToEditMode:modeCopy];
}

- (void)setupWithOptions:(id)options readyBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  protocolService = [(CNContactViewExtensionHostContext *)self protocolService];
  [protocolService setupWithOptions:optionsCopy readyBlock:blockCopy];
}

- (id)protocolService
{
  _auxiliaryConnection = [(CNContactViewExtensionHostContext *)self _auxiliaryConnection];
  v5 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_149];

  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactViewHostViewController.m" lineNumber:252 description:@"service object is nil!"];
  }

  return v5;
}

void __52__CNContactViewExtensionHostContext_protocolService__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 localizedDescription];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 250, 3, @"error calling service - %@", v2, v3, v4, v5, v6);
}

@end