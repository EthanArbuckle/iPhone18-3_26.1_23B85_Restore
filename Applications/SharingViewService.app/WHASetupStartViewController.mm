@interface WHASetupStartViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (void)handleDismissButton:(id)a3;
- (void)handleStartButton:(id)a3;
- (void)handleTapOutsideView:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WHASetupStartViewController

- (void)handleTapOutsideView:(id)a3
{
  v4 = a3;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:1];
}

- (void)handleDismissButton:(id)a3
{
  v4 = a3;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (void)handleStartButton:(id)a3
{
  v4 = a3;
  if ((BYTE1(self->_startButton) & 1) == 0)
  {
    BYTE1(self->_startButton) = 1;
    if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = [(SVSBaseViewController *)self containerView];
    [v5 setSwipeDismissible:0];

    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setHidden:0];
    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) startAnimating];
    [*(&self->_imageView + 1) setHidden:0];
    [*(&self->_progressView + 1) setHidden:1];
    v6 = [self->super._mainController testMode];
    if (v6 > 6)
    {
      if (v6 <= 8)
      {
        if (v6 == 7)
        {
          mainController = self->super._mainController;
          v8 = 301006;
        }

        else
        {
          mainController = self->super._mainController;
          v8 = 301007;
        }

        goto LABEL_25;
      }

      switch(v6)
      {
        case 9:
          mainController = self->super._mainController;
          v8 = 301010;
          goto LABEL_25;
        case 10:
          mainController = self->super._mainController;
          v8 = 301015;
          goto LABEL_25;
        case 11:
          mainController = self->super._mainController;
          v8 = 301011;
LABEL_25:
          [mainController showDoneUI:v8];
          goto LABEL_26;
      }

      goto LABEL_27;
    }

    if (v6 > 4)
    {
      if (v6 == 5)
      {
        mainController = self->super._mainController;
        v8 = 301004;
      }

      else
      {
        mainController = self->super._mainController;
        v8 = 301005;
      }

      goto LABEL_25;
    }

    if (v6)
    {
      if (v6 == 4)
      {
        mainController = self->super._mainController;
        v8 = 301000;
        goto LABEL_25;
      }

LABEL_27:
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10013081C;
      v10[3] = &unk_100195A70;
      v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      v12 = self;
      v9 = v11;
      dispatch_source_set_event_handler(v9, v10);
      SFDispatchTimerSet();
      dispatch_resume(v9);

      goto LABEL_26;
    }

    [self->super._mainController _sessionStart];
  }

LABEL_26:
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (BYTE1(self->_startButton))
  {
    return 0;
  }

  v6 = a3;
  v7 = [a4 view];
  v8 = [v6 view];

  v4 = v7 == v8;
  return v4;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = WHASetupStartViewController;
  [(WHASetupStartViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v18.receiver = self;
  v18.super_class = WHASetupStartViewController;
  [(SVSBaseViewController *)&v18 viewWillAppear:v3];
  v5 = [self->super._mainController _remoteViewControllerProxy];
  [v5 setStatusBarHidden:1 withDuration:0.0];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v6 setDelegate:self];
  [v6 setNumberOfTapsRequired:1];
  [v6 setCancelsTouchesInView:0];
  v7 = [(WHASetupStartViewController *)self view];
  [v7 addGestureRecognizer:v6];

  v8 = [*(&self->_progressView + 1) titleLabel];
  [v8 setAdjustsFontSizeToFitWidth:1];

  v9 = MKBGetDeviceLockState() - 1;
  v10 = *(&self->_progressView + 1);
  v11 = +[NSBundle mainBundle];
  v12 = v11;
  if (v9 >= 2)
  {
    v13 = @"CONNECT";
  }

  else
  {
    v13 = @"UNLOCK_TO_CONNECT";
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_100195CA8 table:@"Localizable"];
  [v10 setTitle:v14 forState:0];

  v15 = [self->super._mainController userInfo];
  Int64 = CFDictionaryGetInt64();

  if (Int64)
  {
    [(WHASetupStartViewController *)self handleStartButton:0];
  }

  v17 = [(SVSBaseViewController *)self containerView];
  [v17 setSwipeDismissible:1];
}

@end