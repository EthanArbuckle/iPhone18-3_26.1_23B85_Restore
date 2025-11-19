@interface ENAuthCache
- (ENAuthCache)init;
- (id)authenticationResultForBusiness;
- (id)authenticationResultForLinkedNotebookGuid:(id)a3;
- (void)setAuthenticationResult:(id)a3 forLinkedNotebookGuid:(id)a4;
- (void)setAuthenticationResultForBusiness:(id)a3;
@end

@implementation ENAuthCache

- (id)authenticationResultForBusiness
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ENAuthCache *)v2 businessCache];
  v4 = v3;
  if (v3 && ([v3 isValid] & 1) == 0)
  {
    [(ENAuthCache *)v2 setBusinessCache:0];
  }

  v5 = [v4 authResult];

  objc_sync_exit(v2);

  return v5;
}

- (void)setAuthenticationResultForBusiness:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [ENAuthCacheEntry entryWithResult:v4];
    v6 = self;
    objc_sync_enter(v6);
    [(ENAuthCache *)v6 setBusinessCache:v5];
    objc_sync_exit(v6);

    v4 = v7;
  }
}

- (id)authenticationResultForLinkedNotebookGuid:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(ENAuthCache *)v5 linkedCache];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7 && ([v7 isValid] & 1) == 0)
  {
    v8 = [(ENAuthCache *)v5 linkedCache];
    [v8 removeObjectForKey:v4];

    v7 = 0;
  }

  v9 = [v7 authResult];

  objc_sync_exit(v5);

  return v9;
}

- (void)setAuthenticationResult:(id)a3 forLinkedNotebookGuid:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10)
  {
    v7 = [ENAuthCacheEntry entryWithResult:?];
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(ENAuthCache *)v8 linkedCache];
    [v9 setObject:v7 forKeyedSubscript:v6];

    objc_sync_exit(v8);
  }
}

- (ENAuthCache)init
{
  v5.receiver = self;
  v5.super_class = ENAuthCache;
  v2 = [(ENAuthCache *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(ENAuthCache *)v2 setLinkedCache:v3];
  }

  return v2;
}

@end