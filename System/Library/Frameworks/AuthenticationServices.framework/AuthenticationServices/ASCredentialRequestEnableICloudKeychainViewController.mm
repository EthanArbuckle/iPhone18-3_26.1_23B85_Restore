@interface ASCredentialRequestEnableICloudKeychainViewController
- (ASCredentialRequestEnableICloudKeychainViewController)init;
- (ASCredentialRequestEnableICloudKeychainViewController)initWithCanKeychainBeEnabled:(BOOL)a3;
- (void)_turnOnICloudKeychain;
- (void)viewDidLoad;
@end

@implementation ASCredentialRequestEnableICloudKeychainViewController

- (ASCredentialRequestEnableICloudKeychainViewController)init
{
  v3 = [MEMORY[0x1E69C88B8] sharedMonitor];
  v4 = [v3 canKeychainSyncBeEnabled];

  return [(ASCredentialRequestEnableICloudKeychainViewController *)self initWithCanKeychainBeEnabled:v4];
}

- (ASCredentialRequestEnableICloudKeychainViewController)initWithCanKeychainBeEnabled:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ASCredentialRequestEnableICloudKeychainViewController;
  v4 = [(ASCredentialRequestPaneViewController *)&v8 initRequiringTableView:1];
  v5 = v4;
  if (v4)
  {
    v4->_canKeychainSyncBeEnabled = a3;
    v6 = v4;
  }

  return v5;
}

- (void)viewDidLoad
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = ASCredentialRequestEnableICloudKeychainViewController;
  [(ASCredentialRequestPaneViewController *)&v17 viewDidLoad];
  if (self->_canKeychainSyncBeEnabled)
  {
    v3 = _WBSLocalizedString();
    [MEMORY[0x1E69C8880] isAppleAccountBrandingEnabled];
    v4 = _WBSLocalizedString();
    v5 = [[ASCredentialRequestPaneHeaderConfiguration alloc] initWithTitle:v3 subtitle:v4];
  }

  else
  {
    v4 = _WBSLocalizedString();
    v5 = [ASCredentialRequestPaneHeaderConfiguration passwordManagerHeaderWithTitle:0 subtitle:v4];
  }

  v6 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [v6 addHeaderWithConfiguration:v5];

  if (self->_canKeychainSyncBeEnabled)
  {
    v7 = [ASCredentialRequestButtonContinue alloc];
    v8 = [(ASCredentialRequestButtonContinue *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v9 = _WBSLocalizedString();
    [(ASCredentialRequestButton *)v8 setButtonText:v9];

    [(ASCredentialRequestButton *)v8 addTarget:self action:sel__turnOnICloudKeychain];
    v10 = MEMORY[0x1E696ACD8];
    v11 = [(ASCredentialRequestButtonContinue *)v8 heightAnchor];
    +[ASViewServiceInterfaceUtilities continueButtonHeight];
    v12 = [v11 constraintEqualToConstant:?];
    v18[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v10 activateConstraints:v13];

    v14 = [(ASCredentialRequestPaneViewController *)self paneFooterStackView];
    [v14 addArrangedSubview:v8];

    v15 = [(ASCredentialRequestPaneViewController *)self footerPaneContext];
    [v15 addEmptyViewWithSpacing:3.40282347e38];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_turnOnICloudKeychain
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.KeychainSync"];
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v6 = *MEMORY[0x1E699F970];
  v7[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 openSensitiveURL:v2 withOptions:v4];

  v5 = *MEMORY[0x1E69E9840];
}

@end