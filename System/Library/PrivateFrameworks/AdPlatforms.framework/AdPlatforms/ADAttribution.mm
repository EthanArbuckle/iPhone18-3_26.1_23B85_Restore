@interface ADAttribution
+ (id)sharedInstance;
- (ADAttribution)init;
- (void)initiateRequestOnConnection:(id)connection withBlock:(id)block;
- (void)requestAttributionDetailsWithBlock:(id)block;
- (void)setServerToTest:(int64_t)test;
@end

@implementation ADAttribution

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ADAttribution sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __31__ADAttribution_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_alloc_init(ADAttribution);

  return MEMORY[0x2821F96F8]();
}

- (ADAttribution)init
{
  v3.receiver = self;
  v3.super_class = ADAttribution;
  result = [(ADAttribution *)&v3 init];
  if (result)
  {
    *&result->_hasCompletedResponse = 0;
  }

  return result;
}

- (void)initiateRequestOnConnection:(id)connection withBlock:(id)block
{
  connectionCopy = connection;
  blockCopy = block;
  remoteObjectProxy = [connectionCopy remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__ADAttribution_initiateRequestOnConnection_withBlock___block_invoke;
  v11[3] = &unk_278C59E88;
  v12 = connectionCopy;
  v13 = blockCopy;
  v11[4] = self;
  v9 = connectionCopy;
  v10 = blockCopy;
  [remoteObjectProxy requestAttributionDetailsWithBlock:v11];
}

void __55__ADAttribution_initiateRequestOnConnection_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }

  [*(a1 + 32) setHasCompletedResponse:1];
  objc_sync_exit(v6);

  [*(a1 + 40) invalidate];
}

- (void)requestAttributionDetailsWithBlock:(id)block
{
  blockCopy = block;
  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ap.adprivacyd.attribution" options:4096];
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28510DC58];
  [v5 setRemoteObjectInterface:v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__ADAttribution_requestAttributionDetailsWithBlock___block_invoke;
  v10[3] = &unk_278C59EB0;
  v10[4] = self;
  v11 = v5;
  v12 = blockCopy;
  v7 = blockCopy;
  v8 = v5;
  v9 = MEMORY[0x23EF10F90](v10);
  [v8 setInvalidationHandler:v9];
  [v8 setInterruptionHandler:v9];
  [v8 resume];
  [(ADAttribution *)self initiateRequestOnConnection:v8 withBlock:v7];
}

void __52__ADAttribution_requestAttributionDetailsWithBlock___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if (([*(a1 + 32) hasCompletedResponse] & 1) == 0)
  {
    v3 = [*(a1 + 32) numRetries];
    if (v3 > 2)
    {
      if (*(a1 + 48))
      {
        v10 = *MEMORY[0x277CCA450];
        v4 = [MEMORY[0x277CCA8D8] mainBundle];
        v5 = [v4 localizedStringForKey:@"A serious error occurred. No data was returned from the Attribution Servers." value:&stru_28510C320 table:0];
        v11[0] = v5;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

        v7 = *(a1 + 48);
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADClientErrorDomain" code:2 userInfo:v6];
        (*(v7 + 16))(v7, 0, v8);
      }
    }

    else
    {
      [*(a1 + 32) setNumRetries:(v3 + 1)];
      [*(a1 + 32) initiateRequestOnConnection:*(a1 + 40) withBlock:*(a1 + 48)];
    }
  }

  objc_sync_exit(v2);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setServerToTest:(int64_t)test
{
  v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ap.adprivacyd.attribution" options:4096];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28510DC58];
  [v6 setRemoteObjectInterface:v4];

  [v6 resume];
  if ((test - 1) >= 5)
  {
    test = 0;
  }

  v5 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_30];
  [v5 setServerToTest:test];

  [v6 invalidate];
}

@end