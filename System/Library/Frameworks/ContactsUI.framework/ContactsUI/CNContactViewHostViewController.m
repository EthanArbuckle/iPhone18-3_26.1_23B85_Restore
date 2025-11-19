@interface CNContactViewHostViewController
+ (BOOL)getViewController:(id)a3;
+ (id)contactViewExtension;
+ (id)contextForIdentifier:(id)a3;
- (BOOL)shouldPerformDefaultActionForContact:(id)a3 propertyKey:(id)a4 propertyIdentifier:(id)a5;
- (CNContactViewControllerPPTDelegate)pptDelegate;
- (CNContactViewHostProtocol)delegate;
- (id)protocolContext;
- (void)didChangePreferredContentSize:(CGSize)a3;
- (void)didChangeToEditMode:(BOOL)a3;
- (void)didChangeToShowTitle:(BOOL)a3;
- (void)didCompleteWithContact:(id)a3;
- (void)didDeleteContact:(id)a3;
- (void)didExecuteClearRecentsDataAction;
- (void)didExecuteDeleteFromDowntimeWhitelistAction;
- (void)editCancel;
- (void)invalidate;
- (void)isPresentingEditingController:(BOOL)a3;
- (void)isPresentingFullscreen:(BOOL)a3;
- (void)performConfirmedCancel;
- (void)presentCancelConfirmationAlert;
- (void)setupWithOptions:(id)a3 readyBlock:(id)a4;
- (void)toggleEditing;
- (void)updateEditing:(BOOL)a3 doneButtonEnabled:(BOOL)a4 doneButtonText:(id)a5;
- (void)viewDidAppear;
- (void)viewServiceDidTerminate;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CNContactViewHostViewController

- (CNContactViewControllerPPTDelegate)pptDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pptDelegate);

  return WeakRetained;
}

- (CNContactViewHostProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewServiceDidTerminate
{
  v3 = [(CNContactViewHostViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactViewHostViewController *)self delegate];
    [v5 viewServiceDidTerminate];
  }
}

- (void)presentCancelConfirmationAlert
{
  v2 = [(CNContactViewHostViewController *)self delegate];
  [v2 presentCancelConfirmationAlert];
}

- (void)didExecuteDeleteFromDowntimeWhitelistAction
{
  v2 = [(CNContactViewHostViewController *)self delegate];
  [v2 didExecuteClearRecentsDataAction];
}

- (void)didExecuteClearRecentsDataAction
{
  v2 = [(CNContactViewHostViewController *)self delegate];
  [v2 didExecuteClearRecentsDataAction];
}

- (void)viewDidAppear
{
  v3 = [(CNContactViewHostViewController *)self pptDelegate];
  [v3 viewDidAppearForContactViewController:self];
}

- (void)didChangePreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CNContactViewHostViewController *)self delegate];
  [v5 didChangePreferredContentSize:{width, height}];
}

- (void)isPresentingEditingController:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactViewHostViewController *)self delegate];
  [v4 isPresentingEditingController:v3];
}

- (void)isPresentingFullscreen:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactViewHostViewController *)self delegate];
  [v4 isPresentingFullscreen:v3];
}

- (void)didDeleteContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactViewHostViewController *)self delegate];
  [v5 didDeleteContact:v4];
}

- (void)didCompleteWithContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactViewHostViewController *)self delegate];
  [v5 didCompleteWithContact:v4];
}

- (void)updateEditing:(BOOL)a3 doneButtonEnabled:(BOOL)a4 doneButtonText:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(CNContactViewHostViewController *)self delegate];
  [v9 updateEditing:v6 doneButtonEnabled:v5 doneButtonText:v8];
}

- (BOOL)shouldPerformDefaultActionForContact:(id)a3 propertyKey:(id)a4 propertyIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CNContactViewHostViewController *)self delegate];
  v12 = [v11 shouldPerformDefaultActionForContact:v10 propertyKey:v9 propertyIdentifier:v8];

  return v12;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CNContactViewHostViewController;
  [(_UIRemoteViewController *)&v3 viewWillDisappear:a3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CNContactViewHostViewController;
  [(_UIRemoteViewController *)&v3 viewWillAppear:a3];
}

