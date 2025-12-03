@interface ACCNavigationFeaturePlugin
- (NSMutableDictionary)navigationShimAccessoryList;
- (NSString)description;
- (NSString)pluginName;
- (id)_navigationShimAccessoryForConnectionIDNoLock:(unsigned int)lock;
- (id)navigationShimAccessoryForConnectionID:(unsigned int)d;
- (void)initPlugin;
- (void)navigation:(id)navigation accessoryAttached:(id)attached;
- (void)navigation:(id)navigation accessoryDetached:(id)detached;
- (void)navigation:(id)navigation startRouteGuidance:(id)guidance componentList:(id)list;
- (void)navigation:(id)navigation stopRouteGuidance:(id)guidance componentList:(id)list;
- (void)notifyNavigationAccessoryClientsOfStateChange;
- (void)startPlugin;
- (void)stopPlugin;
- (void)updateManeuverInfo:(id)info componentIdList:(id)list accessory:(id)accessory;
- (void)updateRouteGuidanceInfo:(id)info componentIdList:(id)list accessory:(id)accessory;
@end

@implementation ACCNavigationFeaturePlugin

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  pluginName = [(ACCNavigationFeaturePlugin *)self pluginName];
  v5 = obfuscatedPointer(self);
  isRunning = [(ACCNavigationFeaturePlugin *)self isRunning];
  v7 = "NO";
  if (isRunning)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p> isRunning: %s", pluginName, v5, v7];

  return v8;
}

- (void)initPlugin
{
  init_logging();
  iap2server = self->_iap2server;
  self->_iap2server = 0;

  navigationProvider = self->_navigationProvider;
  self->_navigationProvider = 0;

  navigationShimAccessoryList = self->_navigationShimAccessoryList;
  self->_navigationShimAccessoryList = 0;

  [(ACCNavigationFeaturePlugin *)self setIsRunning:0];
  v6 = MEMORY[0x277CE84E8];

  [v6 resetServerState];
}

- (void)startPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335F7000, v5, OS_LOG_TYPE_DEFAULT, "[#Navigation] Starting Navigation feature plugin...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v24 = 0;
    _os_log_impl(&dword_2335F7000, v6, OS_LOG_TYPE_INFO, "[#Navigation] Create/Get shared ACCiAP2ShimServer...", v24, 2u);
  }

  mEMORY[0x277CE84E8] = [MEMORY[0x277CE84E8] sharedInstance];
  iap2server = self->_iap2server;
  self->_iap2server = mEMORY[0x277CE84E8];

  [(ACCiAP2ShimServer *)self->_iap2server startServer];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v10 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&dword_2335F7000, v10, OS_LOG_TYPE_INFO, "[#Navigation] Create ACCNavigationProvider...", v23, 2u);
  }

  v12 = dispatch_queue_create("com.apple.coreaccessories.plugin.navigation", 0);
  navigationQueue = self->_navigationQueue;
  self->_navigationQueue = v12;

  v14 = [objc_alloc(MEMORY[0x277CE82F0]) initWithDelegate:self];
  navigationProvider = self->_navigationProvider;
  self->_navigationProvider = v14;

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  navigationShimAccessoryList = self->_navigationShimAccessoryList;
  self->_navigationShimAccessoryList = v16;

  v18 = [[ACCNavigationShim alloc] initWithDelegate:self];
  navigationShim = self->_navigationShim;
  self->_navigationShim = v18;

  [(ACCiAP2ShimServer *)self->_iap2server addDelegate:self->_navigationShim];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v20 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&dword_2335F7000, v20, OS_LOG_TYPE_INFO, "[#Navigation] Starting Navigation feature plugin... finished, set isRunning", v22, 2u);
  }

  [(ACCNavigationFeaturePlugin *)self setIsRunning:1];
}

- (void)stopPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2335F7000, v5, OS_LOG_TYPE_DEFAULT, "[#Navigation] Stopping Navigation feature plugin...", buf, 2u);
  }

  [(ACCNavigationFeaturePlugin *)self setIsRunning:0];
  [(ACCiAP2ShimServer *)self->_iap2server removeDelegate:self->_navigationShim];
  navigationShim = self->_navigationShim;
  self->_navigationShim = 0;

  dispatch_sync(self->_navigationQueue, &__block_literal_global);
  navigationProvider = self->_navigationProvider;
  self->_navigationProvider = 0;

  navigationQueue = self->_navigationQueue;
  self->_navigationQueue = 0;

  navigationShimAccessoryList = self->_navigationShimAccessoryList;
  self->_navigationShimAccessoryList = 0;

  [(ACCiAP2ShimServer *)self->_iap2server stopServer];
  iap2server = self->_iap2server;
  self->_iap2server = 0;

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_2335F7000, v11, OS_LOG_TYPE_INFO, "[#Navigation] Stopping Navigation feature plugin... finished", v13, 2u);
  }
}

