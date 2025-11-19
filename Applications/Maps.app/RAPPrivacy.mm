@interface RAPPrivacy
+ (BOOL)hasReceivedPrivacyConsent;
+ (id)callToActionMessage;
+ (id)callToActionMessageForShortcutType:(int64_t)a3;
+ (id)emailAnalyticsEventForEmailAddress:(id)a3 isValidEmail:(BOOL)a4 optedIn:(BOOL)a5;
+ (id)informationalMessageWithEmailAddress:(id)a3 isUserEnteredEmailAddress:(BOOL)a4 isMac:(BOOL)a5;
+ (id)macPreferencesInformationalMessageWithEmailAddress:(id)a3;
+ (void)performPrivacyCheckWithAppearance:(int64_t)a3 completion:(id)a4;
+ (void)performPrivacyCheckWithAppearance:(int64_t)a3 userEnteredEmailAddress:(id)a4 completion:(id)a5;
+ (void)setPrivacyConsent:(BOOL)a3 allowEmail:(BOOL)a4;
+ (void)showPrivacyScreenWithAppearance:(int64_t)a3 completion:(id)a4;
+ (void)showPrivacyScreenWithAppearance:(int64_t)a3 userEnteredEmailAddress:(id)a4 completion:(id)a5;
@end

@implementation RAPPrivacy

+ (id)emailAnalyticsEventForEmailAddress:(id)a3 isValidEmail:(BOOL)a4 optedIn:(BOOL)a5
{
  if (a4)
  {
    if (a5)
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
    v9 = [a3 length];
    v10 = @"INVALID_EMAIL";
    if (!v9)
    {
      v10 = @"NO_EMAIL";
    }

    v7 = v10;
  }

  return v7;
}

+ (id)macPreferencesInformationalMessageWithEmailAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 localizedStringForKey:@"Report an Issue Preferences Mac [Privacy description w/ email]" value:@"localized string not found" table:0];

    v8 = [NSString stringWithFormat:v7, v3];
    v6 = v7;
  }

  else
  {
    v8 = [v5 localizedStringForKey:@"Report an Issue [Privacy description w/o email]" value:@"localized string not found" table:0];
  }

  return v8;
}

+ (id)informationalMessageWithEmailAddress:(id)a3 isUserEnteredEmailAddress:(BOOL)a4 isMac:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [v7 length];
  v9 = +[NSBundle mainBundle];
  v10 = v9;
  if (v8)
  {
    if (v6)
    {
      v11 = @"Report an Issue [Privacy description w/ user entered email]";
    }

    else if (v5)
    {
      v11 = @"Report an Issue Mac [Privacy description w/ email]";
    }

    else
    {
      v11 = @"Report an Issue [Privacy description w/ email]";
    }

    v13 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:0];

    v12 = [NSString stringWithFormat:v13, v7];
    v10 = v13;
  }

  else
  {
    v12 = [v9 localizedStringForKey:@"Report an Issue [Privacy description w/o email]" value:@"localized string not found" table:0];
  }

  return v12;
}

+ (id)callToActionMessageForShortcutType:(int64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"Submit RAP Confirmation (Default Question)";
  if (a3 == 3)
  {
    v6 = @"Submit RAP Confirmation (Work Question)";
  }

  if (a3 == 2)
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

+ (void)setPrivacyConsent:(BOOL)a3 allowEmail:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setBool:v5 forKey:@"RAPHasReceived2015PrivacyConsent"];

  if (v4)
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

+ (void)showPrivacyScreenWithAppearance:(int64_t)a3 completion:(id)a4
{
  v4 = a4;
  v5 = objc_alloc_init(RAPPrivacyViewController);
  [(RAPPrivacyViewController *)v5 presentPrivacyScreen:v4];
}

+ (void)showPrivacyScreenWithAppearance:(int64_t)a3 userEnteredEmailAddress:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = [[RAPPrivacyViewController alloc] initWithUserEnteredEmailAddress:v7];

  [(RAPPrivacyViewController *)v8 presentPrivacyScreen:v6];
}

+ (void)performPrivacyCheckWithAppearance:(int64_t)a3 userEnteredEmailAddress:(id)a4 completion:(id)a5
{
  v9 = a4;
  v8 = a5;
  if ([a1 hasReceivedPrivacyConsent])
  {
    if (v8)
    {
      (*(v8 + 2))(v8, 1, 0, 0);
    }
  }

  else
  {
    [a1 showPrivacyScreenWithAppearance:a3 userEnteredEmailAddress:v9 completion:v8];
  }
}

+ (void)performPrivacyCheckWithAppearance:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ([a1 hasReceivedPrivacyConsent])
  {
    if (v6)
    {
      (*(v6 + 2))(v6, 1, 0, 0);
    }
  }

  else
  {
    [a1 showPrivacyScreenWithAppearance:a3 completion:v6];
  }
}

@end