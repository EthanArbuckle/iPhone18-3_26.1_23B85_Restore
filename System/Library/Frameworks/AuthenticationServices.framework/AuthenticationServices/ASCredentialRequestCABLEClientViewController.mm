@interface ASCredentialRequestCABLEClientViewController
- (ASCredentialRequestCABLEClientViewController)initWithMode:(int64_t)mode serviceName:(id)name serviceType:(unint64_t)type destinationSiteForCrossSiteAssertion:(id)assertion cableAuthenticatorRequirement:(int64_t)requirement loginChoice:(id)choice securityKeyLoginChoice:(id)loginChoice activity:(id)self0;
- (ASCredentialRequestCABLEClientViewController)initWithPresentationContext:(id)context loginChoice:(id)choice activity:(id)activity;
- (double)_marginBelowQRCode;
- (id)_qrCodeMessage;
- (id)_subtitleText;
- (void)_addBelowQRCodeSpacerView;
- (void)_setUpQRCodeView;
- (void)_setUpSecurityKeyButtonViewIfNeeded;
- (void)_setUpTitleView;
- (void)_useSecurityKeyButtonTapped;
- (void)viewDidLoad;
@end

@implementation ASCredentialRequestCABLEClientViewController

- (ASCredentialRequestCABLEClientViewController)initWithPresentationContext:(id)context loginChoice:(id)choice activity:(id)activity
{
  contextCopy = context;
  activityCopy = activity;
  choiceCopy = choice;
  if ([contextCopy isRegistrationRequest])
  {
    shouldUseFallbackPasskeyUI = [contextCopy shouldUseFallbackPasskeyUI];
  }

  else
  {
    shouldUseFallbackPasskeyUI = 2;
  }

  if ([contextCopy shouldAllowSecurityKeysFromCABLEView])
  {
    loginChoices = [contextCopy loginChoices];
    v13 = [loginChoices safari_firstObjectPassingTest:&__block_literal_global_22];
  }

  else
  {
    v13 = 0;
  }

  serviceName = [contextCopy serviceName];
  serviceType = [contextCopy serviceType];
  destinationSiteForCrossSiteAssertion = [contextCopy destinationSiteForCrossSiteAssertion];
  v17 = -[ASCredentialRequestCABLEClientViewController initWithMode:serviceName:serviceType:destinationSiteForCrossSiteAssertion:cableAuthenticatorRequirement:loginChoice:securityKeyLoginChoice:activity:](self, "initWithMode:serviceName:serviceType:destinationSiteForCrossSiteAssertion:cableAuthenticatorRequirement:loginChoice:securityKeyLoginChoice:activity:", shouldUseFallbackPasskeyUI, serviceName, serviceType, destinationSiteForCrossSiteAssertion, [contextCopy cableAuthenticatorRequirement], choiceCopy, v13, activityCopy);

  return v17;
}

