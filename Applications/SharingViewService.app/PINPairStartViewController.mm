@interface PINPairStartViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)handleDismissButton:(id)button;
- (void)handlePairButton:(id)button;
- (void)handleTapOutsideView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PINPairStartViewController

- (void)handleTapOutsideView:(id)view
{
  viewCopy = view;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:1];
}

- (void)handlePairButton:(id)button
{
  buttonCopy = button;
  if ((BYTE1(self->_progressLabel) & 1) == 0)
  {
    if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    BYTE1(self->_progressLabel) = 1;
    [*(&self->_imageView + 1) setHidden:1];
    [*(&self->_pairButton + 1) setHidden:0];
    containerView = [(SVSBaseViewController *)self containerView];
    [containerView setSwipeDismissible:0];

    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) startAnimating];
    if ([self->super._mainController testFlags])
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10010887C;
      v8[3] = &unk_100195A70;
      v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      selfCopy = self;
      v6 = v9;
      dispatch_source_set_event_handler(v6, v8);
      SFDispatchTimerSet();
      dispatch_resume(v6);
    }

    else
    {
      v7 = objc_alloc_init(SFDevice);
      [v7 setIdentifier:*(&self->_activityIndicatorView + 1)];
      [v7 setOsVersion:BYTE1(self->_deviceIdentifier)];
      [self->super._mainController _startPairing:v7];
    }
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (BYTE1(self->_progressLabel))
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
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = PINPairStartViewController;
  [(PINPairStartViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14.receiver = self;
  v14.super_class = PINPairStartViewController;
  [(SVSBaseViewController *)&v14 viewWillAppear:appearCopy];
  _remoteViewControllerProxy = [self->super._mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

  userInfo = [self->super._mainController userInfo];
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();

  if (v7)
  {
    v8 = [[NSUUID alloc] initWithUUIDString:v7];
    v9 = *(&self->_activityIndicatorView + 1);
    *(&self->_activityIndicatorView + 1) = v8;
  }

  userInfo2 = [self->super._mainController userInfo];
  BYTE1(self->_deviceIdentifier) = CFDictionaryGetInt64Ranged();

  v11 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v11 setDelegate:self];
  [v11 setNumberOfTapsRequired:1];
  [v11 setCancelsTouchesInView:0];
  view = [(PINPairStartViewController *)self view];
  [view addGestureRecognizer:v11];

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];
}

@end