@interface SUStocksSettingsController
- (BOOL)isAustraliaStorefront;
- (BOOL)isCanadaStorefront;
- (BOOL)isFrenchLanguage;
- (BOOL)isNewsFreeExperienceDisabled;
- (BOOL)isUnitedKingdomStorefront;
- (BOOL)isUnitedStatesStorefront;
- (SUStocksSettingsController)init;
- (id)localizedStringResourceWithKey:(id)a3;
- (id)makeBilingualFeedSpecifier;
- (id)makeLanguageGroup;
- (id)makePreferenceSpecifierWithID:(id)a3 name:(id)a4 setter:(SEL)a5 type:(int64_t)a6 keyName:(id)a7 defaultValue:(id)a8;
- (id)makePrivacySpecifier;
- (id)makeResetPrivacyIdentifierSpecifier;
- (id)makeSettingsGroup;
- (id)specifiers;
- (void)dealloc;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4 undoActionName:(id)a5 associatedDeepLinkFragment:(id)a6;
- (void)showPrivacyPane;
@end

@implementation SUStocksSettingsController

- (SUStocksSettingsController)init
{
  v5.receiver = self;
  v5.super_class = SUStocksSettingsController;
  v2 = [(SUStocksSettingsController *)&v5 init];
  if (v2)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"preferencesDidUpdate:" name:@"SUSettingsDidChange" object:0 suspensionBehavior:2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SUStocksSettingsController;
  [(SUStocksSettingsController *)&v4 dealloc];
}

- (id)localizedStringResourceWithKey:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 bundleURL];

  v6 = [_NSLocalizedStringResource alloc];
  v7 = +[NSLocale currentLocale];
  v8 = [v6 initWithKey:v3 table:@"Localizable" locale:v7 bundleURL:v5];

  return v8;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Stocks Settings Title" value:&stru_85F8 table:@"Localizable"];
    [(SUStocksSettingsController *)self setTitle:v6];

    v7 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.stocks"];
    [(SUStocksSettingsController *)self setAppPolicy:v7];

    v8 = [(SUStocksSettingsController *)self appPolicy];
    v9 = [v8 specifiers];
    v10 = [v9 mutableCopy];

    v11 = [(SUStocksSettingsController *)self makeSettingsGroup];
    [v10 addObject:v11];

    v12 = [(SUStocksSettingsController *)self makeResetPrivacyIdentifierSpecifier];
    [v10 addObject:v12];

    v13 = [(SUStocksSettingsController *)self makePrivacySpecifier];
    [v10 addObject:v13];

    if ([(SUStocksSettingsController *)self isCanadaStorefront]&& [(SUStocksSettingsController *)self isFrenchLanguage])
    {
      v14 = [(SUStocksSettingsController *)self makeLanguageGroup];
      [v10 addObject:v14];

      v15 = [(SUStocksSettingsController *)self makeBilingualFeedSpecifier];
      [v10 addObject:v15];
    }

    v16 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v10;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4 undoActionName:(id)a5 associatedDeepLinkFragment:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [@"settings-navigation://com.apple.Settings.Apps/com.apple.stocks" stringByAppendingString:a6];
  v14 = [NSURL URLWithString:v13];

  v23.receiver = self;
  v23.super_class = SUStocksSettingsController;
  v15 = [(SUStocksSettingsController *)&v23 readPreferenceValue:v10];
  v22.receiver = self;
  v22.super_class = SUStocksSettingsController;
  [(SUStocksSettingsController *)&v22 setPreferenceValue:v12 specifier:v10];

  v16 = [(SUStocksSettingsController *)self localizedStringResourceWithKey:v11];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1C60;
  v19[3] = &unk_8338;
  v19[4] = self;
  v20 = v15;
  v21 = v10;
  v17 = v10;
  v18 = v15;
  [(SUStocksSettingsController *)self pe_registerUndoActionName:v16 associatedDeepLink:v14 undoAction:v19];
}

- (void)showPrivacyPane
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.stocks"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (BOOL)isCanadaStorefront
{
  v2 = +[FCAppleAccount sharedAccount];
  v3 = [v2 contentStoreFrontID];
  v4 = [v3 isEqualToString:@"143455"];

  return v4;
}

