@interface AFUIPasswordsController
+ (BOOL)isPasswordPickerViewControllerAuthenticating:(id)authenticating;
- (AFUIPasswordPickerDelegate)passwordPickerDelegate;
- (AFUIPasswordsController)initWithDocumentTraits:(id)traits;
- (id)makePasswordPickerViewController;
- (void)passwordViewController:(id)controller fillPassword:(id)password;
- (void)passwordViewController:(id)controller fillText:(id)text;
- (void)passwordViewController:(id)controller fillUsername:(id)username;
- (void)passwordViewController:(id)controller fillVerificationCode:(id)code;
- (void)passwordViewController:(id)controller selectedCredential:(id)credential;
- (void)passwordViewControllerDidFinish:(id)finish;
- (void)presentPasswordPickerFromViewController:(id)controller didFinishAuthenticationBlock:(id)block;
@end

@implementation AFUIPasswordsController

- (AFUIPasswordsController)initWithDocumentTraits:(id)traits
{
  traitsCopy = traits;
  v10.receiver = self;
  v10.super_class = AFUIPasswordsController;
  v5 = [(AFUIPasswordsController *)&v10 init];
  if (v5)
  {
    v6 = [traitsCopy copy];
    documentTraits = v5->_documentTraits;
    v5->_documentTraits = v6;

    v8 = v5;
  }

  return v5;
}

- (id)makePasswordPickerViewController
{
  v3 = [objc_alloc(get_SFAppAutoFillPasswordViewControllerClass()) init];
  [v3 setDelegate:self];
  appId = [(RTIDocumentTraits *)self->_documentTraits appId];
  [v3 setRemoteAppID:appId];

  localizedAppName = [(RTIDocumentTraits *)self->_documentTraits localizedAppName];
  [v3 setRemoteLocalizedAppName:localizedAppName];

  appName = [(RTIDocumentTraits *)self->_documentTraits appName];
  [v3 setRemoteUnlocalizedAppName:appName];

  associatedDomains = [(RTIDocumentTraits *)self->_documentTraits associatedDomains];
  [v3 setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:associatedDomains];

  autofillContext = [(RTIDocumentTraits *)self->_documentTraits autofillContext];
  v9 = [autofillContext objectForKeyedSubscript:@"_WebViewURL"];

  [v3 setWebViewURL:v9];
  autofillContext2 = [(RTIDocumentTraits *)self->_documentTraits autofillContext];
  v11 = [autofillContext2 objectForKeyedSubscript:@"_page_id"];

  autofillContext3 = [(RTIDocumentTraits *)self->_documentTraits autofillContext];
  v13 = [autofillContext3 objectForKeyedSubscript:@"_frame_id"];

  autofillContext4 = [(RTIDocumentTraits *)self->_documentTraits autofillContext];
  v15 = [autofillContext4 objectForKeyedSubscript:@"_credential_type"];

  [v3 setPageID:v11 frameID:v13 credentialType:v15];
  [v3 setSystemAutoFillDocumentTraits:self->_documentTraits];

  return v3;
}

- (void)presentPasswordPickerFromViewController:(id)controller didFinishAuthenticationBlock:(id)block
{
  controllerCopy = controller;
  blockCopy = block;
  makePasswordPickerViewController = [(AFUIPasswordsController *)self makePasswordPickerViewController];
  [makePasswordPickerViewController setModalPresentationStyle:4];
  _shouldPresentAllPasswordsViewInPopover = [(AFUIPasswordsController *)self _shouldPresentAllPasswordsViewInPopover];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__AFUIPasswordsController_presentPasswordPickerFromViewController_didFinishAuthenticationBlock___block_invoke;
  v13[3] = &unk_1E8424900;
  v15 = makePasswordPickerViewController;
  v16 = blockCopy;
  v14 = controllerCopy;
  v10 = makePasswordPickerViewController;
  v11 = controllerCopy;
  v12 = blockCopy;
  [v10 authenticateToPresentInPopover:_shouldPresentAllPasswordsViewInPopover completion:v13];
}

uint64_t __96__AFUIPasswordsController_presentPasswordPickerFromViewController_didFinishAuthenticationBlock___block_invoke(void *a1, int a2)
{
  result = a1[6];
  if (result)
  {
    result = (*(result + 16))();
  }

  if (a2)
  {
    v5 = a1[4];
    v6 = a1[5];

    return [v5 presentViewController:v6 animated:0 completion:0];
  }

  return result;
}

+ (BOOL)isPasswordPickerViewControllerAuthenticating:(id)authenticating
{
  authenticatingCopy = authenticating;
  get_SFAppAutoFillPasswordViewControllerClass();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController = [authenticatingCopy presentedViewController];
    v5 = presentedViewController == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)passwordViewControllerDidFinish:(id)finish
{
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
}

- (void)passwordViewController:(id)controller selectedCredential:(id)credential
{
  credentialCopy = credential;
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passwordsController:self selectedCredential:credentialCopy];
  }
}

- (void)passwordViewController:(id)controller fillUsername:(id)username
{
  usernameCopy = username;
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passwordsController:self fillUsername:usernameCopy];
  }
}

- (void)passwordViewController:(id)controller fillPassword:(id)password
{
  passwordCopy = password;
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passwordsController:self fillPassword:passwordCopy];
  }
}

- (void)passwordViewController:(id)controller fillVerificationCode:(id)code
{
  codeCopy = code;
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passwordsController:self fillVerificationCode:codeCopy];
  }
}

- (void)passwordViewController:(id)controller fillText:(id)text
{
  textCopy = text;
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passwordsController:self fillText:textCopy];
  }
}

- (AFUIPasswordPickerDelegate)passwordPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);

  return WeakRetained;
}

@end