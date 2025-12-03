@interface AMUILastSelectedPosterStore
+ (id)new;
- (AMUILastSelectedPosterStore)init;
- (AMUILastSelectedPosterStore)initWithAmbientDefaults:(id)defaults;
- (id)lastSelectedConfigurationUUIDForChargerIdentifier:(id)identifier providerBundleIdentifier:(id)bundleIdentifier;
- (void)_performWithSelectedConfigurationsForChargerIdentifier:(id)identifier onlyIfPresent:(BOOL)present block:(id)block;
- (void)_synchronize;
- (void)setLastSelectedConfigurationUUID:(id)d forChargerIdentifier:(id)identifier providerBundleIdentifier:(id)bundleIdentifier;
@end

@implementation AMUILastSelectedPosterStore

- (AMUILastSelectedPosterStore)initWithAmbientDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v17.receiver = self;
  v17.super_class = AMUILastSelectedPosterStore;
  v6 = [(AMUILastSelectedPosterStore *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ambientDefaults, defaults);
    lastSelectedConfigurations = [(AMAmbientDefaults *)v7->_ambientDefaults lastSelectedConfigurations];
    v9 = lastSelectedConfigurations;
    if (!lastSelectedConfigurations)
    {
      lastSelectedConfigurations = MEMORY[0x277CBEC10];
    }

    v10 = [lastSelectedConfigurations mutableCopy];
    cachedLastSelectedConfigurations = v7->_cachedLastSelectedConfigurations;
    v7->_cachedLastSelectedConfigurations = v10;

    serial = [MEMORY[0x277CF0C18] serial];
    v13 = [serial serviceClass:17];
    v14 = BSDispatchQueueCreate();
    persistenceQueue = v7->_persistenceQueue;
    v7->_persistenceQueue = v14;
  }

  return v7;
}

- (AMUILastSelectedPosterStore)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"-init not implemented"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"AMUILastSelectedPosterStore.m";
    v17 = 1024;
    v18 = 46;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_23F38B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)new
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"+new not implemented"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"AMUILastSelectedPosterStore.m";
    v17 = 1024;
    v18 = 51;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_23F38B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)lastSelectedConfigurationUUIDForChargerIdentifier:(id)identifier providerBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__AMUILastSelectedPosterStore_lastSelectedConfigurationUUIDForChargerIdentifier_providerBundleIdentifier___block_invoke;
  v11[3] = &unk_278C76388;
  v13 = &v14;
  v8 = bundleIdentifierCopy;
  v12 = v8;
  [(AMUILastSelectedPosterStore *)self _performWithSelectedConfigurationsForChargerIdentifier:identifierCopy onlyIfPresent:1 block:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

uint64_t __106__AMUILastSelectedPosterStore_lastSelectedConfigurationUUIDForChargerIdentifier_providerBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastSelectedConfigurationUUIDForProviderBundleIdentifier:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)setLastSelectedConfigurationUUID:(id)d forChargerIdentifier:(id)identifier providerBundleIdentifier:(id)bundleIdentifier
{
  dCopy = d;
  bundleIdentifierCopy = bundleIdentifier;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __110__AMUILastSelectedPosterStore_setLastSelectedConfigurationUUID_forChargerIdentifier_providerBundleIdentifier___block_invoke;
  v12[3] = &unk_278C763B0;
  v13 = dCopy;
  v14 = bundleIdentifierCopy;
  v10 = bundleIdentifierCopy;
  v11 = dCopy;
  [(AMUILastSelectedPosterStore *)self _performWithSelectedConfigurationsForChargerIdentifier:identifier block:v12];
}

