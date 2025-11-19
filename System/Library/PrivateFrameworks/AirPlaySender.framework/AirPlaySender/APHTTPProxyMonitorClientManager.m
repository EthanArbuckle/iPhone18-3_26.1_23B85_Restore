@interface APHTTPProxyMonitorClientManager
+ (id)obtainSharedInstanceOrCreate:(BOOL)a3;
- (APHTTPProxyMonitorClientManager)init;
- (int)removeMonitorClientForKey:(void *)a3;
- (int)setMonitorCallbackIfNotExists:(id)a3 forKey:(void *)a4 forLink:(unsigned __int8)a5 forIP:(__CFString *)a6;
- (void)dealloc;
@end

@implementation APHTTPProxyMonitorClientManager

+ (id)obtainSharedInstanceOrCreate:(BOOL)a3
{
  if (a3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__APHTTPProxyMonitorClientManager_obtainSharedInstanceOrCreate___block_invoke;
    block[3] = &unk_27849B1A8;
    block[4] = a1;
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

- (int)setMonitorCallbackIfNotExists:(id)a3 forKey:(void *)a4 forLink:(unsigned __int8)a5 forIP:(__CFString *)a6
{
  if (!a4)
  {
    [APHTTPProxyMonitorClientManager setMonitorCallbackIfNotExists:forKey:forLink:forIP:];
LABEL_10:
    v11 = 0;
    v12 = -6705;
    goto LABEL_7;
  }

  if (!a3)
  {
    [APHTTPProxyMonitorClientManager setMonitorCallbackIfNotExists:forKey:forLink:forIP:];
    goto LABEL_10;
  }

  v8 = a5;
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  FigSimpleMutexLock();
  if (CFDictionaryContainsKey(self->_requesterDict, a4))
  {
    [APHTTPProxyMonitorClientManager setMonitorCallbackIfNotExists:forKey:forLink:forIP:];
    v11 = 0;
    v12 = -6721;
  }

  else
  {
    v11 = [[APHTTPProxyMonitorClient alloc] initWithCallback:a3 forLink:v8 forIP:a6];
    if (v11)
    {
      CFDictionarySetValue(self->_requesterDict, a4, v11);
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

- (int)removeMonitorClientForKey:(void *)a3
{
  if (a3)
  {
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexLock();
    if (CFDictionaryContainsKey(self->_requesterDict, a3))
    {
      CFDictionaryRemoveValue(self->_requesterDict, a3);
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