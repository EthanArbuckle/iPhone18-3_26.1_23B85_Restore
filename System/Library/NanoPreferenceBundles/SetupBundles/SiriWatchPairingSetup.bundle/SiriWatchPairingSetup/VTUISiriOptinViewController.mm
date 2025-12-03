@interface VTUISiriOptinViewController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)wantsUnifiedFYI;
- (VTUISiriOptinViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)detailTitleString;
- (id)imageResource;
- (id)learnMoreButtonTitle;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)applyConfirmedOptin:(BOOL)optin;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)okayButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation VTUISiriOptinViewController

+ (BOOL)wantsUnifiedFYI
{
  sharedPreferences = [sub_121C() sharedPreferences];
  assistantIsEnabled = [sharedPreferences assistantIsEnabled];

  return assistantIsEnabled & shouldShowSiriOptInPage();
}

+ (BOOL)controllerNeedsToRun
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = off_CBB8;
  v11 = off_CBB8;
  if (!off_CBB8)
  {
    v3 = sub_1ED0();
    v9[3] = dlsym(v3, "AFAssistantRestricted");
    off_CBB8 = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    sub_4398();
  }

  if (v2())
  {
    v4 = 0;
  }

  else
  {
    sharedPreferences = [sub_121C() sharedPreferences];
    assistantIsEnabled = [sharedPreferences assistantIsEnabled];

    v4 = assistantIsEnabled ^ shouldShowSiriOptInPage();
  }

  return v4 & 1;
}

- (VTUISiriOptinViewController)init
{
  v11.receiver = self;
  v11.super_class = VTUISiriOptinViewController;
  v2 = [(VTUISiriOptinViewController *)&v11 init];
  if (v2)
  {
    sharedPreferences = [sub_121C() sharedPreferences];
    assistantIsEnabled = [sharedPreferences assistantIsEnabled];

    v5 = BPSShouldOfferSiriForDeviceLanguage();
    v2->_languageSupported = v5;
    if (!assistantIsEnabled || (v5 & 1) != 0)
    {
      if (!v5)
      {
        sub_43BC();
      }

      [(VTUISiriOptinViewController *)v2 setStyle:90];
      v6 = pbb_bridge_log();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      languageSupported = v2->_languageSupported;
      *buf = 67109120;
      v13 = languageSupported;
      v8 = "Siri disabled on Phone; Setting FYI: NO, and _languageSupported: (%d); ";
    }

    else
    {
      [(VTUISiriOptinViewController *)v2 setStyle:96];
      v6 = pbb_bridge_log();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        return v2;
      }

      v7 = v2->_languageSupported;
      *buf = 67109120;
      v13 = v7;
      v8 = "Siri enabled on Phone; Setting FYI: (YES), and _languageSupported: (%d); ";
    }

    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 8u);
    goto LABEL_10;
  }

  return v2;
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"SIRI_TITLE" value:&stru_84A0 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  languageSupported = self->_languageSupported;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (languageSupported)
  {
    v5 = @"SIRI_DETAIL";
  }

  else
  {
    v5 = @"SIRI_FYI_NOT_SUPPORTED_BODY";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_84A0 table:@"Localizable"];

  return v6;
}

- (id)imageResource
{
  v2 = +[BPSBridgeAppContext shared];
  activeDevice = [v2 activeDevice];
  v4 = VTUISiriScreenStringForDevice();

  return v4;
}

- (void)suggestedButtonPressed:(id)pressed
{
  v4 = +[BPSBridgeAppContext shared];
  activeDevice = [v4 activeDevice];
  v6 = [[NSUUID alloc] initWithUUIDString:@"F06861AE-125A-424B-AF25-C1DAA8F7AEBC"];
  v7 = [activeDevice supportsCapability:v6];

  if (v7)
  {

    [(VTUISiriOptinViewController *)self applyConfirmedOptin:1];
  }

  else
  {

    [(VTUISiriOptinViewController *)self showOptinConfirmationAlert:@"SIRI" optinChoice:1];
  }
}

- (void)okayButtonPressed:(id)pressed
{
  delegate = [(VTUISiriOptinViewController *)self delegate];
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
    delegate = [(VTUISiriOptinViewController *)self delegate];
    [delegate buddyControllerDone:self nextControllerClass:objc_opt_class()];
  }

  else
  {
    VTUISetSiriEnabled(0);
    delegate = [(VTUISiriOptinViewController *)self delegate];
    [delegate buddyControllerDone:self];
  }
}

- (id)suggestedButtonTitle
{
  if (self->_languageSupported)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"SIRI_ACCEPT" value:&stru_84A0 table:@"Localizable"];
  }

  else
  {
    v3 = 0;
  }

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
  if (self->_languageSupported)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"SIRI_DECLINE" value:&stru_84A0 table:@"Localizable"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)learnMoreButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ABOUT_SIRI" value:&stru_84A0 table:@"Localizable"];

  return v3;
}

- (id)detailTitleString
{
  languageSupported = self->_languageSupported;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (languageSupported)
  {
    v5 = @"WHAT_IS_SIRI";
  }

  else
  {
    v5 = @"SIRI_FYI_NOT_SUPPORTED_TITLE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_84A0 table:@"Localizable"];

  return v6;
}

@end