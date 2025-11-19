@interface BroadwayActivationDoneViewController
- (void)handleDoneButton:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BroadwayActivationDoneViewController

- (void)handleDoneButton:(id)a3
{
  v4 = a3;
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

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = BroadwayActivationDoneViewController;
  [(BroadwayActivationDoneViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BEFE8 <= 30 && (dword_1001BEFE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v19.receiver = self;
  v19.super_class = BroadwayActivationDoneViewController;
  [(SVSBaseViewController *)&v19 viewWillAppear:v3];
  v5 = [(SVSBaseViewController *)self containerView];
  [v5 setSwipeDismissible:1];

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

  v10 = [self->super._mainController physicalCard];
  v11 = [v10 nameOnCard];
  if (v11)
  {
    [*(&self->_subheadLabel + 1) setText:v11];
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
  v15 = [*(&self->_customerAgreementLabel + 1) titleLabel];
  [v15 setFont:v14];

  v16 = [*(&self->_customerAgreementLabel + 1) titleLabel];
  [v16 setAdjustsFontForContentSizeCategory:0];

  v17 = +[UIColor systemExtraLightGrayColor];
  [*(&self->_customerAgreementLabel + 1) setBackgroundColor:v17];

  if (_UISolariumEnabled())
  {
    v18 = +[UIButtonConfiguration _tintedGlassButtonConfiguration];
    [*(&self->_customerAgreementLabel + 1) setConfiguration:v18];
  }
}

@end