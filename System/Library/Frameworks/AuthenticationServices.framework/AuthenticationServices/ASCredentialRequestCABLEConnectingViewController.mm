@interface ASCredentialRequestCABLEConnectingViewController
- (ASCredentialRequestCABLEConnectingViewController)init;
- (void)_setUpInformativeTextLabel;
- (void)_showInformativeText;
- (void)_startInformativeTextTimerIfNeeded;
- (void)viewDidLoad;
@end

@implementation ASCredentialRequestCABLEConnectingViewController

- (ASCredentialRequestCABLEConnectingViewController)init
{
  v3.receiver = self;
  v3.super_class = ASCredentialRequestCABLEConnectingViewController;
  return [(ASCredentialRequestPaneViewController *)&v3 initRequiringTableView:0];
}

- (void)viewDidLoad
{
  v31[2] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = ASCredentialRequestCABLEConnectingViewController;
  [(ASCredentialRequestPaneViewController *)&v29 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DC638]);
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v3;

  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  _connectingText = [(ASCredentialRequestCABLEConnectingViewController *)self _connectingText];
  [v5 setText:_connectingText];

  [v5 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC30]];
  v7 = +[ASViewServiceInterfaceUtilities headerTitleFont];
  [v5 setFont:v7];

  v8 = objc_alloc(MEMORY[0x1E69DCF90]);
  v31[0] = self->_activityIndicator;
  v31[1] = v5;
  v9 = v5;
  v27 = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v11 = [v8 initWithArrangedSubviews:v10];

  [v11 setAlignment:3];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setSpacing:8.0];
  view = [(ASCredentialRequestCABLEConnectingViewController *)self view];
  [view addSubview:v11];

  v22 = MEMORY[0x1E696ACD8];
  centerXAnchor = [v11 centerXAnchor];
  view2 = [(ASCredentialRequestCABLEConnectingViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
  v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v30[0] = v23;
  lastBaselineAnchor = [v9 lastBaselineAnchor];
  view3 = [(ASCredentialRequestCABLEConnectingViewController *)self view];
  centerYAnchor = [view3 centerYAnchor];
  v16 = [lastBaselineAnchor constraintEqualToAnchor:centerYAnchor];
  v30[1] = v16;
  paneHeaderStackView = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  heightAnchor = [paneHeaderStackView heightAnchor];
  v19 = [heightAnchor constraintGreaterThanOrEqualToConstant:300.0];
  v30[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  [v22 activateConstraints:v20];

  [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_startInformativeTextTimerIfNeeded
{
  if (!self->_informativeTextTimer && !self->_informativeTextLabel)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E695DFF0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86__ASCredentialRequestCABLEConnectingViewController__startInformativeTextTimerIfNeeded__block_invoke;
    v6[3] = &unk_1E7AF8B90;
    objc_copyWeak(&v7, &location);
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:5.0];
    informativeTextTimer = self->_informativeTextTimer;
    self->_informativeTextTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __86__ASCredentialRequestCABLEConnectingViewController__startInformativeTextTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[134];
    WeakRetained[134] = 0;
    v3 = WeakRetained;

    [v3 _showInformativeText];
    WeakRetained = v3;
  }
}

- (void)_showInformativeText
{
  [(ASCredentialRequestCABLEConnectingViewController *)self _setUpInformativeTextLabel];
  [(UILabel *)self->_informativeTextLabel setAlpha:0.0];
  view = [(ASCredentialRequestCABLEConnectingViewController *)self view];
  [view layoutIfNeeded];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__ASCredentialRequestCABLEConnectingViewController__showInformativeText__block_invoke;
  v4[3] = &unk_1E7AF7608;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:0.3];
}

- (void)_setUpInformativeTextLabel
{
  v31[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  informativeTextLabel = self->_informativeTextLabel;
  self->_informativeTextLabel = v3;

  _informativeText = [(ASCredentialRequestCABLEConnectingViewController *)self _informativeText];
  [(UILabel *)self->_informativeTextLabel setText:_informativeText];

  [(UILabel *)self->_informativeTextLabel setMaximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
  [(UILabel *)self->_informativeTextLabel setNumberOfLines:0];
  [(UILabel *)self->_informativeTextLabel setTextAlignment:1];
  [(UILabel *)self->_informativeTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_informativeTextLabel setTextColor:secondaryLabelColor];

  _informativeTextFont = [(ASCredentialRequestCABLEConnectingViewController *)self _informativeTextFont];
  [(UILabel *)self->_informativeTextLabel setFont:_informativeTextFont];

  view = [(ASCredentialRequestCABLEConnectingViewController *)self view];
  [view addSubview:self->_informativeTextLabel];

  view2 = [(ASCredentialRequestCABLEConnectingViewController *)self view];
  layoutMarginsGuide = [view2 layoutMarginsGuide];

  if ([MEMORY[0x1E698E020] isPad])
  {
    v11 = 8.0;
  }

  else
  {
    v11 = 0.0;
  }

  v23 = MEMORY[0x1E696ACD8];
  [(UILabel *)self->_informativeTextLabel leadingAnchor];
  v30 = v29 = layoutMarginsGuide;
  leadingAnchor = [layoutMarginsGuide leadingAnchor];
  v27 = [v30 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor multiplier:v11];
  v31[0] = v27;
  trailingAnchor = [layoutMarginsGuide trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_informativeTextLabel trailingAnchor];
  v24 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:v11];
  v31[1] = v24;
  view3 = [(ASCredentialRequestCABLEConnectingViewController *)self view];
  bottomAnchor = [view3 bottomAnchor];
  lastBaselineAnchor = [(UILabel *)self->_informativeTextLabel lastBaselineAnchor];
  v15 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:2.0];
  v31[2] = v15;
  view4 = [(ASCredentialRequestCABLEConnectingViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_informativeTextLabel lastBaselineAnchor];
  v20 = [bottomAnchor2 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.0];
  v31[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  [v23 activateConstraints:v21];

  v22 = *MEMORY[0x1E69E9840];
}

@end