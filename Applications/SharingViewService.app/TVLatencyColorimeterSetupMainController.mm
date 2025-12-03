@interface TVLatencyColorimeterSetupMainController
- (BOOL)_deviceSupported;
- (unint64_t)supportedInterfaceOrientations;
- (void)_sessionHandleProgress:(unsigned int)progress info:(id)info;
- (void)_sessionStart:(id)start;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismissAnimated:(BOOL)animated reenableProxCard:(BOOL)card completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)showAuthUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)showDoneUI:(id)i final:(BOOL)final completed:(BOOL)completed;
- (void)showPreparingUI;
- (void)showProgressUI;
- (void)showTryAgainUI;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation TVLatencyColorimeterSetupMainController

- (BOOL)_deviceSupported
{
  DeviceClass = GestaltGetDeviceClass();
  v3 = MGIsQuestionValid();
  if (v3)
  {
    LOBYTE(v3) = MGGetBoolAnswer();
    if (DeviceClass != 1)
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)showTryAgainUI
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  vcTryAgain = self->_vcTryAgain;
  if (!vcTryAgain)
  {
    v4 = objc_alloc_init(TVLatencyColorimeterSetupTryAgainViewController);
    v5 = self->_vcTryAgain;
    self->_vcTryAgain = v4;

    [(TVLatencyColorimeterSetupBaseViewController *)self->_vcTryAgain setMainController:self];
    vcTryAgain = self->_vcTryAgain;
  }

  vcNav = self->_vcNav;

  sub_100102018(vcNav, vcTryAgain);
}

- (void)showProgressUI
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  vcProgress = self->_vcProgress;
  if (!vcProgress)
  {
    v4 = objc_alloc_init(TVLatencyColorimeterSetupProgressViewController);
    v5 = self->_vcProgress;
    self->_vcProgress = v4;

    [(TVLatencyColorimeterSetupBaseViewController *)self->_vcProgress setMainController:self];
    vcProgress = self->_vcProgress;
  }

  vcNav = self->_vcNav;

  sub_100102018(vcNav, vcProgress);
}

- (void)showPreparingUI
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  vcPreparing = self->_vcPreparing;
  if (!vcPreparing)
  {
    v4 = objc_alloc_init(TVLatencyColorimeterSetupPreparingViewController);
    v5 = self->_vcPreparing;
    self->_vcPreparing = v4;

    [(TVLatencyColorimeterSetupBaseViewController *)self->_vcPreparing setMainController:self];
    vcPreparing = self->_vcPreparing;
  }

  vcNav = self->_vcNav;

  sub_100102018(vcNav, vcPreparing);
}

- (void)showDoneUI:(id)i final:(BOOL)final completed:(BOOL)completed
{
  completedCopy = completed;
  finalCopy = final;
  iCopy = i;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    v12 = iCopy;
    LogPrintF();
  }

  if (self->_vcDone)
  {
    if (!finalCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = objc_alloc_init(TVLatencyColorimeterSetupDoneViewController);
    vcDone = self->_vcDone;
    self->_vcDone = v8;

    [(TVLatencyColorimeterSetupBaseViewController *)self->_vcDone setMainController:self];
    [(TVLatencyColorimeterSetupDoneViewController *)self->_vcDone setError:iCopy];
    [(TVLatencyColorimeterSetupDoneViewController *)self->_vcDone setCompleted:completedCopy];
    sub_100102018(self->_vcNav, self->_vcDone);
    if (!finalCopy)
    {
      goto LABEL_14;
    }
  }

  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(SFDeviceSetupTVColorCalibratorSession *)self->_colorCalibratorSetupSession invalidate];
  colorCalibratorSetupSession = self->_colorCalibratorSetupSession;
  self->_colorCalibratorSetupSession = 0;

  _remoteViewControllerProxy = [(TVLatencyColorimeterSetupMainController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.TVLatencySetup"];

LABEL_14:
}

- (void)showAuthUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  vcAuth = self->_vcAuth;
  if (vcAuth)
  {

    [(TVLatencyColorimeterSetupAuthViewController *)vcAuth showWithFlags:*&flags throttleSeconds:*&seconds];
  }

  else
  {
    if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = [(UIStoryboard *)self->_storyboard instantiateViewControllerWithIdentifier:@"AuthUI"];
    v7 = self->_vcAuth;
    self->_vcAuth = v6;

    [(SVSBaseViewController *)self->_vcAuth setMainController:self];
    vcNav = self->_vcNav;
    v9 = self->_vcAuth;

    sub_100102018(vcNav, v9);
  }
}

