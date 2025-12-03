@interface AMUIInlineAuthenticationViewController
- (AMAuthenticationHandling)authenticationHandler;
- (AMUIInlineAuthenticationViewController)initWithUnlockDestination:(id)destination;
- (AMUIInlineAuthenticationViewControllerDelegate)delegate;
- (BOOL)_shouldSkipBiometricPresentation;
- (BOOL)_wantsBioUnlockBlocked;
- (id)_unlockReason;
- (void)_handlePasscodeButtonAction;
- (void)_reset;
- (void)_setDateTimeLayerHidden:(BOOL)hidden;
- (void)_setUpBiometricAuthenticationTimeout;
- (void)dealloc;
- (void)passcodeLockViewStateChange:(id)change;
- (void)setDateProvider:(id)provider;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AMUIInlineAuthenticationViewController

- (AMUIInlineAuthenticationViewController)initWithUnlockDestination:(id)destination
{
  destinationCopy = destination;
  v9.receiver = self;
  v9.super_class = AMUIInlineAuthenticationViewController;
  v6 = [(AMUIInlineAuthenticationViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unlockDestination, destination);
  }

  return v7;
}

- (void)dealloc
{
  [(NSTimer *)self->_biometricAuthenticationTimer invalidate];
  delegate = [(AMUIInlineAuthenticationViewController *)self delegate];
  [delegate authenticationViewController:self didSetBiometricAuthenticationDisabled:0];

  v4.receiver = self;
  v4.super_class = AMUIInlineAuthenticationViewController;
  [(AMUIInlineAuthenticationViewController *)&v4 dealloc];
}

- (void)setDateProvider:(id)provider
{
  objc_storeStrong(&self->_dateProvider, provider);
  providerCopy = provider;
  [(AMUIDateTimeDataLayerViewController *)self->_dateTimeLayerViewController setDateProvider:self->_dateProvider];
}

