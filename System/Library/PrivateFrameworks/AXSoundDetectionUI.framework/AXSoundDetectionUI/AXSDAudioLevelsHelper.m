@interface AXSDAudioLevelsHelper
+ (id)sharedInstance;
- (AXSDAudioLevelsHelper)init;
- (void)deregisterListener:(id)a3;
- (void)registerListener:(id)a3 forAudioLevelUpdates:(id)a4 withBucketCount:(int)a5;
- (void)updateListenersWithBuffer:(id)a3;
@end

@implementation AXSDAudioLevelsHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[AXSDAudioLevelsHelper sharedInstance];
  }

  v3 = sharedInstance___SharedHelper;

  return v3;
}

uint64_t __39__AXSDAudioLevelsHelper_sharedInstance__block_invoke()
{
  sharedInstance___SharedHelper = objc_alloc_init(AXSDAudioLevelsHelper);

  return MEMORY[0x2821F96F8]();
}

- (AXSDAudioLevelsHelper)init
{
  v10.receiver = self;
  v10.super_class = AXSDAudioLevelsHelper;
  v2 = [(AXSDAudioLevelsHelper *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    listenerHanders = v2->_listenerHanders;
    v2->_listenerHanders = v3;

    v5 = objc_opt_new();
    listenerBucketCounts = v2->_listenerBucketCounts;
    v2->_listenerBucketCounts = v5;

    v7 = dispatch_queue_create("com.apple.accessibility.sounddetection.update_listeners", 0);
    listenerQueue = v2->_listenerQueue;
    v2->_listenerQueue = v7;
  }

  return v2;
}

- (void)registerListener:(id)a3 forAudioLevelUpdates:(id)a4 withBucketCount:(int)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = AXLogUltron();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v21 = v8;
    v22 = 1024;
    v23 = a5;
    _os_log_debug_impl(&dword_23D62D000, v10, OS_LOG_TYPE_DEBUG, "Register audio listener: %@ with bucket count: %d", buf, 0x12u);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
  listenerQueue = self->_listenerQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__AXSDAudioLevelsHelper_registerListener_forAudioLevelUpdates_withBucketCount___block_invoke;
  v16[3] = &unk_278BDD518;
  v17 = v11;
  v18 = v9;
  v16[4] = self;
  v19 = a5;
  v13 = v11;
  v14 = v9;
  dispatch_async(listenerQueue, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __79__AXSDAudioLevelsHelper_registerListener_forAudioLevelUpdates_withBucketCount___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 48) copy];
  [v2 setObject:v3 forKey:*(a1 + 40)];

  v4 = *(*(a1 + 32) + 16);
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v4 setObject:v5 forKey:*(a1 + 40)];
}

- (void)deregisterListener:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_debug_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEBUG, "Deregister audio listener: %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
  listenerQueue = self->_listenerQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__AXSDAudioLevelsHelper_deregisterListener___block_invoke;
  v10[3] = &unk_278BDD2C0;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_async(listenerQueue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __44__AXSDAudioLevelsHelper_deregisterListener___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);

  return [v3 removeObjectForKey:v2];
}

- (void)updateListenersWithBuffer:(id)a3
{
  v4 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__1;
  v11[4] = __Block_byref_object_dispose__1;
  v12 = 0;
  listenerQueue = self->_listenerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__AXSDAudioLevelsHelper_updateListenersWithBuffer___block_invoke;
  v7[3] = &unk_278BDD568;
  v9 = v13;
  v10 = v11;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(listenerQueue, v7);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
}

void __51__AXSDAudioLevelsHelper_updateListenersWithBuffer___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 16) objectForKey:{v7, v17, v18, v19, v20}];
        v9 = [v8 intValue];

        if (v9 != *(*(*(a1 + 48) + 8) + 24))
        {
          v10 = [*(a1 + 40) magnitudesWithLevelMultiplier:v9 count:10.0];
          v11 = [v10 mutableCopy];
          v12 = *(*(a1 + 56) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;

          *(*(*(a1 + 48) + 8) + 24) = v9;
        }

        if ([*(*(*(a1 + 56) + 8) + 40) count] >= 3)
        {
          [*(*(*(a1 + 56) + 8) + 40) removeObjectsInRange:{0, 2}];
        }

        v14 = [*(*(a1 + 32) + 8) objectForKey:v7];
        v15 = v14;
        if (v14 && *(*(*(a1 + 56) + 8) + 40))
        {
          v17 = MEMORY[0x277D85DD0];
          v18 = 3221225472;
          v19 = __51__AXSDAudioLevelsHelper_updateListenersWithBuffer___block_invoke_2;
          v20 = &unk_278BDD540;
          v21 = v14;
          v22 = *(a1 + 56);
          AXPerformBlockOnMainThread();
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end