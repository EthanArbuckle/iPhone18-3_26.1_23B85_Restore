@interface AKAccountTelemetryHook
- (AKAccountTelemetryHook)initWithAccount:(id)a3;
- (AKAccountTelemetryHook)initWithAltDSID:(id)a3;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_setAccountAccessTelemetryOptIn:(id)a3;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AKAccountTelemetryHook

- (AKAccountTelemetryHook)initWithAltDSID:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10.receiver = v3;
  v10.super_class = AKAccountTelemetryHook;
  v9 = [(AKAccountTelemetryHook *)&v10 init];
  v12 = v9;
  objc_storeStrong(&v12, v9);
  if (v9)
  {
    v8 = [MEMORY[0x277CF0130] sharedInstance];
    v4 = [v8 authKitAccountWithAltDSID:location[0] error:0];
    account = v12->_account;
    v12->_account = v4;
    MEMORY[0x277D82BD8](account);
    MEMORY[0x277D82BD8](v8);
  }

  v7 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v7;
}

- (AKAccountTelemetryHook)initWithAccount:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKAccountTelemetryHook;
  v6 = [(AKAccountTelemetryHook *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_account, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = 0;
  objc_storeStrong(&v9, a6);
  [(AKAccountTelemetryHook *)v13 _setAccountAccessTelemetryOptIn:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(AKAccountTelemetryHook *)v7 _setAccountAccessTelemetryOptIn:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldMatchElement:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] name];
  v5 = [v4 isEqualToString:@"account:telemetry"];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)shouldMatchModel:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] clientInfo];
  v7 = [v5 objectForKey:@"action"];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = [v7 isEqualToString:{@"account:telemetry", v3}];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)_setAccountAccessTelemetryOptIn:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = dispatch_get_global_queue(25, 0);
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __58__AKAccountTelemetryHook__setAccountAccessTelemetryOptIn___block_invoke;
  v8 = &unk_2784A63C8;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __58__AKAccountTelemetryHook__setAccountAccessTelemetryOptIn___block_invoke(void *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v7[0] = 0;
  v6 = [MEMORY[0x277CF0130] sharedInstance];
  v1 = *(a1[4] + 16);
  obj = v7[0];
  v2 = [v6 setAccountAccessTelemetryOptIn:1 forAccount:v1 error:&obj];
  objc_storeStrong(v7, obj);
  v5 = v2;
  (*(a1[5] + 16))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end