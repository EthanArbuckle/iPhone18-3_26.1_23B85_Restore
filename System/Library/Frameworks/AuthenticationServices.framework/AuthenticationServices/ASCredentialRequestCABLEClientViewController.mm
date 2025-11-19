@interface ASCredentialRequestCABLEClientViewController
- (ASCredentialRequestCABLEClientViewController)initWithMode:(int64_t)a3 serviceName:(id)a4 serviceType:(unint64_t)a5 destinationSiteForCrossSiteAssertion:(id)a6 cableAuthenticatorRequirement:(int64_t)a7 loginChoice:(id)a8 securityKeyLoginChoice:(id)a9 activity:(id)a10;
- (ASCredentialRequestCABLEClientViewController)initWithPresentationContext:(id)a3 loginChoice:(id)a4 activity:(id)a5;
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

- (ASCredentialRequestCABLEClientViewController)initWithPresentationContext:(id)a3 loginChoice:(id)a4 activity:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v8 isRegistrationRequest])
  {
    v11 = [v8 shouldUseFallbackPasskeyUI];
  }

  else
  {
    v11 = 2;
  }

  if ([v8 shouldAllowSecurityKeysFromCABLEView])
  {
    v12 = [v8 loginChoices];
    v13 = [v12 safari_firstObjectPassingTest:&__block_literal_global_22];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v8 serviceName];
  v15 = [v8 serviceType];
  v16 = [v8 destinationSiteForCrossSiteAssertion];
  v17 = -[ASCredentialRequestCABLEClientViewController initWithMode:serviceName:serviceType:destinationSiteForCrossSiteAssertion:cableAuthenticatorRequirement:loginChoice:securityKeyLoginChoice:activity:](self, "initWithMode:serviceName:serviceType:destinationSiteForCrossSiteAssertion:cableAuthenticatorRequirement:loginChoice:securityKeyLoginChoice:activity:", v11, v14, v15, v16, [v8 cableAuthenticatorRequirement], v10, v13, v9);

  return v17;
}

- (ASCredentialRequestCABLEClientViewController)initWithMode:(int64_t)a3 serviceName:(id)a4 serviceType:(unint64_t)a5 destinationSiteForCrossSiteAssertion:(id)a6 cableAuthenticatorRequirement:(int64_t)a7 loginChoice:(id)a8 securityKeyLoginChoice:(id)a9 activity:(id)a10
{
  v25 = a4;
  v24 = a6;
  v23 = a8;
  v16 = a9;
  v17 = a10;
  v26.receiver = self;
  v26.super_class = ASCredentialRequestCABLEClientViewController;
  v18 = [(ASCredentialRequestPaneViewController *)&v26 initRequiringTableView:0];
  v19 = v18;
  if (v18)
  {
    v18->_mode = a3;
    objc_storeStrong(&v18->_serviceName, a4);
    v19->_serviceType = a5;
    objc_storeStrong(&v19->_destinationSiteForCrossSiteAssertion, a6);
    v19->_cableAuthenticatorRequirement = a7;
    objc_storeStrong(&v19->_loginChoice, a8);
    objc_storeStrong(&v19->_securityKeyLoginChoice, a9);
    objc_storeStrong(&v19->_authorizationActivity, a10);
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
  v4 = [(ASCredentialRequestCABLEClientViewController *)self _titleText];
  v5 = [(ASCredentialRequestCABLEClientViewController *)self _subtitleText];
  v7 = [(ASCredentialRequestPaneHeaderConfiguration *)v3 initWithTitle:v4 subtitle:v5];

  v6 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [v6 addHeaderWithConfiguration:v7];
}

- (void)_setUpQRCodeView
{
  v28[5] = *MEMORY[0x1E69E9840];
  v3 = [_ASCABLEQRCodeView alloc];
  v4 = [(ASCredentialRequestCABLEClientViewController *)self _qrCodeMessage];
  v5 = [(_ASCABLEQRCodeView *)v3 initWithMessage:v4];

  [(_ASCABLEQRCodeView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:v5];
  v20 = MEMORY[0x1E696ACD8];
  v26 = [v6 topAnchor];
  v25 = [(_ASCABLEQRCodeView *)v5 topAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v28[0] = v24;
  v23 = [v6 leadingAnchor];
  v22 = [(_ASCABLEQRCodeView *)v5 leadingAnchor];
  v21 = [v23 constraintLessThanOrEqualToAnchor:v22];
  v28[1] = v21;
  v19 = [v6 bottomAnchor];
  v18 = [(_ASCABLEQRCodeView *)v5 bottomAnchor];
  v7 = [v19 constraintEqualToAnchor:v18];
  v28[2] = v7;
  v8 = [v6 trailingAnchor];
  v9 = [(_ASCABLEQRCodeView *)v5 trailingAnchor];
  v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9];
  v28[3] = v10;
  v11 = [v6 centerXAnchor];
  v12 = [(_ASCABLEQRCodeView *)v5 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v28[4] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:5];
  [v20 activateConstraints:v14];

  v15 = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  [v15 addArrangedSubview:v6];

  v16 = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  [(ASCredentialRequestCABLEClientViewController *)self _marginBelowQRCode];
  [v16 setCustomSpacing:v6 afterView:?];

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
    v6 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
    [(ASCredentialRequestCABLEClientViewController *)self _marginBelowSecurityKeyButton];
    [v6 addSubPane:v5 withCustomSpacingAfter:?];
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
  v3 = [MEMORY[0x1E698E020] isPad];
  result = 12.0;
  if (v3)
  {
    result = 8.0;
  }

  v5 = 48.0;
  if (v3)
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
  v2 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [v2 addEmptyViewWithSpacing:0.0];
}

- (id)_qrCodeMessage
{
  v2 = [(ASCABLELoginChoice *)self->_loginChoice qrCodeURL];
  v3 = [v2 absoluteString];

  return v3;
}

- (void)_useSecurityKeyButtonTapped
{
  v3 = [(ASCredentialRequestPaneViewController *)self delegate];
  v6 = v3;
  if (v3)
  {
    securityKeyLoginChoice = self->_securityKeyLoginChoice;
    if (securityKeyLoginChoice)
    {
      [v3 requestPaneViewController:self didRequestCredentialForLoginChoice:securityKeyLoginChoice authenticatedContext:0 completionHandler:&__block_literal_global_54_0];
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