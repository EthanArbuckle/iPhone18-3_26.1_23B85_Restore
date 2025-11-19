@interface BSUIWelcomeGDPRItem
- (BOOL)welcomeScreenShouldShow;
- (id)welcomeScreenViewControllerWithCompletion:(id)a3;
- (void)welcomeScreenViewControllerDidDismiss;
@end

@implementation BSUIWelcomeGDPRItem

- (BOOL)welcomeScreenShouldShow
{
  v2 = +[NSUserDefaults bu_groupUserDefaults];
  v3 = [v2 BOOLForKey:@"BKNeverShowGDPRWelcomeScreen"];

  v4 = +[NSUserDefaults bu_groupUserDefaults];
  v5 = [v4 BOOLForKey:@"BKAlwaysShowGDPRWelcomeScreen"];

  v6 = BUOnboardingBooksBundleID();
  v7 = [AMSAcknowledgePrivacyTask acknowledgementNeededForPrivacyIdentifier:v6];

  if ((v7 & 1) == 0)
  {
    v8 = +[BUAccountsProvider sharedProvider];
    v9 = [v8 activeStoreAccount];

    if (v9)
    {
      if (qword_3CA748 != -1)
      {
        sub_2BD59C();
      }
    }
  }

  v10 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109888;
    v12[1] = (v3 ^ 1) & (v5 | v7);
    v13 = 1024;
    v14 = v3;
    v15 = 1024;
    v16 = v5;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRItem: welcomeScreenShouldShow: shouldShow: %d forceHide: %d forceShow: %d needsDisplay: %d", v12, 0x1Au);
  }

  return (v3 ^ 1) & (v5 | v7);
}

- (id)welcomeScreenViewControllerWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [BSUIWelcomeGDPRViewController alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_173D4;
  v8[3] = &unk_386C58;
  v9 = v3;
  v5 = v3;
  v6 = [(BSUIWelcomeGDPRViewController *)v4 initWithCompletion:v8];

  return v6;
}

- (void)welcomeScreenViewControllerDidDismiss
{
  v2 = [AMSAcknowledgePrivacyTask alloc];
  v3 = BUOnboardingBooksBundleID();
  v5 = [v2 initWithPrivacyIdentifier:v3];

  v4 = [v5 acknowledgePrivacy];
  [v4 addFinishBlock:&stru_387650];
}

@end