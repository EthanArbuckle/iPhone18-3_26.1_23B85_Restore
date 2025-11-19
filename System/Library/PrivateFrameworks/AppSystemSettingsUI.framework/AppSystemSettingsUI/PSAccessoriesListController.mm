@interface PSAccessoriesListController
- (BOOL)deviceSupportsMultitech:(id)a3;
- (id)specifierForDevice:(id)a3;
- (id)specifiers;
- (void)handleSessionEvent:(id)a3;
- (void)refreshDADevices;
- (void)viewDidLoad;
@end

@implementation PSAccessoriesListController

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PSAccessoriesListController;
  [(PSAccessoriesListController *)&v13 viewDidLoad];
  v3 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:@"bundleID"];
  appBundleID = self->_appBundleID;
  self->_appBundleID = v3;

  if (!self->_appSession)
  {
    v5 = objc_alloc_init(MEMORY[0x277D04720]);
    appSession = self->_appSession;
    self->_appSession = v5;

    objc_initWeak(&location, self);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __42__PSAccessoriesListController_viewDidLoad__block_invoke;
    v10 = &unk_2782EF798;
    objc_copyWeak(&v11, &location);
    [(DASession *)self->_appSession setEventHandler:&v7];
    [(DASession *)self->_appSession activate:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __42__PSAccessoriesListController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSessionEvent:v3];
}

- (id)specifierForDevice:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D3FAD8];
  v6 = [v4 name];
  v7 = [v5 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:NSClassFromString(&cfstr_Asaccessoryinf.isa) cell:2 edit:0];

  v8 = [v4 identifier];
  [v7 setIdentifier:v8];

  [v7 setProperty:v4 forKey:@"device"];
  [v7 setProperty:self->_appSession forKey:@"session"];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  if ([(PSAccessoriesListController *)self deviceSupportsMultitech:v4])
  {
    v9 = *MEMORY[0x277D3FFD8];
    v10 = @"com.apple.graphic-icon.accessories";
  }

  else
  {
    v11 = [v4 bluetoothIdentifier];

    v9 = *MEMORY[0x277D3FFD8];
    if (v11)
    {
      v10 = @"com.apple.graphic-icon.bluetooth";
    }

    else
    {
      v10 = @"com.apple.graphic-icon.wifi";
    }
  }

  [v7 setObject:v10 forKeyedSubscript:v9];

  return v7;
}

- (BOOL)deviceSupportsMultitech:(id)a3
{
  v3 = a3;
  v4 = [v3 bluetoothIdentifier];
  if (v4)
  {
    v5 = [v3 wifiAwareDevicePairingID];
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 SSID];
      v6 = v7 != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)specifiers
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ACCESSORIES_GROUP"];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"The accessories listed are paired with apps on your device." value:&stru_282D7C630 table:0];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v12[0] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v8;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)handleSessionEvent:(id)a3
{
  v4 = [a3 eventType];
  if (v4 <= 0x2A && ((1 << v4) & 0x60000000400) != 0)
  {

    [(PSAccessoriesListController *)self refreshDADevices];
  }
}

- (void)refreshDADevices
{
  appSession = self->_appSession;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__PSAccessoriesListController_refreshDADevices__block_invoke;
  v3[3] = &unk_2782EF598;
  v3[4] = self;
  [(DASession *)appSession getDevicesWithFlags:8 completionHandler:v3];
}

void __47__PSAccessoriesListController_refreshDADevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PSAccessoriesListController_refreshDADevices__block_invoke_2;
  block[3] = &unk_2782EF748;
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __47__PSAccessoriesListController_refreshDADevices__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _AULoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v25 = v3;
      _os_log_impl(&dword_21BAF4000, v2, OS_LOG_TYPE_DEFAULT, "Error while trying to fetch accessories: %@", buf, 0xCu);
    }
  }

  v18 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 appAccessInfoMap];
        v11 = [v10 allKeys];
        v12 = [v11 containsObject:*(*(a1 + 48) + 1456)];

        if (v12)
        {
          v13 = [*(a1 + 48) specifierForDevice:v9];
          [v18 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [v18 sortUsingComparator:&__block_literal_global_0];
  [*(a1 + 48) removeContiguousSpecifiers:*(*(a1 + 48) + 1472)];
  v14 = [v18 copy];
  v15 = *(a1 + 48);
  v16 = *(v15 + 1472);
  *(v15 + 1472) = v14;

  [*(a1 + 48) insertContiguousSpecifiers:*(*(a1 + 48) + 1472) afterSpecifierID:@"ACCESSORIES_GROUP"];
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PSAccessoriesListController_refreshDADevices__block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

@end