- (void)navigation:(id)navigation accessoryAttached:(id)attached
{
  v30 = *MEMORY[0x277D85DE8];
  navigationCopy = navigation;
  attachedCopy = attached;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    navigationShim = self->_navigationShim;
    iap2server = self->_iap2server;
    navigationProvider = self->_navigationProvider;
    *buf = 138413314;
    v21 = navigationCopy;
    v22 = 2112;
    v23 = attachedCopy;
    v24 = 2112;
    v25 = navigationProvider;
    v26 = 2112;
    v27 = navigationShim;
    v28 = 2112;
    v29 = iap2server;
    _os_log_impl(&dword_2335F7000, v10, OS_LOG_TYPE_DEFAULT, "[#Navigation] navigation: %@ accessoryAttached: %@, _navigationProvider=%@ _navigationShim=%@ _iap2server=%@", buf, 0x34u);
  }

  navigationQueue = self->_navigationQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__ACCNavigationFeaturePlugin_navigation_accessoryAttached___block_invoke;
  v17[3] = &unk_2789E42E8;
  v18 = attachedCopy;
  selfCopy = self;
  v15 = attachedCopy;
  dispatch_async(navigationQueue, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __59__ACCNavigationFeaturePlugin_navigation_accessoryAttached___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CE84E0]);
  v3 = [*(a1 + 32) accessoryUID];
  v4 = [v2 initWithUID:v3 keyTag:@"Navigation" features:0];

  [v4 setName:@"Shim Navigation Route Guidance Accessory"];
  [v4 setModel:@"Navigation Route Guidance Accessory"];
  [v4 setManufacturer:@"Navigation Route Guidance Manufacturer"];
  [v4 setSerialNumber:@"NAV_RG_1234"];
  [v4 setFirmwareVersion:@"0.0.0"];
  [v4 setHardwareVersion:@"0.0.0"];
  [v4 setDontPublish:1];
  [v4 addFeature:17];
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v5 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __59__ACCNavigationFeaturePlugin_navigation_accessoryAttached___block_invoke_cold_2((a1 + 32), v5);
  }

  v7 = objc_alloc_init(ACCNavigationShimAccessory);
  [(ACCNavigationShimAccessory *)v7 setIap2ShimAccessory:v4];
  [(ACCNavigationShimAccessory *)v7 setNavigationAccessory:*(a1 + 32)];
  [v4 setContext:v7];
  [*(*(a1 + 40) + 16) addAccessory:v4];
  if (*(*(a1 + 40) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCNavigationShimAccessory create_xpc_representation];
      }

      v8 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __59__ACCNavigationFeaturePlugin_navigation_accessoryAttached___block_invoke_cold_4((a1 + 32), v8);
    }

    [*(*(a1 + 40) + 40) accessoryAttached:v7];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCNavigationShimAccessory create_xpc_representation];
      }

      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 40) + 40);
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&dword_2335F7000, v9, OS_LOG_TYPE_INFO, "[#Navigation] Invalid _navigationShim(%@)", &v16, 0xCu);
    }
  }

  v13 = *(*(a1 + 40) + 48);
  v14 = [v4 connectionIDObj];
  [v13 setObject:v7 forKey:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)navigation:(id)navigation accessoryDetached:(id)detached
{
  v29 = *MEMORY[0x277D85DE8];
  navigationCopy = navigation;
  detachedCopy = detached;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    navigationShim = self->_navigationShim;
    iap2server = self->_iap2server;
    navigationProvider = self->_navigationProvider;
    *buf = 138413314;
    v20 = navigationCopy;
    v21 = 2112;
    v22 = detachedCopy;
    v23 = 2112;
    v24 = navigationProvider;
    v25 = 2112;
    v26 = navigationShim;
    v27 = 2112;
    v28 = iap2server;
    _os_log_impl(&dword_2335F7000, v10, OS_LOG_TYPE_DEFAULT, "[#Navigation] navigation: %@ accessoryDetached: %@, _navigationProvider=%@ _navigationShim=%@ _iap2server=%@", buf, 0x34u);
  }

  navigationQueue = self->_navigationQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__ACCNavigationFeaturePlugin_navigation_accessoryDetached___block_invoke;
  v17[3] = &unk_2789E42E8;
  v17[4] = self;
  v18 = detachedCopy;
  v15 = detachedCopy;
  dispatch_async(navigationQueue, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __59__ACCNavigationFeaturePlugin_navigation_accessoryDetached___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = [*(a1 + 40) accessoryUID];
    v17 = [v2 findAccessoryForAccessoryUID:v3 andKeyTag:@"Navigation"];

    v4 = v17;
    if (v17)
    {
      [v17 setContext:0];
      v5 = *(*(a1 + 32) + 48);
      v6 = [v17 connectionIDObj];
      v7 = [v5 objectForKey:v6];

      [*(*(a1 + 32) + 40) accessoryDetached:v7];
      v8 = *(*(a1 + 32) + 48);
      v9 = [v17 connectionIDObj];
      [v8 removeObjectForKey:v9];

      [*(*(a1 + 32) + 16) removeAccessory:v17];
      [v7 setIap2ShimAccessory:0];
      [v7 setNavigationAccessory:0];

      v4 = v17;
    }

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 1;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCNavigationShimAccessory create_xpc_representation];
      }

      v13 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      v13 = *gLogObjects;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      v15 = *(*(a1 + 32) + 40);
      *buf = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_2335F7000, v13, OS_LOG_TYPE_INFO, "[#Navigation] Invalid accessory(%@) or _navigationShim(%@)", buf, 0x16u);
    }

    v16 = *MEMORY[0x277D85DE8];
  }
}

