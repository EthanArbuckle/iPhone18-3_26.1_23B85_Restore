@interface AUAccessoriesPolicyController
- (AUAccessoriesPolicyController)initWithAppBundleID:(id)a3;
- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4;
- (id)numberOfAccessories:(id)a3;
- (void)handleSessionEvent:(id)a3;
@end

@implementation AUAccessoriesPolicyController

- (AUAccessoriesPolicyController)initWithAppBundleID:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = AUAccessoriesPolicyController;
  v6 = [(AUAccessoriesPolicyController *)&v13 init];
  v7 = objc_alloc_init(MEMORY[0x277D04720]);
  appSession = v6->_appSession;
  v6->_appSession = v7;

  objc_storeStrong(&v6->_bundleID, a3);
  [(DASession *)v6->_appSession activate];
  objc_initWeak(&location, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__AUAccessoriesPolicyController_initWithAppBundleID___block_invoke;
  v10[3] = &unk_2782EF798;
  objc_copyWeak(&v11, &location);
  [(DASession *)v6->_appSession setEventHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

void __53__AUAccessoriesPolicyController_initWithAppBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSessionEvent:v3];
}

- (id)appSpecifierWithName:(id)a3 bundleID:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v26 = v7;
    v27 = v6;
    v8 = [MEMORY[0x277D04720] getDevicesWithFlags:8 session:self->_appSession error:0];
    v9 = [MEMORY[0x277CBEB18] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v15 appAccessInfoMap];
          v17 = [v16 allKeys];
          v18 = [v17 containsObject:self->_bundleID];

          if (v18)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    objc_storeStrong(&self->_devices, v9);
    if ([v9 count])
    {
      v19 = [v10 count];
      v20 = MEMORY[0x277D3FAD8];
      v7 = v26;
      v6 = v27;
      if (v19 == 1)
      {
        v21 = NSClassFromString(&cfstr_Asaccessoryinf.isa);
      }

      else
      {
        v21 = objc_opt_class();
      }

      v22 = [v20 preferenceSpecifierNamed:v27 target:self set:0 get:sel_numberOfAccessories_ detail:v21 cell:2 edit:0];
      [v22 setProperty:v26 forKey:@"bundleID"];
      if (v19 == 1)
      {
        v23 = [v10 firstObject];
        [v22 setProperty:v23 forKey:@"device"];
      }

      [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      [v22 setObject:@"com.apple.graphic-icon.accessories" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    }

    else
    {
      v22 = 0;
      v7 = v26;
      v6 = v27;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)numberOfAccessories:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_devices;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) appAccessInfoMap];
        v11 = [v10 objectForKeyedSubscript:self->_bundleID];
        v12 = [v11 state];

        if (v12 == 25)
        {
          ++v7;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v7];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)handleSessionEvent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (([a3 eventType] - 41) <= 1)
  {
    v4 = [MEMORY[0x277D04720] getDevicesWithFlags:8 session:self->_appSession error:0];
    objc_storeStrong(&self->_devices, v4);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_devices;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) appAccessInfoMap];
          v12 = [v11 objectForKeyedSubscript:self->_bundleID];
          v13 = [v12 state];

          if (v13 == 25)
          {
            ++v8;
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    (*(self->_accessChangedHandler + 2))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end