@interface AFUIPasswordsController
+ (BOOL)isPasswordPickerViewControllerAuthenticating:(id)a3;
- (AFUIPasswordPickerDelegate)passwordPickerDelegate;
- (AFUIPasswordsController)initWithDocumentTraits:(id)a3;
- (id)makePasswordPickerViewController;
- (void)passwordViewController:(id)a3 fillPassword:(id)a4;
- (void)passwordViewController:(id)a3 fillText:(id)a4;
- (void)passwordViewController:(id)a3 fillUsername:(id)a4;
- (void)passwordViewController:(id)a3 fillVerificationCode:(id)a4;
- (void)passwordViewController:(id)a3 selectedCredential:(id)a4;
- (void)passwordViewControllerDidFinish:(id)a3;
- (void)presentPasswordPickerFromViewController:(id)a3 didFinishAuthenticationBlock:(id)a4;
@end

@implementation AFUIPasswordsController

- (AFUIPasswordsController)initWithDocumentTraits:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AFUIPasswordsController;
  v5 = [(AFUIPasswordsController *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v4 = [(RTIDocumentTraits *)self->_documentTraits appId];
  [v3 setRemoteAppID:v4];

  v5 = [(RTIDocumentTraits *)self->_documentTraits localizedAppName];
  [v3 setRemoteLocalizedAppName:v5];

  v6 = [(RTIDocumentTraits *)self->_documentTraits appName];
  [v3 setRemoteUnlocalizedAppName:v6];

  v7 = [(RTIDocumentTraits *)self->_documentTraits associatedDomains];
  [v3 setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:v7];

  v8 = [(RTIDocumentTraits *)self->_documentTraits autofillContext];
  v9 = [v8 objectForKeyedSubscript:@"_WebViewURL"];

  [v3 setWebViewURL:v9];
  v10 = [(RTIDocumentTraits *)self->_documentTraits autofillContext];
  v11 = [v10 objectForKeyedSubscript:@"_page_id"];

  v12 = [(RTIDocumentTraits *)self->_documentTraits autofillContext];
  v13 = [v12 objectForKeyedSubscript:@"_frame_id"];

  v14 = [(RTIDocumentTraits *)self->_documentTraits autofillContext];
  v15 = [v14 objectForKeyedSubscript:@"_credential_type"];

  [v3 setPageID:v11 frameID:v13 credentialType:v15];
  [v3 setSystemAutoFillDocumentTraits:self->_documentTraits];

  return v3;
}

- (void)presentPasswordPickerFromViewController:(id)a3 didFinishAuthenticationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AFUIPasswordsController *)self makePasswordPickerViewController];
  [v8 setModalPresentationStyle:4];
  v9 = [(AFUIPasswordsController *)self _shouldPresentAllPasswordsViewInPopover];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__AFUIPasswordsController_presentPasswordPickerFromViewController_didFinishAuthenticationBlock___block_invoke;
  v13[3] = &unk_1E8424900;
  v15 = v8;
  v16 = v7;
  v14 = v6;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  [v10 authenticateToPresentInPopover:v9 completion:v13];
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

+ (BOOL)isPasswordPickerViewControllerAuthenticating:(id)a3
{
  v3 = a3;
  get_SFAppAutoFillPasswordViewControllerClass();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 presentedViewController];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)passwordViewControllerDidFinish:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
}

- (void)passwordViewController:(id)a3 selectedCredential:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passwordsController:self selectedCredential:v6];
  }
}

- (void)passwordViewController:(id)a3 fillUsername:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passwordsController:self fillUsername:v6];
  }
}

- (void)passwordViewController:(id)a3 fillPassword:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passwordsController:self fillPassword:v6];
  }
}

- (void)passwordViewController:(id)a3 fillVerificationCode:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passwordsController:self fillVerificationCode:v6];
  }
}

- (void)passwordViewController:(id)a3 fillText:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);
  [WeakRetained passwordsControllerDidFinish:self];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passwordsController:self fillText:v6];
  }
}

- (AFUIPasswordPickerDelegate)passwordPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_passwordPickerDelegate);

  return WeakRetained;
}

@end