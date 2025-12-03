@interface HSPCGuestAccessItemManager
- (HSPCGuestAccessItemManager)initWithDelegate:(id)delegate;
- (HSPCGuestAccessItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HSPCGuestAccessItemManager)initWithPinCodeManager:(id)manager delegate:(id)delegate home:(id)home forAccessory:(id)accessory;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_homeFuture;
- (id)_itemsToHideInSet:(id)set;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HSPCGuestAccessItemManager

- (HSPCGuestAccessItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  v6 = [NSAssertionHandler currentHandler:delegate];
  v7 = NSStringFromSelector("initWithPinCodeManager:delegate:home:forAccessory:");
  [v6 handleFailureInMethod:a2 object:self file:@"HSPCGuestAccessItemManager.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HSPCGuestAccessItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HSPCGuestAccessItemManager)initWithDelegate:(id)delegate
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithPinCodeManager:delegate:home:forAccessory:");
  [v5 handleFailureInMethod:a2 object:self file:@"HSPCGuestAccessItemManager.m" lineNumber:31 description:{@"%s is unavailable; use %@ instead", "-[HSPCGuestAccessItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HSPCGuestAccessItemManager)initWithPinCodeManager:(id)manager delegate:(id)delegate home:(id)home forAccessory:(id)accessory
{
  managerCopy = manager;
  homeCopy = home;
  accessoryCopy = accessory;
  v17.receiver = self;
  v17.super_class = HSPCGuestAccessItemManager;
  v14 = [(HSPCGuestAccessItemManager *)&v17 initWithDelegate:delegate sourceItem:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pinCodeManager, manager);
    objc_storeStrong(&v15->_overrideHome, home);
    objc_storeStrong(&v15->_accessory, accessory);
  }

  return v15;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v4 = [HFPinCodeItemProvider alloc];
  home = [(HSPCGuestAccessItemManager *)self home];
  pinCodeManager = [(HSPCGuestAccessItemManager *)self pinCodeManager];
  accessory = [(HSPCGuestAccessItemManager *)self accessory];
  v8 = [v4 initWithHome:home pinCodeManager:pinCodeManager listType:2 forAccessory:accessory];

  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  return v9;
}

- (id)_itemsToHideInSet:(id)set
{
  v8.receiver = self;
  v8.super_class = HSPCGuestAccessItemManager;
  setCopy = set;
  v4 = [(HSPCGuestAccessItemManager *)&v8 _itemsToHideInSet:setCopy];
  v5 = [v4 mutableCopy];

  v6 = [setCopy na_filter:&stru_1000C68F8];

  [v5 unionSet:v6];

  return v5;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HSPCGuestAccessItemManager;
  [(HSPCGuestAccessItemManager *)&v4 _registerForExternalUpdates];
  pinCodeManager = [(HSPCGuestAccessItemManager *)self pinCodeManager];
  [pinCodeManager addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HSPCGuestAccessItemManager;
  [(HSPCGuestAccessItemManager *)&v4 _unregisterForExternalUpdates];
  pinCodeManager = [(HSPCGuestAccessItemManager *)self pinCodeManager];
  [pinCodeManager removeObserver:self];
}

- (id)_homeFuture
{
  overrideHome = [(HSPCGuestAccessItemManager *)self overrideHome];
  v3 = [NAFuture futureWithResult:overrideHome];

  return v3;
}

@end