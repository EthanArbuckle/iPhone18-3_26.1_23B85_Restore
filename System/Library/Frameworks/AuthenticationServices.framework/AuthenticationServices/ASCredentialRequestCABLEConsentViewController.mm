@interface ASCredentialRequestCABLEConsentViewController
- (ASCredentialRequestCABLEConsentViewController)initWithPasskeyURLType:(int64_t)type;
- (ASCredentialRequestCABLEConsentViewController)initWithPresentationContext:(id)context;
- (id)_subtitleText;
- (id)_titleText;
- (void)_continueButtonPressed;
- (void)_setUpContinueButton;
- (void)_setUpHeader;
- (void)viewDidLoad;
@end

@implementation ASCredentialRequestCABLEConsentViewController

- (ASCredentialRequestCABLEConsentViewController)initWithPresentationContext:(id)context
{
  _passkeyURLType = [context _passkeyURLType];

  return [(ASCredentialRequestCABLEConsentViewController *)self initWithPasskeyURLType:_passkeyURLType];
}

- (ASCredentialRequestCABLEConsentViewController)initWithPasskeyURLType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = ASCredentialRequestCABLEConsentViewController;
  v4 = [(ASCredentialRequestPaneViewController *)&v8 initRequiringTableView:1];
  v5 = v4;
  if (v4)
  {
    v4->_passkeyURLType = type;
    v6 = v4;
  }

  return v5;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ASCredentialRequestCABLEConsentViewController;
  [(ASCredentialRequestPaneViewController *)&v5 viewDidLoad];
  tableView = [(ASCredentialRequestPaneViewController *)self tableView];
  [tableView setSeparatorStyle:0];

  tableView2 = [(ASCredentialRequestPaneViewController *)self tableView];
  [tableView2 setDataSource:self];

  [(ASCredentialRequestCABLEConsentViewController *)self _setUpHeader];
  [(ASCredentialRequestCABLEConsentViewController *)self _setUpContinueButton];
  [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
}

- (void)_setUpHeader
{
  _titleText = [(ASCredentialRequestCABLEConsentViewController *)self _titleText];
  _subtitleText = [(ASCredentialRequestCABLEConsentViewController *)self _subtitleText];
  v6 = [ASCredentialRequestPaneHeaderConfiguration passwordManagerHeaderWithTitle:_titleText subtitle:_subtitleText];

  headerPaneContext = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [headerPaneContext addHeaderWithConfiguration:v6];
}

- (void)_setUpContinueButton
{
  v7 = objc_alloc_init(ASCredentialRequestButtonContinue);
  v3 = _WBSLocalizedString();
  [(ASCredentialRequestButton *)v7 setButtonText:v3];

  [(ASCredentialRequestButton *)v7 addTarget:self action:sel__continueButtonPressed];
  paneFooterStackView = [(ASCredentialRequestPaneViewController *)self paneFooterStackView];
  [paneFooterStackView addArrangedSubview:v7];

  heightAnchor = [(ASCredentialRequestButtonContinue *)v7 heightAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonHeight];
  v6 = [heightAnchor constraintEqualToConstant:?];
  [v6 setActive:1];
}

- (void)_continueButtonPressed
{
  delegate = [(ASCredentialRequestPaneViewController *)self delegate];
  [delegate requestPaneViewControllerStartCABLEAuthentication:self];
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
    currentDevice = [MEMORY[0x1E69C8860] currentDevice];
    [currentDevice deviceClass];

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