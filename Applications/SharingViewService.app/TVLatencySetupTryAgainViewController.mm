@interface TVLatencySetupTryAgainViewController
- (void)handleDismissButton:(id)button;
- (void)handleTryAgainButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVLatencySetupTryAgainViewController

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController dismiss:5];
}

- (void)handleTryAgainButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  testFlags = [self->super.super._mainController testFlags];
  mainController = self->super.super._mainController;
  if (!testFlags)
  {
    latencySetupSession = [mainController latencySetupSession];
    [latencySetupSession tryAgain];

    mainController = self->super.super._mainController;
  }

  [mainController showProgressUI];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencySetupTryAgainViewController;
  [(TVLatencySetupTryAgainViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8.receiver = self;
  v8.super_class = TVLatencySetupTryAgainViewController;
  [(TVLatencySetupBaseViewController *)&v8 viewWillAppear:appearCopy];
  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];

  v6 = [UIImage systemImageNamed:@"circle.fill"];
  [*(&self->_error + 1) setImage:v6];

  v7 = [UIImage systemImageNamed:@"exclamationmark.circle"];
  [*(&self->_statusImageViewFill + 1) setImage:v7];
}

@end