- (void)viewDidLoad
{
  v55[3] = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = AMUIInlineAuthenticationViewController;
  [(AMUIInlineAuthenticationViewController *)&v54 viewDidLoad];
  val = [(AMUIInlineAuthenticationViewController *)self view];
  [val bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x277D26718] materialViewWithRecipe:53];
  materialView = self->_materialView;
  self->_materialView = v11;

  [(MTMaterialView *)self->_materialView setOverrideUserInterfaceStyle:2];
  [(MTMaterialView *)self->_materialView setFrame:*&v4, *&v6, *&v8, *&v10];
  [val addSubview:self->_materialView];
  passcodeLockViewForUsersCurrentStyle = [MEMORY[0x277D67D18] passcodeLockViewForUsersCurrentStyle];
  passcodeView = self->_passcodeView;
  self->_passcodeView = passcodeLockViewForUsersCurrentStyle;

  [(SBUIPasscodeLockView *)self->_passcodeView setDelegate:self];
  [(SBUIPasscodeLockView *)self->_passcodeView setUnlockDestination:self->_unlockDestination];
  [(SBUIPasscodeLockView *)self->_passcodeView setShowsCancelButton:0];
  [(SBUIPasscodeLockView *)self->_passcodeView setShowsEmergencyCallButton:0];
  [(SBUIPasscodeLockView *)self->_passcodeView setUsesBiometricPresentation:[(AMUIInlineAuthenticationViewController *)self _shouldSkipBiometricPresentation]^ 1];
  [(SBUIPasscodeLockView *)self->_passcodeView setShowsProudLock:SBUIIsSystemApertureEnabled() ^ 1];
  [(SBUIPasscodeLockView *)self->_passcodeView setShowsLockIconForFaceID:1];
  v15 = self->_passcodeView;
  _unlockReason = [(AMUIInlineAuthenticationViewController *)self _unlockReason];
  [(SBUIPasscodeLockView *)v15 setOverridePasscodeButtonTitle:_unlockReason];

  [(SBUIPasscodeLockView *)self->_passcodeView setAlwaysShowPasscodeButtonForFaceIDMatchFailure:1];
  v17 = self->_passcodeView;
  _unlockReason2 = [(AMUIInlineAuthenticationViewController *)self _unlockReason];
  [(SBUIPasscodeLockView *)v17 setOverrideFaceIDReason:_unlockReason2];

  v19 = self->_passcodeView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SBUIPasscodeLockView *)v19 setCustomBackgroundColor:clearColor];

  [val addSubview:self->_passcodeView];
  if (([(SBUIPasscodeLockView *)self->_passcodeView canPeformBiometricAuthentication]& 1) == 0)
  {
    [(SBUIPasscodeLockView *)self->_passcodeView setAlpha:0.0];
    [(SBUIPasscodeLockView *)self->_passcodeView setPasscodeLockViewState:0 animated:0];
    v21 = [AMUIPasscodeButton alloc];
    v22 = [(AMUIPasscodeButton *)v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    passcodeButton = self->_passcodeButton;
    self->_passcodeButton = v22;

    v24 = self->_passcodeButton;
    v25 = MEMORY[0x277D74300];
    v26 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:0x8000 options:1];
    v27 = [v25 fontWithDescriptor:v26 size:0.0];
    [(AMUIPasscodeButton *)v24 setFont:v27];

    v28 = self->_passcodeButton;
    _unlockReason3 = [(AMUIInlineAuthenticationViewController *)self _unlockReason];
    [(AMUIPasscodeButton *)v28 setTitle:_unlockReason3];

    [(AMUIPasscodeButton *)self->_passcodeButton addTarget:self action:sel__handlePasscodeButtonAction forControlEvents:64];
    [(AMUIPasscodeButton *)self->_passcodeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [val addSubview:self->_passcodeButton];
    widthAnchor = [(AMUIPasscodeButton *)self->_passcodeButton widthAnchor];
    v31 = [widthAnchor constraintEqualToConstant:225.0];

    LODWORD(v32) = 1132068864;
    [v31 setPriority:v32];
    v46 = MEMORY[0x277CCAAD0];
    centerYAnchor = [(AMUIPasscodeButton *)self->_passcodeButton centerYAnchor];
    centerYAnchor2 = [val centerYAnchor];
    v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v55[0] = v35;
    centerXAnchor = [(AMUIPasscodeButton *)self->_passcodeButton centerXAnchor];
    centerXAnchor2 = [val centerXAnchor];
    v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v55[1] = v38;
    v55[2] = v31;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
    [v46 activateConstraints:v39];
  }

  v40 = objc_alloc_init(AMUIDateTimeDataLayerViewController);
  dateTimeLayerViewController = self->_dateTimeLayerViewController;
  self->_dateTimeLayerViewController = v40;

  [(AMUIDateTimeDataLayerViewController *)self->_dateTimeLayerViewController setChromeOrientationPolicy:2];
  [(AMUIDateTimeDataLayerViewController *)self->_dateTimeLayerViewController setDateProvider:self->_dateProvider];
  view = [(AMUIDateTimeDataLayerViewController *)self->_dateTimeLayerViewController view];
  objc_initWeak(&location, view);

  objc_initWeak(&from, val);
  v43 = self->_dateTimeLayerViewController;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __53__AMUIInlineAuthenticationViewController_viewDidLoad__block_invoke;
  v48[3] = &unk_278C76400;
  objc_copyWeak(&v50, &location);
  objc_copyWeak(v51, &from);
  v51[1] = v4;
  v51[2] = v6;
  v51[3] = v8;
  v51[4] = v10;
  v44 = val;
  v49 = v44;
  [(AMUIInlineAuthenticationViewController *)self bs_addChildViewController:v43 animated:0 transitionBlock:v48];
  [v44 setNeedsUpdateConstraints];
  [(AMUIInlineAuthenticationViewController *)self _reset];
  [(SBUIPasscodeLockView *)self->_passcodeView becomeFirstResponder];

  objc_destroyWeak(v51);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v45 = *MEMORY[0x277D85DE8];
}

void __53__AMUIInlineAuthenticationViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && v2)
  {
    [WeakRetained setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    [WeakRetained setAutoresizingMask:18];
    [*(a1 + 32) bringSubviewToFront:WeakRetained];
  }
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = AMUIInlineAuthenticationViewController;
  [(AMUIInlineAuthenticationViewController *)&v12 viewDidLayoutSubviews];
  view = [(AMUIInlineAuthenticationViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(MTMaterialView *)self->_materialView setFrame:v5, v7, v9, v11];
  [(SBUIPasscodeLockView *)self->_passcodeView setFrame:v5, v7, v9, v11];
}

- (void)passcodeLockViewStateChange:(id)change
{
  v4 = [change passcodeLockViewState] == 1;
  delegate = [(AMUIInlineAuthenticationViewController *)self delegate];
  [delegate authenticationViewController:self setDidSetPasscodeVisible:v4];

  [(SBUIPasscodeLockView *)self->_passcodeView setShowsCancelButton:v4];

  [(AMUIInlineAuthenticationViewController *)self _setDateTimeLayerHidden:1];
}

void __69__AMUIInlineAuthenticationViewController__attemptUnlockForBioUnlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) delegate];
  [v4 authenticationViewController:*(a1 + 32) didAuthenticateWithSuccess:a2];
}

