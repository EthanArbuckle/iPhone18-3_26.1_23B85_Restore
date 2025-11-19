@interface ASKStorefrontChangeProvider
- (ASKStorefrontChangeProvider)initWithBlock:(id)a3;
- (BOOL)hasManagedStateChangedFromAccount:(id)a3 toAccount:(id)a4;
- (BOOL)hasStorefrontChangedFromAccount:(id)a3 toAccount:(id)a4;
- (void)accountStoreDidChange:(id)a3;
- (void)dealloc;
@end

@implementation ASKStorefrontChangeProvider

- (ASKStorefrontChangeProvider)initWithBlock:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = ASKStorefrontChangeProvider;
  v5 = [(ASKStorefrontChangeProvider *)&v26 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = dispatch_queue_create("ASKStorefrontChangeProvider", 0);
    notifyQueue = v5->_notifyQueue;
    v5->_notifyQueue = v8;

    v10 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    accountStore = v5->_accountStore;
    v5->_accountStore = v10;

    v12 = [(ASKStorefrontChangeProvider *)v5 accountStore];
    v13 = [v12 ams_activeiTunesAccount];
    activeAccount = v5->_activeAccount;
    v5->_activeAccount = v13;

    v15 = [(ASKStorefrontChangeProvider *)v5 accountStore];
    v16 = [v15 ams_fetchLocaliTunesAccount];

    objc_initWeak(&location, v5);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __45__ASKStorefrontChangeProvider_initWithBlock___block_invoke;
    v23 = &unk_1E870C148;
    objc_copyWeak(&v24, &location);
    [v16 addSuccessBlock:&v20];
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = [(ASKStorefrontChangeProvider *)v5 accountStore];
    [v17 addObserver:v5 selector:sel_accountStoreDidChange_ name:*MEMORY[0x1E69597D8] object:v18];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __45__ASKStorefrontChangeProvider_initWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__ASKStorefrontChangeProvider_initWithBlock___block_invoke_2;
  v5[3] = &unk_1E870C120;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __45__ASKStorefrontChangeProvider_initWithBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLocalAccount:*(a1 + 32)];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69597D8];
  v5 = [(ASKStorefrontChangeProvider *)self accountStore];
  [v3 removeObserver:self name:v4 object:v5];

  v6.receiver = self;
  v6.super_class = ASKStorefrontChangeProvider;
  [(ASKStorefrontChangeProvider *)&v6 dealloc];
}

- (BOOL)hasStorefrontChangedFromAccount:(id)a3 toAccount:(id)a4
{
  v5 = a4;
  v6 = [a3 ams_storefront];
  v7 = [v5 ams_storefront];

  if (v6 | v7)
  {
    v8 = [v6 isEqual:v7] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)hasManagedStateChangedFromAccount:(id)a3 toAccount:(id)a4
{
  v5 = a4;
  v6 = [a3 accountPropertyForKey:@"isManagedAppleID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 BOOLValue];
  v9 = [v5 accountPropertyForKey:@"isManagedAppleID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 BOOLValue];
  return v8 ^ v11;
}

- (void)accountStoreDidChange:(id)a3
{
  v4 = a3;
  v5 = [(ASKStorefrontChangeProvider *)self accountStore];
  v6 = [v5 ams_fetchLocaliTunesAccount];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke;
  v7[3] = &unk_1E870C1C0;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v6 addSuccessBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke_2;
  block[3] = &unk_1E870C198;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained localAccount];
  v4 = a1[4];
  v5 = [WeakRetained activeAccount];
  v6 = [WeakRetained accountStore];
  v7 = [v6 ams_activeiTunesAccount];

  v8 = [a1[5] notifyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke_3;
  block[3] = &unk_1E870C170;
  block[4] = WeakRetained;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v7;
  v9 = v7;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  dispatch_async(v8, block);

  [WeakRetained setLocalAccount:v11];
  [WeakRetained setActiveAccount:v9];
}

void __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) hasStorefrontChangedFromAccount:*(a1 + 40) toAccount:*(a1 + 48)];
  if (([*(a1 + 32) hasManagedStateChangedFromAccount:*(a1 + 56) toAccount:*(a1 + 64)] & 1) != 0 || v2)
  {
    v3 = [*(a1 + 32) block];
    v3[2]();
  }
}

@end