- (void)navigation:(id)navigation startRouteGuidance:(id)guidance componentList:(id)list
{
  v36 = *MEMORY[0x277D85DE8];
  navigationCopy = navigation;
  guidanceCopy = guidance;
  listCopy = list;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    navigationShim = self->_navigationShim;
    iap2server = self->_iap2server;
    navigationProvider = self->_navigationProvider;
    *buf = 138413570;
    v25 = navigationCopy;
    v26 = 2112;
    v27 = guidanceCopy;
    v28 = 2112;
    v29 = listCopy;
    v30 = 2112;
    v31 = navigationProvider;
    v32 = 2112;
    v33 = navigationShim;
    v34 = 2112;
    v35 = iap2server;
    _os_log_impl(&dword_2335F7000, v13, OS_LOG_TYPE_DEFAULT, "[#Navigation] navigation: %@ startRouteGuidance: %@ componentList: %@, _navigationProvider=%@ _navigationShim=%@ _iap2server=%@", buf, 0x3Eu);
  }

  navigationQueue = self->_navigationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ACCNavigationFeaturePlugin_navigation_startRouteGuidance_componentList___block_invoke;
  block[3] = &unk_2789E4310;
  block[4] = self;
  v22 = guidanceCopy;
  v23 = listCopy;
  v18 = listCopy;
  v19 = guidanceCopy;
  dispatch_async(navigationQueue, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __74__ACCNavigationFeaturePlugin_navigation_startRouteGuidance_componentList___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = [*(a1 + 40) accessoryUID];
    v14 = [v2 findAccessoryForAccessoryUID:v3 andKeyTag:@"Navigation"];

    v4 = *(*(a1 + 32) + 48);
    v5 = [v14 connectionIDObj];
    v6 = [v4 objectForKey:v5];

    [*(*(a1 + 32) + 40) accessoryStartRouteGuidance:v6 componentList:*(a1 + 48)];
    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCNavigationShimAccessory create_xpc_representation];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *gLogObjects;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = *(*(a1 + 32) + 40);
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2335F7000, v10, OS_LOG_TYPE_INFO, "[#Navigation] Invalid accessory(%@) or _navigationShim(%@)", buf, 0x16u);
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)navigation:(id)navigation stopRouteGuidance:(id)guidance componentList:(id)list
{
  v36 = *MEMORY[0x277D85DE8];
  navigationCopy = navigation;
  guidanceCopy = guidance;
  listCopy = list;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    navigationShim = self->_navigationShim;
    iap2server = self->_iap2server;
    navigationProvider = self->_navigationProvider;
    *buf = 138413570;
    v25 = navigationCopy;
    v26 = 2112;
    v27 = guidanceCopy;
    v28 = 2112;
    v29 = listCopy;
    v30 = 2112;
    v31 = navigationProvider;
    v32 = 2112;
    v33 = navigationShim;
    v34 = 2112;
    v35 = iap2server;
    _os_log_impl(&dword_2335F7000, v13, OS_LOG_TYPE_DEFAULT, "[#Navigation] navigation: %@ startRouteGuidance: %@ componentList: %@, _navigationProvider=%@ _navigationShim=%@ _iap2server=%@", buf, 0x3Eu);
  }

  navigationQueue = self->_navigationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ACCNavigationFeaturePlugin_navigation_stopRouteGuidance_componentList___block_invoke;
  block[3] = &unk_2789E4310;
  block[4] = self;
  v22 = guidanceCopy;
  v23 = listCopy;
  v18 = listCopy;
  v19 = guidanceCopy;
  dispatch_async(navigationQueue, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __73__ACCNavigationFeaturePlugin_navigation_stopRouteGuidance_componentList___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = [*(a1 + 40) accessoryUID];
    v14 = [v2 findAccessoryForAccessoryUID:v3 andKeyTag:@"Navigation"];

    v4 = *(*(a1 + 32) + 48);
    v5 = [v14 connectionIDObj];
    v6 = [v4 objectForKey:v5];

    [*(*(a1 + 32) + 40) accessoryStopRouteGuidance:v6 componentList:*(a1 + 48)];
    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 1;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCNavigationShimAccessory create_xpc_representation];
      }

      v10 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    else
    {
      v10 = *gLogObjects;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = *(*(a1 + 32) + 40);
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2335F7000, v10, OS_LOG_TYPE_INFO, "[#Navigation] Invalid accessory(%@) or _navigationShim(%@)", buf, 0x16u);
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (id)navigationShimAccessoryForConnectionID:(unsigned int)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  navigationQueue = self->_navigationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ACCNavigationFeaturePlugin_navigationShimAccessoryForConnectionID___block_invoke;
  block[3] = &unk_2789E4338;
  block[4] = self;
  block[5] = &v8;
  dCopy = d;
  dispatch_sync(navigationQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __69__ACCNavigationFeaturePlugin_navigationShimAccessoryForConnectionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _navigationShimAccessoryForConnectionIDNoLock:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSMutableDictionary)navigationShimAccessoryList
{
  navigationShimAccessoryList = self->_navigationShimAccessoryList;
  if (navigationShimAccessoryList)
  {
    navigationShimAccessoryList = [navigationShimAccessoryList allValues];
    v2 = vars8;
  }

  return navigationShimAccessoryList;
}

