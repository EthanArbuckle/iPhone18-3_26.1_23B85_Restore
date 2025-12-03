@interface ACNotificationRebroadcaster
+ (ACNotificationRebroadcaster)sharedRebroadcaster;
- (ACNotificationRebroadcaster)init;
- (void)_accountStoreDidChange:(id)change;
- (void)_beginObservingAccountStoreDidChangeNotifications;
- (void)_endObservingAccountStoreDidChangeNotifications;
- (void)dealloc;
@end

@implementation ACNotificationRebroadcaster

- (void)_beginObservingAccountStoreDidChangeNotifications
{
  v3 = objc_autoreleasePoolPush();
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__ACNotificationRebroadcaster__beginObservingAccountStoreDidChangeNotifications__block_invoke;
  v8[3] = &unk_1E79755E0;
  objc_copyWeak(&v9, &location);
  v6 = [defaultCenter addObserverForName:@"ACDAccountStoreDidChangeNotification" object:0 queue:queue usingBlock:v8];
  daemonAccountStoreDidChangeObserver = self->_daemonAccountStoreDidChangeObserver;
  self->_daemonAccountStoreDidChangeObserver = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v3);
}

+ (ACNotificationRebroadcaster)sharedRebroadcaster
{
  if (sharedRebroadcaster_onceToken != -1)
  {
    +[ACNotificationRebroadcaster sharedRebroadcaster];
  }

  v3 = sharedRebroadcaster_sharedRebroadcaster;

  return v3;
}

uint64_t __50__ACNotificationRebroadcaster_sharedRebroadcaster__block_invoke()
{
  sharedRebroadcaster_sharedRebroadcaster = objc_alloc_init(ACNotificationRebroadcaster);

  return MEMORY[0x1EEE66BB8]();
}

- (ACNotificationRebroadcaster)init
{
  v6.receiver = self;
  v6.super_class = ACNotificationRebroadcaster;
  v2 = [(ACNotificationRebroadcaster *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v2->_queue;
    v2->_queue = v3;

    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_queue setQualityOfService:-1];
    [(NSOperationQueue *)v2->_queue setName:@"com.apple.accounts.notification.rebroadcaster"];
    [(ACNotificationRebroadcaster *)v2 _beginObservingAccountStoreDidChangeNotifications];
  }

  return v2;
}

- (void)dealloc
{
  [(ACNotificationRebroadcaster *)self _endObservingAccountStoreDidChangeNotifications];
  v3.receiver = self;
  v3.super_class = ACNotificationRebroadcaster;
  [(ACNotificationRebroadcaster *)&v3 dealloc];
}

void __80__ACNotificationRebroadcaster__beginObservingAccountStoreDidChangeNotifications__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _accountStoreDidChange:v5];
  }
}

- (void)_accountStoreDidChange:(id)change
{
  changeCopy = change;
  v4 = objc_autoreleasePoolPush();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  userInfo = [changeCopy userInfo];
  [defaultCenter postNotificationName:@"ACDAccountStoreDidChangeNotification" object:self userInfo:userInfo];

  objc_autoreleasePoolPop(v4);
}

- (void)_endObservingAccountStoreDidChangeNotifications
{
  v3 = objc_autoreleasePoolPush();
  if (self->_daemonAccountStoreDidChangeObserver)
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter removeObserver:self->_daemonAccountStoreDidChangeObserver];

    daemonAccountStoreDidChangeObserver = self->_daemonAccountStoreDidChangeObserver;
    self->_daemonAccountStoreDidChangeObserver = 0;
  }

  objc_autoreleasePoolPop(v3);
}

@end