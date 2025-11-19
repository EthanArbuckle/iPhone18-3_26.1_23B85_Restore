@interface ICQRemoteViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelFlow;
- (void)_dismissAndExit;
- (void)_main_dismissAndExit;
- (void)_presentFlowWithOffer:(id)a3 flowOptions:(id)a4 containerViewController:(id)a5;
- (void)_presentFreshmintWithOffer:(id)a3 link:(id)a4 flowOptions:(id)a5 preloadedRemoteUIData:(id)a6;
- (void)_presentOSLOWithOffer:(id)a3 link:(id)a4 presenter:(id)a5;
- (void)_presentPostPurchaseFlowWithOffer:(id)a3 link:(id)a4 flowOptions:(id)a5 preloadedRemoteUIData:(id)a6;
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
@end

@implementation ICQRemoteViewController

- (void)_setupRemoteProxy
{
  [(SBUIRemoteAlertHostInterface *)self->_remoteVCProxy setShouldDisableFadeInAnimation:1];
  [(SBUIRemoteAlertHostInterface *)self->_remoteVCProxy setAllowsMenuButtonDismissal:1];
  [(SBUIRemoteAlertHostInterface *)self->_remoteVCProxy setAllowsAlertStacking:1];
  [(SBUIRemoteAlertHostInterface *)self->_remoteVCProxy setDesiredHardwareButtonEvents:16];
  [(SBUIRemoteAlertHostInterface *)self->_remoteVCProxy setSwipeDismissalStyle:0];
  remoteVCProxy = self->_remoteVCProxy;

  [(SBUIRemoteAlertHostInterface *)remoteVCProxy setDismissalAnimationStyle:1];
}

- (void)_presentPostPurchaseFlowWithOffer:(id)a3 link:(id)a4 flowOptions:(id)a5 preloadedRemoteUIData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_flowManager)
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "flow manager already presented; ignoring", buf, 2u);
    }
  }

  else
  {
    v15 = [[ICQRemoteContainerViewController alloc] initWithRootViewController:self];
    [v15 setModalPresentationCapturesStatusBarAppearance:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100001368;
    v16[3] = &unk_10000C2D0;
    v16[4] = self;
    v17 = v10;
    v18 = v12;
    v19 = v11;
    v20 = v15;
    v21 = v13;
    v14 = v15;
    [(ICQRemoteViewController *)self presentViewController:v14 animated:1 completion:v16];
  }
}

- (void)_presentFreshmintWithOffer:(id)a3 link:(id)a4 flowOptions:(id)a5 preloadedRemoteUIData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_flowManager)
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "flow manager already presented; ignoring", buf, 2u);
    }
  }

  else
  {
    v15 = [v10 bundleIdentifier];
    [ICQMLBiomePublisher publishOfferDisplayActionEventWithBundleId:v15];

    v16 = [[ICQRemoteContainerViewController alloc] initWithRootViewController:self];
    [v16 setModalPresentationCapturesStatusBarAppearance:1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000015C4;
    v17[3] = &unk_10000C2D0;
    v18 = v10;
    v19 = v11;
    v20 = self;
    v21 = v16;
    v22 = v12;
    v23 = v13;
    v14 = v16;
    [(ICQRemoteViewController *)self presentViewController:v14 animated:1 completion:v17];
  }
}

- (void)_presentFlowWithOffer:(id)a3 flowOptions:(id)a4 containerViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[AAUISpinnerViewController alloc] initWithNibName:0 bundle:0];
  v12 = [[ICQRemoteUINavigationController alloc] initWithRootViewController:v11];
  v13 = [v12 navigationBar];
  [v13 setTranslucent:1];

  [v12 setModalInPresentation:1];
  v14 = +[UIDevice currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 1)
  {
    v16 = 2;
  }

  else
  {
    v16 = -2;
  }

  [v12 setModalPresentationStyle:v16];
  v17 = [v8 context];
  v18 = [v8 universalLinkForContext:v17];

  if ([v18 action] == 118)
  {
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_presentFlowWithOffer detected action direct to oslo, skipping presentation", buf, 2u);
    }
  }

  else
  {
    [v10 presentViewController:v12 animated:1 completion:0];
  }

  v20 = +[ICQOfferManager sharedOfferManager];
  v21 = ICQBundleId;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000019D0;
  v26[3] = &unk_10000C388;
  v27 = v8;
  v28 = self;
  v29 = v10;
  v30 = v12;
  v31 = v9;
  v22 = v9;
  v23 = v12;
  v24 = v10;
  v25 = v8;
  [v20 getOfferForBundleIdentifier:v21 completion:v26];
}

- (void)_presentOSLOWithOffer:(id)a3 link:(id)a4 presenter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_flowManager)
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[ICQRemoteViewController _presentOSLOWithOffer:link:presenter:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ICQRemoteViewController UpgradeFlowManager has already been dismissed, %s will be ignored", &v14, 0xCu);
    }
  }

  else
  {
    v12 = [[ICQUpgradeFlowManager alloc] initWithOffer:v8];
    flowManager = self->_flowManager;
    self->_flowManager = v12;

    [(ICQUpgradeFlowManager *)self->_flowManager setDelegate:self];
    [(ICQUpgradeFlowManager *)self->_flowManager setIcqLink:v9];
    [(ICQUpgradeFlowManager *)self->_flowManager beginOSLOFlowWithPresentingViewController:v10];
  }
}

