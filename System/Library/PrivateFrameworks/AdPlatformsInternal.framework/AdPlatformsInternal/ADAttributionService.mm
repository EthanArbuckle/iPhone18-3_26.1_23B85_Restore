@interface ADAttributionService
+ (id)sharedInstance;
- (ADAttributionService)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)removeClientForToken:(id)a3;
@end

@implementation ADAttributionService

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ADAttributionService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__onceToken != -1)
  {
    dispatch_once(&sharedInstance__onceToken, block);
  }

  v2 = sharedInstance__instance;

  return v2;
}

uint64_t __38__ADAttributionService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ADAttributionService)init
{
  v8.receiver = self;
  v8.super_class = ADAttributionService;
  v2 = [(ADAttributionService *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.ap.adprivacyd.attribution"];
    listener = v2->_listener;
    v2->_listener = v5;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v22 = 0u;
  v23 = 0u;
  if (v7)
  {
    [v7 auditToken];
  }

  if (!ba_is_process_extension())
  {
    v11 = MEMORY[0x277D46F48];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "processIdentifier")}];
    v21 = 0;
    v13 = [v11 handleForIdentifier:v12 error:&v21];
    v9 = v21;
    v14 = [v13 bundle];
    v15 = [v14 bundleInfoValueForKey:*MEMORY[0x277CBED38]];

    if (v9)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Error %@ getting bundleID from RunningBoardServices.", objc_opt_class(), v9];
    }

    else
    {
      if ([v15 length])
      {
        v16 = self;
        objc_sync_enter(v16);
        ++_requestTokenCount;
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
        v18 = [[ADAttributionRequester alloc] initWithConnection:v8 bundleID:v15 transactionID:v17];
        [(NSMutableDictionary *)v16->_clients setObject:v18 forKeyedSubscript:v17];

        objc_sync_exit(v16);
        v10 = 1;
        goto LABEL_10;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Received a connection from an app with no bundleID: %@", v15, v20];
    }
    v16 = ;
    _ADLog();
    v10 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calls from background extensions are not supported"];
  _ADLog();
  v10 = 0;
LABEL_11:

  return v10;
}

- (void)removeClientForToken:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v6)
  {
    [(NSMutableDictionary *)v4->_clients removeObjectForKey:?];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: We tried to remove a nil Attribution token from the list of clients."];
    _ADLog();
  }

  objc_sync_exit(v4);
}

@end