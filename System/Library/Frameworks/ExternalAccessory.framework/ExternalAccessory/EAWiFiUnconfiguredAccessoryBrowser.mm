@interface EAWiFiUnconfiguredAccessoryBrowser
- (EAWiFiUnconfiguredAccessoryBrowser)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue;
- (id)delegate;
- (void)_handleBrowserDidUpdateState:(id)a3;
- (void)_handleBrowserFinishedConfiguring:(id)a3;
- (void)_handleNewAccessoriesNotification:(id)a3;
- (void)_handlePurgeAccessoriesSetNotification:(id)a3;
- (void)_handleRemovedAccessoriesNotification:(id)a3;
- (void)configureAccessory:(EAWiFiUnconfiguredAccessory *)accessory withConfigurationUIOnViewController:(UIViewController *)viewController;
- (void)dealloc;
- (void)startSearchingForUnconfiguredAccessoriesMatchingPredicate:(NSPredicate *)predicate;
- (void)stopSearchingForUnconfiguredAccessories;
@end

@implementation EAWiFiUnconfiguredAccessoryBrowser

- (EAWiFiUnconfiguredAccessoryBrowser)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v6 = delegate;
  v7 = queue;
  v27.receiver = self;
  v27.super_class = EAWiFiUnconfiguredAccessoryBrowser;
  v8 = [(EAWiFiUnconfiguredAccessoryBrowser *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    unconfiguredAccessories = v9->_unconfiguredAccessories;
    v9->_unconfiguredAccessories = v10;

    if (v7)
    {
      v12 = v7;
      delegateQueue = v9->_delegateQueue;
      v9->_delegateQueue = v12;
    }

    else
    {
      v14 = MEMORY[0x277D85CD0];
      v15 = MEMORY[0x277D85CD0];
      delegateQueue = v9->_delegateQueue;
      v9->_delegateQueue = v14;
    }

    v9->__debugLog = +[WACLogging isEnabled];
    block = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __61__EAWiFiUnconfiguredAccessoryBrowser_initWithDelegate_queue___block_invoke;
    v25 = &unk_278A4E8B0;
    v16 = v9;
    v26 = v16;
    if (initWithDelegate_queue__token != -1)
    {
      dispatch_once(&initWithDelegate_queue__token, &block);
    }

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v16 selector:sel__handleBrowserDidUpdateState_ name:@"EAWiFiUnconfiguredAccessoryBrowserDidUpdateState" object:0];
    [v17 addObserver:v16 selector:sel__handleNewAccessoriesNotification_ name:@"EAWiFiUnconfiguredAccessoriesAddedNotification" object:0];
    [v17 addObserver:v16 selector:sel__handleRemovedAccessoriesNotification_ name:@"EAWiFiUnconfiguredAccessoriesRemovedNotification" object:0];
    [v17 addObserver:v16 selector:sel__handlePurgeAccessoriesSetNotification_ name:@"EAWiFiUnconfiguredAccessoryBrowserPurgeAccessoriesSet" object:0];
    if (v9->__debugLog)
    {
      v18 = EAUIApplicationDidEnterBackgroundNotification();
      NSLog(&stru_284B126E0.isa, v18, block, v23, v24, v25, v26);
    }

    v19 = EAUIApplicationDidEnterBackgroundNotification();
    [v17 addObserver:v16 selector:sel_stopSearchingForUnconfiguredAccessories name:v19 object:0];
  }

  v20 = [__EAWiFiUnconfiguredAccessoryBrowserManager sharedInstance];

  return v9;
}