- (void)_sessionHandleProgress:(unsigned int)progress info:(id)info
{
  infoCopy = info;
  if (progress > 279)
  {
    if (progress <= 281)
    {
      if (progress != 280)
      {
        [(TVLatencyColorimeterSetupMainController *)self showTryAgainUI];
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (progress != 282)
    {
      if (progress == 400)
      {
        if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [(TVLatencyColorimeterSetupMainController *)self dismiss:17];
      }

      goto LABEL_26;
    }

    goto LABEL_17;
  }

  switch(progress)
  {
    case 0x1Eu:
LABEL_14:
      CFErrorGetTypeID();
      v6 = CFDictionaryGetTypedValue();
      if (dword_1001BEA68 <= 60 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
      {
        v7 = v6;
        LogPrintF();
      }

      [(TVLatencyColorimeterSetupMainController *)self showTryAgainUI];

      break;
    case 0x60u:
LABEL_17:
      if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      [(TVLatencyColorimeterSetupMainController *)self showDoneUI:0 completed:infoCopy != 0];
      break;
    case 0x116u:
      [(TVLatencyColorimeterSetupMainController *)self showProgressUI];
      [(TVLatencyColorimeterSetupProgressViewController *)self->_vcProgress handleProgressEvent:278];
      break;
  }

LABEL_26:
}

- (void)_sessionStart:(id)start
{
  self->_started = 1;
  startCopy = start;
  v5 = objc_alloc_init(SFDeviceSetupTVColorCalibratorSession);
  colorCalibratorSetupSession = self->_colorCalibratorSetupSession;
  self->_colorCalibratorSetupSession = v5;

  [(SFDeviceSetupTVColorCalibratorSession *)self->_colorCalibratorSetupSession setPeerDevice:startCopy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100105048;
  v9[3] = &unk_1001959F8;
  v9[4] = self;
  [(SFDeviceSetupTVColorCalibratorSession *)self->_colorCalibratorSetupSession setProgressHandler:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100105058;
  v8[3] = &unk_100195A48;
  v8[4] = self;
  [(SFDeviceSetupTVColorCalibratorSession *)self->_colorCalibratorSetupSession setPromptForPINHandler:v8];
  [(SFDeviceSetupTVColorCalibratorSession *)self->_colorCalibratorSetupSession activate];
  _remoteViewControllerProxy = [(TVLatencyColorimeterSetupMainController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setIdleTimerDisabled:1 forReason:@"com.apple.SharingViewService.TVLatencySetup"];
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * i) events] & 0x10) != 0)
        {
          if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [(TVLatencyColorimeterSetupMainController *)self dismiss:4];
        }
      }

      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)dismissAnimated:(BOOL)animated reenableProxCard:(BOOL)card completion:(id)completion
{
  cardCopy = card;
  animatedCopy = animated;
  completionCopy = completion;
  if (!self->_dismissed)
  {
    self->_dismissed = 1;
    if (self->_started)
    {
      v9 = objc_alloc_init(SFClient);
      v10 = v9;
      if (cardCopy)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10010540C;
        v17[3] = &unk_100195940;
        v17[4] = v9;
        [v9 reenableProxCardType:30 completion:v17];
      }

      else
      {
        [v9 invalidate];
      }
    }

    _remoteViewControllerProxy = [(TVLatencyColorimeterSetupMainController *)self _remoteViewControllerProxy];
    v12 = _remoteViewControllerProxy;
    vcNav = self->_vcNav;
    if (vcNav)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001054B0;
      v14[3] = &unk_1001959D0;
      v16 = completionCopy;
      v15 = v12;
      [(UINavigationController *)vcNav dismissViewControllerAnimated:animatedCopy completion:v14];
    }

    else
    {
      [_remoteViewControllerProxy dismiss];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  _remoteViewControllerProxy = [(TVLatencyColorimeterSetupMainController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.TVLatencySetup"];

  if (!self->_dismissed)
  {
    if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(TVLatencyColorimeterSetupMainController *)self dismiss:21];
  }

  [(SFDeviceSetupTVColorCalibratorSession *)self->_colorCalibratorSetupSession invalidate];
  colorCalibratorSetupSession = self->_colorCalibratorSetupSession;
  self->_colorCalibratorSetupSession = 0;

  storyboard = self->_storyboard;
  self->_storyboard = 0;

  [(SVSBaseViewController *)self->_vcAuth setMainController:0];
  vcAuth = self->_vcAuth;
  self->_vcAuth = 0;

  [(TVLatencyColorimeterSetupBaseViewController *)self->_vcDone setMainController:0];
  vcDone = self->_vcDone;
  self->_vcDone = 0;

  vcNav = self->_vcNav;
  self->_vcNav = 0;

  [(TVLatencyColorimeterSetupBaseViewController *)self->_vcProgress setMainController:0];
  vcProgress = self->_vcProgress;
  self->_vcProgress = 0;

  [(TVLatencyColorimeterSetupBaseViewController *)self->_vcPreparing setMainController:0];
  vcPreparing = self->_vcPreparing;
  self->_vcPreparing = 0;

  [(TVLatencyColorimeterSetupBaseViewController *)self->_vcStart setMainController:0];
  vcStart = self->_vcStart;
  self->_vcStart = 0;

  [(TVLatencyColorimeterSetupBaseViewController *)self->_vcTryAgain setMainController:0];
  vcTryAgain = self->_vcTryAgain;
  self->_vcTryAgain = 0;

  v15.receiver = self;
  v15.super_class = TVLatencyColorimeterSetupMainController;
  [(SVSBaseMainController *)&v15 viewDidDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12.receiver = self;
  v12.super_class = TVLatencyColorimeterSetupMainController;
  [(TVLatencyColorimeterSetupMainController *)&v12 viewDidAppear:appearCopy];
  v5 = [UIStoryboard storyboardWithName:@"TVColorCalibrationSetup" bundle:0];
  storyboard = self->_storyboard;
  self->_storyboard = v5;

  _deviceSupported = [(TVLatencyColorimeterSetupMainController *)self _deviceSupported];
  v8 = off_10018D478;
  if (!_deviceSupported)
  {
    v8 = &off_10018D480;
  }

  v9 = objc_alloc_init(*v8);
  [v9 setMainController:self];
  v10 = [(TVLatencyColorimeterSetupMainController *)self presentProxCardFlowWithDelegate:self initialViewController:v9];
  vcNav = self->_vcNav;
  self->_vcNav = v10;
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(TVLatencyColorimeterSetupMainController *)self view];
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

  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

@end