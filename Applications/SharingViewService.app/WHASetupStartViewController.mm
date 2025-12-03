@interface WHASetupStartViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)handleDismissButton:(id)button;
- (void)handleStartButton:(id)button;
- (void)handleTapOutsideView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WHASetupStartViewController

- (void)handleTapOutsideView:(id)view
{
  viewCopy = view;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:1];
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (void)handleStartButton:(id)button
{
  buttonCopy = button;
  if ((BYTE1(self->_startButton) & 1) == 0)
  {
    BYTE1(self->_startButton) = 1;
    if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    containerView = [(SVSBaseViewController *)self containerView];
    [containerView setSwipeDismissible:0];

    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setHidden:0];
    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) startAnimating];
    [*(&self->_imageView + 1) setHidden:0];
    [*(&self->_progressView + 1) setHidden:1];
    testMode = [self->super._mainController testMode];
    if (testMode > 6)
    {
      if (testMode <= 8)
      {
        if (testMode == 7)
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

      switch(testMode)
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

    if (testMode > 4)
    {
      if (testMode == 5)
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

    if (testMode)
    {
      if (testMode == 4)
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
      selfCopy = self;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (BYTE1(self->_startButton))
  {
    return 0;
  }

  recognizerCopy = recognizer;
  view = [touch view];
  view2 = [recognizerCopy view];

  v4 = view == view2;
  return v4;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = WHASetupStartViewController;
  [(WHASetupStartViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v18.receiver = self;
  v18.super_class = WHASetupStartViewController;
  [(SVSBaseViewController *)&v18 viewWillAppear:appearCopy];
  _remoteViewControllerProxy = [self->super._mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v6 setDelegate:self];
  [v6 setNumberOfTapsRequired:1];
  [v6 setCancelsTouchesInView:0];
  view = [(WHASetupStartViewController *)self view];
  [view addGestureRecognizer:v6];

  titleLabel = [*(&self->_progressView + 1) titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];

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

  userInfo = [self->super._mainController userInfo];
  Int64 = CFDictionaryGetInt64();

  if (Int64)
  {
    [(WHASetupStartViewController *)self handleStartButton:0];
  }

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];
}

@end