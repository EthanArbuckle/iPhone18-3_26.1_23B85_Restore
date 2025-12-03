@interface BuddyiCloudQuotaController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)cancelHostedPresentation;
- (void)controllerWasPopped;
- (void)manager:(id)manager loadDidFailWithError:(id)error;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)presentHostedViewControllerOnNavigationController:(id)controller completion:(id)completion;
- (void)upgradeFlowManager:(id)manager didPresentViewController:(id)controller;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
@end

@implementation BuddyiCloudQuotaController

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyiCloudQuotaController *)self buddyPreferences:a2];
  v3 = [(BYPreferencesController *)v2 BOOLForKey:@"iCloudQuotaPresented"]^ 1;

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
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

- (void)presentHostedViewControllerOnNavigationController:(id)controller completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  sharedOfferManager = [sub_1000978D0() sharedOfferManager];
  currentOffer = [sharedOfferManager currentOffer];

  if (currentOffer)
  {
    v6 = [v16 copy];
    pushCompletion = selfCopy->_pushCompletion;
    selfCopy->_pushCompletion = v6;

    v8 = [objc_alloc(sub_1000973E4()) initWithOffer:currentOffer];
    flowManager = selfCopy->_flowManager;
    selfCopy->_flowManager = v8;

    [(ICQUpgradeFlowManager *)selfCopy->_flowManager setDelegate:selfCopy];
    [(ICQUpgradeFlowManager *)selfCopy->_flowManager presentFlowHostedInNavigationController:location[0]];
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

  objc_storeStrong(&currentOffer, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)cancelHostedPresentation
{
  selfCopy = self;
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
  pushCompletion = selfCopy->_pushCompletion;
  selfCopy->_pushCompletion = 0;

  [(ICQUpgradeFlowManager *)selfCopy->_flowManager setHostingNavigationController:0];
  [(ICQUpgradeFlowManager *)selfCopy->_flowManager _cancelFlow];
  [(ICQUpgradeFlowManager *)selfCopy->_flowManager setDelegate:0];
  objc_storeStrong(&selfCopy->_flowManager, 0);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyiCloudQuotaController *)self buddyPreferences:a2];
  [(BYPreferencesController *)v2 removeObjectForKey:@"iCloudQuotaPresented"];
}

- (void)upgradeFlowManager:(id)manager didPresentViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  obj = 0;
  objc_storeStrong(&obj, controller);
  if (selfCopy->_pushCompletion)
  {
    objc_storeStrong(&selfCopy->_viewController, obj);
    (*(selfCopy->_pushCompletion + 2))();
    pushCompletion = selfCopy->_pushCompletion;
    selfCopy->_pushCompletion = 0;
  }

  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
}

- (void)manager:(id)manager loadDidFailWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v7 = 0;
  objc_storeStrong(&v7, error);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v7);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "iCloudQuota load failed: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (selfCopy->_pushCompletion)
  {
    (*(selfCopy->_pushCompletion + 2))();
    pushCompletion = selfCopy->_pushCompletion;
    selfCopy->_pushCompletion = 0;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancel);
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
  buddyPreferences = [(BuddyiCloudQuotaController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"iCloudQuotaPresented"];

  delegate = [(BuddyiCloudQuotaController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, complete);
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
  buddyPreferences = [(BuddyiCloudQuotaController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"iCloudQuotaPresented"];

  delegate = [(BuddyiCloudQuotaController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end