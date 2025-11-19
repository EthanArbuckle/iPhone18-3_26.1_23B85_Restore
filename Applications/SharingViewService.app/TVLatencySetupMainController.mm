@interface TVLatencySetupMainController
- (unint64_t)supportedInterfaceOrientations;
- (void)_sessionHandleProgress:(unsigned int)a3 info:(id)a4;
- (void)_sessionStart:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismiss:(int)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)showAuthUIWithFlags:(unsigned int)a3 throttleSeconds:(int)a4;
- (void)showDoneUI:(id)a3 final:(BOOL)a4;
- (void)showProgressUI;
- (void)showTryAgainUI;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation TVLatencySetupMainController

- (void)showTryAgainUI
{
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  vcTryAgain = self->_vcTryAgain;
  if (!vcTryAgain)
  {
    v4 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"TryAgain"];
    v5 = self->_vcTryAgain;
    self->_vcTryAgain = v4;

    [(SVSBaseViewController *)self->_vcTryAgain setMainController:self];
    vcTryAgain = self->_vcTryAgain;
  }

  vcNav = self->_vcNav;

  sub_100127D6C(vcNav, vcTryAgain, 0);
}

- (void)showProgressUI
{
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  vcProgress = self->_vcProgress;
  if (!vcProgress)
  {
    v4 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"Progress"];
    v5 = self->_vcProgress;
    self->_vcProgress = v4;

    [(SVSBaseViewController *)self->_vcProgress setMainController:self];
    vcProgress = self->_vcProgress;
  }

  vcNav = self->_vcNav;

  sub_100127D6C(vcNav, vcProgress, 0);
}

- (void)showDoneUI:(id)a3 final:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    v10 = v11;
    LogPrintF();
  }

  if (self->_vcDone)
  {
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"Done"];
    vcDone = self->_vcDone;
    self->_vcDone = v6;

    [(SVSBaseViewController *)self->_vcDone setMainController:self];
    [(TVLatencySetupDoneViewController *)self->_vcDone setError:v11];
    sub_100127D6C(self->_vcNav, self->_vcDone, 0);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(SFDeviceSetupTVLatencySession *)self->_latencySetupSession invalidate];
  latencySetupSession = self->_latencySetupSession;
  self->_latencySetupSession = 0;

  v9 = [(TVLatencySetupMainController *)self _remoteViewControllerProxy];
  [v9 setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.TVLatencySetup"];

LABEL_14:
}

- (void)showAuthUIWithFlags:(unsigned int)a3 throttleSeconds:(int)a4
{
  vcAuth = self->_vcAuth;
  if (vcAuth)
  {

    [(TVLatencySetupAuthViewController *)vcAuth showWithFlags:*&a3 throttleSeconds:*&a4];
  }

  else
  {
    if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"AuthUI"];
    v7 = self->_vcAuth;
    self->_vcAuth = v6;

    [(SVSBaseViewController *)self->_vcAuth setMainController:self];
    vcNav = self->_vcNav;
    v9 = self->_vcAuth;

    sub_100127D6C(vcNav, v9, 0);
  }
}

- (void)_sessionHandleProgress:(unsigned int)a3 info:(id)a4
{
  v10 = a4;
  if (a3 <= 273)
  {
    if (a3 <= 259)
    {
      if (a3 != 30)
      {
        if (a3 != 96)
        {
          goto LABEL_35;
        }

        goto LABEL_12;
      }

      goto LABEL_20;
    }

    if (a3 != 260)
    {
      if (a3 != 272)
      {
        goto LABEL_35;
      }

LABEL_12:
      if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      [(TVLatencySetupMainController *)self showDoneUI:0];
      goto LABEL_35;
    }

    [(TVLatencySetupMainController *)self showProgressUI];
    vcProgress = self->_vcProgress;
    v8 = 260;
LABEL_25:
    [(TVLatencySetupProgressViewController *)vcProgress handleProgressEvent:v8];
    goto LABEL_35;
  }

  if (a3 > 276)
  {
    if (a3 == 277)
    {
      [(TVLatencySetupMainController *)self showProgressUI];
      vcProgress = self->_vcProgress;
      v8 = 277;
      goto LABEL_25;
    }

    if (a3 == 400)
    {
      if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      [(TVLatencySetupMainController *)self dismiss:17];
    }
  }

  else
  {
    if (a3 == 274)
    {
LABEL_20:
      CFErrorGetTypeID();
      v6 = CFDictionaryGetTypedValue();
      if (dword_1001BF2B8 <= 60 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v6)
      {
        [(TVLatencySetupMainController *)self showDoneUI:v6];
      }

      else
      {
        v9 = NSErrorF();
        [(TVLatencySetupMainController *)self showDoneUI:v9];
      }

      goto LABEL_35;
    }

    if (a3 == 276)
    {
      [(TVLatencySetupMainController *)self showTryAgainUI];
    }
  }

LABEL_35:
}

