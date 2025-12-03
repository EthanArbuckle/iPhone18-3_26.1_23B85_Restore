@interface BroadwayActivationDoneViewController
- (void)handleDoneButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BroadwayActivationDoneViewController

- (void)handleDoneButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BEFE8 <= 30)
  {
    if (dword_1001BEFE8 != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  [self->super._mainController dismiss:9 completion:&stru_100195630];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = BroadwayActivationDoneViewController;
  [(BroadwayActivationDoneViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v19.receiver = self;
  v19.super_class = BroadwayActivationDoneViewController;
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

  v13 = SFFontForTextStyleWithAdditionalSymbolicTraits();
  [*(&self->_cardNameLabel + 1) setFont:v13];

  [*(&self->_cardNameLabel + 1) setAdjustsFontForContentSizeCategory:0];
  v14 = SFFontForTextStyleWithAdditionalSymbolicTraits();
  titleLabel = [*(&self->_customerAgreementLabel + 1) titleLabel];
  [titleLabel setFont:v14];

  titleLabel2 = [*(&self->_customerAgreementLabel + 1) titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:0];

  v17 = +[UIColor systemExtraLightGrayColor];
  [*(&self->_customerAgreementLabel + 1) setBackgroundColor:v17];

  if (_UISolariumEnabled())
  {
    v18 = +[UIButtonConfiguration _tintedGlassButtonConfiguration];
    [*(&self->_customerAgreementLabel + 1) setConfiguration:v18];
  }
}

@end