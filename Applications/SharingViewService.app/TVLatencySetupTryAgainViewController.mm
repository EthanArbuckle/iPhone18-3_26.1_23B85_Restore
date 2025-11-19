@interface TVLatencySetupTryAgainViewController
- (void)handleDismissButton:(id)a3;
- (void)handleTryAgainButton:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVLatencySetupTryAgainViewController

- (void)handleDismissButton:(id)a3
{
  v4 = a3;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController dismiss:5];
}

- (void)handleTryAgainButton:(id)a3
{
  v7 = a3;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = [self->super.super._mainController testFlags];
  mainController = self->super.super._mainController;
  if (!v4)
  {
    v6 = [mainController latencySetupSession];
    [v6 tryAgain];

    mainController = self->super.super._mainController;
  }

  [mainController showProgressUI];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencySetupTryAgainViewController;
  [(TVLatencySetupTryAgainViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8.receiver = self;
  v8.super_class = TVLatencySetupTryAgainViewController;
  [(TVLatencySetupBaseViewController *)&v8 viewWillAppear:v3];
  v5 = [(SVSBaseViewController *)self containerView];
  [v5 setSwipeDismissible:1];

  v6 = [UIImage systemImageNamed:@"circle.fill"];
  [*(&self->_error + 1) setImage:v6];

  v7 = [UIImage systemImageNamed:@"exclamationmark.circle"];
  [*(&self->_statusImageViewFill + 1) setImage:v7];
}

@end