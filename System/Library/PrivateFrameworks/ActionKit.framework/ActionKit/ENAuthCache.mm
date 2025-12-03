@interface ENAuthCache
- (ENAuthCache)init;
- (id)authenticationResultForBusiness;
- (id)authenticationResultForLinkedNotebookGuid:(id)guid;
- (void)setAuthenticationResult:(id)result forLinkedNotebookGuid:(id)guid;
- (void)setAuthenticationResultForBusiness:(id)business;
@end

@implementation ENAuthCache

- (id)authenticationResultForBusiness
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  businessCache = [(ENAuthCache *)selfCopy businessCache];
  v4 = businessCache;
  if (businessCache && ([businessCache isValid] & 1) == 0)
  {
    [(ENAuthCache *)selfCopy setBusinessCache:0];
  }

  authResult = [v4 authResult];

  objc_sync_exit(selfCopy);

  return authResult;
}

- (void)setAuthenticationResultForBusiness:(id)business
{
  businessCopy = business;
  if (businessCopy)
  {
    v7 = businessCopy;
    v5 = [ENAuthCacheEntry entryWithResult:businessCopy];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(ENAuthCache *)selfCopy setBusinessCache:v5];
    objc_sync_exit(selfCopy);

    businessCopy = v7;
  }
}

- (id)authenticationResultForLinkedNotebookGuid:(id)guid
{
  guidCopy = guid;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  linkedCache = [(ENAuthCache *)selfCopy linkedCache];
  v7 = [linkedCache objectForKeyedSubscript:guidCopy];

  if (v7 && ([v7 isValid] & 1) == 0)
  {
    linkedCache2 = [(ENAuthCache *)selfCopy linkedCache];
    [linkedCache2 removeObjectForKey:guidCopy];

    v7 = 0;
  }

  authResult = [v7 authResult];

  objc_sync_exit(selfCopy);

  return authResult;
}

- (void)setAuthenticationResult:(id)result forLinkedNotebookGuid:(id)guid
{
  resultCopy = result;
  guidCopy = guid;
  if (resultCopy)
  {
    v7 = [ENAuthCacheEntry entryWithResult:?];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    linkedCache = [(ENAuthCache *)selfCopy linkedCache];
    [linkedCache setObject:v7 forKeyedSubscript:guidCopy];

    objc_sync_exit(selfCopy);
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