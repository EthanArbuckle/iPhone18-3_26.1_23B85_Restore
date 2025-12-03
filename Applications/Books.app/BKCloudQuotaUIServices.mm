@interface BKCloudQuotaUIServices
+ (id)sharedInstance;
- (BKCloudQuotaUIServices)init;
- (id)getUpgradeStorageFlowManager;
- (void)_updateWithNewOffer;
- (void)_upgradeOfferReceived:(id)received;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)goToSettingsManagePane;
- (void)goToSettingsUpgradePane;
- (void)managerDidCancel:(id)cancel;
- (void)presentUpgradeOfferWithNavigationController:(id)controller;
- (void)removeObserver:(id)observer;
@end

@implementation BKCloudQuotaUIServices

+ (id)sharedInstance
{
  if (qword_100AF7778 != -1)
  {
    sub_100791E38();
  }

  v3 = qword_100AF7780;

  return v3;
}

- (BKCloudQuotaUIServices)init
{
  v11.receiver = self;
  v11.super_class = BKCloudQuotaUIServices;
  v2 = [(BKCloudQuotaUIServices *)&v11 init];
  if (v2)
  {
    v3 = [NSHashTable hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_create("com.apple.iBooks.BKCloudQuotaUIServices.SerialQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    v7 = objc_opt_new();
    offersManager = v2->_offersManager;
    v2->_offersManager = v7;

    [(ICQUICloudStorageOffersManager *)v2->_offersManager setDelegate:v2];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_upgradeOfferReceived:" name:ICQCurrentOfferChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BKCloudQuotaUIServices;
  [(BKCloudQuotaUIServices *)&v4 dealloc];
}

- (void)_upgradeOfferReceived:(id)received
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100171128;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateWithNewOffer
{
  v3 = +[ICQOfferManager sharedOfferManager];
  fetchOfferIfNeeded = [v3 fetchOfferIfNeeded];

  if ((fetchOfferIfNeeded & 1) == 0)
  {
    v5 = +[ICQOfferManager sharedOfferManager];
    currentOffer = [v5 currentOffer];

    if (currentOffer)
    {
      if ([ICQUpgradeFlowManager shouldShowForOffer:currentOffer])
      {
        upgradeFlowManager = [(BKCloudQuotaUIServices *)self upgradeFlowManager];

        if (!upgradeFlowManager)
        {
          v7 = [[ICQUpgradeFlowManager alloc] initWithOffer:currentOffer];
          [(BKCloudQuotaUIServices *)self setUpgradeFlowManager:v7];
        }
      }
    }

    upgradeFlowManagerFuture = [(BKCloudQuotaUIServices *)self upgradeFlowManagerFuture];
    upgradeFlowManager2 = [(BKCloudQuotaUIServices *)self upgradeFlowManager];
    [upgradeFlowManagerFuture set:upgradeFlowManager2 error:0];
  }
}

- (id)getUpgradeStorageFlowManager
{
  upgradeFlowManagerFuture = [(BKCloudQuotaUIServices *)self upgradeFlowManagerFuture];
  [upgradeFlowManagerFuture cancel];

  [(BKCloudQuotaUIServices *)self setUpgradeFlowManagerFuture:0];
  v4 = objc_opt_new();
  [(BKCloudQuotaUIServices *)self setUpgradeFlowManagerFuture:v4];

  [(BKCloudQuotaUIServices *)self _updateWithNewOffer];

  return [(BKCloudQuotaUIServices *)self upgradeFlowManagerFuture];
}

- (void)goToSettingsUpgradePane
{
  v2 = [NSURL URLWithString:@"prefs:root=CASTLE&path=STORAGE_AND_BACKUP/CHANGE_STORAGE_PLAN"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = 0;
  [v3 openSensitiveURL:v2 withOptions:0 error:&v4];
}

- (void)goToSettingsManagePane
{
  v2 = [NSURL URLWithString:@"prefs:root=CASTLE&path=STORAGE_AND_BACKUP/MANAGE_STORAGE"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = 0;
  [v3 openSensitiveURL:v2 withOptions:0 error:&v4];
}

- (void)presentUpgradeOfferWithNavigationController:(id)controller
{
  controllerCopy = controller;
  offersManager = [(BKCloudQuotaUIServices *)self offersManager];
  [offersManager beginFlowWithNavigationController:controllerCopy modally:1];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    serialQueue = self->_serialQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100171504;
    v7[3] = &unk_100A03440;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(serialQueue, v7);
  }

  else
  {
    sub_100791E4C();
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    serialQueue = self->_serialQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100171644;
    v7[3] = &unk_100A03440;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(serialQueue, v7);
  }

  else
  {
    sub_100791ED0();
  }
}

- (void)managerDidCancel:(id)cancel
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100171754;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

@end