- (void)_dismissAndExit
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002538;
  block[3] = &unk_10000C3D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_main_dismissAndExit
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002638;
  v3[3] = &unk_10000C3D8;
  v3[4] = self;
  [(ICQRemoteViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000028A4;
  v19[3] = &unk_10000C400;
  v19[4] = self;
  v7 = a3;
  v8 = [(ICQRemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:v19];
  remoteVCProxy = self->_remoteVCProxy;
  self->_remoteVCProxy = v8;

  v10 = [v7 xpcEndpoint];
  xpcEndpoint = self->_xpcEndpoint;
  self->_xpcEndpoint = v10;

  v12 = [ICQRemoteContext ICQContextFromRemoteAlertContext:v7];

  v13 = [v12 flowOptionsData];
  v14 = [ICQUpgradeFlowOptions flowOptionsFromData:v13];

  v15 = [v12 isPostPurchaseFlow];
  v16 = [v12 offer];
  v17 = [v12 link];
  v18 = [v12 preloadedRemoteUIData];
  if (v15)
  {
    [(ICQRemoteViewController *)self _presentPostPurchaseFlowWithOffer:v16 link:v17 flowOptions:v14 preloadedRemoteUIData:v18];
  }

  else
  {
    [(ICQRemoteViewController *)self _presentFreshmintWithOffer:v16 link:v17 flowOptions:v14 preloadedRemoteUIData:v18];
  }

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (([*(*(&v9 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(ICQRemoteViewController *)self _cancelFlow];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_cancelFlow
{
  self->_isDismissing = 1;
  if (self->_flowManager)
  {
    [(ICQUpgradeFlowManager *)self->_flowManager _cancelFlow];
  }

  else
  {
    [(ICQRemoteViewController *)self _dismissFlowWithSuccess:0];
  }
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v4 = a3;
  flowManager = self->_flowManager;
  if (flowManager)
  {
    v6 = _ICQGetLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (flowManager == v4)
    {
      if (v7)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICQRemoteViewController UpgradeFlowManager did cancel", &v12, 2u);
      }

      [(ICQUpgradeFlowManager *)self->_flowManager setDelegate:0];
      v6 = self->_flowManager;
      self->_flowManager = 0;
    }

    else if (v7)
    {
      v8 = self->_flowManager;
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v8;
      v9 = "ICQRemoteViewController UpgradeFlowManager did cancel for manager %@ instead of %@";
      v10 = v6;
      v11 = 22;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v12, v11);
    }
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[ICQRemoteViewController upgradeFlowManagerDidCancel:]";
      v9 = "ICQRemoteViewController UpgradeFlowManager has already been dismissed, %s will be ignored";
      v10 = v6;
      v11 = 12;
      goto LABEL_7;
    }
  }

  self->_isDismissing = 1;
  [(ICQRemoteViewController *)self _dismissFlowWithSuccess:0];
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v4 = a3;
  flowManager = self->_flowManager;
  if (flowManager)
  {
    v6 = _ICQGetLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (flowManager == v4)
    {
      if (v7)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICQRemoteViewController local UpgradeFlowManager did complete!", &v19, 2u);
      }

      v12 = [(ICQUpgradeFlowManager *)self->_flowManager offer];
      v13 = [v12 isPremiumOffer];

      v14 = [(ICQUpgradeFlowManager *)self->_flowManager offer];
      v15 = [v14 isDefaultOffer];

      if ((v15 & 1) == 0)
      {
        v16 = _ICQGetLogSystem();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v17)
          {
            LOWORD(v19) = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cleaning up pending premium followup item", &v19, 2u);
          }

          v18 = +[ICQOfferManager sharedOfferManager];
          [v18 teardownCachedPremiumOffer];
        }

        else
        {
          if (v17)
          {
            LOWORD(v19) = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cleaning up pending regular followup item", &v19, 2u);
          }

          v18 = +[ICQOfferManager sharedOfferManager];
          [v18 teardownCachedOffer];
        }
      }

      v6 = self->_flowManager;
      self->_flowManager = 0;
    }

    else if (v7)
    {
      v8 = self->_flowManager;
      v19 = 138412546;
      v20 = v4;
      v21 = 2112;
      v22 = v8;
      v9 = "ICQRemoteViewController local UpgradeFlowManager did complete for manager %@ instead of %@";
      v10 = v6;
      v11 = 22;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v19, v11);
    }
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[ICQRemoteViewController upgradeFlowManagerDidComplete:]";
      v9 = "ICQRemoteViewController UpgradeFlowManager has already been dismissed, %s will be ignored";
      v10 = v6;
      v11 = 12;
      goto LABEL_7;
    }
  }

  self->_isDismissing = 1;
  [(ICQRemoteViewController *)self _dismissFlowWithSuccess:1];
}

@end