- (void)_performWithSelectedConfigurationsForChargerIdentifier:(id)identifier onlyIfPresent:(BOOL)present block:(id)block
{
  *(&v37[1] + 4) = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  v8 = [(NSMutableDictionary *)self->_cachedLastSelectedConfigurations objectForKeyedSubscript:identifierCopy];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = [[AMUISelectedConfigurations alloc] initWithDictionaryRepresentation:v10];
  if (!v11)
  {
    v12 = objc_alloc_init(AMUISelectedConfigurations);
LABEL_8:
    if (present)
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v12 = v11;
  if (v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  v13 = v12;
  blockCopy[2](blockCopy, v12);
  dictionaryRepresentation = [(AMUISelectedConfigurations *)v13 dictionaryRepresentation];
  [(NSMutableDictionary *)self->_cachedLastSelectedConfigurations setObject:dictionaryRepresentation forKeyedSubscript:identifierCopy];

  if ([(NSMutableDictionary *)self->_cachedLastSelectedConfigurations count]>= 0x33)
  {
    v15 = MEMORY[0x277D85DD0];
    do
    {
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x3032000000;
      v34[3] = __Block_byref_object_copy__0;
      v34[4] = __Block_byref_object_dispose__0;
      v35 = 0;
      v31 = 0;
      v32[0] = &v31;
      v32[1] = 0x3032000000;
      v32[2] = __Block_byref_object_copy__0;
      v32[3] = __Block_byref_object_dispose__0;
      v33 = 0;
      cachedLastSelectedConfigurations = self->_cachedLastSelectedConfigurations;
      v30[0] = v15;
      v30[1] = 3221225472;
      v30[2] = __106__AMUILastSelectedPosterStore__performWithSelectedConfigurationsForChargerIdentifier_onlyIfPresent_block___block_invoke;
      v30[3] = &unk_278C763D8;
      v30[4] = v34;
      v30[5] = &v31;
      [(NSMutableDictionary *)cachedLastSelectedConfigurations enumerateKeysAndObjectsUsingBlock:v30];
      v17 = *(v32[0] + 40);
      if (!v17)
      {
        allKeys = [(NSMutableDictionary *)self->_cachedLastSelectedConfigurations allKeys];
        lastObject = [allKeys lastObject];
        v20 = *(v32[0] + 40);
        *(v32[0] + 40) = lastObject;

        v21 = AMUILogSwitcher();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(AMUILastSelectedPosterStore *)buf _performWithSelectedConfigurationsForChargerIdentifier:v32 onlyIfPresent:v37 block:v21];
        }

        v17 = *(v32[0] + 40);
      }

      [(NSMutableDictionary *)self->_cachedLastSelectedConfigurations removeObjectForKey:v17];
      _Block_object_dispose(&v31, 8);

      _Block_object_dispose(v34, 8);
    }

    while ([(NSMutableDictionary *)self->_cachedLastSelectedConfigurations count]> 0x32);
  }

  v22 = [(NSMutableDictionary *)self->_cachedLastSelectedConfigurations copy];
  persistenceQueue = self->_persistenceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__AMUILastSelectedPosterStore__performWithSelectedConfigurationsForChargerIdentifier_onlyIfPresent_block___block_invoke_15;
  block[3] = &unk_278C75DD8;
  block[4] = self;
  v29 = v22;
  v24 = v22;
  dispatch_async(persistenceQueue, block);

  v12 = v13;
LABEL_17:

  v25 = *MEMORY[0x277D85DE8];
}

void __106__AMUILastSelectedPosterStore__performWithSelectedConfigurationsForChargerIdentifier_onlyIfPresent_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v15 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v15;
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = v7;

  v9 = objc_opt_class();
  v10 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [AMUISelectedConfigurations lastUsedDateFromDictionaryRepresentation:v12];

  v14 = *(*(a1 + 32) + 8);
  if (*(v14 + 40))
  {
    if ([v13 compare:?] != -1)
    {
      goto LABEL_14;
    }

    v14 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v14 + 40), v13);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
LABEL_14:
}

- (void)_synchronize
{
  persistenceQueue = self->_persistenceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__AMUILastSelectedPosterStore_Testing___synchronize__block_invoke;
  block[3] = &unk_278C75D60;
  block[4] = self;
  dispatch_sync(persistenceQueue, block);
}

void __52__AMUILastSelectedPosterStore_Testing___synchronize__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) lastSelectedConfigurations];
  v6 = v2;
  if (!v2)
  {
    v2 = MEMORY[0x277CBEC10];
  }

  v3 = [v2 mutableCopy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;
}

- (void)_performWithSelectedConfigurationsForChargerIdentifier:(void *)a3 onlyIfPresent:(os_log_t)log block:.cold.1(uint8_t *buf, uint64_t a2, void *a3, os_log_t log)
{
  v4 = *(*a2 + 40);
  *buf = 138412290;
  *a3 = v4;
  _os_log_error_impl(&dword_23F38B000, log, OS_LOG_TYPE_ERROR, "Error pruning selected representations by charger ID - no oldest entry found, evicting %@ at semi-random", buf, 0xCu);
}

@end