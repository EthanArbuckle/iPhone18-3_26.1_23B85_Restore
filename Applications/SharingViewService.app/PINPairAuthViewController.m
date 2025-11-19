@interface PINPairAuthViewController
- (void)_handleKeyboardWillShow:(id)a3;
- (void)_handlePINEntered:(id)a3;
- (void)handleDismissButton:(id)a3;
- (void)showWithFlags:(unsigned int)a3 throttleSeconds:(int)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PINPairAuthViewController

- (void)_handlePINEntered:(id)a3
{
  v4 = a3;
  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setHidden:1];
  [*(&self->_pinWell4 + 1) setHidden:0];
  [*(&self->_pinWell4 + 1) startAnimating];
  if ([self->super._mainController testFlags])
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100108ECC;
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
    v5 = [self->super._mainController pairingSession];
    [v5 clientTryPIN:v4];
  }
}

- (void)_handleKeyboardWillShow:(id)a3
{
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001091E4;
  v30[3] = &unk_100195AC0;
  v30[4] = self;
  v4 = a3;
  [UIView performWithoutAnimation:v30];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(PINPairAuthViewController *)self view];
  [v15 convertRect:0 fromView:{v8, v10, v12, v14}];
  v17 = v16;

  v18 = [v5 objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v5 objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
  v22 = [v21 integerValue];

  if (BYTE1(self->_progressSpinner) != 1)
  {
    v23 = [(SVSBaseViewController *)self bottomMarginConstraint];
    [v23 constant];
    *(&self->_viewBottomConstantValid + 1) = v24;

    BYTE1(self->_progressSpinner) = 1;
  }

  v25 = *(&self->_viewBottomConstantValid + 1);
  v26 = [(PINPairAuthViewController *)self view];
  [v26 bounds];
  v27 = v25 + CGRectGetHeight(v31) - v17;
  v28 = [(SVSBaseViewController *)self bottomMarginConstraint];
  [v28 setConstant:v27];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100109280;
  v29[3] = &unk_100195AC0;
  v29[4] = self;
  [UIView animateWithDuration:v22 | 4 delay:v29 options:0 animations:v20 completion:0.0];
}

- (void)handleDismissButton:(id)a3
{
  v4 = a3;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [*(&self->_infoLabel + 1) setDisabled:1];
  [self->super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = PINPairAuthViewController;
  [(PINPairAuthViewController *)&v6 viewDidDisappear:v3];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillShowNotification object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEAD8 <= 30 && (dword_1001BEAD8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15.receiver = self;
  v15.super_class = PINPairAuthViewController;
  [(SVSBaseViewController *)&v15 viewWillAppear:v3];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleKeyboardWillShow:" name:UIKeyboardWillShowNotification object:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"AUTH_INSTRUCTIONS_APPLETV" value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setText:v7];

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
  v14[2] = sub_1001096E8;
  v14[3] = &unk_100195A98;
  v14[4] = self;
  [*(&self->_infoLabel + 1) setTextChangedHandler:v14];
  [(PINPairAuthViewController *)self showWithFlags:0 throttleSeconds:0xFFFFFFFFLL];
  [*(&self->_infoLabel + 1) becomeFirstResponder];
}

- (void)showWithFlags:(unsigned int)a3 throttleSeconds:(int)a4
{
  [*(&self->_pinWell4 + 1) setHidden:{1, *&a4}];
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if ((a3 & 0x10000) != 0)
  {
    v9 = [v6 localizedStringForKey:@"AUTH_INCORRECT" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setText:v9];

    +[UIColor systemRedColor];
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"AUTH_INSTRUCTIONS_APPLETV" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setText:v8];

    +[UIColor blackColor];
  }
  v10 = ;
  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setTextColor:v10];

  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setHidden:0];
  v11 = *(&self->_infoLabel + 1);

  [v11 setText:&stru_100195CA8];
}

@end