@interface ICQRemoteViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelFlow;
- (void)_dismissAndExit;
- (void)_main_dismissAndExit;
- (void)_presentFlowWithOffer:(id)offer flowOptions:(id)options containerViewController:(id)controller;
- (void)_presentFreshmintWithOffer:(id)offer link:(id)link flowOptions:(id)options preloadedRemoteUIData:(id)data;
- (void)_presentOSLOWithOffer:(id)offer link:(id)link presenter:(id)presenter;
- (void)_presentPostPurchaseFlowWithOffer:(id)offer link:(id)link flowOptions:(id)options preloadedRemoteUIData:(id)data;
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
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

- (void)_presentPostPurchaseFlowWithOffer:(id)offer link:(id)link flowOptions:(id)options preloadedRemoteUIData:(id)data
{
  offerCopy = offer;
  linkCopy = link;
  optionsCopy = options;
  dataCopy = data;
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
    v17 = offerCopy;
    v18 = optionsCopy;
    v19 = linkCopy;
    v20 = v15;
    v21 = dataCopy;
    v14 = v15;
    [(ICQRemoteViewController *)self presentViewController:v14 animated:1 completion:v16];
  }
}

- (void)_presentFreshmintWithOffer:(id)offer link:(id)link flowOptions:(id)options preloadedRemoteUIData:(id)data
{
  offerCopy = offer;
  linkCopy = link;
  optionsCopy = options;
  dataCopy = data;
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
    bundleIdentifier = [offerCopy bundleIdentifier];
    [ICQMLBiomePublisher publishOfferDisplayActionEventWithBundleId:bundleIdentifier];

    v16 = [[ICQRemoteContainerViewController alloc] initWithRootViewController:self];
    [v16 setModalPresentationCapturesStatusBarAppearance:1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000015C4;
    v17[3] = &unk_10000C2D0;
    v18 = offerCopy;
    v19 = linkCopy;
    selfCopy = self;
    v21 = v16;
    v22 = optionsCopy;
    v23 = dataCopy;
    v14 = v16;
    [(ICQRemoteViewController *)self presentViewController:v14 animated:1 completion:v17];
  }
}

- (void)_presentFlowWithOffer:(id)offer flowOptions:(id)options containerViewController:(id)controller
{
  offerCopy = offer;
  optionsCopy = options;
  controllerCopy = controller;
  v11 = [[AAUISpinnerViewController alloc] initWithNibName:0 bundle:0];
  v12 = [[ICQRemoteUINavigationController alloc] initWithRootViewController:v11];
  navigationBar = [v12 navigationBar];
  [navigationBar setTranslucent:1];

  [v12 setModalInPresentation:1];
  v14 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v14 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v16 = 2;
  }

  else
  {
    v16 = -2;
  }

  [v12 setModalPresentationStyle:v16];
  context = [offerCopy context];
  v18 = [offerCopy universalLinkForContext:context];

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
    [controllerCopy presentViewController:v12 animated:1 completion:0];
  }

  v20 = +[ICQOfferManager sharedOfferManager];
  v21 = ICQBundleId;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000019D0;
  v26[3] = &unk_10000C388;
  v27 = offerCopy;
  selfCopy = self;
  v29 = controllerCopy;
  v30 = v12;
  v31 = optionsCopy;
  v22 = optionsCopy;
  v23 = v12;
  v24 = controllerCopy;
  v25 = offerCopy;
  [v20 getOfferForBundleIdentifier:v21 completion:v26];
}

- (void)_presentOSLOWithOffer:(id)offer link:(id)link presenter:(id)presenter
{
  offerCopy = offer;
  linkCopy = link;
  presenterCopy = presenter;
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
    v12 = [[ICQUpgradeFlowManager alloc] initWithOffer:offerCopy];
    flowManager = self->_flowManager;
    self->_flowManager = v12;

    [(ICQUpgradeFlowManager *)self->_flowManager setDelegate:self];
    [(ICQUpgradeFlowManager *)self->_flowManager setIcqLink:linkCopy];
    [(ICQUpgradeFlowManager *)self->_flowManager beginOSLOFlowWithPresentingViewController:presenterCopy];
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
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000028A4;
  v19[3] = &unk_10000C400;
  v19[4] = self;
  contextCopy = context;
  v8 = [(ICQRemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:v19];
  remoteVCProxy = self->_remoteVCProxy;
  self->_remoteVCProxy = v8;

  xpcEndpoint = [contextCopy xpcEndpoint];
  xpcEndpoint = self->_xpcEndpoint;
  self->_xpcEndpoint = xpcEndpoint;

  v12 = [ICQRemoteContext ICQContextFromRemoteAlertContext:contextCopy];

  flowOptionsData = [v12 flowOptionsData];
  v14 = [ICQUpgradeFlowOptions flowOptionsFromData:flowOptionsData];

  isPostPurchaseFlow = [v12 isPostPurchaseFlow];
  offer = [v12 offer];
  link = [v12 link];
  preloadedRemoteUIData = [v12 preloadedRemoteUIData];
  if (isPostPurchaseFlow)
  {
    [(ICQRemoteViewController *)self _presentPostPurchaseFlowWithOffer:offer link:link flowOptions:v14 preloadedRemoteUIData:preloadedRemoteUIData];
  }

  else
  {
    [(ICQRemoteViewController *)self _presentFreshmintWithOffer:offer link:link flowOptions:v14 preloadedRemoteUIData:preloadedRemoteUIData];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * v8) events] & 0x10) != 0)
        {
          [(ICQRemoteViewController *)self _cancelFlow];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  flowManager = self->_flowManager;
  if (flowManager)
  {
    v6 = _ICQGetLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (flowManager == cancelCopy)
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
      v13 = cancelCopy;
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

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  completeCopy = complete;
  flowManager = self->_flowManager;
  if (flowManager)
  {
    v6 = _ICQGetLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (flowManager == completeCopy)
    {
      if (v7)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICQRemoteViewController local UpgradeFlowManager did complete!", &v19, 2u);
      }

      offer = [(ICQUpgradeFlowManager *)self->_flowManager offer];
      isPremiumOffer = [offer isPremiumOffer];

      offer2 = [(ICQUpgradeFlowManager *)self->_flowManager offer];
      isDefaultOffer = [offer2 isDefaultOffer];

      if ((isDefaultOffer & 1) == 0)
      {
        v16 = _ICQGetLogSystem();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (isPremiumOffer)
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
      v20 = completeCopy;
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