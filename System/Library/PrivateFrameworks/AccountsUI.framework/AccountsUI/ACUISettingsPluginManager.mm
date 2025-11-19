@interface ACUISettingsPluginManager
- (ACUISettingsPluginManager)initWithParentViewController:(id)a3;
- (id)_loadSettingsPluginFromBundleWithName:(id)a3;
- (id)_settingsPluginFromBundleWithName:(id)a3;
- (void)parentViewControllerWillDisappear;
@end

@implementation ACUISettingsPluginManager

- (ACUISettingsPluginManager)initWithParentViewController:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = ACUISettingsPluginManager;
  v8 = [(ACUISettingsPluginManager *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    objc_storeWeak(&v11->_parentViewController, location[0]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pluginCache = v11->_pluginCache;
    v11->_pluginCache = v4;
    MEMORY[0x277D82BD8](pluginCache);
  }

  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)parentViewControllerWillDisappear
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = self;
  v11[1] = a2;
  v11[0] = [(NSMutableDictionary *)self->_pluginCache copy];
  memset(__b, 0, sizeof(__b));
  obj = [v11[0] allKeys];
  v7 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v4);
      location = [v11[0] objectForKeyedSubscript:v10];
      if (objc_opt_respondsToSelector())
      {
        [location parentControllerWillDisappear];
      }

      objc_storeStrong(&location, 0);
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v12 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_settingsPluginFromBundleWithName:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(NSMutableDictionary *)v7->_pluginCache objectForKey:location[0]];
  if (!v5)
  {
    v5 = [(ACUISettingsPluginManager *)v7 _loadSettingsPluginFromBundleWithName:location[0]];
    MEMORY[0x277D82BD8](0);
    if (v5)
    {
      [(NSMutableDictionary *)v7->_pluginCache setObject:v5 forKey:location[0]];
    }
  }

  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_loadSettingsPluginFromBundleWithName:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = [ACUIPluginLoader pluginBundleWithName:location[0]];
  if (v19)
  {
    v15 = 0;
    v14 = [v19 principalClass];
    if ([(objc_class *)v14 conformsToProtocol:&unk_285035940]== 1)
    {
      v11 = [v14 alloc];
      WeakRetained = objc_loadWeakRetained(&v21->_parentViewController);
      v3 = [v11 initWithParentController:?];
      v4 = v15;
      v15 = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](WeakRetained);
    }

    else if ([(objc_class *)v14 conformsToProtocol:&unk_2850359A0]== 1)
    {
      v13 = objc_alloc_init(v14);
      v9 = v13;
      v10 = objc_loadWeakRetained(&v21->_parentViewController);
      v5 = [v9 settingsPluginWithParent:?];
      v6 = v15;
      v15 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v13, 0);
    }

    v22 = MEMORY[0x277D82BE0](v15);
    v16 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v18 = _ACUILogSystem();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_4_0_8_64(v23, "[ACUISettingsPluginManager _loadSettingsPluginFromBundleWithName:]", 70, location[0]);
      _os_log_error_impl(&dword_23DC86000, v18, v17, "%s (%d) ACUISettingsPluginManager failed to load the requested plugin with name %@", v23, 0x1Cu);
    }

    objc_storeStrong(&v18, 0);
    v22 = 0;
    v16 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v22;

  return v7;
}

@end