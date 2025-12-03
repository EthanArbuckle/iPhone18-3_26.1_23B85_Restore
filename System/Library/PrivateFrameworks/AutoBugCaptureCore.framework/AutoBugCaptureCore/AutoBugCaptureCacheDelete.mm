@interface AutoBugCaptureCacheDelete
- (AutoBugCaptureCacheDelete)initWithStorageManager:(id)manager;
- (id)cacheDeletePeriodicWithInfo:(__CFDictionary *)info;
- (id)replyCacheDeleteDictionaryWithCDInfo:(id)info amount:(unint64_t)amount;
- (void)initCacheDeletePurgeMonitor;
- (void)processPurgedFilesForCDEvents:(id)events;
- (void)registerCallbacks:(const char *)callbacks;
@end

@implementation AutoBugCaptureCacheDelete

- (AutoBugCaptureCacheDelete)initWithStorageManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = AutoBugCaptureCacheDelete;
  v6 = [(AutoBugCaptureCacheDelete *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storageManager, manager);
    v8 = +[ABCAdministrator sharedInstance];
    configurationManager = [v8 configurationManager];
    logArchivePath = [configurationManager logArchivePath];
    logArchivePath = v7->logArchivePath;
    v7->logArchivePath = logArchivePath;

    if ([(NSString *)v7->logArchivePath hasPrefix:@"/var/"])
    {
      v12 = [@"/private" stringByAppendingPathComponent:v7->logArchivePath];
      v13 = v7->logArchivePath;
      v7->logArchivePath = v12;
    }

    [(AutoBugCaptureCacheDelete *)v7 registerCallbacks:"com.apple.symptomsd-diag.CacheDelete"];
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    purgedFilePaths = v7->purgedFilePaths;
    v7->purgedFilePaths = v14;
  }

  return v7;
}

- (id)replyCacheDeleteDictionaryWithCDInfo:(id)info amount:(unint64_t)amount
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB38];
  infoCopy = info;
  v8 = objc_alloc_init(v6);
  v9 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"/private/var";
  }

  if ([(NSString *)self->logArchivePath hasPrefix:v10])
  {
    [(__CFString *)v8 setObject:v10 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:amount];
    [(__CFString *)v8 setObject:v11 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

    v12 = storageLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "CacheDelete given back: %@", &v18, 0xCu);
    }

    v13 = v8;
  }

  else
  {
    v14 = storageLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      logArchivePath = self->logArchivePath;
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = logArchivePath;
      _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_INFO, "CacheDelete volume %@ and target path incompatible: %@", &v18, 0x16u);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)cacheDeletePeriodicWithInfo:(__CFDictionary *)info
{
  v5 = storageLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "CacheDelete cacheDeletePERIODICWithInfo", buf, 2u);
  }

  storageManager = self->_storageManager;
  if (storageManager)
  {
    performPeriodicPurge = [(DiagnosticStorageManager *)storageManager performPeriodicPurge];
  }

  else
  {
    v8 = +[ABCAdministrator sharedInstance];
    configurationManager = [v8 configurationManager];
    autoBugCaptureEnabled = [configurationManager autoBugCaptureEnabled];

    if (autoBugCaptureEnabled)
    {
      v11 = storageLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "CacheDelete cacheDeletePERIODICWithInfo. ABC is enabled but storageManager is nil", v14, 2u);
      }
    }

    performPeriodicPurge = 0;
  }

  v12 = [(AutoBugCaptureCacheDelete *)self replyCacheDeleteDictionaryWithCDInfo:info amount:performPeriodicPurge];

  return v12;
}

- (void)registerCallbacks:(const char *)callbacks
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:callbacks];
  v5 = CacheDeleteRegisterInfoCallbacks();
  if (v5 < 0)
  {
    v6 = v5;
    v7 = storageLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      selfCopy = self;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "Failed to register with CacheDelete: %p, %d", buf, 0x12u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initCacheDeletePurgeMonitor
{
  v12[1] = *MEMORY[0x277D85DE8];
  logArchivePath = self->logArchivePath;
  CacheDeleteInitPurgeMarker();
  CFStringCreateWithCString(*MEMORY[0x277CBECE8], [(NSString *)self->logArchivePath fileSystemRepresentation], 0x8000100u);
  v12[0] = self->logArchivePath;
  [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v4 = CacheDeleteRegisterPurgeNotification();
  if (v4)
  {
    v5 = v4;
    v6 = storageLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      selfCopy = self;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_ERROR, "Failed to register Purge Notification CacheDelete: %p, %d", buf, 0x12u);
    }
  }

  else
  {
    CacheDeleteEnumerateRemovedFiles();
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __56__AutoBugCaptureCacheDelete_initCacheDeletePurgeMonitor__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  return CacheDeleteEnumerateRemovedFiles();
}

- (void)processPurgedFilesForCDEvents:(id)events
{
  v26 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if (![eventsCopy count])
  {
    goto LABEL_20;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  v8 = *v22;
  v20 = eventsCopy;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v21 + 1) + 8 * i);
      v11 = [v10 objectForKeyedSubscript:@"rescan"];

      if (v11)
      {
        [(DiagnosticStorageManager *)self->_storageManager cleanupCasesAfterACentralizedCacheDeletePurgeEvent:0];
LABEL_18:
        eventsCopy = v20;
        goto LABEL_19;
      }

      v12 = [v10 objectForKeyedSubscript:@"historyDone"];

      if (v12)
      {
        [(DiagnosticStorageManager *)self->_storageManager cleanupCasesAfterACentralizedCacheDeletePurgeEvent:self->purgedFilePaths];
        [(NSMutableArray *)self->purgedFilePaths removeAllObjects];
        goto LABEL_18;
      }

      v13 = [v10 objectForKeyedSubscript:@"path"];
      if (v13)
      {
        v14 = v13;
        v15 = objc_alloc(MEMORY[0x277CBEB18]);
        pathComponents = [v14 pathComponents];
        v17 = [v15 initWithArray:pathComponents];

        if ([v17 containsObject:@"private"])
        {
          [v17 removeObject:@"private"];
          v18 = [MEMORY[0x277CCACA8] pathWithComponents:v17];

          v14 = v18;
        }

        [(NSMutableArray *)self->purgedFilePaths addObject:v14];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    eventsCopy = v20;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_19:

LABEL_20:
  v19 = *MEMORY[0x277D85DE8];
}

@end