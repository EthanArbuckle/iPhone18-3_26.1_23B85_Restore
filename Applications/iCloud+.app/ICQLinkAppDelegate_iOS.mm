@interface ICQLinkAppDelegate_iOS
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)handleSkipCFUWithURL:(id)l;
- (BOOL)launchURLWithDeviceUnlockPrompt:(id)prompt;
- (void)launchFlowWithContext:(id)context;
- (void)launchFlowWithContext:(id)context offer:(id)offer;
- (void)launchSettingsDeeplink;
- (void)launchURL:(id)l;
- (void)launchpostPurchaseFlowWithLink:(id)link offer:(id)offer;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
- (void)upgradeFlowManagerDidFail:(id)fail error:(id)error;
@end

@implementation ICQLinkAppDelegate_iOS

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  lCopy = l;
  v7 = objc_opt_new();
  v8 = [ICQLinkHandler resultFromURL:lCopy store:v7];

  LOBYTE(self) = [(ICQLinkAppDelegate *)self handleICQLinkResult:v8 url:lCopy];
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

- (void)launchFlowWithContext:(id)context
{
  contextCopy = context;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = contextCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Launching freshmint flow with context: %@", &v10, 0xCu);
  }

  v6 = [ICQOffer alloc];
  v7 = objc_alloc_init(NSDictionary);
  v8 = +[NSDate date];
  v9 = [v6 initWithServerDictionary:v7 accountAltDSID:&stru_100008318 notificationID:&stru_100008318 retrievalDate:v8 callbackInterval:0 appLaunchLink:ICQBundleId bundleIdentifier:978307200.0];

  [(ICQLinkAppDelegate_iOS *)self launchFlowWithContext:contextCopy offer:v9];
}

- (void)launchpostPurchaseFlowWithLink:(id)link offer:(id)offer
{
  linkCopy = link;
  offerCopy = offer;
  v8 = [[ICQUpgradeFlowManager alloc] initSubclassWithOffer:offerCopy];
  upgradeFlowManager = self->_upgradeFlowManager;
  self->_upgradeFlowManager = v8;

  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setIcqLink:linkCopy];
  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:self];
  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setFlowOptions:0];
  actionURL = [linkCopy actionURL];
  absoluteString = [actionURL absoluteString];
  [offerCopy setContext:absoluteString];

  universalSuccessLink = [offerCopy universalSuccessLink];
  if (universalSuccessLink)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001348;
    block[3] = &unk_100008218;
    block[4] = self;
    v15 = linkCopy;
    v16 = offerCopy;
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

- (void)launchFlowWithContext:(id)context offer:(id)offer
{
  offerCopy = offer;
  [offerCopy setContext:context];
  v7 = [[ICQUpgradeFlowManager alloc] initSubclassWithOffer:offerCopy];

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

- (void)launchURL:(id)l
{
  lCopy = l;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openSensitiveURL:lCopy withOptions:0];
}

- (BOOL)launchURLWithDeviceUnlockPrompt:(id)prompt
{
  promptCopy = prompt;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v9 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 openSensitiveURL:promptCopy withOptions:v5];

  return v6;
}

- (BOOL)handleSkipCFUWithURL:(id)l
{
  lCopy = l;
  v5 = ICQActionParameterFollowUpIdentifierKey;
  v6 = [lCopy icq_queryItemForName:ICQActionParameterFollowUpIdentifierKey];
  value = [v6 value];
  v8 = ICQiCloudSettingsUniversalURL;
  iCQActionParameterSkipCFUKey = [NSString stringWithFormat:@"/%@", ICQActionParameterSkipCFUKey];
  v10 = [v8 stringByAppendingString:iCQActionParameterSkipCFUKey];

  v11 = [NSURL URLWithString:v10];
  v12 = [v11 icq_URLByAppendingQueryParamName:v5 value:value];

  v13 = ICQActionParameterServerLinkIdentifierKey;
  v14 = [lCopy icq_queryItemForName:ICQActionParameterServerLinkIdentifierKey];
  v15 = v14;
  if (v14)
  {
    value2 = [v14 value];
    v17 = [NSURL URLWithString:v10];
    v18 = [v17 icq_URLByAppendingQueryParamName:v13 value:value2];

    v12 = v18;
  }

  v19 = [(ICQLinkAppDelegate_iOS *)self launchURLWithDeviceUnlockPrompt:v12];
  if (v19)
  {
    v20 = [lCopy icq_queryItemForName:ICQActionParameterDismissLockScreenKey];
    value3 = [v20 value];

    if ([value3 isEqualToString:@"true"])
    {
      [FLFollowUpController icq_dismissFollowUpWithIdentifier:value];
    }
  }

  else
  {
    value3 = _ICQGetLogSystem();
    if (os_log_type_enabled(value3, OS_LOG_TYPE_ERROR))
    {
      sub_100003098(v12, value3);
    }
  }

  return v19;
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Upgrade flow cancelled.", v4, 2u);
  }
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Upgrade flow completed.", v4, 2u);
  }
}

- (void)upgradeFlowManagerDidFail:(id)fail error:(id)error
{
  errorCopy = error;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100003110(errorCopy, v5);
  }
}

@end