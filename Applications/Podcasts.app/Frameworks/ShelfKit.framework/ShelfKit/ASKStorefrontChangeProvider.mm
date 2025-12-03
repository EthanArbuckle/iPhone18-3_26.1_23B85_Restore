@interface ASKStorefrontChangeProvider
- (ASKStorefrontChangeProvider)initWithBlock:(id)block;
- (BOOL)hasManagedStateChangedFromAccount:(id)account toAccount:(id)toAccount;
- (BOOL)hasStorefrontChangedFromAccount:(id)account toAccount:(id)toAccount;
- (void)accountStoreDidChange:(id)change;
- (void)dealloc;
@end

@implementation ASKStorefrontChangeProvider

- (ASKStorefrontChangeProvider)initWithBlock:(id)block
{
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = ASKStorefrontChangeProvider;
  v5 = [(ASKStorefrontChangeProvider *)&v16 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    v7 = v5->_block;
    v5->_block = v6;

    v8 = dispatch_queue_create("ASKStorefrontChangeProvider", 0);
    notifyQueue = v5->_notifyQueue;
    v5->_notifyQueue = v8;

    v10 = +[ACAccountStore ams_sharedAccountStore];
    accountStore = v5->_accountStore;
    v5->_accountStore = v10;

    notifyQueue = [(ASKStorefrontChangeProvider *)v5 notifyQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __45__ASKStorefrontChangeProvider_initWithBlock___block_invoke;
    block[3] = &unk_4AF510;
    v15 = v5;
    dispatch_async(notifyQueue, block);
  }

  return v5;
}

void __45__ASKStorefrontChangeProvider_initWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v3 = [v2 ams_localiTunesAccount];
  [*(a1 + 32) setLocalAccount:v3];

  v4 = [*(a1 + 32) accountStore];
  v5 = [v4 ams_activeiTunesAccount];
  [*(a1 + 32) setActiveAccount:v5];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:"accountStoreDidChange:" name:ACDAccountStoreDidChangeNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASKStorefrontChangeProvider;
  [(ASKStorefrontChangeProvider *)&v4 dealloc];
}

- (BOOL)hasStorefrontChangedFromAccount:(id)account toAccount:(id)toAccount
{
  toAccountCopy = toAccount;
  ams_storefront = [account ams_storefront];
  ams_storefront2 = [toAccountCopy ams_storefront];

  if (ams_storefront && ams_storefront2)
  {
    v8 = [ams_storefront componentsSeparatedByString:@" "];
    firstObject = [v8 firstObject];

    v10 = [ams_storefront2 componentsSeparatedByString:@" "];
    firstObject2 = [v10 firstObject];

    if (firstObject | firstObject2)
    {
      v12 = [firstObject isEqual:firstObject2];
    }

    else
    {
      v12 = 1;
    }
  }

  else if (ams_storefront | ams_storefront2)
  {
    v12 = [ams_storefront isEqual:ams_storefront2];
  }

  else
  {
    v12 = 1;
  }

  return v12 ^ 1;
}

- (BOOL)hasManagedStateChangedFromAccount:(id)account toAccount:(id)toAccount
{
  toAccountCopy = toAccount;
  v6 = [account accountPropertyForKey:@"isManagedAppleID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  bOOLValue = [v7 BOOLValue];
  v9 = [toAccountCopy accountPropertyForKey:@"isManagedAppleID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  bOOLValue2 = [v10 BOOLValue];
  return bOOLValue ^ bOOLValue2;
}

- (void)accountStoreDidChange:(id)change
{
  notifyQueue = [(ASKStorefrontChangeProvider *)self notifyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke;
  block[3] = &unk_4AF510;
  block[4] = self;
  dispatch_async(notifyQueue, block);
}

void __53__ASKStorefrontChangeProvider_accountStoreDidChange___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) localAccount];
  v2 = [*(a1 + 32) accountStore];
  v3 = [v2 ams_localiTunesAccount];

  v4 = [*(a1 + 32) activeAccount];
  v5 = [*(a1 + 32) accountStore];
  v6 = [v5 ams_activeiTunesAccount];

  if (([*(a1 + 32) hasStorefrontChangedFromAccount:v8 toAccount:v3] & 1) != 0 || objc_msgSend(*(a1 + 32), "hasManagedStateChangedFromAccount:toAccount:", v4, v6))
  {
    v7 = [*(a1 + 32) block];
    v7[2]();
  }

  [*(a1 + 32) setLocalAccount:v3];
  [*(a1 + 32) setActiveAccount:v6];
}

@end