- (void)updateRouteGuidanceInfo:(id)info componentIdList:(id)list accessory:(id)accessory
{
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  listCopy = list;
  accessoryCopy = accessory;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    navigationProvider = self->_navigationProvider;
    navigationShim = self->_navigationShim;
    *buf = 138413314;
    v26 = infoCopy;
    v27 = 2112;
    v28 = listCopy;
    v29 = 2112;
    v30 = accessoryCopy;
    v31 = 2112;
    v32 = navigationProvider;
    v33 = 2112;
    v34 = navigationShim;
    _os_log_impl(&dword_2335F7000, v13, OS_LOG_TYPE_INFO, "[#Navigation] navigation updateRouteGuidanceInfo: %@ componentIdList: %@ accessory: %@, _navigationProvider=%@ _navigationShim=%@", buf, 0x34u);
  }

  navigationQueue = self->_navigationQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__ACCNavigationFeaturePlugin_updateRouteGuidanceInfo_componentIdList_accessory___block_invoke;
  v21[3] = &unk_2789E4360;
  v21[4] = self;
  v22 = accessoryCopy;
  v23 = listCopy;
  v24 = infoCopy;
  v17 = infoCopy;
  v18 = listCopy;
  v19 = accessoryCopy;
  dispatch_async(navigationQueue, v21);

  v20 = *MEMORY[0x277D85DE8];
}

