@interface BuddyiCloudQuotaController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)cancelHostedPresentation;
- (void)controllerWasPopped;
- (void)manager:(id)a3 loadDidFailWithError:(id)a4;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)presentHostedViewControllerOnNavigationController:(id)a3 completion:(id)a4;
- (void)upgradeFlowManager:(id)a3 didPresentViewController:(id)a4;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
@end

@implementation BuddyiCloudQuotaController

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyiCloudQuotaController *)self buddyPreferences:a2];
  v3 = [(BYPreferencesController *)v2 BOOLForKey:@"iCloudQuotaPresented"]^ 1;

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = sub_1000973E4();
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000974F8;
  v8 = &unk_10032AEC8;
  v9 = location[0];
  [v3 needsToRunWithCompletion:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)presentHostedViewControllerOnNavigationController:(id)a3 completion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v5 = [sub_1000978D0() sharedOfferManager];
  v15 = [v5 currentOffer];

  if (v15)
  {
    v6 = [v16 copy];
    pushCompletion = v18->_pushCompletion;
    v18->_pushCompletion = v6;

    v8 = [objc_alloc(sub_1000973E4()) initWithOffer:v15];
    flowManager = v18->_flowManager;
    v18->_flowManager = v8;

    [(ICQUpgradeFlowManager *)v18->_flowManager setDelegate:v18];
    [(ICQUpgradeFlowManager *)v18->_flowManager presentFlowHostedInNavigationController:location[0]];
  }

  else if (v16)
  {
    oslog = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = oslog;
      v11 = v13;
      sub_10006AA68(v12);
      _os_log_impl(&_mh_execute_header, v10, v11, "iCloudQuota: Skipping due to nil offer", v12, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(v16 + 2))(v16, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelHostedPresentation
{
  v8 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v2, v3, "Canceling iCloud Quota presenation. Please take a sysdiagnose and file a radar against PEP Setup Assistant.", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  pushCompletion = v8->_pushCompletion;
  v8->_pushCompletion = 0;

  [(ICQUpgradeFlowManager *)v8->_flowManager setHostingNavigationController:0];
  [(ICQUpgradeFlowManager *)v8->_flowManager _cancelFlow];
  [(ICQUpgradeFlowManager *)v8->_flowManager setDelegate:0];
  objc_storeStrong(&v8->_flowManager, 0);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyiCloudQuotaController *)self buddyPreferences:a2];
  [(BYPreferencesController *)v2 removeObjectForKey:@"iCloudQuotaPresented"];
}

- (void)upgradeFlowManager:(id)a3 didPresentViewController:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  if (v8->_pushCompletion)
  {
    objc_storeStrong(&v8->_viewController, obj);
    (*(v8->_pushCompletion + 2))();
    pushCompletion = v8->_pushCompletion;
    v8->_pushCompletion = 0;
  }

  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)a3 loadDidFailWithError:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v7);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "iCloudQuota load failed: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (v9->_pushCompletion)
  {
    (*(v9->_pushCompletion + 2))();
    pushCompletion = v9->_pushCompletion;
    v9->_pushCompletion = 0;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "iCloudQuota cancelled", v7, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(BuddyiCloudQuotaController *)v11 buddyPreferences];
  [(BYPreferencesController *)v5 setObject:&__kCFBooleanTrue forKey:@"iCloudQuotaPresented"];

  v6 = [(BuddyiCloudQuotaController *)v11 delegate];
  [(BFFFlowItemDelegate *)v6 flowItemDone:v11];

  objc_storeStrong(location, 0);
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "iCloudQuota Complete!", v7, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [(BuddyiCloudQuotaController *)v11 buddyPreferences];
  [(BYPreferencesController *)v5 setObject:&__kCFBooleanTrue forKey:@"iCloudQuotaPresented"];

  v6 = [(BuddyiCloudQuotaController *)v11 delegate];
  [(BFFFlowItemDelegate *)v6 flowItemDone:v11];

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end