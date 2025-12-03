@interface TVLatencySetupDoneViewController
- (void)handleDismissButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVLatencySetupDoneViewController

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencySetupDoneViewController;
  [(TVLatencySetupDoneViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14.receiver = self;
  v14.super_class = TVLatencySetupDoneViewController;
  [(TVLatencySetupBaseViewController *)&v14 viewWillAppear:appearCopy];
  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];

  if (*(&self->super._animationContainerView + 1))
  {
    v6 = +[NSBundle mainBundle];
    v7 = sub_1001279D0(v6, @"Localizable-TVLatency", @"TLV_FAILED_TITLE");
    [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v7];

    v8 = +[NSBundle mainBundle];
    v9 = sub_1001279D0(v8, @"Localizable-TVLatency", @"TLV_FAILED_SUBTITLE");
    [*(&self->_error + 1) setText:v9];

    v10 = +[UIColor systemRedColor];
    v11 = @"exclamationmark.circle";
  }

  else
  {
    v10 = +[UIColor systemGreenColor];
    v11 = @"checkmark.circle";
  }

  [*(&self->_infoLabel + 1) setTintColor:v10];

  v12 = [UIImage systemImageNamed:@"circle.fill"];
  [*(&self->_infoLabel + 1) setImage:v12];

  v13 = [UIImage systemImageNamed:v11];
  [*(&self->_statusImageViewFill + 1) setImage:v13];
}

@end