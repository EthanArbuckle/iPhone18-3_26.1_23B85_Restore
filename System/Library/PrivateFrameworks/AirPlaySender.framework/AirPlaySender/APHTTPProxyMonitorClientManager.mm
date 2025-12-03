@interface APHTTPProxyMonitorClientManager
+ (id)obtainSharedInstanceOrCreate:(BOOL)create;
- (APHTTPProxyMonitorClientManager)init;
- (int)removeMonitorClientForKey:(void *)key;
- (int)setMonitorCallbackIfNotExists:(id)exists forKey:(void *)key forLink:(unsigned __int8)link forIP:(__CFString *)p;
- (void)dealloc;
@end

@implementation APHTTPProxyMonitorClientManager

+ (id)obtainSharedInstanceOrCreate:(BOOL)create
{
  if (create)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__APHTTPProxyMonitorClientManager_obtainSharedInstanceOrCreate___block_invoke;
    block[3] = &unk_27849B1A8;
    block[4] = self;
    if (obtainSharedInstanceOrCreate__once != -1)
    {
      dispatch_once(&obtainSharedInstanceOrCreate__once, block);
    }
  }

  return obtainSharedInstanceOrCreate__singleton;
}

id __64__APHTTPProxyMonitorClientManager_obtainSharedInstanceOrCreate___block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  obtainSharedInstanceOrCreate__singleton = result;
  return result;
}

- (void)dealloc
{
  requesterDict = self->_requesterDict;
  if (requesterDict)
  {
    CFRelease(requesterDict);
  }

  FigSimpleMutexDestroy();
  v4.receiver = self;
  v4.super_class = APHTTPProxyMonitorClientManager;
  [(APHTTPProxyMonitorClientManager *)&v4 dealloc];
}

- (int)setMonitorCallbackIfNotExists:(id)exists forKey:(void *)key forLink:(unsigned __int8)link forIP:(__CFString *)p
{
  if (!key)
  {
    [APHTTPProxyMonitorClientManager setMonitorCallbackIfNotExists:forKey:forLink:forIP:];
LABEL_10:
    v11 = 0;
    v12 = -6705;
    goto LABEL_7;
  }

  if (!exists)
  {
    [APHTTPProxyMonitorClientManager setMonitorCallbackIfNotExists:forKey:forLink:forIP:];
    goto LABEL_10;
  }

  linkCopy = link;
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (CFDictionaryContainsKey(self->_requesterDict, key))
  {
    [APHTTPProxyMonitorClientManager setMonitorCallbackIfNotExists:forKey:forLink:forIP:];
    v11 = 0;
    v12 = -6721;
  }

  else
  {
    v11 = [[APHTTPProxyMonitorClient alloc] initWithCallback:exists forLink:linkCopy forIP:p];
    if (v11)
    {
      CFDictionarySetValue(self->_requesterDict, key, v11);
      v12 = 0;
    }

    else
    {
      [APHTTPProxyMonitorClientManager setMonitorCallbackIfNotExists:forKey:forLink:forIP:];
      v12 = -6728;
    }
  }

  FigSimpleMutexUnlock();
LABEL_7:

  return v12;
}

- (int)removeMonitorClientForKey:(void *)key
{
  if (key)
  {
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexLock();
    if (CFDictionaryContainsKey(self->_requesterDict, key))
    {
      CFDictionaryRemoveValue(self->_requesterDict, key);
      v5 = 0;
    }

    else
    {
      [APHTTPProxyMonitorClientManager removeMonitorClientForKey:];
      v5 = -6720;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    [APHTTPProxyMonitorClientManager removeMonitorClientForKey:];
    return -6705;
  }

  return v5;
}

- (APHTTPProxyMonitorClientManager)init
{
  v6.receiver = self;
  v6.super_class = APHTTPProxyMonitorClientManager;
  v2 = [(APHTTPProxyMonitorClientManager *)&v6 init];
  if (v2)
  {
    v3 = FigSimpleMutexCreate();
    v2->_mutex = v3;
    if (!v3 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v2->_requesterDict = Mutable) == 0))
    {
      APSLogErrorAt();

      return 0;
    }
  }

  return v2;
}

@end