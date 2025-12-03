@interface PHNetworkFetcher
- (NSArray)networks;
- (PHNetworkFetcher)init;
- (void)dealloc;
- (void)fetchNetworkList;
- (void)selectNetwork:(id)network;
- (void)setState:(unint64_t)state;
- (void)updateNetworkSelectionStatus;
@end

@implementation PHNetworkFetcher

- (PHNetworkFetcher)init
{
  v25.receiver = self;
  v25.super_class = PHNetworkFetcher;
  v2 = [(PHNetworkFetcher *)&v25 init];
  if (v2)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher initialized", buf, 2u);
    }

    array = [MEMORY[0x277CBEB18] array];
    mutableNetworks = v2->_mutableNetworks;
    v2->_mutableNetworks = array;

    v2->_state = 1;
    objc_initWeak(buf, v2);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __24__PHNetworkFetcher_init__block_invoke;
    v22[3] = &unk_278BB2508;
    objc_copyWeak(&v23, buf);
    v6 = MEMORY[0x23EEC8C60](v22);
    networkNotificationHandler = v2->_networkNotificationHandler;
    v2->_networkNotificationHandler = v6;

    v8 = *MEMORY[0x277CBECE8];
    v9 = MEMORY[0x277D85CD0];
    v10 = v2->_networkNotificationHandler;
    v2->_server = _CTServerConnectionCreateOnTargetQueue();

    server = v2->_server;
    v12 = *MEMORY[0x277CC3CD8];
    _CTServerConnectionRegisterForNotification();
    v13 = v2->_server;
    v14 = *MEMORY[0x277CC3CE8];
    _CTServerConnectionRegisterForNotification();
    v15 = v2->_server;
    v16 = *MEMORY[0x277CC3E48];
    _CTServerConnectionRegisterForNotification();
    v17 = v2->_server;
    v18 = *MEMORY[0x277CC3850];
    _CTServerConnectionRegisterForNotification();
    v19 = v2->_server;
    v20 = *MEMORY[0x277CC3D48];
    _CTServerConnectionRegisterForNotification();
    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  return v2;
}

void __24__PHNetworkFetcher_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = a2;
    v42 = 2112;
    v43 = a3;
    _os_log_impl(&dword_23C12D000, v6, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher got notification %@: %@", buf, 0x16u);
  }

  if ([a2 isEqualToString:*MEMORY[0x277CC3CD8]])
  {
    v34 = a1;
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C12D000, v7, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher handling network list update notification", buf, 2u);
    }

    v8 = [MEMORY[0x277CBEB18] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v33 = a3;
    v9 = [a3 objectForKey:*MEMORY[0x277CC3CD0]];
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v15 = [PHNetwork networkFromDictionary:v14];
          if (v15)
          {
            [v8 addObject:v15];
            v16 = PHDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v41 = v15;
              v42 = 2112;
              v43 = v14;
              _os_log_impl(&dword_23C12D000, v16, OS_LOG_TYPE_DEFAULT, "Added a new network to new list: %@ from dictionary: %@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v11);
    }

    a1 = v34;
    WeakRetained = objc_loadWeakRetained((v34 + 32));
    v18 = [WeakRetained mutableNetworks];
    v19 = [v8 isEqualToArray:v18];

    if ((v19 & 1) == 0)
    {
      v20 = objc_loadWeakRetained((v34 + 32));
      [v20 setMutableNetworks:v8];

      v21 = PHDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C12D000, v21, OS_LOG_TYPE_DEFAULT, "The networks list has changed, and we will notify", buf, 2u);
      }

      v22 = [MEMORY[0x277CCAB98] defaultCenter];
      v23 = objc_loadWeakRetained((v34 + 32));
      [v22 postNotificationName:@"PHNetworkFetcherNetworksChangedNotification" object:v23];
    }

    v24 = [v33 objectForKey:*MEMORY[0x277CC3CE0]];
    if ([v24 BOOLValue])
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    v26 = objc_loadWeakRetained((v34 + 32));
    [v26 setState:v25];
  }

  v27 = PHDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C12D000, v27, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher will update selection status of networks in response to notification", buf, 2u);
  }

  v28 = objc_loadWeakRetained((a1 + 32));
  [v28 updateNetworkSelectionStatus];

  if ([a2 isEqualToString:*MEMORY[0x277CC3CE8]])
  {
    v29 = PHDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C12D000, v29, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher handling network list failure notification", buf, 2u);
    }

    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 postNotificationName:@"PHNetworkFetcherErrorNotification" object:0];

    v31 = objc_loadWeakRetained((a1 + 32));
    [v31 setState:1];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (NSArray)networks
{
  mutableNetworks = [(PHNetworkFetcher *)self mutableNetworks];
  v3 = [mutableNetworks copy];

  return v3;
}

- (void)fetchNetworkList
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher beginning list fetch", v6, 2u);
  }

  if ([(PHNetworkFetcher *)self state]== 1)
  {
    [(NSMutableArray *)self->_mutableNetworks removeAllObjects];
    [(PHNetworkFetcher *)self setState:2];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PHNetworkFetcherNetworksChangedNotification" object:self];

    server = self->_server;
    _CTServerConnectionFetchNetworkList();
  }
}

- (void)updateNetworkSelectionStatus
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "PHNetworkFetcher updating network selection status", buf, 2u);
  }

  v25 = 0;
  [(PHNetworkFetcher *)self server];
  _CTServerConnectionCopyManualNetworkSelection();
  v4 = 0;
  v5 = [v4 valueForKey:*MEMORY[0x277CC3CC8]];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  mutableNetworks = [(PHNetworkFetcher *)self mutableNetworks];
  v7 = [mutableNetworks countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = v4;
    v9 = *v22;
    v10 = *MEMORY[0x277CC3D28];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(mutableNetworks);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        code = [v12 code];
        v14 = [code isEqualToString:v5];

        if (v14)
        {
          *buf = 0;
          server = self->_server;
          _CTServerConnectionGetNetworkSelectionState();
          if ([*buf isEqualToString:v10])
          {
            v16 = 2;
          }

          else
          {
            v16 = 3;
          }

          v17 = v12;
        }

        else
        {
          v17 = v12;
          v16 = 1;
        }

        [v17 setState:v16];
        v18 = PHDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&dword_23C12D000, v18, OS_LOG_TYPE_DEFAULT, "... updated network object: %@", buf, 0xCu);
        }
      }

      v8 = [mutableNetworks countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);

    mutableNetworks = [MEMORY[0x277CCAB98] defaultCenter];
    [mutableNetworks postNotificationName:@"PHNetworkFetcherNetworkSelectionChangedNotification" object:0];
    v4 = v20;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setState:(unint64_t)state
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_state != state)
  {
    self->_state = state;
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      stateCopy = state;
      _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "PHNetworkFetcher state changed to %lu", &v8, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PHNetworkFetcherStateChangedNotification" object:self];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)selectNetwork:(id)network
{
  v10 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = networkCopy;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "PHNetworkFetcher asked to select network %@", &v8, 0xCu);
  }

  [(PHNetworkFetcher *)self server];
  dictionaryRepresentation = [networkCopy dictionaryRepresentation];
  _CTServerConnectionSelectNetwork();

  [(PHNetworkFetcher *)self updateNetworkSelectionStatus];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  server = self->_server;
  _CTServerConnectionUnregisterForAllNotifications();
  v4.receiver = self;
  v4.super_class = PHNetworkFetcher;
  [(PHNetworkFetcher *)&v4 dealloc];
}

@end