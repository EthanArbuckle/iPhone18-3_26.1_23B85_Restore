@interface RAPPrivacy
+ (BOOL)hasReceivedPrivacyConsent;
+ (id)callToActionMessage;
+ (id)callToActionMessageForShortcutType:(int64_t)type;
+ (id)emailAnalyticsEventForEmailAddress:(id)address isValidEmail:(BOOL)email optedIn:(BOOL)in;
+ (id)informationalMessageWithEmailAddress:(id)address isUserEnteredEmailAddress:(BOOL)emailAddress isMac:(BOOL)mac;
+ (id)macPreferencesInformationalMessageWithEmailAddress:(id)address;
+ (void)performPrivacyCheckWithAppearance:(int64_t)appearance completion:(id)completion;
+ (void)performPrivacyCheckWithAppearance:(int64_t)appearance userEnteredEmailAddress:(id)address completion:(id)completion;
+ (void)setPrivacyConsent:(BOOL)consent allowEmail:(BOOL)email;
+ (void)showPrivacyScreenWithAppearance:(int64_t)appearance completion:(id)completion;
+ (void)showPrivacyScreenWithAppearance:(int64_t)appearance userEnteredEmailAddress:(id)address completion:(id)completion;
@end

@implementation RAPPrivacy

+ (id)emailAnalyticsEventForEmailAddress:(id)address isValidEmail:(BOOL)email optedIn:(BOOL)in
{
  if (email)
  {
    if (in)
    {
      v7 = @"EMAIL_ON";
    }

    else
    {
      v7 = @"EMAIL_OFF";
    }
  }

  else
  {
    v9 = [address length];
    v10 = @"INVALID_EMAIL";
    if (!v9)
    {
      v10 = @"NO_EMAIL";
    }

    v7 = v10;
  }

  return v7;
}

+ (id)macPreferencesInformationalMessageWithEmailAddress:(id)address
{
  addressCopy = address;
  v4 = [addressCopy length];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 localizedStringForKey:@"Report an Issue Preferences Mac [Privacy description w/ email]" value:@"localized string not found" table:0];

    addressCopy = [NSString stringWithFormat:v7, addressCopy];
    v6 = v7;
  }

  else
  {
    addressCopy = [v5 localizedStringForKey:@"Report an Issue [Privacy description w/o email]" value:@"localized string not found" table:0];
  }

  return addressCopy;
}

+ (id)informationalMessageWithEmailAddress:(id)address isUserEnteredEmailAddress:(BOOL)emailAddress isMac:(BOOL)mac
{
  macCopy = mac;
  emailAddressCopy = emailAddress;
  addressCopy = address;
  v8 = [addressCopy length];
  v9 = +[NSBundle mainBundle];
  v10 = v9;
  if (v8)
  {
    if (emailAddressCopy)
    {
      v11 = @"Report an Issue [Privacy description w/ user entered email]";
    }

    else if (macCopy)
    {
      v11 = @"Report an Issue Mac [Privacy description w/ email]";
    }

    else
    {
      v11 = @"Report an Issue [Privacy description w/ email]";
    }

    v13 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:0];

    addressCopy = [NSString stringWithFormat:v13, addressCopy];
    v10 = v13;
  }

  else
  {
    addressCopy = [v9 localizedStringForKey:@"Report an Issue [Privacy description w/o email]" value:@"localized string not found" table:0];
  }

  return addressCopy;
}

+ (id)callToActionMessageForShortcutType:(int64_t)type
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"Submit RAP Confirmation (Default Question)";
  if (type == 3)
  {
    v6 = @"Submit RAP Confirmation (Work Question)";
  }

  if (type == 2)
  {
    v7 = @"Submit RAP Confirmation (Home Question)";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v4 localizedStringForKey:v7 value:@"localized string not found" table:0];

  return v8;
}

+ (id)callToActionMessage
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Report an Issue [Call to action]" value:@"localized string not found" table:0];

  return v3;
}

+ (void)setPrivacyConsent:(BOOL)consent allowEmail:(BOOL)email
{
  emailCopy = email;
  consentCopy = consent;
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setBool:consentCopy forKey:@"RAPHasReceived2015PrivacyConsent"];

  if (emailCopy)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  sub_10079ADEC(v7);
}

+ (BOOL)hasReceivedPrivacyConsent
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"RAPHasReceived2015PrivacyConsent"];

  return v3;
}

+ (void)showPrivacyScreenWithAppearance:(int64_t)appearance completion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(RAPPrivacyViewController);
  [(RAPPrivacyViewController *)v5 presentPrivacyScreen:completionCopy];
}

+ (void)showPrivacyScreenWithAppearance:(int64_t)appearance userEnteredEmailAddress:(id)address completion:(id)completion
{
  completionCopy = completion;
  addressCopy = address;
  v8 = [[RAPPrivacyViewController alloc] initWithUserEnteredEmailAddress:addressCopy];

  [(RAPPrivacyViewController *)v8 presentPrivacyScreen:completionCopy];
}

+ (void)performPrivacyCheckWithAppearance:(int64_t)appearance userEnteredEmailAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  if ([self hasReceivedPrivacyConsent])
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0, 0);
    }
  }

  else
  {
    [self showPrivacyScreenWithAppearance:appearance userEnteredEmailAddress:addressCopy completion:completionCopy];
  }
}

+ (void)performPrivacyCheckWithAppearance:(int64_t)appearance completion:(id)completion
{
  completionCopy = completion;
  if ([self hasReceivedPrivacyConsent])
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0, 0);
    }
  }

  else
  {
    [self showPrivacyScreenWithAppearance:appearance completion:completionCopy];
  }
}

@end