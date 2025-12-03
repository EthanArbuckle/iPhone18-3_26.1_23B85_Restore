@interface ProximityAutoFillDoneViewController
- (void)handleDoneButtonPressed:(id)pressed;
- (void)handleReportButton:(id)button;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ProximityAutoFillDoneViewController

- (void)handleReportButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController fileRadar:*(&self->_titleLabel + 1)];
}

- (void)handleDoneButtonPressed:(id)pressed
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
  v30.receiver = self;
  v30.super_class = ProximityAutoFillDoneViewController;
  [(SVSBaseViewController *)&v30 viewWillAppear:appear];
  v4 = *(&self->_titleLabel + 1);
  if (v4)
  {
    code = [v4 code];
    *(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) = code == -6723;
    if (code != -6723)
    {
      v6 = *(&self->_titleLabel + 1) == 0;
      goto LABEL_7;
    }

LABEL_5:
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"PROX_AUTOFILL_CANCELED_DESCRIPTION" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_canceled + 1) setText:v8];

    [*(&self->_descriptionLabel + 1) setHidden:1];
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"PROX_AUTOFILL_CANCELED_TITLE";
LABEL_9:
    v18 = [v9 localizedStringForKey:v11 value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_reportBugButton + 1) setText:v18];
    goto LABEL_15;
  }

  if (*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1))
  {
    goto LABEL_5;
  }

  v6 = 1;
LABEL_7:
  v12 = +[NSBundle mainBundle];
  v13 = v12;
  if (v6)
  {
    v14 = [v12 localizedStringForKey:@"PROX_AUTOFILL_SUCCESS_DESCRIPTION_TV" value:&stru_100195CA8 table:@"Localizable"];
    [*(&self->_canceled + 1) setText:v14];

    v15 = [UIImage imageNamed:@"DoneCheck.png"];
    v16 = +[UIColor systemBlueColor];
    v17 = [v15 _flatImageWithColor:v16];
    [*(&self->_descriptionLabel + 1) setImage:v17];

    v9 = +[NSBundle mainBundle];
    v10 = v9;
    v11 = @"PROX_AUTOFILL_SUCCESS_TITLE";
    goto LABEL_9;
  }

  v10 = [v12 localizedStringForKey:@"PROX_AUTOFILL_FAILED_DESCRIPTION" value:&stru_100195CA8 table:@"Localizable"];

  if (IsAppleInternalBuild())
  {
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"PROX_AUTOFILL_FAILED_DESCRIPTION_FORMAT" value:&stru_100195CA8 table:@"Localizable"];

    localizedDescription = [*(&self->_titleLabel + 1) localizedDescription];
    v22 = localizedDescription;
    v23 = @"Unknown error";
    if (localizedDescription)
    {
      v23 = localizedDescription;
    }

    v24 = [NSString stringWithFormat:v20, v23];

    v10 = v24;
  }

  [*(&self->_canceled + 1) setText:v10];
  v25 = [UIImage imageNamed:@"AlertCircle.png"];
  v26 = +[UIColor systemRedColor];
  v27 = [v25 _flatImageWithColor:v26];
  [*(&self->_descriptionLabel + 1) setImage:v27];

  v18 = +[NSBundle mainBundle];
  v28 = [v18 localizedStringForKey:@"PROX_AUTOFILL_FAILED_TITLE" value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->_reportBugButton + 1) setText:v28];

LABEL_15:
  if (IsAppleInternalBuild())
  {
    prefHideTTR = [self->super.super._mainController prefHideTTR];
  }

  else
  {
    prefHideTTR = 1;
  }

  [*(&self->_imageView + 1) setHidden:prefHideTTR];
}

@end