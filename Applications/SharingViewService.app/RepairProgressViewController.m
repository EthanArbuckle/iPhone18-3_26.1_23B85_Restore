@interface RepairProgressViewController
- (void)handleDismissButton:(id)a3;
- (void)handleProgressEvent:(unsigned int)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RepairProgressViewController

- (void)handleProgressEvent:(unsigned int)a3
{
  if (a3 > 219)
  {
    if (a3 == 220)
    {
      v4 = @"SETTING_UP_ICLOUD";
    }

    else
    {
      if (a3 != 230)
      {
        return;
      }

      v4 = @"SETTING_UP_HOMEKIT";
    }
  }

  else if (a3 == 200)
  {
    v4 = @"SETTING_UP_WIFI";
  }

  else
  {
    if (a3 != 210)
    {
      return;
    }

    v4 = @"ACTIVATING";
  }

  v5 = sub_10012794C(@"Localizable", v4);
  [*(&self->_progressSpinner + 1) setText:v5];
}

- (void)handleDismissButton:(id)a3
{
  v4 = a3;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = RepairProgressViewController;
  [(RepairProgressViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = RepairProgressViewController;
  [(SVSBaseViewController *)&v6 viewWillAppear:v3];
  v5 = [self->super._mainController productImage];
  [*(&self->_titleLabel + 1) setImage:v5];

  [*(&self->_imageView + 1) setHidden:0];
  [*(&self->_progressView + 1) startAnimating];
  [*(&self->_progressSpinner + 1) setHidden:0];
}

@end