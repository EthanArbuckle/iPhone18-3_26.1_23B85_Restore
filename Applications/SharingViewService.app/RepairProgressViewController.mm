@interface RepairProgressViewController
- (void)handleDismissButton:(id)button;
- (void)handleProgressEvent:(unsigned int)event;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RepairProgressViewController

- (void)handleProgressEvent:(unsigned int)event
{
  if (event > 219)
  {
    if (event == 220)
    {
      v4 = @"SETTING_UP_ICLOUD";
    }

    else
    {
      if (event != 230)
      {
        return;
      }

      v4 = @"SETTING_UP_HOMEKIT";
    }
  }

  else if (event == 200)
  {
    v4 = @"SETTING_UP_WIFI";
  }

  else
  {
    if (event != 210)
    {
      return;
    }

    v4 = @"ACTIVATING";
  }

  v5 = sub_10012794C(@"Localizable", v4);
  [*(&self->_progressSpinner + 1) setText:v5];
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = RepairProgressViewController;
  [(RepairProgressViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = RepairProgressViewController;
  [(SVSBaseViewController *)&v6 viewWillAppear:appearCopy];
  productImage = [self->super._mainController productImage];
  [*(&self->_titleLabel + 1) setImage:productImage];

  [*(&self->_imageView + 1) setHidden:0];
  [*(&self->_progressView + 1) startAnimating];
  [*(&self->_progressSpinner + 1) setHidden:0];
}

@end