- (void)_sessionStart:(id)a3
{
  self->_started = 1;
  v4 = a3;
  v5 = objc_alloc_init(SFDeviceSetupTVLatencySession);
  latencySetupSession = self->_latencySetupSession;
  self->_latencySetupSession = v5;

  [(SFDeviceSetupTVLatencySession *)self->_latencySetupSession setPeerDevice:v4];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100128F2C;
  v9[3] = &unk_1001959F8;
  v9[4] = self;
  [(SFDeviceSetupTVLatencySession *)self->_latencySetupSession setProgressHandler:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100128F3C;
  v8[3] = &unk_100195A48;
  v8[4] = self;
  [(SFDeviceSetupTVLatencySession *)self->_latencySetupSession setPromptForPINHandler:v8];
  [(SFDeviceSetupTVLatencySession *)self->_latencySetupSession activate];
  v7 = [(TVLatencySetupMainController *)self _remoteViewControllerProxy];
  [v7 setIdleTimerDisabled:1 forReason:@"com.apple.SharingViewService.TVLatencySetup"];
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
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (([*(*(&v9 + 1) + 8 * i) events] & 0x10) != 0)
        {
          if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [(TVLatencySetupMainController *)self dismiss:4];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dismiss:(int)a3 completion:(id)a4
{
  v6 = a4;
  if (!self->_dismissed)
  {
    self->_dismissed = 1;
    if (self->_started)
    {
      v7 = objc_alloc_init(SFClient);
      v8 = v7;
      if (a3 == 5)
      {
        [v7 invalidate];
      }

      else
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1001292E0;
        v15[3] = &unk_100195940;
        v15[4] = v7;
        [v7 reenableProxCardType:25 completion:v15];
      }
    }

    v9 = [(TVLatencySetupMainController *)self _remoteViewControllerProxy];
    v10 = v9;
    vcNav = self->_vcNav;
    if (vcNav)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100129384;
      v12[3] = &unk_1001959D0;
      v14 = v6;
      v13 = v10;
      [(SVSCommonNavController *)vcNav dismissViewControllerAnimated:a3 != 19 completion:v12];
    }

    else
    {
      [v9 dismiss];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = [(TVLatencySetupMainController *)self _remoteViewControllerProxy];
  [v5 setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.TVLatencySetup"];

  if (!self->_dismissed)
  {
    if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(TVLatencySetupMainController *)self dismiss:21];
  }

  [(SFDeviceSetupTVLatencySession *)self->_latencySetupSession invalidate];
  latencySetupSession = self->_latencySetupSession;
  self->_latencySetupSession = 0;

  storyboard = self->_storyboard;
  self->_storyboard = 0;

  [(SVSBaseViewController *)self->_vcAuth setMainController:0];
  vcAuth = self->_vcAuth;
  self->_vcAuth = 0;

  [(SVSBaseViewController *)self->_vcDone setMainController:0];
  vcDone = self->_vcDone;
  self->_vcDone = 0;

  vcNav = self->_vcNav;
  self->_vcNav = 0;

  [(SVSBaseViewController *)self->_vcProgress setMainController:0];
  vcProgress = self->_vcProgress;
  self->_vcProgress = 0;

  [(SVSBaseViewController *)self->_vcStart setMainController:0];
  vcStart = self->_vcStart;
  self->_vcStart = 0;

  [(SVSBaseViewController *)self->_vcTryAgain setMainController:0];
  vcTryAgain = self->_vcTryAgain;
  self->_vcTryAgain = 0;

  v14.receiver = self;
  v14.super_class = TVLatencySetupMainController;
  [(SVSBaseMainController *)&v14 viewDidDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14.receiver = self;
  v14.super_class = TVLatencySetupMainController;
  [(TVLatencySetupMainController *)&v14 viewDidAppear:v3];
  v5 = [UIStoryboard storyboardWithName:@"TVLatencySetup" bundle:0];
  storyboard = self->_storyboard;
  self->_storyboard = v5;

  v7 = [(UIStoryboard *)self->_storyboard instantiateInitialViewController];
  vcNav = self->_vcNav;
  self->_vcNav = v7;

  [(SVSCommonNavController *)self->_vcNav setDelegate:self];
  [(SVSCommonNavController *)self->_vcNav setModalPresentationStyle:4];
  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SVSCommonNavController *)self->_vcNav setModalTransitionStyle:2];
  }

  [(SVSCommonNavController *)self->_vcNav setTransitioningDelegate:self->_vcNav];
  v11 = [(SVSCommonNavController *)self->_vcNav viewControllers];
  v12 = [v11 firstObject];
  vcStart = self->_vcStart;
  self->_vcStart = v12;

  [(SVSBaseViewController *)self->_vcStart setMainController:self];
  [(TVLatencySetupMainController *)self presentViewController:self->_vcNav animated:1 completion:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(TVLatencySetupMainController *)self view];
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
  v12 = a4;
  v6 = [a3 userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = v6;

  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    v9 = [[NSUUID alloc] initWithUUIDString:v8];
    deviceIdentifier = self->_deviceIdentifier;
    self->_deviceIdentifier = v9;
  }

  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();

  if (v11)
  {
    self->_testFlags = SFTestFlagsFromString();
  }

  if (v12)
  {
    v12[2](v12);
  }
}

@end