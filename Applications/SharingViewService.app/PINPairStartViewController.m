@interface PINPairStartViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (void)handleDismissButton:(id)a3;
- (void)handlePairButton:(id)a3;
- (void)handleTapOutsideView:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PINPairStartViewController

- (void)handleTapOutsideView:(id)a3
{
  v4 = a3;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:1];
}

- (void)handlePairButton:(id)a3
{
  v4 = a3;
  if ((BYTE1(self->_progressLabel) & 1) == 0)
  {
    if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    BYTE1(self->_progressLabel) = 1;
    [*(&self->_imageView + 1) setHidden:1];
    [*(&self->_pairButton + 1) setHidden:0];
    v5 = [(SVSBaseViewController *)self containerView];
    [v5 setSwipeDismissible:0];

    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) startAnimating];
    if ([self->super._mainController testFlags])
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10010887C;
      v8[3] = &unk_100195A70;
      v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      v10 = self;
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

- (void)handleDismissButton:(id)a3
{
  v4 = a3;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (BYTE1(self->_progressLabel))
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
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = PINPairStartViewController;
  [(PINPairStartViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14.receiver = self;
  v14.super_class = PINPairStartViewController;
  [(SVSBaseViewController *)&v14 viewWillAppear:v3];
  v5 = [self->super._mainController _remoteViewControllerProxy];
  [v5 setStatusBarHidden:1 withDuration:0.0];

  v6 = [self->super._mainController userInfo];
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();

  if (v7)
  {
    v8 = [[NSUUID alloc] initWithUUIDString:v7];
    v9 = *(&self->_activityIndicatorView + 1);
    *(&self->_activityIndicatorView + 1) = v8;
  }

  v10 = [self->super._mainController userInfo];
  BYTE1(self->_deviceIdentifier) = CFDictionaryGetInt64Ranged();

  v11 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v11 setDelegate:self];
  [v11 setNumberOfTapsRequired:1];
  [v11 setCancelsTouchesInView:0];
  v12 = [(PINPairStartViewController *)self view];
  [v12 addGestureRecognizer:v11];

  v13 = [(SVSBaseViewController *)self containerView];
  [v13 setSwipeDismissible:1];
}

@end