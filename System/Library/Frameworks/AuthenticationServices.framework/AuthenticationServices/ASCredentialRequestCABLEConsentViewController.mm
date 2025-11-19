@interface ASCredentialRequestCABLEConsentViewController
- (ASCredentialRequestCABLEConsentViewController)initWithPasskeyURLType:(int64_t)a3;
- (ASCredentialRequestCABLEConsentViewController)initWithPresentationContext:(id)a3;
- (id)_subtitleText;
- (id)_titleText;
- (void)_continueButtonPressed;
- (void)_setUpContinueButton;
- (void)_setUpHeader;
- (void)viewDidLoad;
@end

@implementation ASCredentialRequestCABLEConsentViewController

- (ASCredentialRequestCABLEConsentViewController)initWithPresentationContext:(id)a3
{
  v4 = [a3 _passkeyURLType];

  return [(ASCredentialRequestCABLEConsentViewController *)self initWithPasskeyURLType:v4];
}

- (ASCredentialRequestCABLEConsentViewController)initWithPasskeyURLType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = ASCredentialRequestCABLEConsentViewController;
  v4 = [(ASCredentialRequestPaneViewController *)&v8 initRequiringTableView:1];
  v5 = v4;
  if (v4)
  {
    v4->_passkeyURLType = a3;
    v6 = v4;
  }

  return v5;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ASCredentialRequestCABLEConsentViewController;
  [(ASCredentialRequestPaneViewController *)&v5 viewDidLoad];
  v3 = [(ASCredentialRequestPaneViewController *)self tableView];
  [v3 setSeparatorStyle:0];

  v4 = [(ASCredentialRequestPaneViewController *)self tableView];
  [v4 setDataSource:self];

  [(ASCredentialRequestCABLEConsentViewController *)self _setUpHeader];
  [(ASCredentialRequestCABLEConsentViewController *)self _setUpContinueButton];
  [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
}

- (void)_setUpHeader
{
  v3 = [(ASCredentialRequestCABLEConsentViewController *)self _titleText];
  v4 = [(ASCredentialRequestCABLEConsentViewController *)self _subtitleText];
  v6 = [ASCredentialRequestPaneHeaderConfiguration passwordManagerHeaderWithTitle:v3 subtitle:v4];

  v5 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [v5 addHeaderWithConfiguration:v6];
}

- (void)_setUpContinueButton
{
  v7 = objc_alloc_init(ASCredentialRequestButtonContinue);
  v3 = _WBSLocalizedString();
  [(ASCredentialRequestButton *)v7 setButtonText:v3];

  [(ASCredentialRequestButton *)v7 addTarget:self action:sel__continueButtonPressed];
  v4 = [(ASCredentialRequestPaneViewController *)self paneFooterStackView];
  [v4 addArrangedSubview:v7];

  v5 = [(ASCredentialRequestButtonContinue *)v7 heightAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonHeight];
  v6 = [v5 constraintEqualToConstant:?];
  [v6 setActive:1];
}

- (void)_continueButtonPressed
{
  v3 = [(ASCredentialRequestPaneViewController *)self delegate];
  [v3 requestPaneViewControllerStartCABLEAuthentication:self];
}

- (id)_titleText
{
  passkeyURLType = self->_passkeyURLType;
  if (passkeyURLType <= 1)
  {
    if (passkeyURLType > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (passkeyURLType == 3 || passkeyURLType == 2)
  {
LABEL_6:
    v3 = [MEMORY[0x1E69C8860] currentDevice];
    [v3 deviceClass];

    self = _WBSLocalizedString();
  }

LABEL_7:

  return self;
}

- (id)_subtitleText
{
  passkeyURLType = self->_passkeyURLType;
  if (passkeyURLType <= 1)
  {
    if (passkeyURLType > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (passkeyURLType == 3 || passkeyURLType == 2)
  {
LABEL_6:
    self = _WBSLocalizedString();
  }

LABEL_7:

  return self;
}

@end