- (ASCredentialRequestCABLEClientViewController)initWithMode:(int64_t)mode serviceName:(id)name serviceType:(unint64_t)type destinationSiteForCrossSiteAssertion:(id)assertion cableAuthenticatorRequirement:(int64_t)requirement loginChoice:(id)choice securityKeyLoginChoice:(id)loginChoice activity:(id)self0
{
  nameCopy = name;
  assertionCopy = assertion;
  choiceCopy = choice;
  loginChoiceCopy = loginChoice;
  activityCopy = activity;
  v26.receiver = self;
  v26.super_class = ASCredentialRequestCABLEClientViewController;
  v18 = [(ASCredentialRequestPaneViewController *)&v26 initRequiringTableView:0];
  v19 = v18;
  if (v18)
  {
    v18->_mode = mode;
    objc_storeStrong(&v18->_serviceName, name);
    v19->_serviceType = type;
    objc_storeStrong(&v19->_destinationSiteForCrossSiteAssertion, assertion);
    v19->_cableAuthenticatorRequirement = requirement;
    objc_storeStrong(&v19->_loginChoice, choice);
    objc_storeStrong(&v19->_securityKeyLoginChoice, loginChoice);
    objc_storeStrong(&v19->_authorizationActivity, activity);
    v20 = v19;
  }

  return v19;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ASCredentialRequestCABLEClientViewController;
  [(ASCredentialRequestPaneViewController *)&v3 viewDidLoad];
  [(ASCredentialRequestCABLEClientViewController *)self _setUpTitleView];
  [(ASCredentialRequestCABLEClientViewController *)self _setUpQRCodeView];
  [(ASCredentialRequestCABLEClientViewController *)self _setUpSecurityKeyButtonViewIfNeeded];
  [(ASCredentialRequestCABLEClientViewController *)self _addBelowQRCodeSpacerView];
  [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
}

- (void)_setUpTitleView
{
  v3 = [ASCredentialRequestPaneHeaderConfiguration alloc];
  _titleText = [(ASCredentialRequestCABLEClientViewController *)self _titleText];
  _subtitleText = [(ASCredentialRequestCABLEClientViewController *)self _subtitleText];
  v7 = [(ASCredentialRequestPaneHeaderConfiguration *)v3 initWithTitle:_titleText subtitle:_subtitleText];

  headerPaneContext = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [headerPaneContext addHeaderWithConfiguration:v7];
}

- (void)_setUpQRCodeView
{
  v28[5] = *MEMORY[0x1E69E9840];
  v3 = [_ASCABLEQRCodeView alloc];
  _qrCodeMessage = [(ASCredentialRequestCABLEClientViewController *)self _qrCodeMessage];
  v5 = [(_ASCABLEQRCodeView *)v3 initWithMessage:_qrCodeMessage];

  [(_ASCABLEQRCodeView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:v5];
  v20 = MEMORY[0x1E696ACD8];
  topAnchor = [v6 topAnchor];
  topAnchor2 = [(_ASCABLEQRCodeView *)v5 topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[0] = v24;
  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [(_ASCABLEQRCodeView *)v5 leadingAnchor];
  v21 = [leadingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor2];
  v28[1] = v21;
  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [(_ASCABLEQRCodeView *)v5 bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v28[2] = v7;
  trailingAnchor = [v6 trailingAnchor];
  trailingAnchor2 = [(_ASCABLEQRCodeView *)v5 trailingAnchor];
  v10 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
  v28[3] = v10;
  centerXAnchor = [v6 centerXAnchor];
  centerXAnchor2 = [(_ASCABLEQRCodeView *)v5 centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v28[4] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:5];
  [v20 activateConstraints:v14];

  paneHeaderStackView = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  [paneHeaderStackView addArrangedSubview:v6];

  paneHeaderStackView2 = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  [(ASCredentialRequestCABLEClientViewController *)self _marginBelowQRCode];
  [paneHeaderStackView2 setCustomSpacing:v6 afterView:?];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_setUpSecurityKeyButtonViewIfNeeded
{
  if (self->_securityKeyLoginChoice)
  {
    v3 = _WBSLocalizedString();
    v7 = [ASCredentialRequestSecondaryButton buttonWithTitle:v3 target:self action:sel__useSecurityKeyButtonTapped];

    LODWORD(v4) = 1148846080;
    [v7 setContentCompressionResistancePriority:1 forAxis:v4];
    v5 = [[ASCredentialRequestSubPane alloc] initWithView:v7];
    headerPaneContext = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
    [(ASCredentialRequestCABLEClientViewController *)self _marginBelowSecurityKeyButton];
    [headerPaneContext addSubPane:v5 withCustomSpacingAfter:?];
  }
}

- (id)_subtitleText
{
  mode = self->_mode;
  if (!mode)
  {
    serviceType = self->_serviceType;
    if (serviceType == 1)
    {
      v5 = MEMORY[0x1E696AEC0];
    }

    else
    {
      if (serviceType)
      {
        goto LABEL_8;
      }

      v5 = MEMORY[0x1E696AEC0];
    }

LABEL_15:
    v8 = _WBSLocalizedString();
    [v5 localizedStringWithFormat:v8, self->_serviceName, v11];
    goto LABEL_16;
  }

  if (mode != 2)
  {
    if (mode != 1)
    {
      goto LABEL_17;
    }

    v5 = MEMORY[0x1E696AEC0];
    goto LABEL_15;
  }

LABEL_8:
  if (![(NSString *)self->_destinationSiteForCrossSiteAssertion length])
  {
    v9 = self->_serviceType;
    if (v9 == 1)
    {
      v5 = MEMORY[0x1E696AEC0];
    }

    else
    {
      if (v9)
      {
        goto LABEL_17;
      }

      v5 = MEMORY[0x1E696AEC0];
    }

    goto LABEL_15;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = _WBSLocalizedString();
  [v7 localizedStringWithFormat:v8, self->_destinationSiteForCrossSiteAssertion, self->_serviceName];
  v2 = LABEL_16:;

LABEL_17:

  return v2;
}

- (double)_marginBelowQRCode
{
  securityKeyLoginChoice = self->_securityKeyLoginChoice;
  isPad = [MEMORY[0x1E698E020] isPad];
  result = 12.0;
  if (isPad)
  {
    result = 8.0;
  }

  v5 = 48.0;
  if (isPad)
  {
    v5 = 32.0;
  }

  if (!securityKeyLoginChoice)
  {
    return v5;
  }

  return result;
}

- (void)_addBelowQRCodeSpacerView
{
  headerPaneContext = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [headerPaneContext addEmptyViewWithSpacing:0.0];
}

- (id)_qrCodeMessage
{
  qrCodeURL = [(ASCABLELoginChoice *)self->_loginChoice qrCodeURL];
  absoluteString = [qrCodeURL absoluteString];

  return absoluteString;
}

- (void)_useSecurityKeyButtonTapped
{
  delegate = [(ASCredentialRequestPaneViewController *)self delegate];
  v6 = delegate;
  if (delegate)
  {
    securityKeyLoginChoice = self->_securityKeyLoginChoice;
    if (securityKeyLoginChoice)
    {
      [delegate requestPaneViewController:self didRequestCredentialForLoginChoice:securityKeyLoginChoice authenticatedContext:0 completionHandler:&__block_literal_global_54_0];
    }

    else
    {
      os_activity_apply(self->_authorizationActivity, &__block_literal_global_49);
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698DF70] code:1 userInfo:0];
      [v6 requestPaneViewController:self dismissWithCredential:0 error:v5];
    }
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_46);
  }
}

void __75__ASCredentialRequestCABLEClientViewController__useSecurityKeyButtonTapped__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __75__ASCredentialRequestCABLEClientViewController__useSecurityKeyButtonTapped__block_invoke_cold_1(v0);
  }
}

void __75__ASCredentialRequestCABLEClientViewController__useSecurityKeyButtonTapped__block_invoke_47()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __75__ASCredentialRequestCABLEClientViewController__useSecurityKeyButtonTapped__block_invoke_47_cold_1(v0);
  }
}

@end