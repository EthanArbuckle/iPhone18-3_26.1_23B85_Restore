@interface HomeKitDeviceDetectedStartViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (void)_launchHomeApp;
- (void)_restoreHomeApp;
- (void)applicationsDidInstall:(id)a3;
- (void)handleDismissButton:(id)a3;
- (void)handleSetupButton:(id)a3;
- (void)handleTapOutsideView:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HomeKitDeviceDetectedStartViewController

- (void)_restoreHomeApp
{
  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [*(&self->_progressView + 1) setHidden:0];
  [*(&self->_progressView + 1) startAnimating];
  [*(&self->_settingUp + 1) setHidden:0];
  [*(&self->_dismissButton + 1) setHidden:1];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 addObserver:self];
  v4 = [objc_alloc(off_1001BE650()) initWithBundleID:@"com.apple.Home"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EC848;
  v5[3] = &unk_100195940;
  v5[4] = self;
  [v4 startWithErrorHandler:v5];
}

- (void)_launchHomeApp
{
  v3 = [self->super._mainController userInfo];
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();

  if (v4)
  {
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    v10 = v5;
    LogPrintF();
  }

  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = v6;
  if (v5)
  {
    v13 = 0;
    v8 = [v6 openSensitiveURL:v5 withOptions:0 error:&v13];
    v9 = v13;
    if (v8)
    {
LABEL_13:
      if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
      {
        v11 = v5;
        LogPrintF();
      }

      [self->super._mainController dismiss:{8, v11}];
      goto LABEL_23;
    }
  }

  else
  {
    v9 = 0;
  }

  if ([v7 openApplicationWithBundleID:@"com.apple.Home"])
  {
    goto LABEL_13;
  }

  if (dword_1001BE5E0 <= 90 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    v11 = v5;
    v12 = v9;
    LogPrintF();
  }

  BYTE1(self->_setupButton) = 0;
  [*(&self->_dismissButton + 1) setEnabled:{1, v11, v12}];
LABEL_23:
}

- (void)applicationsDidInstall:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        v10 = [v9 isEqual:@"com.apple.Home"];

        if (v10)
        {
          if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000ECE90;
          block[3] = &unk_100195AC0;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (void)handleTapOutsideView:(id)a3
{
  v4 = a3;
  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:1];
}

- (void)handleSetupButton:(id)a3
{
  v4 = a3;
  if ((BYTE1(self->_setupButton) & 1) == 0)
  {
    v8 = v4;
    BYTE1(self->_setupButton) = 1;
    [*(&self->_dismissButton + 1) setEnabled:0];
    v5 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.Home"];
    v6 = [v5 appState];
    v7 = [v6 isInstalled];

    if (v7)
    {
      [(HomeKitDeviceDetectedStartViewController *)self _launchHomeApp];
    }

    else
    {
      [(HomeKitDeviceDetectedStartViewController *)self _restoreHomeApp];
    }

    v4 = v8;
  }
}

- (void)handleDismissButton:(id)a3
{
  v4 = a3;
  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  v6 = [a4 view];
  v7 = [v5 view];

  return v6 == v7;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = HomeKitDeviceDetectedStartViewController;
  [(HomeKitDeviceDetectedStartViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BE5E0 <= 30 && (dword_1001BE5E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9.receiver = self;
  v9.super_class = HomeKitDeviceDetectedStartViewController;
  [(SVSBaseViewController *)&v9 viewWillAppear:v3];
  v5 = [self->super._mainController _remoteViewControllerProxy];
  [v5 setStatusBarHidden:1 withDuration:0.0];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v6 setDelegate:self];
  [v6 setNumberOfTapsRequired:1];
  [v6 setCancelsTouchesInView:0];
  v7 = [(HomeKitDeviceDetectedStartViewController *)self view];
  [v7 addGestureRecognizer:v6];

  v8 = [(SVSBaseViewController *)self containerView];
  [v8 setSwipeDismissible:1];
}

@end