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
- (void)applyConfirmedOptin:(BOOL)a3;
- (void)learnMoreButtonPressed:(id)a3;
- (void)setNanoDictationEnabled:(BOOL)a3;
- (void)suggestedButtonPressed:(id)a3;
@end

@implementation COSDictationOptinViewController

+ (BOOL)wantsUnifiedFYI
{
  v2 = sub_10004F784();

  return [v2 dictationIsEnabled];
}

+ (BOOL)controllerNeedsToRun
{
  v2 = [UIApp activeWatch];
  v3 = [[NSUUID alloc] initWithUUIDString:@"41453C7F-5D99-4842-9DE4-F37E3A4D9D50"];
  v4 = [v2 supportsCapability:v3];

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

- (void)suggestedButtonPressed:(id)a3
{
  v4 = [UIApp activeWatch];
  v5 = [[NSUUID alloc] initWithUUIDString:@"F06861AE-125A-424B-AF25-C1DAA8F7AEBC"];
  v6 = [v4 supportsCapability:v5];

  if (v6)
  {

    [(COSDictationOptinViewController *)self applyConfirmedOptin:1];
  }

  else
  {

    [(COSDictationOptinViewController *)self showOptinConfirmationAlert:@"DICTATION" optinChoice:1];
  }
}

- (void)applyConfirmedOptin:(BOOL)a3
{
  v3 = a3;
  v5 = [UIApp activeWatch];
  v6 = [[NSUUID alloc] initWithUUIDString:@"F06861AE-125A-424B-AF25-C1DAA8F7AEBC"];
  v7 = [v5 supportsCapability:v6];

  if (v7)
  {
    [(COSDictationOptinViewController *)self setNanoDictationEnabled:v3];
  }

  else
  {
    v8 = [sub_10004FC3C() sharedPreferences];
    [v8 setDictationIsEnabled:v3];

    v9 = [sub_10004FC3C() sharedPreferences];
    [v9 synchronize];
  }

  v10 = [(COSDictationOptinViewController *)self delegate];
  [v10 buddyControllerDone:self];
}

- (void)setNanoDictationEnabled:(BOOL)a3
{
  v3 = a3;
  v10 = [UIApp activeWatch];
  v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.assistant.nano" pairedDevice:v10];
  v5 = [NSNumber numberWithBool:v3];
  [v4 setObject:v5 forKey:@"Dictation Enabled"];

  v6 = [v4 synchronize];
  v7 = objc_opt_new();
  v8 = [v4 domain];
  v9 = [NSSet setWithObject:@"Dictation Enabled"];
  [v7 synchronizeNanoDomain:v8 keys:v9];
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

- (void)learnMoreButtonPressed:(id)a3
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:OBPrivacyAskSiriIdentifier];
  [v4 setPresentingViewController:self];
  [v4 present];
}

@end