@interface ProximityAutoFillStartViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (void)handleDismissButtonPressed:(id)a3;
- (void)handleMainButtonPressed:(id)a3;
- (void)handleReportBugButton:(id)a3;
- (void)handleTapOutsideView:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ProximityAutoFillStartViewController

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  v6 = [a4 view];
  v7 = [v5 view];

  return v6 == v7;
}

- (void)handleTapOutsideView:(id)a3
{
  v4 = a3;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController ensureStoppedWithDismiss:1 reason:1];
}

- (void)handleReportBugButton:(id)a3
{
  v4 = a3;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController fileRadar:0];
}

- (void)handleMainButtonPressed:(id)a3
{
  v4 = a3;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = [(SVSBaseViewController *)self containerView];
  [v5 setSwipeDismissible:0];

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
    v9 = self;
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

- (void)handleDismissButtonPressed:(id)a3
{
  v4 = a3;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController ensureStoppedWithDismiss:1 reason:5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = ProximityAutoFillStartViewController;
  [(SVSBaseViewController *)&v15 viewWillAppear:a3];
  v4 = [self->super.super._mainController _remoteViewControllerProxy];
  v5 = 1;
  [v4 setStatusBarHidden:1 withDuration:0.0];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v6 setDelegate:self];
  [v6 setNumberOfTapsRequired:1];
  [v6 setCancelsTouchesInView:0];
  v7 = [(ProximityAutoFillStartViewController *)self view];
  [v7 addGestureRecognizer:v6];

  v8 = [(SVSBaseViewController *)self containerView];
  [v8 setSwipeDismissible:1];

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
    v5 = [self->super.super._mainController prefHideTTR];
  }

  [*(&self->_progressView + 1) setHidden:v5];
}

@end