- (void)performConfirmedCancel
{
  v2 = [(CNContactViewHostViewController *)self protocolContext];
  [v2 performConfirmedCancel];
}

- (void)toggleEditing
{
  v2 = [(CNContactViewHostViewController *)self protocolContext];
  [v2 toggleEditing];
}

- (void)editCancel
{
  v2 = [(CNContactViewHostViewController *)self protocolContext];
  [v2 editCancel];
}

- (void)didChangeToShowTitle:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactViewHostViewController *)self protocolContext];
  [v4 didChangeToShowTitle:v3];
}

- (void)didChangeToEditMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactViewHostViewController *)self protocolContext];
  [v4 didChangeToEditMode:v3];
}

- (void)setupWithOptions:(id)a3 readyBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNContactViewHostViewController *)self protocolContext];
  [v8 setupWithOptions:v7 readyBlock:v6];
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 122, 7, @"view service did terminate with error: %@", v3, v4, v5, v6, a3);

  [(CNContactViewHostViewController *)self viewServiceDidTerminate];
}

- (id)protocolContext
{
  v3 = objc_opt_class();
  v4 = [(CNContactViewHostViewController *)self currentRequestIdentifier];
  v5 = [v3 contextForIdentifier:v4];

  return v5;
}

- (void)invalidate
{
  v3 = [(CNContactViewHostViewController *)self extension];
  v9 = [(CNContactViewHostViewController *)self currentRequestIdentifier];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 109, 7, @"Invalidate extension %@ identifier %@", v4, v5, v6, v7, v3);

  v10 = [(CNContactViewHostViewController *)self extension];
  v8 = [(CNContactViewHostViewController *)self currentRequestIdentifier];
  [v10 cancelExtensionRequestWithIdentifier:v8];
}

+ (BOOL)getViewController:(id)a3
{
  v4 = a3;
  v5 = [a1 contactViewExtension];
  v10 = v5;
  if (v5)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 78, 7, @"Instantiate view controller from extension %@", v6, v7, v8, v9, v5);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__CNContactViewHostViewController_getViewController___block_invoke;
    v12[3] = &unk_1E74E4DE8;
    v14 = v4;
    v13 = v10;
    v15 = a1;
    [v13 instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] listenerEndpoint:0 connectionHandler:v12];
  }

  return v10 != 0;
}

void __53__CNContactViewHostViewController_getViewController___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = a2;
  v7 = a3;
  v8 = a4;
  v13 = v8;
  if (v8)
  {
    v14 = [v8 description];
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 82, 3, @"View Service Error, %@", v15, v16, v17, v18, v14);

    v19 = [CNContactViewServiceErrorViewController alloc];
    v20 = [v13 localizedDescription];
    v21 = [(CNErrorViewController *)v19 initWithMessage:v20];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 87, 7, @"Got view controller %@ identifier %@", v9, v10, v11, v12, v7);
    v22 = *(a1 + 32);
    v23 = v7;
    [v23 setExtension:v22];
    [v23 setCurrentRequestIdentifier:v24];
    v21 = [objc_opt_class() contextForIdentifier:v24];
    [(CNContactViewServiceErrorViewController *)v21 setViewController:v23];
    (*(*(a1 + 40) + 16))();
  }
}

+ (id)contextForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 contactViewExtension];
  v6 = [v5 _extensionContextForUUID:v4];

  return v6;
}

+ (id)contactViewExtension
{
  if (contactViewExtension_onceToken != -1)
  {
    dispatch_once(&contactViewExtension_onceToken, &__block_literal_global_20669);
  }

  v3 = contactViewExtension_extension;

  return v3;
}

void __55__CNContactViewHostViewController_contactViewExtension__block_invoke()
{
  v7 = 0;
  v0 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:@"com.apple.ContactsUI.ContactViewViewService" error:&v7];
  v1 = v7;
  v2 = contactViewExtension_extension;
  contactViewExtension_extension = v0;

  if (v1)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 57, 3, @"Could not get Contacts extension: %@", v3, v4, v5, v6, v1);
  }

  else
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 60, 7, @"Got extension %@", v3, v4, v5, v6, contactViewExtension_extension);
  }
}

@end