void __61__EAWiFiUnconfiguredAccessoryBrowser_initWithDelegate_queue___block_invoke(uint64_t a1)
{
  uikitFramework_0 = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 0);
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ExternalAccessory"];
  v3 = [v2 builtInPlugInsPath];
  v5 = [v3 stringByAppendingPathComponent:@"ExternalAccessoryWACUIBits.bundle"];

  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:v5];
  [v4 load];
  if (*(*(a1 + 32) + 8) == 1)
  {
    NSLog(&cfstr_Bundlepath.isa, v5);
    if (*(*(a1 + 32) + 8))
    {
      NSLog(&cfstr_Bundle.isa, v4);
      if (*(*(a1 + 32) + 8))
      {
        NSLog(&cfstr_Principle.isa, [v4 principalClass]);
      }
    }
  }

  if (v4)
  {
    __EAWiFiUnconfiguredAccessoryBrowserManager = [v4 principalClass];
    if (!__EAWiFiUnconfiguredAccessoryBrowserManager)
    {
      NSLog(&cfstr_WacBrowserErro.isa);
    }
  }

  else
  {
    NSLog(&cfstr_WacBrowserErro_0.isa);
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  if (uikitFramework_0 && dealloc_token != -1)
  {
    [EAWiFiUnconfiguredAccessoryBrowser dealloc];
  }

  v4.receiver = self;
  v4.super_class = EAWiFiUnconfiguredAccessoryBrowser;
  [(EAWiFiUnconfiguredAccessoryBrowser *)&v4 dealloc];
}

- (void)startSearchingForUnconfiguredAccessoriesMatchingPredicate:(NSPredicate *)predicate
{
  v5 = predicate;
  if (self->__debugLog)
  {
    NSLog(&cfstr_WacBrowserStar.isa);
  }

  [(EAWiFiUnconfiguredAccessoryBrowser *)self setAccessorySearchPredicate:v5];
  v4 = [__EAWiFiUnconfiguredAccessoryBrowserManager sharedInstance];
  [v4 startSearchingForUnconfiguredAccessories];
}

- (void)stopSearchingForUnconfiguredAccessories
{
  if (self->__debugLog)
  {
    NSLog(&cfstr_WacBrowserStop.isa, a2);
  }

  v2 = [__EAWiFiUnconfiguredAccessoryBrowserManager sharedInstance];
  [v2 stopSearchingForUnconfiguredAccessories];
}

- (void)configureAccessory:(EAWiFiUnconfiguredAccessory *)accessory withConfigurationUIOnViewController:(UIViewController *)viewController
{
  v9 = accessory;
  v6 = viewController;
  if (self->__debugLog)
  {
    NSLog(&cfstr_WacBrowserConf.isa, v9);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__handleBrowserFinishedConfiguring_ name:@"EAWiFiUnconfiguredAccessoryBrowserFinishedConfiguringAccessoryNotification" object:0];

  v8 = [__EAWiFiUnconfiguredAccessoryBrowserManager sharedInstance];
  [v8 configureAccessory:v9 withConfigurationUIOnViewController:v6];
}

- (void)_handleBrowserDidUpdateState:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"EAWiFiUnconfiguredAccessoryBrowserState"];
  v6 = [v5 intValue];

  if (self->__debugLog)
  {
    NSLog(&cfstr_WacBrowserHand.isa, v6);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__EAWiFiUnconfiguredAccessoryBrowser__handleBrowserDidUpdateState___block_invoke;
      block[3] = &unk_278A4E8D8;
      block[4] = self;
      block[5] = v6;
      dispatch_async(delegateQueue, block);
    }
  }
}

void __67__EAWiFiUnconfiguredAccessoryBrowser__handleBrowserDidUpdateState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained accessoryBrowser:*(a1 + 32) didUpdateState:*(a1 + 40)];
}

- (void)_handleNewAccessoriesNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"EAWiFiUnconfiguredAccessoriesAddedOrRemovedSet"];

  if (self->__debugLog)
  {
    NSLog(&cfstr_WacBrowserHand_0.isa, v5);
  }

  v6 = [(EAWiFiUnconfiguredAccessoryBrowser *)self accessorySearchPredicate];

  if (v6)
  {
    v7 = [(EAWiFiUnconfiguredAccessoryBrowser *)self accessorySearchPredicate];
    v8 = [v5 filteredSetUsingPredicate:v7];
  }

  else
  {
    v8 = v5;
  }

  v9 = [(EAWiFiUnconfiguredAccessoryBrowser *)self unconfiguredAccessories];
  [v9 unionSet:v8];

  if ([v8 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v11 = WeakRetained;
      v12 = objc_loadWeakRetained(&self->_delegate);
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __72__EAWiFiUnconfiguredAccessoryBrowser__handleNewAccessoriesNotification___block_invoke;
        block[3] = &unk_278A4E900;
        block[4] = self;
        v16 = v8;
        dispatch_async(delegateQueue, block);
      }
    }
  }
}

