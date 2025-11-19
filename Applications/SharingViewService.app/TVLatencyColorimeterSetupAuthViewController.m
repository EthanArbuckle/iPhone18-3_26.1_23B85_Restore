@interface TVLatencyColorimeterSetupAuthViewController
- (void)_handlePINEntered:(id)a3;
- (void)handleDismissButton:(id)a3;
- (void)showWithFlags:(unsigned int)a3 throttleSeconds:(int)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVLatencyColorimeterSetupAuthViewController

- (void)showWithFlags:(unsigned int)a3 throttleSeconds:(int)a4
{
  [*(&self->_pinWell4 + 1) setHidden:{1, *&a4}];
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if ((a3 & 0x10000) != 0)
  {
    v10 = [v6 localizedStringForKey:@"AUTH_INCORRECT" value:&stru_100195CA8 table:@"Localizable"];
    v9 = (&self->_titleLabel + 1);
    [*(&self->_titleLabel + 1) setText:v10];

    +[UIColor systemRedColor];
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"AUTH_INSTRUCTIONS_APPLETV" value:&stru_100195CA8 table:@"Localizable"];
    v9 = (&self->_titleLabel + 1);
    [*(&self->_titleLabel + 1) setText:v8];

    +[UIColor blackColor];
  }
  v11 = ;
  [*v9 setTextColor:v11];

  v12 = *(&self->_infoLabel + 1);

  [v12 setText:&stru_100195CA8];
}

- (void)_handlePINEntered:(id)a3
{
  v4 = a3;
  [*(&self->_pinWell4 + 1) setHidden:0];
  [*(&self->_pinWell4 + 1) startAnimating];
  v5 = [(SVSBaseViewController *)self mainController];
  v6 = [v5 testFlags];

  if (v6)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001073B8;
    handler[3] = &unk_100195AE8;
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v11 = v4;
    v12 = self;
    v7 = v10;
    dispatch_source_set_event_handler(v7, handler);
    SFDispatchTimerSet();
    dispatch_resume(v7);
  }

  else
  {
    v7 = [(SVSBaseViewController *)self mainController];
    v8 = [v7 colorCalibratorSetupSession];
    [v8 pairSetupTryPIN:v4];
  }
}

- (void)handleDismissButton:(id)a3
{
  v5 = a3;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [*(&self->_infoLabel + 1) setDisabled:1];
  v4 = [(SVSBaseViewController *)self mainController];
  [v4 dismiss:5];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencyColorimeterSetupAuthViewController;
  [(TVLatencyColorimeterSetupAuthViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14.receiver = self;
  v14.super_class = TVLatencyColorimeterSetupAuthViewController;
  [(SVSBaseViewController *)&v14 viewWillAppear:v3];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"AUTH_INSTRUCTIONS_APPLETV" value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->_titleLabel + 1) setText:v6];

  v7 = *(&self->_pinLabel1 + 1);
  v16[0] = *(&self->_pinEntryView + 1);
  v16[1] = v7;
  v8 = *(&self->_pinLabel3 + 1);
  v16[2] = *(&self->_pinLabel2 + 1);
  v16[3] = v8;
  v9 = [NSArray arrayWithObjects:v16 count:4];
  [*(&self->_infoLabel + 1) setDigits:v9];

  v10 = *(&self->_pinWell1 + 1);
  v15[0] = *(&self->_pinLabel4 + 1);
  v15[1] = v10;
  v11 = *(&self->_pinWell3 + 1);
  v15[2] = *(&self->_pinWell2 + 1);
  v15[3] = v11;
  v12 = [NSArray arrayWithObjects:v15 count:4];
  [*(&self->_infoLabel + 1) setWells:v12];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010780C;
  v13[3] = &unk_100195A98;
  v13[4] = self;
  [*(&self->_infoLabel + 1) setTextChangedHandler:v13];
  [(TVLatencyColorimeterSetupAuthViewController *)self showWithFlags:0 throttleSeconds:0xFFFFFFFFLL];
  [*(&self->_infoLabel + 1) becomeFirstResponder];
}

@end