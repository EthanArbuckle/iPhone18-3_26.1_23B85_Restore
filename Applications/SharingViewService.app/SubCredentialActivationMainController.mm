@interface SubCredentialActivationMainController
- (unint64_t)supportedInterfaceOrientations;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismiss:(int)dismiss;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewFetchContent;
- (void)viewPresentStartViewControllerIfReady;
- (void)viewUpdateAppInfo;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SubCredentialActivationMainController

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (!self->_dismissed)
  {
    self->_dismissed = 1;
    if (dword_1001BEEA8 <= 30 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
    {
      v7 = "no";
      if (animatedCopy)
      {
        v7 = "yes";
      }

      v11 = v7;
      LogPrintF();
    }

    _remoteViewControllerProxy = [(SubCredentialActivationMainController *)self _remoteViewControllerProxy];
    proxCardNavigationController = [(SubCredentialActivationMainController *)self proxCardNavigationController];

    if (proxCardNavigationController)
    {
      proxCardNavigationController2 = [(SubCredentialActivationMainController *)self proxCardNavigationController];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10011D9D4;
      v12[3] = &unk_1001959D0;
      v13 = _remoteViewControllerProxy;
      v14 = completionCopy;
      [proxCardNavigationController2 dismissViewControllerAnimated:animatedCopy completion:v12];
    }

    else
    {
      [_remoteViewControllerProxy dismiss];
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }
}

- (void)dismiss:(int)dismiss
{
  if (dword_1001BEEA8 <= 30 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(SubCredentialActivationMainController *)self dismissAnimated:dismiss != 19 completion:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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
  [(SVSBaseMainController *)&v7 viewDidDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  self->_appeared = 1;
  if (dword_1001BEEA8 <= 30 && (dword_1001BEEA8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = SubCredentialActivationMainController;
  [(SubCredentialActivationMainController *)&v5 viewDidAppear:appearCopy];
  [(SubCredentialActivationMainController *)self viewPresentStartViewControllerIfReady];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = SubCredentialActivationMainController;
  [(SubCredentialActivationMainController *)&v3 viewWillAppear:appear];
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
  view = [(SubCredentialActivationMainController *)self view];
  window = [view window];

  if (!window)
  {
    return 30;
  }

  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return (1 << [UIApp activeInterfaceOrientation]);
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = userInfo;

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

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  [(SubCredentialActivationMainController *)self viewFetchContent];
}

@end