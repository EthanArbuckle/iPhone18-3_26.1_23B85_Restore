@interface ICQLinkAppDelegate_iOS
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)handleSkipCFUWithURL:(id)a3;
- (BOOL)launchURLWithDeviceUnlockPrompt:(id)a3;
- (void)launchFlowWithContext:(id)a3;
- (void)launchFlowWithContext:(id)a3 offer:(id)a4;
- (void)launchSettingsDeeplink;
- (void)launchURL:(id)a3;
- (void)launchpostPurchaseFlowWithLink:(id)a3 offer:(id)a4;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
- (void)upgradeFlowManagerDidFail:(id)a3 error:(id)a4;
@end

@implementation ICQLinkAppDelegate_iOS

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [ICQLinkHandler resultFromURL:v6 store:v7];

  LOBYTE(self) = [(ICQLinkAppDelegate *)self handleICQLinkResult:v8 url:v6];
  return self;
}

- (void)launchSettingsDeeplink
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User is not logged in. Redirect to Settings", v5, 2u);
  }

  v4 = [NSURL URLWithString:ICQChangeStoragePlanPreferencesURL];
  [(ICQLinkAppDelegate_iOS *)self launchURL:v4];
}

- (void)launchFlowWithContext:(id)a3
{
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Launching freshmint flow with context: %@", &v10, 0xCu);
  }

  v6 = [ICQOffer alloc];
  v7 = objc_alloc_init(NSDictionary);
  v8 = +[NSDate date];
  v9 = [v6 initWithServerDictionary:v7 accountAltDSID:&stru_100008318 notificationID:&stru_100008318 retrievalDate:v8 callbackInterval:0 appLaunchLink:ICQBundleId bundleIdentifier:978307200.0];

  [(ICQLinkAppDelegate_iOS *)self launchFlowWithContext:v4 offer:v9];
}

- (void)launchpostPurchaseFlowWithLink:(id)a3 offer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[ICQUpgradeFlowManager alloc] initSubclassWithOffer:v7];
  upgradeFlowManager = self->_upgradeFlowManager;
  self->_upgradeFlowManager = v8;

  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setIcqLink:v6];
  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:self];
  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setFlowOptions:0];
  v10 = [v6 actionURL];
  v11 = [v10 absoluteString];
  [v7 setContext:v11];

  v12 = [v7 universalSuccessLink];
  if (v12)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001348;
    block[3] = &unk_100008218;
    block[4] = self;
    v15 = v6;
    v16 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100003054(v13);
    }
  }
}

- (void)launchFlowWithContext:(id)a3 offer:(id)a4
{
  v6 = a4;
  [v6 setContext:a3];
  v7 = [[ICQUpgradeFlowManager alloc] initSubclassWithOffer:v6];

  upgradeFlowManager = self->_upgradeFlowManager;
  self->_upgradeFlowManager = v7;

  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:self];
  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setFlowOptions:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001448;
  block[3] = &unk_100008240;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)launchURL:(id)a3
{
  v3 = a3;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (BOOL)launchURLWithDeviceUnlockPrompt:(id)a3
{
  v3 = a3;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v9 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 openSensitiveURL:v3 withOptions:v5];

  return v6;
}

- (BOOL)handleSkipCFUWithURL:(id)a3
{
  v4 = a3;
  v5 = ICQActionParameterFollowUpIdentifierKey;
  v6 = [v4 icq_queryItemForName:ICQActionParameterFollowUpIdentifierKey];
  v7 = [v6 value];
  v8 = ICQiCloudSettingsUniversalURL;
  v9 = [NSString stringWithFormat:@"/%@", ICQActionParameterSkipCFUKey];
  v10 = [v8 stringByAppendingString:v9];

  v11 = [NSURL URLWithString:v10];
  v12 = [v11 icq_URLByAppendingQueryParamName:v5 value:v7];

  v13 = ICQActionParameterServerLinkIdentifierKey;
  v14 = [v4 icq_queryItemForName:ICQActionParameterServerLinkIdentifierKey];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 value];
    v17 = [NSURL URLWithString:v10];
    v18 = [v17 icq_URLByAppendingQueryParamName:v13 value:v16];

    v12 = v18;
  }

  v19 = [(ICQLinkAppDelegate_iOS *)self launchURLWithDeviceUnlockPrompt:v12];
  if (v19)
  {
    v20 = [v4 icq_queryItemForName:ICQActionParameterDismissLockScreenKey];
    v21 = [v20 value];

    if ([v21 isEqualToString:@"true"])
    {
      [FLFollowUpController icq_dismissFollowUpWithIdentifier:v7];
    }
  }

  else
  {
    v21 = _ICQGetLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100003098(v12, v21);
    }
  }

  return v19;
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Upgrade flow cancelled.", v4, 2u);
  }
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Upgrade flow completed.", v4, 2u);
  }
}

- (void)upgradeFlowManagerDidFail:(id)a3 error:(id)a4
{
  v4 = a4;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100003110(v4, v5);
  }
}

@end