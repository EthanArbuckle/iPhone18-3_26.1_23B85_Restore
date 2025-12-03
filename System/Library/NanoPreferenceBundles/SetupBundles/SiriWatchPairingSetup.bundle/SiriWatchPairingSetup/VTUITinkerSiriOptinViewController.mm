@interface VTUITinkerSiriOptinViewController
- (VTUITinkerSiriOptinViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)imageResource;
- (id)learnMoreButtonTitle;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)applyConfirmedOptin:(BOOL)optin;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)okayButtonPressed:(id)pressed;
@end

@implementation VTUITinkerSiriOptinViewController

- (VTUITinkerSiriOptinViewController)init
{
  v5.receiver = self;
  v5.super_class = VTUITinkerSiriOptinViewController;
  v2 = [(VTUITinkerSiriOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_languageSupported = 1;
    [(VTUITinkerSiriOptinViewController *)v2 setStyle:90];
  }

  return v3;
}

- (id)titleString
{
  if (self->_languageSupported)
  {
    delegate = [(VTUITinkerSiriOptinViewController *)self delegate];
    setupFlowUserInfo = [delegate setupFlowUserInfo];
    v4 = [setupFlowUserInfo objectForKey:BPSPairingFlowFamilyMember];
    firstName = [v4 firstName];
    localizedCapitalizedString = [firstName localizedCapitalizedString];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SIRI_TINKER_TITLE_%@" value:&stru_84A0 table:@"Localizable"];
    v9 = [NSString stringWithFormat:v8, localizedCapitalizedString];
  }

  else
  {
    localizedCapitalizedString = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [localizedCapitalizedString localizedStringForKey:@"SIRI_FYI_NOT_SUPPORTED_TITLE" value:&stru_84A0 table:@"Localizable"];
  }

  return v9;
}

- (id)detailString
{
  delegate = [(VTUITinkerSiriOptinViewController *)self delegate];
  setupFlowUserInfo = [delegate setupFlowUserInfo];
  v5 = [setupFlowUserInfo objectForKey:BPSPairingFlowFamilyMember];
  firstName = [v5 firstName];
  localizedCapitalizedString = [firstName localizedCapitalizedString];

  LODWORD(setupFlowUserInfo) = self->_languageSupported;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = v8;
  if (setupFlowUserInfo == 1)
  {
    v10 = [v8 localizedStringForKey:@"SIRI_DETAIL_TINKER_%@_%@" value:&stru_84A0 table:@"Localizable"];
    [NSString stringWithFormat:v10, localizedCapitalizedString, localizedCapitalizedString];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"SIRI_FYI_NOT_SUPPORTED_BODY_TINKER_%@" value:&stru_84A0 table:@"Localizable"];
    [NSString stringWithFormat:v10, localizedCapitalizedString, v13];
  }
  v11 = ;

  return v11;
}

- (id)imageResource
{
  v2 = +[BPSBridgeAppContext shared];
  activeDevice = [v2 activeDevice];
  v4 = VTUISiriScreenStringForDevice();

  return v4;
}

- (void)okayButtonPressed:(id)pressed
{
  delegate = [(VTUITinkerSiriOptinViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)learnMoreButtonPressed:(id)pressed
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:OBPrivacyAskSiriIdentifier];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)applyConfirmedOptin:(BOOL)optin
{
  if (optin)
  {
    delegate = [(VTUITinkerSiriOptinViewController *)self delegate];
    [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
  }

  else
  {
    VTUITinkerSetSiriEnabled(0);
    delegate = [(VTUITinkerSiriOptinViewController *)self delegate];
    [delegate buddyControllerDone:self];
  }
}

- (id)suggestedButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SIRI_ACCEPT" value:&stru_84A0 table:@"Localizable"];

  return v3;
}

- (id)okayButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"OK" value:&stru_84A0 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SIRI_DECLINE" value:&stru_84A0 table:@"Localizable"];

  return v3;
}

- (id)learnMoreButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ABOUT_SIRI" value:&stru_84A0 table:@"Localizable"];

  return v3;
}

@end