- (BOOL)isFrenchLanguage
{
  v2 = +[NSLocale currentLocale];
  v3 = [v2 languageCode];
  v4 = [v3 isEqualToString:@"fr"];

  return v4;
}

- (BOOL)isUnitedKingdomStorefront
{
  v2 = +[FCAppleAccount sharedAccount];
  v3 = [v2 contentStoreFrontID];
  v4 = [v3 isEqualToString:@"143444"];

  return v4;
}

- (BOOL)isAustraliaStorefront
{
  v2 = +[FCAppleAccount sharedAccount];
  v3 = [v2 contentStoreFrontID];
  v4 = [v3 isEqualToString:@"143460"];

  return v4;
}

- (BOOL)isUnitedStatesStorefront
{
  v2 = +[FCAppleAccount sharedAccount];
  v3 = [v2 contentStoreFrontID];
  v4 = [v3 isEqualToString:@"143441"];

  return v4;
}

- (BOOL)isNewsFreeExperienceDisabled
{
  if ([(SUStocksSettingsController *)self isAustraliaStorefront]|| [(SUStocksSettingsController *)self isUnitedStatesStorefront]|| [(SUStocksSettingsController *)self isUnitedKingdomStorefront])
  {
    return 1;
  }

  return [(SUStocksSettingsController *)self isCanadaStorefront];
}

- (id)makePreferenceSpecifierWithID:(id)a3 name:(id)a4 setter:(SEL)a5 type:(int64_t)a6 keyName:(id)a7 defaultValue:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a3;
  v17 = [PSSpecifier preferenceSpecifierNamed:a4 target:self set:a5 get:"readPreferenceValue:" detail:0 cell:a6 edit:0];
  [v17 setObject:v16 forKeyedSubscript:PSIDKey];

  [v17 setObject:v15 forKeyedSubscript:PSKeyNameKey];
  [v17 setObject:v14 forKeyedSubscript:PSDefaultValueKey];

  [v17 setObject:@"com.apple.stocks" forKeyedSubscript:PSDefaultsKey];
  [v17 setObject:@"group.com.apple.stocks" forKeyedSubscript:PSContainerBundleIDKey];
  [v17 setObject:@"group.com.apple.stocks" forKeyedSubscript:PSAppGroupBundleIDKey];

  return v17;
}

- (id)makeSettingsGroup
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Stocks Settings Group Title" value:&stru_85F8 table:@"Localizable"];
  v5 = [PSSpecifier groupSpecifierWithID:@"Stocks Settings" name:v4];

  LODWORD(self) = [(SUStocksSettingsController *)self isNewsFreeExperienceDisabled];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = v6;
  if (self)
  {
    v8 = @"Reset Identifier Description";
  }

  else
  {
    v8 = @"News free Reset Identifier Description";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_85F8 table:@"Localizable"];
  [v5 setProperty:v9 forKey:PSFooterTextGroupKey];

  return v5;
}

- (id)makeResetPrivacyIdentifierSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Reset Identifier Title" value:&stru_85F8 table:@"Localizable"];
  v5 = [(SUStocksSettingsController *)self makePreferenceSpecifierWithID:@"PRIVACY_RESET" name:v4 setter:"setPrivacyIdentifierPreferenceValue:specifier:" type:6 keyName:@"stocks.identification.reset_on_next_launch" defaultValue:&__kCFBooleanFalse];

  return v5;
}

- (id)makePrivacySpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Privacy Title" value:&stru_85F8 table:@"Localizable"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setObject:@"PRIVACY" forKeyedSubscript:PSIDKey];
  [v5 setButtonAction:"showPrivacyPane"];

  return v5;
}

- (id)makeLanguageGroup
{
  v2 = [PSSpecifier groupSpecifierWithID:@"Language"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Show English Stories Description" value:&stru_85F8 table:@"Localizable"];
  [v2 setProperty:v4 forKey:PSFooterTextGroupKey];

  return v2;
}

- (id)makeBilingualFeedSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Show English Stories Title" value:&stru_85F8 table:@"Localizable"];
  v5 = [(SUStocksSettingsController *)self makePreferenceSpecifierWithID:@"BILINGUAL_FEED" name:v4 setter:"setBilingualFeedPreferenceValue:specifier:" type:6 keyName:@"stocks.news.bilingual_feed_enabled" defaultValue:&__kCFBooleanFalse];

  return v5;
}

@end