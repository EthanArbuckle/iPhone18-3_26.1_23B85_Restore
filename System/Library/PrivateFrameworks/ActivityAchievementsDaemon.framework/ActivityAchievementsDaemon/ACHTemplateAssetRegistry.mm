@interface ACHTemplateAssetRegistry
- (ACHTemplateAssetRegistry)initWithRemoteTemplateAvailabilityKeyProvider:(id)provider;
- (ACHTemplateAssetRegistryDelegate)delegate;
- (void)_setBundleURLsForAchievement:(id)achievement;
- (void)deregisterTemplateAssetSource:(id)source;
- (void)populateResourcePropertiesForAchievement:(id)achievement;
- (void)registerTemplateAssetSource:(id)source;
- (void)setDelegate:(id)delegate;
- (void)templateAssetSourceDidUpdateAssets:(id)assets;
- (void)templateSourceDidUpdateAssets:(id)assets;
@end

@implementation ACHTemplateAssetRegistry

- (ACHTemplateAssetRegistry)initWithRemoteTemplateAvailabilityKeyProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = ACHTemplateAssetRegistry;
  v6 = [(ACHTemplateAssetRegistry *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    templateAssetSourcesByIdentifier = v6->_templateAssetSourcesByIdentifier;
    v6->_templateAssetSourcesByIdentifier = v7;

    v9 = HKCreateSerialDispatchQueue();
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v9;

    objc_storeStrong(&v6->_remoteTemplateAvailabilityKeyProvider, provider);
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  serialQueue = [(ACHTemplateAssetRegistry *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ACHTemplateAssetRegistry_setDelegate___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(serialQueue, v7);
}

- (void)registerTemplateAssetSource:(id)source
{
  sourceCopy = source;
  serialQueue = [(ACHTemplateAssetRegistry *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ACHTemplateAssetRegistry_registerTemplateAssetSource___block_invoke;
  v7[3] = &unk_278490898;
  v8 = sourceCopy;
  selfCopy = self;
  v6 = sourceCopy;
  dispatch_async(serialQueue, v7);
}

void __56__ACHTemplateAssetRegistry_registerTemplateAssetSource___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) conformsToProtocol:&unk_28355FEA8];
  v4 = ACHLogAssets();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*v2 identifier];
      *buf = 138543362;
      v23 = v6;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Template Asset Registry added asset source with identifier %{public}@", buf, 0xCu);
    }

    v7 = *v2;
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) setAssetSourceDelegate:*(a1 + 40)];
    }

    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) templateAssetSourcesByIdentifier];
    v10 = [*(a1 + 32) identifier];
    [v9 setObject:v8 forKeyedSubscript:v10];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ACHTemplateAssetRegistry_registerTemplateAssetSource___block_invoke_360;
    block[3] = &unk_278490898;
    v19 = *(a1 + 32);
    v11 = v19.i64[0];
    v21 = vextq_s8(v19, v19, 8uLL);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__ACHTemplateAssetRegistry_registerTemplateAssetSource___block_invoke_cold_1(v2, v5, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __56__ACHTemplateAssetRegistry_registerTemplateAssetSource___block_invoke_360(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v4 templateAssetRegistry:v2 didUpdateResourcesForTemplatesWithSourceName:v3];
}

- (void)deregisterTemplateAssetSource:(id)source
{
  sourceCopy = source;
  serialQueue = [(ACHTemplateAssetRegistry *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ACHTemplateAssetRegistry_deregisterTemplateAssetSource___block_invoke;
  v7[3] = &unk_278490898;
  v8 = sourceCopy;
  selfCopy = self;
  v6 = sourceCopy;
  dispatch_async(serialQueue, v7);
}

void __58__ACHTemplateAssetRegistry_deregisterTemplateAssetSource___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) conformsToProtocol:&unk_28355FEA8];
  v4 = [v2[1] templateAssetSourcesByIdentifier];
  v5 = [*v2 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v3)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v15 = ACHLogAssets();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*v2 identifier];
      v27 = 138543362;
      v28 = v17;
      _os_log_impl(&dword_221DDC000, v15, OS_LOG_TYPE_DEFAULT, "Template Asset Registry removed asset source with identifier %{public}@", &v27, 0xCu);
    }

    v18 = *v2;
    if (objc_opt_respondsToSelector())
    {
      [*v2 setAssetSourceDelegate:0];
    }

    v8 = [*(a1 + 40) templateAssetSourcesByIdentifier];
    v19 = [*(a1 + 32) identifier];
    [v8 removeObjectForKey:v19];

LABEL_17:
    goto LABEL_18;
  }

  if ((v3 & 1) == 0)
  {
    v8 = ACHLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__ACHTemplateAssetRegistry_deregisterTemplateAssetSource___block_invoke_cold_1(v2, v8, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_17;
  }

  if (!v6)
  {
    v8 = ACHLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__ACHTemplateAssetRegistry_deregisterTemplateAssetSource___block_invoke_cold_2(v2, v8, v9, v10, v11, v12, v13, v14);
    }

    goto LABEL_17;
  }

LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)populateResourcePropertiesForAchievement:(id)achievement
{
  achievementCopy = achievement;
  v5 = ACHLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ACHTemplateAssetRegistry *)achievementCopy populateResourcePropertiesForAchievement:v5];
  }

  [(ACHTemplateAssetRegistry *)self _setBundleURLsForAchievement:achievementCopy];
  v6 = ACHLogAssets();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACHTemplateAssetRegistry *)achievementCopy populateResourcePropertiesForAchievement:v6];
  }

  ACHApplyBadgePropertiesToAchievement();
}

