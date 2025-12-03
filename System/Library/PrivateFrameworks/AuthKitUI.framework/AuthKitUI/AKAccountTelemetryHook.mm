@interface AKAccountTelemetryHook
- (AKAccountTelemetryHook)initWithAccount:(id)account;
- (AKAccountTelemetryHook)initWithAltDSID:(id)d;
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_setAccountAccessTelemetryOptIn:(id)in;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AKAccountTelemetryHook

- (AKAccountTelemetryHook)initWithAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = AKAccountTelemetryHook;
  v9 = [(AKAccountTelemetryHook *)&v10 init];
  selfCopy = v9;
  objc_storeStrong(&selfCopy, v9);
  if (v9)
  {
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    v4 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:location[0] error:0];
    account = selfCopy->_account;
    selfCopy->_account = v4;
    MEMORY[0x277D82BD8](account);
    MEMORY[0x277D82BD8](mEMORY[0x277CF0130]);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKAccountTelemetryHook)initWithAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKAccountTelemetryHook;
  v6 = [(AKAccountTelemetryHook *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_account, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  v11 = 0;
  objc_storeStrong(&v11, attributes);
  v10 = 0;
  objc_storeStrong(&v10, model);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  [(AKAccountTelemetryHook *)selfCopy _setAccountAccessTelemetryOptIn:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(AKAccountTelemetryHook *)selfCopy _setAccountAccessTelemetryOptIn:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldMatchElement:(id)element
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  name = [location[0] name];
  v5 = [name isEqualToString:@"account:telemetry"];
  MEMORY[0x277D82BD8](name);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)shouldMatchModel:(id)model
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  clientInfo = [location[0] clientInfo];
  v7 = [clientInfo objectForKey:@"action"];
  *&v3 = MEMORY[0x277D82BD8](clientInfo).n128_u64[0];
  v6 = [v7 isEqualToString:{@"account:telemetry", v3}];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)_setAccountAccessTelemetryOptIn:(id)in
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, in);
  queue = dispatch_get_global_queue(25, 0);
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __58__AKAccountTelemetryHook__setAccountAccessTelemetryOptIn___block_invoke;
  v8 = &unk_2784A63C8;
  v9 = MEMORY[0x277D82BE0](selfCopy);
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