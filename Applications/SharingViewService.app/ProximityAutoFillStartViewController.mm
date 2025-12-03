@interface ProximityAutoFillStartViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)handleDismissButtonPressed:(id)pressed;
- (void)handleMainButtonPressed:(id)pressed;
- (void)handleReportBugButton:(id)button;
- (void)handleTapOutsideView:(id)view;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ProximityAutoFillStartViewController

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  view = [touch view];
  view2 = [recognizerCopy view];

  return view == view2;
}

- (void)handleTapOutsideView:(id)view
{
  viewCopy = view;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController ensureStoppedWithDismiss:1 reason:1];
}

- (void)handleReportBugButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController fileRadar:0];
}

- (void)handleMainButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:0];

  [*(&self->_acceptButton + 1) startAnimating];
  [*(&self->_detailLabel + 1) setHidden:0];
  [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setHidden:1];
  if ([self->super.super._mainController testMode])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100112890;
    v7[3] = &unk_100195A70;
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    selfCopy = self;
    v6 = v8;
    dispatch_source_set_event_handler(v6, v7);
    SFDispatchTimerSet();
    dispatch_resume(v6);
  }

  else
  {
    [self->super.super._mainController sessionStart];
  }
}

- (void)handleDismissButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController ensureStoppedWithDismiss:1 reason:5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = ProximityAutoFillStartViewController;
  [(SVSBaseViewController *)&v15 viewWillAppear:appear];
  _remoteViewControllerProxy = [self->super.super._mainController _remoteViewControllerProxy];
  prefHideTTR = 1;
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v6 setDelegate:self];
  [v6 setNumberOfTapsRequired:1];
  [v6 setCancelsTouchesInView:0];
  view = [(ProximityAutoFillStartViewController *)self view];
  [view addGestureRecognizer:v6];

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"PROX_AUTOFILL_START_BUTTON" value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setTitle:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"PROX_AUTOFILL_START_DETAIL" value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->_activityIndicator + 1) setText:v12];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"PROX_AUTOFILL_START_TITLE" value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->_reportBugButton + 1) setText:v14];

  if (IsAppleInternalBuild())
  {
    prefHideTTR = [self->super.super._mainController prefHideTTR];
  }

  [*(&self->_progressView + 1) setHidden:prefHideTTR];
}

@end