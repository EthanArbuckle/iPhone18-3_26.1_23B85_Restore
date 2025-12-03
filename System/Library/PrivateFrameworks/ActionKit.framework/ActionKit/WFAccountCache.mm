@interface WFAccountCache
- (WFAccountCache)init;
- (id)accountsForService:(id)service;
- (id)numberOfAccountsForService:(id)service;
- (void)clearCacheForService:(id)service;
- (void)setAccounts:(id)accounts forService:(id)service;
- (void)setNumberOfAccounts:(id)accounts forService:(id)service;
@end

@implementation WFAccountCache

- (void)clearCacheForService:(id)service
{
  cache = self->_cache;
  serviceCopy = service;
  v6 = [serviceCopy stringByAppendingString:@"-accounts"];
  [(NSCache *)cache removeObjectForKey:v6];

  v7 = self->_cache;
  v8 = [serviceCopy stringByAppendingString:@"-count"];

  [(NSCache *)v7 removeObjectForKey:v8];
}

- (void)setAccounts:(id)accounts forService:(id)service
{
  cache = self->_cache;
  accountsCopy = accounts;
  v7 = [service stringByAppendingString:@"-accounts"];
  [(NSCache *)cache setObject:accountsCopy forKey:v7];
}

- (void)setNumberOfAccounts:(id)accounts forService:(id)service
{
  cache = self->_cache;
  accountsCopy = accounts;
  v7 = [service stringByAppendingString:@"-count"];
  [(NSCache *)cache setObject:accountsCopy forKey:v7];
}

- (id)accountsForService:(id)service
{
  cache = self->_cache;
  v4 = [service stringByAppendingString:@"-accounts"];
  v5 = [(NSCache *)cache objectForKey:v4];

  return v5;
}

- (id)numberOfAccountsForService:(id)service
{
  serviceCopy = service;
  cache = self->_cache;
  v6 = [serviceCopy stringByAppendingString:@"-count"];
  v7 = [(NSCache *)cache objectForKey:v6];

  if (!v7)
  {
    v8 = [(WFAccountCache *)self accountsForService:serviceCopy];
    v9 = v8;
    if (v8)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFAccountCache)init
{
  v7.receiver = self;
  v7.super_class = WFAccountCache;
  v2 = [(WFAccountCache *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = v2;
  }

  return v2;
}

@end