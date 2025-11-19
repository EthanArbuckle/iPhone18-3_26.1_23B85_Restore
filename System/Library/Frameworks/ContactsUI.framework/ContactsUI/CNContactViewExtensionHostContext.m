@interface CNContactViewExtensionHostContext
- (CNContactViewHostViewController)viewController;
- (id)protocolService;
- (void)asyncShouldPerformDefaultActionForContact:(id)a3 propertyKey:(id)a4 propertyIdentifier:(id)a5;
- (void)didChangePreferredContentSize:(CGSize)a3;
- (void)didChangeToEditMode:(BOOL)a3;
- (void)didChangeToShowTitle:(BOOL)a3;
- (void)didCompleteWithContact:(id)a3;
- (void)didDeleteContact:(id)a3;
- (void)didExecuteClearRecentsDataAction;
- (void)didExecuteDeleteFromDowntimeWhitelistAction;
- (void)editCancel;
- (void)isPresentingEditingController:(BOOL)a3;
- (void)isPresentingFullscreen:(BOOL)a3;
- (void)performConfirmedCancel;
- (void)presentCancelConfirmationAlert;
- (void)setupWithOptions:(id)a3 readyBlock:(id)a4;
- (void)toggleEditing;
- (void)updateEditing:(BOOL)a3 doneButtonEnabled:(BOOL)a4 doneButtonText:(id)a5;
- (void)viewDidAppear;
@end

@implementation CNContactViewExtensionHostContext

- (CNContactViewHostViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)asyncShouldPerformDefaultActionForContact:(id)a3 propertyKey:(id)a4 propertyIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__CNContactViewExtensionHostContext_asyncShouldPerformDefaultActionForContact_propertyKey_propertyIdentifier___block_invoke;
  v14[3] = &unk_1E74E7240;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
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
  v3 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__CNContactViewExtensionHostContext_didExecuteDeleteFromDowntimeWhitelistAction__block_invoke;
  v4[3] = &unk_1E74E6A88;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __80__CNContactViewExtensionHostContext_didExecuteDeleteFromDowntimeWhitelistAction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 didExecuteDeleteFromDowntimeWhitelistAction];
}

- (void)didExecuteClearRecentsDataAction
{
  v3 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__CNContactViewExtensionHostContext_didExecuteClearRecentsDataAction__block_invoke;
  v4[3] = &unk_1E74E6A88;
  v4[4] = self;
  [v3 performBlock:v4];
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

- (void)didChangePreferredContentSize:(CGSize)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CNContactViewExtensionHostContext_didChangePreferredContentSize___block_invoke;
  block[3] = &unk_1E74E5EA8;
  block[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__CNContactViewExtensionHostContext_didChangePreferredContentSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 didChangePreferredContentSize:{*(a1 + 40), *(a1 + 48)}];
}

- (void)isPresentingEditingController:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__CNContactViewExtensionHostContext_isPresentingEditingController___block_invoke;
  v3[3] = &unk_1E74E4768;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __67__CNContactViewExtensionHostContext_isPresentingEditingController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 isPresentingEditingController:*(a1 + 40)];
}

- (void)isPresentingFullscreen:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__CNContactViewExtensionHostContext_isPresentingFullscreen___block_invoke;
  v3[3] = &unk_1E74E4768;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __60__CNContactViewExtensionHostContext_isPresentingFullscreen___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 isPresentingFullscreen:*(a1 + 40)];
}

- (void)didDeleteContact:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CNContactViewExtensionHostContext_didDeleteContact___block_invoke;
  v6[3] = &unk_1E74E77C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __54__CNContactViewExtensionHostContext_didDeleteContact___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 didDeleteContact:*(a1 + 40)];
}

- (void)didCompleteWithContact:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CNContactViewExtensionHostContext_didCompleteWithContact___block_invoke;
  v6[3] = &unk_1E74E77C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __60__CNContactViewExtensionHostContext_didCompleteWithContact___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 didCompleteWithContact:*(a1 + 40)];
}

- (void)updateEditing:(BOOL)a3 doneButtonEnabled:(BOOL)a4 doneButtonText:(id)a5
{
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__CNContactViewExtensionHostContext_updateEditing_doneButtonEnabled_doneButtonText___block_invoke;
  block[3] = &unk_1E74E3028;
  v12 = a3;
  v13 = a4;
  block[4] = self;
  v11 = v8;
  v9 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __84__CNContactViewExtensionHostContext_updateEditing_doneButtonEnabled_doneButtonText___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 updateEditing:*(a1 + 48) doneButtonEnabled:*(a1 + 49) doneButtonText:*(a1 + 40)];
}

- (void)didChangeToShowTitle:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactViewExtensionHostContext *)self protocolService];
  [v4 didChangeToShowTitle:v3];
}

- (void)performConfirmedCancel
{
  v2 = [(CNContactViewExtensionHostContext *)self protocolService];
  [v2 performConfirmedCancel];
}

- (void)toggleEditing
{
  v2 = [(CNContactViewExtensionHostContext *)self protocolService];
  [v2 toggleEditing];
}

- (void)editCancel
{
  v2 = [(CNContactViewExtensionHostContext *)self protocolService];
  [v2 editCancel];
}

- (void)didChangeToEditMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactViewExtensionHostContext *)self protocolService];
  [v4 didChangeToEditMode:v3];
}

- (void)setupWithOptions:(id)a3 readyBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNContactViewExtensionHostContext *)self protocolService];
  [v8 setupWithOptions:v7 readyBlock:v6];
}

- (id)protocolService
{
  v4 = [(CNContactViewExtensionHostContext *)self _auxiliaryConnection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_149];

  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"CNContactViewHostViewController.m" lineNumber:252 description:@"service object is nil!"];
  }

  return v5;
}

void __52__CNContactViewExtensionHostContext_protocolService__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 localizedDescription];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 250, 3, @"error calling service - %@", v2, v3, v4, v5, v6);
}

@end