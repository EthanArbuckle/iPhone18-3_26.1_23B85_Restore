@interface ProximityAutoFillAuthViewController
- (void)_handleKeyboardWillShow:(id)a3;
- (void)_handlePINEntered:(id)a3;
- (void)handleDismissButton:(id)a3;
- (void)showWithFlags:(unsigned int)a3 throttleSeconds:(int)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ProximityAutoFillAuthViewController

- (void)showWithFlags:(unsigned int)a3 throttleSeconds:(int)a4
{
  [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setHidden:{1, *&a4}];
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if ((a3 & 0x10000) != 0)
  {
    v10 = [v6 localizedStringForKey:@"PROX_AUTOFILL_PIN_INCORRECT" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_activityIndicatorView + 1) setText:v10];

    v11 = +[UIColor systemRedColor];
    [*(&self->_activityIndicatorView + 1) setTextColor:v11];

    [self->super.super._mainController setBadPINCount:{objc_msgSend(self->super.super._mainController, "badPINCount") + 1}];
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"PROX_AUTOFILL_PIN_INFO_TV" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_activityIndicatorView + 1) setText:v8];

    v9 = +[UIColor blackColor];
    [*(&self->_activityIndicatorView + 1) setTextColor:v9];
  }

  v12 = *(&self->_infoLabel + 1);

  [v12 setText:&stru_100195CA8];
}

- (void)_handlePINEntered:(id)a3
{
  v4 = a3;
  [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setHidden:0];
  [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) startAnimating];
  if ([self->super.super._mainController testMode])
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100111C10;
    handler[3] = &unk_100195AE8;
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v8 = v4;
    v9 = self;
    v5 = v7;
    dispatch_source_set_event_handler(v5, handler);
    SFDispatchTimerSet();
    dispatch_resume(v5);
  }

  else
  {
    [self->super.super._mainController _tryPIN:v4];
  }
}

- (void)_handleKeyboardWillShow:(id)a3
{
  v4 = a3;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100111F50;
  v30[3] = &unk_100195AC0;
  v30[4] = self;
  [UIView performWithoutAnimation:v30];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(ProximityAutoFillAuthViewController *)self view];
  [v15 convertRect:0 fromView:{v8, v10, v12, v14}];
  v17 = v16;

  v18 = [v5 objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v5 objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
  v22 = [v21 integerValue];

  if (BYTE1(self->_pinWell4) != 1)
  {
    v23 = [(SVSBaseViewController *)self bottomMarginConstraint];
    [v23 constant];
    *(&self->_viewBottomConstantValid + 1) = v24;

    BYTE1(self->_pinWell4) = 1;
  }

  v25 = *(&self->_viewBottomConstantValid + 1);
  v26 = [(ProximityAutoFillAuthViewController *)self view];
  [v26 bounds];
  v27 = v25 + CGRectGetHeight(v31) - v17;
  v28 = [(SVSBaseViewController *)self bottomMarginConstraint];
  [v28 setConstant:v27];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100111FEC;
  v29[3] = &unk_100195AC0;
  v29[4] = self;
  [UIView animateWithDuration:v22 | 4 delay:v29 options:0 animations:v20 completion:0.0];
}

- (void)handleDismissButton:(id)a3
{
  v4 = a3;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [*(&self->_infoLabel + 1) setDisabled:1];
  [self->super.super._mainController ensureStoppedWithDismiss:1 reason:5];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = ProximityAutoFillAuthViewController;
  [(ProximityAutoFillAuthViewController *)&v6 viewDidDisappear:v3];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillShowNotification object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13.receiver = self;
  v13.super_class = ProximityAutoFillAuthViewController;
  [(SVSBaseViewController *)&v13 viewWillAppear:v3];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleKeyboardWillShow:" name:UIKeyboardWillShowNotification object:0];
  v6 = *(&self->_pinLabel1 + 1);
  v15[0] = *(&self->_pinEntryView + 1);
  v15[1] = v6;
  v7 = *(&self->_pinLabel3 + 1);
  v15[2] = *(&self->_pinLabel2 + 1);
  v15[3] = v7;
  v8 = [NSArray arrayWithObjects:v15 count:4];
  [*(&self->_infoLabel + 1) setDigits:v8];

  v9 = *(&self->_pinWell1 + 1);
  v14[0] = *(&self->_pinLabel4 + 1);
  v14[1] = v9;
  v10 = *(&self->_pinWell3 + 1);
  v14[2] = *(&self->_pinWell2 + 1);
  v14[3] = v10;
  v11 = [NSArray arrayWithObjects:v14 count:4];
  [*(&self->_infoLabel + 1) setWells:v11];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100112404;
  v12[3] = &unk_100195A98;
  v12[4] = self;
  [*(&self->_infoLabel + 1) setTextChangedHandler:v12];
  [(ProximityAutoFillAuthViewController *)self showWithFlags:0 throttleSeconds:0xFFFFFFFFLL];
  [*(&self->_infoLabel + 1) becomeFirstResponder];
}

@end