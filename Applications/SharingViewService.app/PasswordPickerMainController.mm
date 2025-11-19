@interface PasswordPickerMainController
- (unint64_t)supportedInterfaceOrientations;
- (void)_handleHomeButtonPressed;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismiss:(int)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)handlePasswordPicked:(id)a3;
- (void)passwordViewController:(id)a3 selectedCredential:(id)a4;
- (void)passwordViewControllerDidFinish:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PasswordPickerMainController

- (void)passwordViewController:(id)a3 selectedCredential:(id)a4
{
  v6 = a3;
  v7 = a4;
  vcPicker = self->_vcPicker;
  v9 = v6;
  v10 = vcPicker;
  v11 = v10;
  if (v10 == v9)
  {
  }

  else
  {
    if ((v9 != 0) != (v10 == 0))
    {
      v12 = [(_SFAppAutoFillPasswordViewController *)v9 isEqual:v10];

      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (dword_1001BEB48 <= 60 && (dword_1001BEB48 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

LABEL_11:
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10010B590;
  v14[3] = &unk_100195A70;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  dispatch_async(&_dispatch_main_q, v14);
}

- (void)passwordViewControllerDidFinish:(id)a3
{
  v4 = a3;
  if (dword_1001BEB48 <= 30 && (dword_1001BEB48 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(PasswordPickerMainController *)self dismiss:0];
}

- (void)handlePasswordPicked:(id)a3
{
  v7 = a3;
  if (dword_1001BEB48 <= 30 && (dword_1001BEB48 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_passwordPicked = 1;
  helper = self->_helper;
  if (helper)
  {
    v5 = [v7 user];
    v6 = [v7 password];
    [(SFRemoteAutoFillSessionHelper *)helper serverDidPickUsername:v5 password:v6 error:0];
  }

  else if (dword_1001BEB48 <= 60 && (dword_1001BEB48 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)dismiss:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (!self->_dismissed)
  {
    v11 = v6;
    self->_dismissed = 1;
    if (dword_1001BEB48 <= 30 && (dword_1001BEB48 != -1 || _LogCategory_Initialize()))
    {
      v10 = v4;
      LogPrintF();
    }

    if (!self->_passwordPicked)
    {
      helper = self->_helper;
      v8 = NSErrorWithOSStatusF();
      [(SFRemoteAutoFillSessionHelper *)helper serverDidPickUsername:0 password:0 error:v8];
    }

    [(PasswordPickerMainController *)self dismissViewControllerAnimated:1 completion:v11, v10];
    v9 = [(PasswordPickerMainController *)self _remoteViewControllerProxy];
    [v9 dismiss];

    v6 = v11;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEB48 <= 30 && (dword_1001BEB48 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!self->_dismissed)
  {
    if (dword_1001BEB48 <= 30 && (dword_1001BEB48 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(PasswordPickerMainController *)self dismiss:21];
  }

  [(SFRemoteAutoFillSessionHelper *)self->_helper invalidate];
  helper = self->_helper;
  self->_helper = 0;

  contextBundleID = self->_contextBundleID;
  self->_contextBundleID = 0;

  contextLocalizedAppName = self->_contextLocalizedAppName;
  self->_contextLocalizedAppName = 0;

  contextUnlocalizedAppName = self->_contextUnlocalizedAppName;
  self->_contextUnlocalizedAppName = 0;

  contextURL = self->_contextURL;
  self->_contextURL = 0;

  vcPicker = self->_vcPicker;
  self->_vcPicker = 0;

  v11 = [(PasswordPickerMainController *)self _remoteViewControllerProxy];
  [v11 setStatusBarHidden:0 withDuration:0.0];

  v12.receiver = self;
  v12.super_class = PasswordPickerMainController;
  [(SVSBaseMainController *)&v12 viewDidDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEB48 <= 30 && (dword_1001BEB48 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11.receiver = self;
  v11.super_class = PasswordPickerMainController;
  [(PasswordPickerMainController *)&v11 viewDidAppear:v3];
  v5 = objc_alloc_init(off_1001BEBB8());
  vcPicker = self->_vcPicker;
  self->_vcPicker = v5;

  [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setDelegate:self];
  v7 = [NSURL URLWithString:self->_contextURL];
  if (v7)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setWebViewURL:v7];
  }

  if (self->_contextBundleID)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteAppID:?];
  }

  if (self->_contextLocalizedAppName)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteLocalizedAppName:?];
  }

  if (self->_contextUnlocalizedAppName)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteUnlocalizedAppName:?];
  }

  v8 = objc_opt_respondsToSelector();
  if (self->_contextAssociatedDomains && (v8 & 1) != 0)
  {
    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:?];
  }

  [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setAuthenticationGracePeriod:45.0];
  v9 = self->_vcPicker;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010BC4C;
  v10[3] = &unk_1001957D0;
  v10[4] = self;
  [(_SFAppAutoFillPasswordViewController *)v9 authenticateToPresentInPopover:1 completion:v10];
}

- (void)_handleHomeButtonPressed
{
  if (dword_1001BEB48 <= 30 && (dword_1001BEB48 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(PasswordPickerMainController *)self dismiss:4];
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (([*(*(&v9 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(PasswordPickerMainController *)self _handleHomeButtonPressed];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v18 = a4;
  v6 = [a3 userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = v6;

  if (dword_1001BEB48 <= 30 && (dword_1001BEB48 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    objc_storeStrong(&self->_contextBundleID, v8);
  }

  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();

  if (v9)
  {
    objc_storeStrong(&self->_contextLocalizedAppName, v9);
  }

  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();

  if (v10)
  {
    objc_storeStrong(&self->_contextUnlocalizedAppName, v10);
  }

  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();

  if (v11)
  {
    objc_storeStrong(&self->_contextURL, v11);
  }

  CFArrayGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  v13 = v12;
  if (v12)
  {
    v14 = [v12 copy];
    contextAssociatedDomains = self->_contextAssociatedDomains;
    self->_contextAssociatedDomains = v14;
  }

  v16 = objc_alloc_init(SFRemoteAutoFillSessionHelper);
  helper = self->_helper;
  self->_helper = v16;

  [(SFRemoteAutoFillSessionHelper *)self->_helper activateWithCompletion:&stru_100194FC0];
  if (v18)
  {
    v18[2](v18);
  }
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = PasswordPickerMainController;
  [(SVSBaseMainController *)&v4 _willAppearInRemoteViewController];
  v3 = [(PasswordPickerMainController *)self _remoteViewControllerProxy];
  [v3 setAllowsAlertItems:1];
  [v3 setAllowsAlertStacking:1];
  [v3 setStatusBarHidden:0 withDuration:0.0];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(PasswordPickerMainController *)self view];
  v3 = [v2 window];

  if (!v3)
  {
    return 30;
  }

  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    return (1 << [UIApp activeInterfaceOrientation]);
  }

  else
  {
    return 2;
  }
}

@end