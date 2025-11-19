@interface SubCredentialActivationMainController
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismiss:(int)a3;
- (void)dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewFetchContent;
- (void)viewPresentStartViewControllerIfReady;
- (void)viewUpdateAppInfo;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SubCredentialActivationMainController

- (void)dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!self->_dismissed)
  {
    self->_dismissed = 1;
    if (dword_1001BEEA8 <= 30 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
    {
      v7 = "no";
      if (v4)
      {
        v7 = "yes";
      }

      v11 = v7;
      LogPrintF();
    }

    v8 = [(SubCredentialActivationMainController *)self _remoteViewControllerProxy];
    v9 = [(SubCredentialActivationMainController *)self proxCardNavigationController];

    if (v9)
    {
      v10 = [(SubCredentialActivationMainController *)self proxCardNavigationController];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10011D9D4;
      v12[3] = &unk_1001959D0;
      v13 = v8;
      v14 = v6;
      [v10 dismissViewControllerAnimated:v4 completion:v12];
    }

    else
    {
      [v8 dismiss];
      if (v6)
      {
        v6[2](v6);
      }
    }
  }
}

- (void)dismiss:(int)a3
{
  if (dword_1001BEEA8 <= 30 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(SubCredentialActivationMainController *)self dismissAnimated:a3 != 19 completion:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (!self->_dismissed)
  {
    if (dword_1001BEEA8 <= 50 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(SubCredentialActivationMainController *)self dismiss:21];
  }

  storyboard = self->_storyboard;
  self->_storyboard = 0;

  [(SVSSubCredentialActivationStartViewController *)self->_vcStart setMainController:0];
  vcStart = self->_vcStart;
  self->_vcStart = 0;

  self->_appeared = 0;
  v7.receiver = self;
  v7.super_class = SubCredentialActivationMainController;
  [(SVSBaseMainController *)&v7 viewDidDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  self->_appeared = 1;
  if (dword_1001BEEA8 <= 30 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = SubCredentialActivationMainController;
  [(SubCredentialActivationMainController *)&v5 viewDidAppear:v3];
  [(SubCredentialActivationMainController *)self viewPresentStartViewControllerIfReady];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SubCredentialActivationMainController;
  [(SubCredentialActivationMainController *)&v3 viewWillAppear:a3];
  if (dword_1001BEEA8 <= 30 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)viewUpdateAppInfo
{
  if (self->_appIconImage)
  {
    if (self->_vcStart)
    {
      [(SVSSubCredentialActivationStartViewController *)self->_vcStart updateAppName:self->_appName image:?];
    }

    else
    {
      [(SubCredentialActivationMainController *)self viewPresentStartViewControllerIfReady];
    }
  }
}

- (void)viewPresentStartViewControllerIfReady
{
  if (self->_appeared && (![(SFAppContent *)self->_appContent installed]|| self->_appIconImage))
  {
    v3 = objc_alloc_init(SVSSubCredentialActivationStartViewController);
    [(SVSSubCredentialActivationStartViewController *)v3 setMainController:self];
    [(SVSSubCredentialActivationStartViewController *)v3 setAppName:self->_appName];
    [(SVSSubCredentialActivationStartViewController *)v3 setAppIconImage:self->_appIconImage];
    vcStart = self->_vcStart;
    self->_vcStart = v3;
    v5 = v3;

    v6 = [(SubCredentialActivationMainController *)self presentProxCardFlowWithDelegate:self initialViewController:v5];

    [(SubCredentialActivationMainController *)self setProxCardNavigationController:v6];
  }
}

- (void)viewFetchContent
{
  v3 = [[SFAppContent alloc] initWithAdamIDs:self->_adamIDs];
  appContent = self->_appContent;
  self->_appContent = v3;

  if (self->_appStoreURL)
  {
    v5 = [NSURL URLWithString:?];
    [(SFAppContent *)self->_appContent setAmsURLOverride:v5];
  }

  else
  {
    [(SFAppContent *)self->_appContent setAmsURLOverride:?];
  }

  if (dword_1001BEEA8 <= 50 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    adamIDs = self->_adamIDs;
    LogPrintF();
  }

  v6 = self->_appContent;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011DFBC;
  v8[3] = &unk_100195530;
  v8[4] = self;
  [(SFAppContent *)v6 fetchNameAndIconWithSize:v8 completion:98.0, 98.0, adamIDs];
  if (([(SFAppContent *)self->_appContent installed]& 1) == 0)
  {
    [(SubCredentialActivationMainController *)self viewPresentStartViewControllerIfReady];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(SubCredentialActivationMainController *)self view];
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

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = v7;

  if (dword_1001BEEA8 <= 30 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    v16 = self->super._userInfo;
    LogPrintF();
  }

  CFArrayGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (![v9 count] && dword_1001BEEA8 <= 90 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    v16 = 0;
    LogPrintF();
  }

  objc_storeStrong(&self->_adamIDs, v9);
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (!v10 && dword_1001BEEA8 <= 10 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    v16 = 0;
    LogPrintF();
  }

  objc_storeStrong(&self->_appStoreURL, v10);
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (!v11 && dword_1001BEEA8 <= 10 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    v16 = 0;
    LogPrintF();
  }

  objc_storeStrong(&self->_launchURL, v11);
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (!v12 && dword_1001BEEA8 <= 60 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    v16 = 0;
    LogPrintF();
  }

  objc_storeStrong(&self->_cardTitle, v12);
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  if (!v13 && dword_1001BEEA8 <= 60 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    v16 = 0;
    LogPrintF();
  }

  objc_storeStrong(&self->_cardSubtitle, v13);
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  if (!v14 && dword_1001BEEA8 <= 60 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    v16 = 0;
    LogPrintF();
  }

  issuerID = self->_issuerID;
  self->_issuerID = v14;

  if (v6)
  {
    v6[2](v6);
  }

  [(SubCredentialActivationMainController *)self viewFetchContent];
}

@end