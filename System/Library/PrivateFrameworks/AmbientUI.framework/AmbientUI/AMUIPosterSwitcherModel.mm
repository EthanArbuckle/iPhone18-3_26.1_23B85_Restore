@interface AMUIPosterSwitcherModel
+ (AMUIPosterSwitcherModel)sharedInstance;
- (AMUIPosterSwitcherModel)init;
- (NSArray)posterConfigurations;
- (PRSPosterConfiguration)activeConfiguration;
- (void)_setActiveConfiguration:(id)configuration;
- (void)_setPosterConfigurations:(id)configurations;
- (void)addObserver:(id)observer;
- (void)dealloc;
@end

@implementation AMUIPosterSwitcherModel

+ (AMUIPosterSwitcherModel)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AMUIPosterSwitcherModel_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___sharedInstance;

  return v2;
}

uint64_t __41__AMUIPosterSwitcherModel_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (AMUIPosterSwitcherModel)init
{
  v23.receiver = self;
  v23.super_class = AMUIPosterSwitcherModel;
  v2 = [(AMUIPosterSwitcherModel *)&v23 init];
  v3 = v2;
  if (v2)
  {
    v2->_stateLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277D3EA18]);
    v5 = objc_alloc(MEMORY[0x277D3E9A0]);
    v6 = *MEMORY[0x277D3EA30];
    v7 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D3EA30]];
    v8 = [v5 initWithRoles:v7];

    objc_initWeak(&location, v3);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __31__AMUIPosterSwitcherModel_init__block_invoke;
    v20[3] = &unk_278C76308;
    objc_copyWeak(&v21, &location);
    [v8 setHandler:v20];
    [v4 setActivePosterRoleObserver:v8];
    v9 = [objc_alloc(MEMORY[0x277D3E9A8]) initWithRole:v6];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __31__AMUIPosterSwitcherModel_init__block_invoke_2;
    v18[3] = &unk_278C76330;
    v10 = v3;
    v19 = v10;
    [v9 setHandler:v18];
    [v4 setPostersCollectionRoleObserver:v9];
    v11 = objc_alloc(MEMORY[0x277D3EA10]);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 initWithExplanation:v13];

    [v14 activateWithConfiguration:v4];
    objc_storeStrong(&v10->_wallpaperObserver, v14);
    v15 = +[AMUIPosterUpdater defaultUpdater];
    posterConfigurationsUpdater = v10->_posterConfigurationsUpdater;
    v10->_posterConfigurationsUpdater = v15;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __31__AMUIPosterSwitcherModel_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v6 activePoster];
    [WeakRetained _setActiveConfiguration:v5];
  }
}

void __31__AMUIPosterSwitcherModel_init__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v4;
    v7 = [a4 array];
    [v6 _setPosterConfigurations:v7];
  }
}

- (void)dealloc
{
  [(PRSWallpaperObserver *)self->_wallpaperObserver invalidate];
  v3.receiver = self;
  v3.super_class = AMUIPosterSwitcherModel;
  [(AMUIPosterSwitcherModel *)&v3 dealloc];
}

- (NSArray)posterConfigurations
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_posterConfigurations;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (void)_setPosterConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  os_unfair_lock_lock(&self->_stateLock);
  v5 = [configurationsCopy copy];

  posterConfigurations = self->_posterConfigurations;
  self->_posterConfigurations = v5;

  v7 = [(NSArray *)self->_posterConfigurations copy];
  os_unfair_lock_unlock(&self->_stateLock);
  v8 = v7;
  BSDispatchMain();
}

void __52__AMUIPosterSwitcherModel__setPosterConfigurations___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 posterSwitcherModel:*(a1 + 32) didUpdateConfigurations:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (PRSPosterConfiguration)activeConfiguration
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_activeConfiguration;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (void)_setActiveConfiguration:(id)configuration
{
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_activeConfiguration != configurationCopy)
  {
    objc_storeStrong(&self->_activeConfiguration, configuration);
  }

  os_unfair_lock_unlock(&self->_stateLock);
  v6 = configurationCopy;
  BSDispatchMain();
}

void __51__AMUIPosterSwitcherModel__setActiveConfiguration___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 posterSwitcherModel:*(a1 + 32) didUpdateActiveConfiguration:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

@end