@interface CNContactViewHostViewController
+ (BOOL)getViewController:(id)controller;
+ (id)contactViewExtension;
+ (id)contextForIdentifier:(id)identifier;
- (BOOL)shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier;
- (CNContactViewControllerPPTDelegate)pptDelegate;
- (CNContactViewHostProtocol)delegate;
- (id)protocolContext;
- (void)didChangePreferredContentSize:(CGSize)size;
- (void)didChangeToEditMode:(BOOL)mode;
- (void)didChangeToShowTitle:(BOOL)title;
- (void)didCompleteWithContact:(id)contact;
- (void)didDeleteContact:(id)contact;
- (void)didExecuteClearRecentsDataAction;
- (void)didExecuteDeleteFromDowntimeWhitelistAction;
- (void)editCancel;
- (void)invalidate;
- (void)isPresentingEditingController:(BOOL)controller;
- (void)isPresentingFullscreen:(BOOL)fullscreen;
- (void)performConfirmedCancel;
- (void)presentCancelConfirmationAlert;
- (void)setupWithOptions:(id)options readyBlock:(id)block;
- (void)toggleEditing;
- (void)updateEditing:(BOOL)editing doneButtonEnabled:(BOOL)enabled doneButtonText:(id)text;
- (void)viewDidAppear;
- (void)viewServiceDidTerminate;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  delegate = [(CNContactViewHostViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNContactViewHostViewController *)self delegate];
    [delegate2 viewServiceDidTerminate];
  }
}

- (void)presentCancelConfirmationAlert
{
  delegate = [(CNContactViewHostViewController *)self delegate];
  [delegate presentCancelConfirmationAlert];
}

- (void)didExecuteDeleteFromDowntimeWhitelistAction
{
  delegate = [(CNContactViewHostViewController *)self delegate];
  [delegate didExecuteClearRecentsDataAction];
}

- (void)didExecuteClearRecentsDataAction
{
  delegate = [(CNContactViewHostViewController *)self delegate];
  [delegate didExecuteClearRecentsDataAction];
}

- (void)viewDidAppear
{
  pptDelegate = [(CNContactViewHostViewController *)self pptDelegate];
  [pptDelegate viewDidAppearForContactViewController:self];
}

- (void)didChangePreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  delegate = [(CNContactViewHostViewController *)self delegate];
  [delegate didChangePreferredContentSize:{width, height}];
}

- (void)isPresentingEditingController:(BOOL)controller
{
  controllerCopy = controller;
  delegate = [(CNContactViewHostViewController *)self delegate];
  [delegate isPresentingEditingController:controllerCopy];
}

- (void)isPresentingFullscreen:(BOOL)fullscreen
{
  fullscreenCopy = fullscreen;
  delegate = [(CNContactViewHostViewController *)self delegate];
  [delegate isPresentingFullscreen:fullscreenCopy];
}

- (void)didDeleteContact:(id)contact
{
  contactCopy = contact;
  delegate = [(CNContactViewHostViewController *)self delegate];
  [delegate didDeleteContact:contactCopy];
}

- (void)didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  delegate = [(CNContactViewHostViewController *)self delegate];
  [delegate didCompleteWithContact:contactCopy];
}

- (void)updateEditing:(BOOL)editing doneButtonEnabled:(BOOL)enabled doneButtonText:(id)text
{
  enabledCopy = enabled;
  editingCopy = editing;
  textCopy = text;
  delegate = [(CNContactViewHostViewController *)self delegate];
  [delegate updateEditing:editingCopy doneButtonEnabled:enabledCopy doneButtonText:textCopy];
}

- (BOOL)shouldPerformDefaultActionForContact:(id)contact propertyKey:(id)key propertyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyCopy = key;
  contactCopy = contact;
  delegate = [(CNContactViewHostViewController *)self delegate];
  v12 = [delegate shouldPerformDefaultActionForContact:contactCopy propertyKey:keyCopy propertyIdentifier:identifierCopy];

  return v12;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = CNContactViewHostViewController;
  [(_UIRemoteViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CNContactViewHostViewController;
  [(_UIRemoteViewController *)&v3 viewWillAppear:appear];
}

- (void)performConfirmedCancel
{
  protocolContext = [(CNContactViewHostViewController *)self protocolContext];
  [protocolContext performConfirmedCancel];
}

- (void)toggleEditing
{
  protocolContext = [(CNContactViewHostViewController *)self protocolContext];
  [protocolContext toggleEditing];
}

- (void)editCancel
{
  protocolContext = [(CNContactViewHostViewController *)self protocolContext];
  [protocolContext editCancel];
}

- (void)didChangeToShowTitle:(BOOL)title
{
  titleCopy = title;
  protocolContext = [(CNContactViewHostViewController *)self protocolContext];
  [protocolContext didChangeToShowTitle:titleCopy];
}

- (void)didChangeToEditMode:(BOOL)mode
{
  modeCopy = mode;
  protocolContext = [(CNContactViewHostViewController *)self protocolContext];
  [protocolContext didChangeToEditMode:modeCopy];
}

- (void)setupWithOptions:(id)options readyBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  protocolContext = [(CNContactViewHostViewController *)self protocolContext];
  [protocolContext setupWithOptions:optionsCopy readyBlock:blockCopy];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 122, 7, @"view service did terminate with error: %@", v3, v4, v5, v6, error);

  [(CNContactViewHostViewController *)self viewServiceDidTerminate];
}

- (id)protocolContext
{
  v3 = objc_opt_class();
  currentRequestIdentifier = [(CNContactViewHostViewController *)self currentRequestIdentifier];
  v5 = [v3 contextForIdentifier:currentRequestIdentifier];

  return v5;
}

- (void)invalidate
{
  extension = [(CNContactViewHostViewController *)self extension];
  currentRequestIdentifier = [(CNContactViewHostViewController *)self currentRequestIdentifier];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 109, 7, @"Invalidate extension %@ identifier %@", v4, v5, v6, v7, extension);

  extension2 = [(CNContactViewHostViewController *)self extension];
  currentRequestIdentifier2 = [(CNContactViewHostViewController *)self currentRequestIdentifier];
  [extension2 cancelExtensionRequestWithIdentifier:currentRequestIdentifier2];
}

+ (BOOL)getViewController:(id)controller
{
  controllerCopy = controller;
  contactViewExtension = [self contactViewExtension];
  v10 = contactViewExtension;
  if (contactViewExtension)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactViewHostViewController.m", 78, 7, @"Instantiate view controller from extension %@", v6, v7, v8, v9, contactViewExtension);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__CNContactViewHostViewController_getViewController___block_invoke;
    v12[3] = &unk_1E74E4DE8;
    v14 = controllerCopy;
    v13 = v10;
    selfCopy = self;
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

+ (id)contextForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contactViewExtension = [self contactViewExtension];
  v6 = [contactViewExtension _extensionContextForUUID:identifierCopy];

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