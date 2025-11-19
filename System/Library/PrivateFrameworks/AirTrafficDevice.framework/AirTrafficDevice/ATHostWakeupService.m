@interface ATHostWakeupService
+ (id)sharedInstance;
- (ATHostWakeupService)init;
- (void)_wakeupHost:(id)a3;
- (void)environmentMonitorDidChangePower:(id)a3;
- (void)getWakeableHostsWithCompletion:(id)a3;
- (void)sendWakeupToAllHostsWithCompletion:(id)a3;
- (void)sendWakeupToHostWithIdentifier:(id)a3 completion:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation ATHostWakeupService

- (void)environmentMonitorDidChangePower:(id)a3
{
  v5 = a3;
  v4 = [v5 isCharging];
  if ([v5 isRemoteServerLikelyReachable])
  {
    [v5 networkType];
    if ((v4 & ICEnvironmentNetworkTypeIsWiFi()) == 1)
    {
      [(ATHostWakeupService *)self sendWakeupToAllHostsWithCompletion:&__block_literal_global_21];
    }
  }
}

- (void)_wakeupHost:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 netService];
    v6 = [v5 name];
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "sending wakeup to host '%@'", &v19, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.atc.idlewake", 0, 0, 1u);
  v8 = dispatch_time(0, 5000000000);
  dispatch_after(v8, MEMORY[0x277D85CD0], &__block_literal_global_18);
  v9 = [v3 netService];
  v10 = [v9 addresses];

  if ([v10 count])
  {
    v11 = [v10 objectAtIndex:0];
    v12 = [v11 length];
    v13 = malloc_type_malloc(v12, 0x1000040451B5BE8uLL);
    if (v13)
    {
      v14 = v13;
      memcpy(v13, [v11 bytes], v12);
      *v14->sa_data = 443;
      v15 = socket(2, 1, 6);
      v16 = connect(v15, v14, v12);
      v17 = _ATLogCategoryFramework();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v18)
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_223819000, v17, OS_LOG_TYPE_DEFAULT, "failed to connect to host wakeup listener - hope its ok", &v19, 2u);
        }
      }

      else
      {
        if (v18)
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_223819000, v17, OS_LOG_TYPE_DEFAULT, "Connected to host, closing.", &v19, 2u);
        }

        shutdown(v15, 2);
        close(v15);
      }

      free(v14);
    }
  }

  else
  {
    v11 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_DEFAULT, "no host address found for service - ignoring", &v19, 2u);
    }
  }
}

void __35__ATHostWakeupService__wakeupHost___block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.atc.idlewake", 0, 0, 1u);
}

- (void)getWakeableHostsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "getting wakeable hosts", buf, 2u);
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc_init(ATHostBrowser);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__ATHostWakeupService_getWakeableHostsWithCompletion___block_invoke;
  v9[3] = &unk_2784E57D8;
  v10 = v5;
  v11 = v3;
  v7 = v3;
  v8 = v5;
  [(ATHostBrowser *)v6 browseForHostsWithTimeout:10 completion:v9];
}

void __54__ATHostWakeupService_getWakeableHostsWithCompletion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 libraryIdentifier];
  v7 = +[ATUserDefaults readOnlyDefaults];
  v8 = [v7 objectForKey:@"Hosts"];

  v9 = [v8 objectForKey:v6];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKey:@"Wakeable"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v13 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v5 netService];
        v15 = [v14 name];
        v17 = 138412290;
        v18 = v15;
        _os_log_impl(&dword_223819000, v13, OS_LOG_TYPE_DEFAULT, "found wakeable host '%@'", &v17, 0xCu);
      }

      [*(a1 + 32) addObject:v5];
    }
  }

  if (a3)
  {
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, 0);
    }
  }
}

- (void)sendWakeupToAllHostsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "sending wakeup to all hosts", buf, 2u);
  }

  v6 = objc_alloc_init(ATHostBrowser);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ATHostWakeupService_sendWakeupToAllHostsWithCompletion___block_invoke;
  v8[3] = &unk_2784E57D8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(ATHostBrowser *)v6 browseForHostsWithTimeout:10 completion:v8];
}

void __58__ATHostWakeupService_sendWakeupToAllHostsWithCompletion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v13 = a2;
  v5 = [v13 libraryIdentifier];
  v6 = +[ATUserDefaults readOnlyDefaults];
  v7 = [v6 objectForKey:@"Hosts"];

  v8 = [v7 objectForKey:v5];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:@"Wakeable"];
    v11 = [v10 BOOLValue];

    if (v11)
    {
      [*(a1 + 32) _wakeupHost:v13];
    }
  }

  if (a3)
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }
}

- (void)sendWakeupToHostWithIdentifier:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "sending wakeup to host identifier '%@'", &buf, 0xCu);
  }

  v9 = objc_alloc_init(ATHostBrowser);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ATHostWakeupService_sendWakeupToHostWithIdentifier_completion___block_invoke;
  v12[3] = &unk_2784E57B0;
  v10 = v6;
  p_buf = &buf;
  v13 = v10;
  v14 = self;
  v11 = v7;
  v15 = v11;
  [(ATHostBrowser *)v9 browseForHostsWithTimeout:10 completion:v12];

  _Block_object_dispose(&buf, 8);
}

void __65__ATHostWakeupService_sendWakeupToHostWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v9 = a2;
  v5 = [v9 libraryIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    [*(a1 + 40) _wakeupHost:v9];
  }

  if (a3)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        (*(v7 + 16))(*(a1 + 48), 0);
      }

      else
      {
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:28 userInfo:0];
        (*(v7 + 16))(v7, v8);
      }
    }
  }
}

- (void)stop
{
  v3 = [MEMORY[0x277D7FA90] sharedMonitor];
  [v3 unregisterObserver:self];
}

- (void)start
{
  v3 = [MEMORY[0x277D7FA90] sharedMonitor];
  [v3 registerObserver:self];
}

- (ATHostWakeupService)init
{
  v3.receiver = self;
  v3.super_class = ATHostWakeupService;
  return [(ATHostWakeupService *)&v3 init];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4374 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4374, &__block_literal_global_4375);
  }

  v3 = sharedInstance___sharedInstance_4376;

  return v3;
}

uint64_t __37__ATHostWakeupService_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_4376 = objc_alloc_init(ATHostWakeupService);

  return MEMORY[0x2821F96F8]();
}

@end