@interface BroadwayActivationFailedViewController
- (void)handleDismissButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BroadwayActivationFailedViewController

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = BroadwayActivationFailedViewController;
  [(BroadwayActivationFailedViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v19.receiver = self;
  v19.super_class = BroadwayActivationFailedViewController;
  [(SVSBaseViewController *)&v19 viewWillAppear:appearCopy];
  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];

  v6 = SFFontForTextStyleWithAdditionalSymbolicTraits();
  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setFont:v6];

  [*(&self->super._didReactivateContainerViewAfterLayingOut + 1) setAdjustsFontForContentSizeCategory:0];
  v7 = SFFontForTextStyleWithAdditionalSymbolicTraits();
  [*(&self->_titleLabel + 1) setFont:v7];

  [*(&self->_titleLabel + 1) setAdjustsFontForContentSizeCategory:0];
  v8 = [UIFont systemFontOfSize:kCTFontUIFontDesignRounded weight:8.0 design:UIFontWeightMedium];
  [*(&self->_subheadLabel + 1) setFont:v8];

  [*(&self->_subheadLabel + 1) setAdjustsFontForContentSizeCategory:0];
  v9 = [UIColor colorWithWhite:0.54 alpha:1.0];
  [*(&self->_subheadLabel + 1) setTextColor:v9];

  physicalCard = [self->super._mainController physicalCard];
  nameOnCard = [physicalCard nameOnCard];
  if (nameOnCard)
  {
    [*(&self->_subheadLabel + 1) setText:nameOnCard];
  }

  else
  {
    v12 = objc_opt_new();
    [*(&self->_subheadLabel + 1) setText:v12];
  }

  if (_UISolariumEnabled())
  {
    v13 = +[UIButtonConfiguration _tintedGlassButtonConfiguration];
    [*(&self->_cardNameLabel + 1) setConfiguration:v13];
  }

  failureResult = [(BroadwayActivationFailedViewController *)self failureResult];
  v15 = @"BROADWAY_ERROR_SERVICES_UNAVAILABLE";
  if (failureResult == 7)
  {
    v15 = @"BROADWAY_ERROR_INCORRECT_ACTIVATION_CODE";
  }

  if (failureResult == 5)
  {
    v16 = @"BROADWAY_ERROR_NOT_YET_SHIPPED";
  }

  else
  {
    v16 = v15;
  }

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:v16 value:&stru_100195CA8 table:@"Localizable"];
  [*(&self->_titleLabel + 1) setText:v18];
}

@end