- (void)_handlePasscodeButtonAction
{
  [(AMUIInlineAuthenticationViewController *)self _setPasscodeVisible:1];
  [(SBUIPasscodeLockView *)self->_passcodeView setShowsCancelButton:1];

  [(AMUIInlineAuthenticationViewController *)self _setBiometricAuthenticationDisabled:0];
}

void __62__AMUIInlineAuthenticationViewController__setPasscodeVisible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[126];
    v4 = *(a1 + 40) ? 0.0 : 1.0;
    [v3 setAlpha:v4];
    v5 = *(a1 + 40) ? 1.0 : 0.0;
    [v6[125] setAlpha:v5];
    WeakRetained = v6;
    if (*(a1 + 40) == 1)
    {
      [v6[125] setPasscodeLockViewState:1 animated:1];
      WeakRetained = v6;
    }
  }
}

- (void)_setDateTimeLayerHidden:(BOOL)hidden
{
  view = [(AMUIDateTimeDataLayerViewController *)self->_dateTimeLayerViewController view];
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__AMUIInlineAuthenticationViewController__setDateTimeLayerHidden___block_invoke;
  v7[3] = &unk_278C76298;
  v8 = view;
  hiddenCopy = hidden;
  v6 = view;
  [v5 animateWithDuration:0 delay:v7 options:0 animations:0.3 completion:0.0];
}

uint64_t __66__AMUIInlineAuthenticationViewController__setDateTimeLayerHidden___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 1.0;
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v2];
}

- (void)_reset
{
  _wantsBioUnlockBlocked = [(AMUIInlineAuthenticationViewController *)self _wantsBioUnlockBlocked];
  canPeformBiometricAuthentication = [(SBUIPasscodeLockView *)self->_passcodeView canPeformBiometricAuthentication];
  [(AMUIInlineAuthenticationViewController *)self _setBiometricAuthenticationDisabled:_wantsBioUnlockBlocked];
  [(SBUIPasscodeLockView *)self->_passcodeView setPasscodeLockViewState:0 animated:1];
  [(SBUIPasscodeLockView *)self->_passcodeView setShowsProudLock:0];
  [(SBUIPasscodeLockView *)self->_passcodeView reset];
  [(AMUIInlineAuthenticationViewController *)self _setDateTimeLayerHidden:0];
  if ((canPeformBiometricAuthentication & 1) == 0)
  {

    [(AMUIInlineAuthenticationViewController *)self _setPasscodeVisible:0];
  }
}

- (id)_unlockReason
{
  v3 = MEMORY[0x277CCACA8];
  v4 = AMUIAmbientUIFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"INLINE_AUTH_REASON" value:&stru_28518E9B8 table:0];
  v6 = [v3 stringWithFormat:v5, self->_unlockDestination];

  return v6;
}

- (BOOL)_shouldSkipBiometricPresentation
{
  v3 = MGGetBoolAnswer();
  v4 = MGGetBoolAnswer();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return 1;
  }

  return [(AMUIInlineAuthenticationViewController *)self _wantsBioUnlockBlocked];
}

- (BOOL)_wantsBioUnlockBlocked
{
  selfCopy = self;
  delegate = [(AMUIInlineAuthenticationViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate authenticationViewControllerWantsBiometricAuthenticationBlocked:selfCopy];

  return selfCopy;
}

- (void)_setUpBiometricAuthenticationTimeout
{
  biometricAuthenticationTimer = self->_biometricAuthenticationTimer;
  if (biometricAuthenticationTimer)
  {
    [(NSTimer *)biometricAuthenticationTimer invalidate];
    v4 = self->_biometricAuthenticationTimer;
    self->_biometricAuthenticationTimer = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__AMUIInlineAuthenticationViewController__setUpBiometricAuthenticationTimeout__block_invoke;
  v7[3] = &unk_278C76428;
  v7[4] = self;
  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v7 block:20.0];
  v6 = self->_biometricAuthenticationTimer;
  self->_biometricAuthenticationTimer = v5;
}

- (AMUIInlineAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AMAuthenticationHandling)authenticationHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticationHandler);

  return WeakRetained;
}

@end