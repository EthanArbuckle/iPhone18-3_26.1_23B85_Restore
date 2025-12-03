@interface ADNetworkController
+ (id)sharedNetworkController;
- (id)getDataContext:(id)context;
- (int)cellNetworkType;
- (int)networkType;
- (void)_checkForNetwork;
- (void)_checkForNetworkAndNotify;
- (void)start;
@end

@implementation ADNetworkController

+ (id)sharedNetworkController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ADNetworkController_sharedNetworkController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedNetworkController_onceToken != -1)
  {
    dispatch_once(&sharedNetworkController_onceToken, block);
  }

  v2 = sharedNetworkController_sharedNetworkController;

  return v2;
}

uint64_t __46__ADNetworkController_sharedNetworkController__block_invoke(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___ADNetworkController;
  v1 = [objc_msgSendSuper2(&v4 allocWithZone_];
  v2 = sharedNetworkController_sharedNetworkController;
  sharedNetworkController_sharedNetworkController = v1;

  return [sharedNetworkController_sharedNetworkController start];
}

- (void)start
{
  [(ADNetworkController *)self setCanReachTheNetwork:0];
  self->_isUpdating = 0;
  v3 = dispatch_queue_create("com.apple.ap.adprivacyd.networkwatcher", 0);
  queue = self->_queue;
  self->_queue = v3;

  v5 = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ADNetworkController_start__block_invoke;
  block[3] = &unk_278C551F8;
  block[4] = self;
  dispatch_async(v5, block);
  if (!self->_reachability)
  {
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = self;
    v6 = SCNetworkReachabilityCreateWithName(*MEMORY[0x277CBECE8], "apple.com");
    self->_reachability = v6;
    if (!v6)
    {
      v7 = @"[%@] Unable to create reachability object.";
      goto LABEL_7;
    }

    if (!SCNetworkReachabilitySetCallback(v6, _reachabilityDidChange, &context) || !SCNetworkReachabilitySetDispatchQueue(self->_reachability, self->_queue))
    {
      v7 = @"[%@] Could not set reachability callback or queue.";
LABEL_7:
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7, objc_opt_class()];
      _ADLog(@"iAdInternalLogging", v8, 16);

      self->_reachabilityFlags = 0;
    }
  }
}

- (int)networkType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  networkType = selfCopy->_networkType;
  if (!networkType)
  {
    [(ADNetworkController *)selfCopy _checkForNetworkAndNotify];
    networkType = selfCopy->_networkType;
  }

  objc_sync_exit(selfCopy);

  return networkType;
}

- (int)cellNetworkType
{
  v3 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v4 = [(ADNetworkController *)self getDataContext:v3];
  v12 = 0;
  v5 = [v3 getDataStatus:v4 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find cell network type due no data or error: %@", v6];
    _ADLog(@"iAdSettingsLogging", v9, 16);
  }

  v10 = -[ADNetworkController dataIndicatorToConnection:](self, "dataIndicatorToConnection:", [v5 indicator]);

  return v10;
}

- (id)getDataContext:(id)context
{
  v8 = 0;
  v3 = [context getPreferredDataSubscriptionContextSync:&v8];
  v4 = v8;
  v5 = v4;
  if (!v3 || v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find telephone subscription context due to error: %@", v4];
    _ADLog(@"iAdSettingsLogging", v6, 16);
  }

  return v3;
}

- (void)_checkForNetwork
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Looking up network type.", objc_opt_class()];
  _ADLog(@"ToroLogging", v3, 0);

  reachabilityFlags = self->_reachabilityFlags;
  if ((reachabilityFlags & 2) != 0)
  {
    self->_networkType = 2;
    if ((reachabilityFlags & 0x40000) != 0)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"kSCNetworkReachabilityFlagsIsWWAN is true! We are NOT on WiFi"];
      _ADLog(@"ToroLogging", v6, 0);

      self->_networkType = [(ADNetworkController *)self cellNetworkType];
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"kSCNetworkReachabilityFlagsIsWWAN is false! We are on WiFi"];
      _ADLog(@"ToroLogging", v5, 0);
    }
  }

  if (!self->_networkType)
  {
    self->_networkType = [(ADNetworkController *)self cellNetworkType];
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  networkType = self->_networkType;
  if (networkType >= 0xB)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_networkType];
  }

  else
  {
    v10 = off_278C55218[networkType];
  }

  v12 = v10;
  v11 = [v7 stringWithFormat:@"[%@] Network has a type of: %@", v8, v10];
  _ADLog(@"ToroLogging", v11, 0);
}

- (void)_checkForNetworkAndNotify
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_isUpdating)
  {
    obj->_isUpdating = 1;
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Checking for the network and sending a notification.", objc_opt_class()];
    _ADLog(@"iAdInternalLogging", v3, 0);

    obj->_networkType = 0;
    [(ADNetworkController *)obj _checkForNetwork];
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_9);
    v2 = obj;
    obj->_isUpdating = 0;
  }

  objc_sync_exit(v2);
}

void __48__ADNetworkController__checkForNetworkAndNotify__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"ADNetworkDidChangeNotification" object:0];
}

@end