@interface ASCUtilities
+ (ASCUtilities)shared;
+ (void)withSharedUtilities:(id)utilities perform:(id)perform;
- (ASCUtilities)initWithConnection:(id)connection;
- (id)openURL:(id)l;
- (id)restoreAppStore;
- (void)daemonConnectionWasLost:(id)lost;
- (void)dealloc;
@end

@implementation ASCUtilities

+ (ASCUtilities)shared
{
  v2 = ASCUtilities_testingUtilities;
  if (!ASCUtilities_testingUtilities)
  {
    if (shared_onceToken != -1)
    {
      +[ASCUtilities shared];
    }

    v2 = shared_sharedUtilities;
  }

  v3 = v2;

  return v3;
}

void __22__ASCUtilities_shared__block_invoke()
{
  v0 = [ASCUtilities alloc];
  v3 = +[ASCServicesConnection sharedConnection];
  v1 = [(ASCUtilities *)v0 initWithConnection:v3];
  v2 = shared_sharedUtilities;
  shared_sharedUtilities = v1;
}

- (ASCUtilities)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = ASCUtilities;
  v6 = [(ASCUtilities *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = objc_alloc_init(ASCPendingPromises);
    pendingPromises = v7->_pendingPromises;
    v7->_pendingPromises = v8;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_daemonConnectionWasLost_ name:0x2827A4CB8 object:connectionCopy];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel_daemonConnectionWasLost_ name:0x2827A4CD8 object:connectionCopy];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCUtilities;
  [(ASCUtilities *)&v4 dealloc];
}

+ (void)withSharedUtilities:(id)utilities perform:(id)perform
{
  utilitiesCopy = utilities;
  performCopy = perform;
  v7 = ASCUtilities_testingUtilities;
  objc_storeStrong(&ASCUtilities_testingUtilities, utilities);
  performCopy[2](performCopy);
  v8 = ASCUtilities_testingUtilities;
  ASCUtilities_testingUtilities = v7;
}

- (void)daemonConnectionWasLost:(id)lost
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CCA9B8]);
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"Connection to daemon was lost";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 initWithDomain:@"ASCUtilitiesErrorDomain" code:0 userInfo:v5];

  pendingPromises = [(ASCUtilities *)self pendingPromises];
  [pendingPromises finishAllWithError:v6];
}

- (id)openURL:(id)l
{
  lCopy = l;
  pendingPromises = [(ASCUtilities *)self pendingPromises];
  objc_initWeak(&location, pendingPromises);

  v6 = objc_alloc_init(MEMORY[0x277CEE5F0]);
  connection = [(ASCUtilities *)self connection];
  utilityService = [connection utilityService];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __24__ASCUtilities_openURL___block_invoke;
  v17[3] = &unk_2781CC778;
  objc_copyWeak(&v20, &location);
  v9 = v6;
  v18 = v9;
  v10 = lCopy;
  v19 = v10;
  [utilityService addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __24__ASCUtilities_openURL___block_invoke_3;
  v15[3] = &unk_2781CBB80;
  v11 = v9;
  v16 = v11;
  [utilityService addErrorBlock:v15];
  v12 = v16;
  v13 = v11;

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v13;
}

void __24__ASCUtilities_openURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained addBinaryPromise:*(a1 + 32)];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__ASCUtilities_openURL___block_invoke_2;
  v6[3] = &unk_2781CBB80;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v3 openURL:v5 withReplyHandler:v6];
}

uint64_t __24__ASCUtilities_openURL___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithSuccess];
  }
}

- (id)restoreAppStore
{
  pendingPromises = [(ASCUtilities *)self pendingPromises];
  objc_initWeak(&location, pendingPromises);

  v4 = objc_alloc_init(MEMORY[0x277CEE5F0]);
  connection = [(ASCUtilities *)self connection];
  utilityService = [connection utilityService];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__ASCUtilities_restoreAppStore__block_invoke;
  v14[3] = &unk_2781CC7A0;
  objc_copyWeak(&v16, &location);
  v7 = v4;
  v15 = v7;
  [utilityService addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__ASCUtilities_restoreAppStore__block_invoke_3;
  v12[3] = &unk_2781CBB80;
  v8 = v7;
  v13 = v8;
  [utilityService addErrorBlock:v12];
  v9 = v13;
  v10 = v8;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

void __31__ASCUtilities_restoreAppStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addBinaryPromise:*(a1 + 32)];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__ASCUtilities_restoreAppStore__block_invoke_2;
  v5[3] = &unk_2781CBB80;
  v6 = *(a1 + 32);
  [v3 restoreAppStoreWithReplyHandler:v5];
}

uint64_t __31__ASCUtilities_restoreAppStore__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithSuccess];
  }
}

@end