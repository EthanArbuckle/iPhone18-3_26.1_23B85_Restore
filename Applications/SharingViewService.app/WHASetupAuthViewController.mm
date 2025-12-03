@interface WHASetupAuthViewController
- (void)_handleKeyboardWillShow:(id)show;
- (void)_handlePINEntered:(id)entered;
- (void)handleDismissButton:(id)button;
- (void)showWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WHASetupAuthViewController

- (void)showWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setHidden:{1, *&seconds}];
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if ((flags & 0x10000) != 0)
  {
    v10 = [v6 localizedStringForKey:@"AUTH_INCORRECT" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_activityIndicatorView + 1) setText:v10];

    v11 = +[UIColor systemRedColor];
    [*(&self->_activityIndicatorView + 1) setTextColor:v11];

    [self->super._mainController setBadPINCount:{objc_msgSend(self->super._mainController, "badPINCount") + 1}];
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"AUTH_INSTRUCTIONS_APPLETV" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_activityIndicatorView + 1) setText:v8];

    v9 = +[UIColor blackColor];
    [*(&self->_activityIndicatorView + 1) setTextColor:v9];
  }

  v12 = *(&self->_infoLabel + 1);

  [v12 setText:&stru_100195CA8];
}

- (void)_handlePINEntered:(id)entered
{
  enteredCopy = entered;
  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setHidden:0];
  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) startAnimating];
  if ([self->super._mainController testMode])
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100130F48;
    handler[3] = &unk_100195AE8;
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v8 = enteredCopy;
    selfCopy = self;
    v5 = v7;
    dispatch_source_set_event_handler(v5, handler);
    SFDispatchTimerSet();
    dispatch_resume(v5);
  }

  else
  {
    [self->super._mainController _pairSetupTryPIN:enteredCopy];
  }
}

- (void)_handleKeyboardWillShow:(id)show
{
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100131238;
  v30[3] = &unk_100195AC0;
  v30[4] = self;
  showCopy = show;
  [UIView performWithoutAnimation:v30];
  userInfo = [showCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  view = [(WHASetupAuthViewController *)self view];
  [view convertRect:0 fromView:{v8, v10, v12, v14}];
  v17 = v16;

  v18 = [userInfo objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
  [v18 doubleValue];
  v20 = v19;

  v21 = [userInfo objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
  integerValue = [v21 integerValue];

  if (BYTE1(self->_pinWell4) != 1)
  {
    bottomMarginConstraint = [(SVSBaseViewController *)self bottomMarginConstraint];
    [bottomMarginConstraint constant];
    *(&self->_viewBottomConstantValid + 1) = v24;

    BYTE1(self->_pinWell4) = 1;
  }

  v25 = *(&self->_viewBottomConstantValid + 1);
  view2 = [(WHASetupAuthViewController *)self view];
  [view2 bounds];
  v27 = v25 + CGRectGetHeight(v31) - v17;
  bottomMarginConstraint2 = [(SVSBaseViewController *)self bottomMarginConstraint];
  [bottomMarginConstraint2 setConstant:v27];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001312D4;
  v29[3] = &unk_100195AC0;
  v29[4] = self;
  [UIView animateWithDuration:integerValue | 4 delay:v29 options:0 animations:v20 completion:0.0];
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [*(&self->_infoLabel + 1) setDisabled:1];
  [self->super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = WHASetupAuthViewController;
  [(WHASetupAuthViewController *)&v6 viewDidDisappear:disappearCopy];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillShowNotification object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BF408 <= 30 && (dword_1001BF408 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15.receiver = self;
  v15.super_class = WHASetupAuthViewController;
  [(SVSBaseViewController *)&v15 viewWillAppear:appearCopy];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleKeyboardWillShow:" name:UIKeyboardWillShowNotification object:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"AUTH_INSTRUCTIONS_APPLETV" value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->_activityIndicatorView + 1) setText:v7];

  v8 = *(&self->_pinLabel1 + 1);
  v17[0] = *(&self->_pinEntryView + 1);
  v17[1] = v8;
  v9 = *(&self->_pinLabel3 + 1);
  v17[2] = *(&self->_pinLabel2 + 1);
  v17[3] = v9;
  v10 = [NSArray arrayWithObjects:v17 count:4];
  [*(&self->_infoLabel + 1) setDigits:v10];

  v11 = *(&self->_pinWell1 + 1);
  v16[0] = *(&self->_pinLabel4 + 1);
  v16[1] = v11;
  v12 = *(&self->_pinWell3 + 1);
  v16[2] = *(&self->_pinWell2 + 1);
  v16[3] = v12;
  v13 = [NSArray arrayWithObjects:v16 count:4];
  [*(&self->_infoLabel + 1) setWells:v13];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013173C;
  v14[3] = &unk_100195A98;
  v14[4] = self;
  [*(&self->_infoLabel + 1) setTextChangedHandler:v14];
  [(WHASetupAuthViewController *)self showWithFlags:0 throttleSeconds:0xFFFFFFFFLL];
  [*(&self->_infoLabel + 1) becomeFirstResponder];
}

@end