void __80__ACCNavigationFeaturePlugin_updateRouteGuidanceInfo_componentIdList_accessory___block_invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1[4] + 24) && (v2 = a1[5]) != 0)
  {
    v3 = [v2 navigationAccessory];
    v14 = v3;
    if (a1[6])
    {
      v4 = [v3 componentListForIdList:?];
      v3 = v14;
    }

    else
    {
      v4 = 0;
    }

    [v3 updateRouteGuidanceInfo:a1[7] componentList:v4];

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCNavigationShimAccessory create_xpc_representation];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *gLogObjects;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[6];
      v8 = a1[7];
      v10 = a1[5];
      v11 = *(a1[4] + 24);
      *buf = 138413314;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_2335F7000, v7, OS_LOG_TYPE_DEFAULT, "[#Navigation] navigation updateRouteGuidanceInfo: %@ componentIdList: %@ accessory: %@, skip processing, _navigationProvider(%@) or navigationShimAccessory(%@) nil", buf, 0x34u);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)updateManeuverInfo:(id)info componentIdList:(id)list accessory:(id)accessory
{
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  listCopy = list;
  accessoryCopy = accessory;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCNavigationShimAccessory create_xpc_representation];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *gLogObjects;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    navigationProvider = self->_navigationProvider;
    navigationShim = self->_navigationShim;
    *buf = 138413314;
    v26 = infoCopy;
    v27 = 2112;
    v28 = listCopy;
    v29 = 2112;
    v30 = accessoryCopy;
    v31 = 2112;
    v32 = navigationProvider;
    v33 = 2112;
    v34 = navigationShim;
    _os_log_impl(&dword_2335F7000, v13, OS_LOG_TYPE_INFO, "[#Navigation] navigation updateManeuverInfo: %@ componentIdList: %@ accessory: %@, _navigationProvider=%@ _navigationShim=%@", buf, 0x34u);
  }

  navigationQueue = self->_navigationQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__ACCNavigationFeaturePlugin_updateManeuverInfo_componentIdList_accessory___block_invoke;
  v21[3] = &unk_2789E4360;
  v21[4] = self;
  v22 = accessoryCopy;
  v23 = listCopy;
  v24 = infoCopy;
  v17 = infoCopy;
  v18 = listCopy;
  v19 = accessoryCopy;
  dispatch_async(navigationQueue, v21);

  v20 = *MEMORY[0x277D85DE8];
}

void __75__ACCNavigationFeaturePlugin_updateManeuverInfo_componentIdList_accessory___block_invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1[4] + 24) && (v2 = a1[5]) != 0)
  {
    v3 = [v2 navigationAccessory];
    v14 = v3;
    if (a1[6])
    {
      v4 = [v3 componentListForIdList:?];
      v3 = v14;
    }

    else
    {
      v4 = 0;
    }

    [v3 updateManeuverInfo:a1[7] componentList:v4];

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCNavigationShimAccessory create_xpc_representation];
      }

      v7 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v7 = *gLogObjects;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[6];
      v8 = a1[7];
      v10 = a1[5];
      v11 = *(a1[4] + 24);
      *buf = 138413314;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_2335F7000, v7, OS_LOG_TYPE_DEFAULT, "[#Navigation] navigation updateManeuverInfo: %@ componentIdList: %@ accessory: %@, skip processing, _navigationProvider(%@) or navigationShimAccessory(%@) nil", buf, 0x34u);
    }

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)notifyNavigationAccessoryClientsOfStateChange
{
  v2 = MEMORY[0x277CE84E8];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nav_frameworkShouldPollNotification"];
  [v2 postNSDistributeNotificationType:v3 notifyDict:0];
}

- (id)_navigationShimAccessoryForConnectionIDNoLock:(unsigned int)lock
{
  navigationShimAccessoryList = self->_navigationShimAccessoryList;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:lock];
  v5 = [(NSMutableDictionary *)navigationShimAccessoryList objectForKey:v4];

  return v5;
}

void __59__ACCNavigationFeaturePlugin_navigation_accessoryAttached___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_2335F7000, a2, OS_LOG_TYPE_DEBUG, "[#Navigation] accessoryAttached: accessory=%@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __59__ACCNavigationFeaturePlugin_navigation_accessoryAttached___block_invoke_cold_4(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_2335F7000, a2, OS_LOG_TYPE_DEBUG, "[#Navigation] accessoryAttached: call shim accessoryAttached: navigationAccessory=%@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end