- (void)_setBundleURLsForAchievement:(id)achievement
{
  v44 = *MEMORY[0x277D85DE8];
  achievementCopy = achievement;
  template = [achievementCopy template];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__5;
  v38 = __Block_byref_object_dispose__5;
  v39 = 0;
  serialQueue = [(ACHTemplateAssetRegistry *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACHTemplateAssetRegistry__setBundleURLsForAchievement___block_invoke;
  block[3] = &unk_278491010;
  v33 = &v34;
  block[4] = self;
  v7 = template;
  v32 = v7;
  dispatch_sync(serialQueue, block);

  v8 = [v35[5] localizationBundleURLForTemplate:v7];
  v9 = [v35[5] resourceBundleURLForTemplate:v7];
  v10 = [v35[5] propertyListBundleURLForTemplate:v7];
  v11 = [v35[5] stickerBundleURLForTemplate:v7];
  [achievementCopy setLocalizationBundleURL:v8];
  [achievementCopy setResourceBundleURL:v9];
  [achievementCopy setPropertyListBundleURL:v10];
  [achievementCopy setStickerBundleURL:v11];
  if (ACHTemplateIsRemote())
  {
    remoteTemplateAvailabilityKeyProvider = [(ACHTemplateAssetRegistry *)self remoteTemplateAvailabilityKeyProvider];
    v30 = 0;
    v13 = [remoteTemplateAvailabilityKeyProvider templateAvailableOnPairedDevice:v7 error:&v30];
    v14 = v30;

    if (v14)
    {
      v15 = ACHLogAssets();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(ACHTemplateAssetRegistry *)v14 _setBundleURLsForAchievement:v15, v16, v17, v18, v19, v20, v21];
      }
    }

    else
    {
      [v7 setAvailableOnPairedDevice:v13];
    }

    v22 = v35[5];
    if (objc_opt_respondsToSelector())
    {
      [v7 setMobileAssetVersion:{objc_msgSend(v35[5], "mobileAssetVersionForTemplate:", v7)}];
    }
  }

  v23 = v35[5];
  if (objc_opt_respondsToSelector())
  {
    v24 = v35[5];
    v29 = 0;
    v25 = [v24 customPlaceholderValuesForTemplate:v7 error:&v29];
    v26 = v29;
    [achievementCopy setCustomPlaceholderValues:v25];

    if (v26)
    {
      v27 = ACHLogAssets();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v41 = v7;
        v42 = 2112;
        v43 = v26;
        _os_log_impl(&dword_221DDC000, v27, OS_LOG_TYPE_DEFAULT, "Error getting custom placeholder for template %@: %@", buf, 0x16u);
      }
    }
  }

  _Block_object_dispose(&v34, 8);
  v28 = *MEMORY[0x277D85DE8];
}

void __57__ACHTemplateAssetRegistry__setBundleURLsForAchievement___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) templateAssetSourcesByIdentifier];
  v2 = [*(a1 + 40) sourceName];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)templateSourceDidUpdateAssets:(id)assets
{
  assetsCopy = assets;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__ACHTemplateAssetRegistry_templateSourceDidUpdateAssets___block_invoke;
  v6[3] = &unk_278490898;
  v6[4] = self;
  v7 = assetsCopy;
  v5 = assetsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__ACHTemplateAssetRegistry_templateSourceDidUpdateAssets___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v4 templateAssetRegistry:v2 didUpdateResourcesForTemplatesWithSourceName:v3];
}

- (void)templateAssetSourceDidUpdateAssets:(id)assets
{
  assetsCopy = assets;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__ACHTemplateAssetRegistry_templateAssetSourceDidUpdateAssets___block_invoke;
  v6[3] = &unk_278490898;
  v6[4] = self;
  v7 = assetsCopy;
  v5 = assetsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __63__ACHTemplateAssetRegistry_templateAssetSourceDidUpdateAssets___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v4 templateAssetRegistry:v2 didUpdateResourcesForTemplatesWithSourceName:v3];
}

- (ACHTemplateAssetRegistryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __56__ACHTemplateAssetRegistry_registerTemplateAssetSource___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Template Asset Registry did not add asset source %{public}@ because it does not conform to asset source protocol", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__ACHTemplateAssetRegistry_deregisterTemplateAssetSource___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Template Asset Registry did not remove template asset source %{public}@ because it does not conform to source protocol", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__ACHTemplateAssetRegistry_deregisterTemplateAssetSource___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Template Asset Registry did not remove template asset source %{public}@ because it was not previously registered", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)populateResourcePropertiesForAchievement:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 template];
  v4 = [v3 uniqueName];
  v6 = 138543362;
  v7 = v4;
  _os_log_debug_impl(&dword_221DDC000, a2, OS_LOG_TYPE_DEBUG, "Template Asset Registry populating asset URLs for template %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)populateResourcePropertiesForAchievement:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a1 template];
  v5 = [v4 uniqueName];
  v6 = [a1 localizationBundleURL];
  v7 = [a1 resourceBundleURL];
  v8 = [a1 propertyListBundleURL];
  v10 = 138544130;
  v11 = v5;
  v12 = 2114;
  v13 = v6;
  v14 = 2114;
  v15 = v7;
  v16 = 2114;
  v17 = v8;
  _os_log_debug_impl(&dword_221DDC000, a2, OS_LOG_TYPE_DEBUG, "URLs for template %{public}@ are now %{public}@, %{public}@, %{public}@", &v10, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setBundleURLsForAchievement:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Error reading paired availability of remote assets: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end