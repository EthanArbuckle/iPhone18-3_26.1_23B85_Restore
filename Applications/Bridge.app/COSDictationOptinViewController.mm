@interface COSDictationOptinViewController
+ (BOOL)controllerNeedsToRun;
+ (BOOL)wantsUnifiedFYI;
- (COSDictationOptinViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)detailTitleString;
- (id)learnMoreButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)applyConfirmedOptin:(BOOL)optin;
- (void)learnMoreButtonPressed:(id)pressed;
- (void)setNanoDictationEnabled:(BOOL)enabled;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation COSDictationOptinViewController

+ (BOOL)wantsUnifiedFYI
{
  v2 = sub_10004F784();

  return [v2 dictationIsEnabled];
}

+ (BOOL)controllerNeedsToRun
{
  activeWatch = [UIApp activeWatch];
  v3 = [[NSUUID alloc] initWithUUIDString:@"41453C7F-5D99-4842-9DE4-F37E3A4D9D50"];
  v4 = [activeWatch supportsCapability:v3];

  if (!v4 || +[COSDictationOptinViewController wantsUnifiedFYI]|| (BPSShouldOfferSiriForDeviceLanguage() & 1) != 0)
  {
    return 0;
  }

  return sub_10004F580();
}

- (COSDictationOptinViewController)init
{
  v5.receiver = self;
  v5.super_class = COSDictationOptinViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSDictationOptinViewController *)v2 setStyle:26];
  }

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DICTATION_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DICTATION_DETAIL" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  activeWatch = [UIApp activeWatch];
  v5 = [[NSUUID alloc] initWithUUIDString:@"F06861AE-125A-424B-AF25-C1DAA8F7AEBC"];
  v6 = [activeWatch supportsCapability:v5];

  if (v6)
  {

    [(COSDictationOptinViewController *)self applyConfirmedOptin:1];
  }

  else
  {

    [(COSDictationOptinViewController *)self showOptinConfirmationAlert:@"DICTATION" optinChoice:1];
  }
}

- (void)applyConfirmedOptin:(BOOL)optin
{
  optinCopy = optin;
  activeWatch = [UIApp activeWatch];
  v6 = [[NSUUID alloc] initWithUUIDString:@"F06861AE-125A-424B-AF25-C1DAA8F7AEBC"];
  v7 = [activeWatch supportsCapability:v6];

  if (v7)
  {
    [(COSDictationOptinViewController *)self setNanoDictationEnabled:optinCopy];
  }

  else
  {
    sharedPreferences = [sub_10004FC3C() sharedPreferences];
    [sharedPreferences setDictationIsEnabled:optinCopy];

    sharedPreferences2 = [sub_10004FC3C() sharedPreferences];
    [sharedPreferences2 synchronize];
  }

  delegate = [(COSDictationOptinViewController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)setNanoDictationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  activeWatch = [UIApp activeWatch];
  v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.assistant.nano" pairedDevice:activeWatch];
  v5 = [NSNumber numberWithBool:enabledCopy];
  [v4 setObject:v5 forKey:@"Dictation Enabled"];

  synchronize = [v4 synchronize];
  v7 = objc_opt_new();
  domain = [v4 domain];
  v9 = [NSSet setWithObject:@"Dictation Enabled"];
  [v7 synchronizeNanoDomain:domain keys:v9];
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DICTATION_ACCEPT" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DICTATION_DECLINE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)learnMoreButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ABOUT_DICTATION" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailTitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WHAT_IS_DICTATION" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)learnMoreButtonPressed:(id)pressed
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:OBPrivacyAskSiriIdentifier];
  [v4 setPresentingViewController:self];
  [v4 present];
}

@end