void __72__EAWiFiUnconfiguredAccessoryBrowser__handleNewAccessoriesNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained accessoryBrowser:*(a1 + 32) didFindUnconfiguredAccessories:*(a1 + 40)];
}

- (void)_handleRemovedAccessoriesNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"EAWiFiUnconfiguredAccessoriesAddedOrRemovedSet"];

  if (self->__debugLog)
  {
    NSLog(&cfstr_WacBrowserHand_1.isa, v5);
  }

  v6 = [(EAWiFiUnconfiguredAccessoryBrowser *)self accessorySearchPredicate];

  if (v6)
  {
    v7 = [(EAWiFiUnconfiguredAccessoryBrowser *)self accessorySearchPredicate];
    v8 = [v5 filteredSetUsingPredicate:v7];
  }

  else
  {
    v8 = v5;
  }

  v9 = [(EAWiFiUnconfiguredAccessoryBrowser *)self unconfiguredAccessories];
  [v9 minusSet:v8];

  if ([v8 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v11 = WeakRetained;
      v12 = objc_loadWeakRetained(&self->_delegate);
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __76__EAWiFiUnconfiguredAccessoryBrowser__handleRemovedAccessoriesNotification___block_invoke;
        block[3] = &unk_278A4E900;
        block[4] = self;
        v16 = v8;
        dispatch_async(delegateQueue, block);
      }
    }
  }
}

void __76__EAWiFiUnconfiguredAccessoryBrowser__handleRemovedAccessoriesNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained accessoryBrowser:*(a1 + 32) didRemoveUnconfiguredAccessories:*(a1 + 40)];
}

- (void)_handlePurgeAccessoriesSetNotification:(id)a3
{
  if (self->__debugLog)
  {
    NSLog(&cfstr_WacBrowserHand_2.isa, a2, a3, self->_unconfiguredAccessories);
  }

  v4 = [MEMORY[0x277CBEB98] setWithSet:self->_unconfiguredAccessories];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__EAWiFiUnconfiguredAccessoryBrowser__handlePurgeAccessoriesSetNotification___block_invoke;
  block[3] = &unk_278A4E900;
  block[4] = self;
  v10 = v4;
  v6 = v4;
  dispatch_async(delegateQueue, block);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  unconfiguredAccessories = self->_unconfiguredAccessories;
  self->_unconfiguredAccessories = v7;
}

void __77__EAWiFiUnconfiguredAccessoryBrowser__handlePurgeAccessoriesSetNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained accessoryBrowser:*(a1 + 32) didRemoveUnconfiguredAccessories:*(a1 + 40)];
}

- (void)_handleBrowserFinishedConfiguring:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->__debugLog)
  {
    NSLog(&cfstr_WacBrowserHand_3.isa, v4);
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:@"EAWiFiUnconfiguredAccessoryBrowserFinishedConfiguringAccessoryNotification" object:0];

  v7 = [v5 userInfo];
  v8 = [v7 objectForKey:@"EAWiFiUnconfiguredAccessoryBrowserConfigurationStatus"];
  v9 = [v8 integerValue];

  v10 = [v5 userInfo];
  v11 = [v10 objectForKey:@"EAWiFiUnconfiguredAccessoryConfigured"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__EAWiFiUnconfiguredAccessoryBrowser__handleBrowserFinishedConfiguring___block_invoke;
      block[3] = &unk_278A4E928;
      block[4] = self;
      v18 = v11;
      v19 = v9;
      dispatch_async(delegateQueue, block);
    }
  }
}

void __72__EAWiFiUnconfiguredAccessoryBrowser__handleBrowserFinishedConfiguring___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  [WeakRetained accessoryBrowser:a1[4] didFinishConfiguringAccessory:a1[5] withStatus:a1[6]];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end