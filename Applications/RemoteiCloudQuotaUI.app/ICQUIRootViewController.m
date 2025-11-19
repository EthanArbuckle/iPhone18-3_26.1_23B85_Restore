@interface ICQUIRootViewController
- (void)_dismissAndExit;
- (void)_fetchDefaultOfferAndLaunchUpgradeFlow;
- (void)_handleFallback;
- (void)_launchUpgradeFlowWithOffer:(id)a3 icqLink:(id)a4;
- (void)loadView;
- (void)upgradeFlowManager:(id)a3 didPresentViewController:(id)a4;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICQUIRootViewController

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(ICQUIRootViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = ICQUIRootViewController;
  [(ICQUIRootViewController *)&v19 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(ICQUIRootViewController *)self view];
  [v4 setBackgroundColor:v3];

  remoteContext = self->_remoteContext;
  v6 = _ICQGetLogSystem();
  v7 = v6;
  if (remoteContext)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remote context found. Proceeding to launch the upgrade flow.", v18, 2u);
    }

    v8 = [(ICQRemoteContext *)self->_remoteContext offer];
    v9 = [v8 bundleIdentifier];
    v10 = [v9 isEqualToString:ICQBundleId];

    v11 = [v8 serverUIURL];
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v13 = [(ICQRemoteContext *)self->_remoteContext link];
      v14 = [v13 actionURL];
      v12 = v14 == 0;
    }

    if ((v10 | v12))
    {
      v15 = _ICQGetLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000051D4();
      }

      [(ICQUIRootViewController *)self _fetchDefaultOfferAndLaunchUpgradeFlow];
    }

    else
    {
      v16 = [(ICQRemoteContext *)self->_remoteContext offer];
      v17 = [(ICQRemoteContext *)self->_remoteContext link];
      [(ICQUIRootViewController *)self _launchUpgradeFlowWithOffer:v16 icqLink:v17];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100005208();
    }

    [(ICQUIRootViewController *)self _dismissAndExit];
  }
}

- (void)_launchUpgradeFlowWithOffer:(id)a3 icqLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  flowManager = self->_flowManager;
  v9 = _ICQGetLogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (flowManager)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Upgrade flow manager already presented; ignoring.", buf, 2u);
    }
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Presenting upgrade flow within hidden app.", buf, 2u);
    }

    v11 = [[ICQUpgradeFlowManager alloc] initWithOffer:v6];
    v12 = self->_flowManager;
    self->_flowManager = v11;

    [(ICQUpgradeFlowManager *)self->_flowManager setDelegate:self];
    v13 = [(ICQRemoteContext *)self->_remoteContext flowOptionsData];
    v14 = [ICQUpgradeFlowOptions flowOptionsFromData:v13];
    [(ICQUpgradeFlowManager *)self->_flowManager setFlowOptions:v14];

    [(ICQUpgradeFlowManager *)self->_flowManager setIcqLink:v7];
    v15 = [(ICQRemoteContext *)self->_remoteContext presentingSceneIdentifier];

    v16 = _ICQGetLogSystem();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        v18 = [(ICQRemoteContext *)self->_remoteContext presentingSceneIdentifier];
        *buf = 138412290;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting OOP parent/host's app sceneIdentifier: %@", buf, 0xCu);
      }

      v19 = [(ICQRemoteContext *)self->_remoteContext presentingSceneIdentifier];
      [(ICQUpgradeFlowManager *)self->_flowManager setPresentingSceneIdentifier:v19];
    }

    else
    {
      if (v17)
      {
        sceneIdentifier = self->_sceneIdentifier;
        *buf = 138412290;
        v23 = sceneIdentifier;
      }

      [(ICQUpgradeFlowManager *)self->_flowManager setPresentingSceneIdentifier:self->_sceneIdentifier];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003DE4;
    block[3] = &unk_10000C3D8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_fetchDefaultOfferAndLaunchUpgradeFlow
{
  v3 = +[ICQOfferManager sharedOfferManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003E94;
  v4[3] = &unk_10000C488;
  v4[4] = self;
  [v3 getOfferForBundleIdentifier:ICQBundleId completion:v4];
}

- (void)_handleFallback
{
  v2 = [(ICQRemoteContext *)self->_remoteContext offer];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 context];
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to launch upgrade flow with context = %@", &v12, 0xCu);
  }

  v5 = [v2 context];
  v6 = [NSURL URLWithString:v5];

  v7 = [v6 icq_isICQLaunchURL];
  v8 = _ICQGetLogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      LOWORD(v12) = 0;
    }

    v10 = [NSURL URLWithString:ICQManageStoragePreferencesURL];
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    [v11 openSensitiveURL:v10 withOptions:0];
  }

  else
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Launching link %@ in safari", &v12, 0xCu);
    }

    v10 = objc_alloc_init(_LSOpenConfiguration);
    [v10 setAllowURLOverrides:0];
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    [v11 openURL:v6 configuration:v10 completionHandler:&stru_10000C4A8];
  }
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000523C();
  }

  flowManager = self->_flowManager;
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (flowManager)
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      v8 = "Upgrade flow has been cancelled.";
      v9 = v6;
      v10 = 2;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    v11 = 136315138;
    v12 = "[ICQUIRootViewController upgradeFlowManagerDidCancel:]";
    v8 = "Upgrade flow has been dismissed already, %s will be ignored.";
    v9 = v6;
    v10 = 12;
    goto LABEL_8;
  }

  [(ICQUIRootViewController *)self _dismissFlowWithSuccess:0];
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100005270();
  }

  flowManager = self->_flowManager;
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!flowManager)
  {
    if (v7)
    {
      v14 = 136315138;
      v15 = "[ICQUIRootViewController upgradeFlowManagerDidComplete:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Upgrade flow has been dismissed already, %s will be ignored.", &v14, 0xCu);
    }

    goto LABEL_16;
  }

  if (v7)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Upgrade flow has been completed.", &v14, 2u);
  }

  v8 = [(ICQUpgradeFlowManager *)self->_flowManager offer];
  v9 = [v8 isPremiumOffer];

  v10 = [(ICQUpgradeFlowManager *)self->_flowManager offer];
  v11 = [v10 isDefaultOffer];

  if ((v11 & 1) == 0)
  {
    v12 = _ICQGetLogSystem();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v13)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cleaning up pending premium followup item", &v14, 2u);
      }

      v6 = +[ICQOfferManager sharedOfferManager];
      [v6 teardownCachedPremiumOffer];
    }

    else
    {
      if (v13)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cleaning up pending regular followup item", &v14, 2u);
      }

      v6 = +[ICQOfferManager sharedOfferManager];
      [v6 teardownCachedOffer];
    }

LABEL_16:
  }

  [(ICQUIRootViewController *)self _dismissFlowWithSuccess:1];
}

- (void)upgradeFlowManager:(id)a3 didPresentViewController:(id)a4
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000052A4();
  }
}

- (void)_dismissAndExit
{
  [(ICQUpgradeFlowManager *)self->_flowManager setDelegate:0];
  flowManager = self->_flowManager;
  self->_flowManager = 0;

  dispatch_async(&_dispatch_main_q, &stru_10000C528);
}

@end