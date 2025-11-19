@interface AXPRemoteCacheManager
- (AXPRemoteCacheManager)initWithCachedTreeClientType:(unint64_t)a3;
- (AXPTranslationTransportDelegate)transportDelegate;
- (BOOL)_notificationData:(id)a3 containsToken:(id)a4;
- (OS_dispatch_queue)_axHierarchyGenerationQueue;
- (void)_attemptToSendResponse:(id)a3;
- (void)_axHierarchyGenerationQueue;
- (void)_elementVisualsUpdatedForNotification:(unint64_t)a3 data:(id)a4;
- (void)_processPlatformTranslationRequest:(id)a3;
- (void)_responseSent:(id)a3 withError:(id)a4;
- (void)_sendAXHierachyOnBackgroundQueue;
- (void)_sendTextRelatedAttributesForTranslation:(id)a3;
- (void)_timerDidFire:(id)a3;
- (void)axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:(id)a3 success:(BOOL)a4;
- (void)axInitialTreeDumpGeneratedOnBackgroundThreadCallback:(id)a3 success:(BOOL)a4;
- (void)axTreeGenerationEnded;
- (void)handleNotification:(unint64_t)a3 data:(id)a4 associatedObject:(id)a5;
- (void)start;
- (void)stop;
@end

@implementation AXPRemoteCacheManager

- (AXPRemoteCacheManager)initWithCachedTreeClientType:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[AXPRemoteCacheManager initWithCachedTreeClientType:]";
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_23D766000, v5, OS_LOG_TYPE_INFO, "%s: cachedTreeClientType: %lu", buf, 0x16u);
  }

  v11.receiver = self;
  v11.super_class = AXPRemoteCacheManager;
  v6 = [(AXPRemoteCacheManager *)&v11 init];
  if (v6)
  {
    v7 = objc_opt_new();
    axTreeGenerationLock = v6->_axTreeGenerationLock;
    v6->_axTreeGenerationLock = v7;

    v6->_cachedTreeClientType = a3;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)start
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[AXPRemoteCacheManager start]";
    _os_log_impl(&dword_23D766000, v3, OS_LOG_TYPE_INFO, "%s:", buf, 0xCu);
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_0);
  v4 = [MEMORY[0x277CBEB58] set];
  [(AXPRemoteCacheManager *)self set_cachedTranslationsForLayoutChange:v4];

  v5 = +[AXPTranslator sharedInstance];
  [v5 setRuntimeDelegate:self];

  v6 = +[AXPTranslator sharedInstance];
  [v6 setRequestResolvingBehavior:2];

  v7 = [(AXPRemoteCacheManager *)self cachedTreeClientType];
  v8 = +[AXPTranslator sharedInstance];
  [v8 setCachedTreeClientType:v7];

  objc_initWeak(buf, self);
  v9 = [(AXPRemoteCacheManager *)self transportDelegate];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __30__AXPRemoteCacheManager_start__block_invoke_2;
  v15[3] = &unk_278BE8600;
  objc_copyWeak(&v16, buf);
  v10 = [v9 accessibilityTranslationTransportAddReceiveDataHandler:v15];
  [(AXPRemoteCacheManager *)self set_transportChannel:v10];

  v11 = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __30__AXPRemoteCacheManager_start__block_invoke_286;
  v13[3] = &unk_278BE8628;
  objc_copyWeak(&v14, buf);
  dispatch_async(v11, v13);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __30__AXPRemoteCacheManager_start__block_invoke()
{
  v0 = +[AXPTranslator sharediOSInstance];
  [v0 stopGeneratingAXTreeDump];
}

void __30__AXPRemoteCacheManager_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277CCAAC8];
  v6 = +[AXPTranslatorRequest allowedDecodableClasses];
  v10 = 0;
  v7 = [v5 unarchivedObjectOfClasses:v6 fromData:v3 error:&v10];

  v8 = v10;
  if (v8)
  {
    v9 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __30__AXPRemoteCacheManager_start__block_invoke_2_cold_1();
    }
  }

  else
  {
    [WeakRetained _processPlatformTranslationRequest:v7];
  }
}

void __30__AXPRemoteCacheManager_start__block_invoke_286(uint64_t a1)
{
  v2 = +[AXPTranslator sharedInstance];
  [v2 setAccessibilityEnabled:1];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__AXPRemoteCacheManager_start__block_invoke_2_287;
  block[3] = &unk_278BE8628;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
}

void __30__AXPRemoteCacheManager_start__block_invoke_2_287(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _elementVisualsUpdatedForNotification:4 data:0];
}

- (void)stop
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[AXPRemoteCacheManager stop]";
    _os_log_impl(&dword_23D766000, v2, OS_LOG_TYPE_INFO, "%s:", &v6, 0xCu);
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_289);
  v3 = +[AXPTranslator sharedInstance];
  [v3 setRequestResolvingBehavior:0];

  v4 = +[AXPTranslator sharedInstance];
  [v4 setCachedTreeClientType:0];

  v5 = *MEMORY[0x277D85DE8];
}

void __29__AXPRemoteCacheManager_stop__block_invoke()
{
  v0 = +[AXPTranslator sharediOSInstance];
  [v0 stopGeneratingAXTreeDump];
}

- (OS_dispatch_queue)_axHierarchyGenerationQueue
{
  v2 = +[AXPTranslator sharediOSInstance];
  v3 = [v2 axTreeDumpSharedBackgroundQueue];

  if (v3)
  {
    v4 = +[AXPTranslator sharediOSInstance];
    v5 = [v4 axTreeDumpSharedBackgroundQueue];
  }

  else
  {
    v6 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AXPRemoteCacheManager *)v6 _axHierarchyGenerationQueue:v7];
    }

    v5 = 0;
  }

  return v5;
}

- (void)_elementVisualsUpdatedForNotification:(unint64_t)a3 data:(id)a4
{
  v16 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = [(AXPRemoteCacheManager *)self _layoutChangeCoalesceTimer];
  if (v6)
  {
    v7 = [(AXPRemoteCacheManager *)self _layoutChangeCoalesceTimer];
    v8 = [v7 isValid];

    if (!v16)
    {
      v10 = 0.75;
      if (v8)
      {
        goto LABEL_19;
      }

LABEL_18:
      v14 = [(AXPRemoteCacheManager *)self _layoutChangeCoalesceTimer];
      [v14 invalidate];

      [(AXPRemoteCacheManager *)self set_layoutChangeCoalesceTimer:0];
      v15 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__timerDidFire_ selector:0 userInfo:0 repeats:v10];
      [(AXPRemoteCacheManager *)self set_layoutChangeCoalesceTimer:v15];

      goto LABEL_19;
    }

    v9 = v8 ^ 1;
  }

  else
  {

    if (!v16)
    {
      v10 = 0.75;
      goto LABEL_18;
    }

    v9 = 1;
  }

  v10 = 0.75;
  if (a3 == 4)
  {
    v11 = MEMORY[0x277CE6D40];
  }

  else
  {
    if (a3 != 5)
    {
      v13 = 0;
      goto LABEL_15;
    }

    v11 = MEMORY[0x277CE6D98];
  }

  v12 = *v11;
  v13 = [AXPRemoteCacheManager _notificationData:"_notificationData:containsToken:" containsToken:?];
  if (v13)
  {
    v10 = 0.5;
  }

LABEL_15:
  if ((v13 | v9))
  {
    goto LABEL_18;
  }

LABEL_19:
}

- (BOOL)_notificationData:(id)a3 containsToken:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 containsObject:v6];
LABEL_6:
    v9 = v7;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [v5 isEqual:v6];
    goto LABEL_6;
  }

  v8 = [v5 allObjects];
  v9 = [v8 containsObject:v6];

LABEL_7:
  return v9;
}

- (void)_timerDidFire:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [v5 lock];

  if ([(AXPRemoteCacheManager *)self treeDumpStatus]== 1)
  {
    v6 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
    [v6 unlock];
  }

  else
  {
    v7 = [(AXPRemoteCacheManager *)self treeDumpStatus];
    v8 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
    [v8 unlock];

    if (v7 != 2)
    {
      objc_initWeak(&location, self);
      v12 = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __39__AXPRemoteCacheManager__timerDidFire___block_invoke;
      v17 = &unk_278BE8628;
      objc_copyWeak(&v18, &location);
      dispatch_async(v12, &v14);

      v13 = [(AXPRemoteCacheManager *)self _layoutChangeCoalesceTimer:v14];
      [v13 invalidate];

      [(AXPRemoteCacheManager *)self set_layoutChangeCoalesceTimer:0];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }
  }

  v9 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [v9 lock];

  [(AXPRemoteCacheManager *)self setTreeDumpStatus:2];
  v10 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [v10 unlock];

  v11 = +[AXPTranslator sharediOSInstance];
  [v11 stopGeneratingAXTreeDump];

LABEL_6:
}

void __39__AXPRemoteCacheManager__timerDidFire___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendAXHierachyOnBackgroundQueue];
}

- (void)_sendAXHierachyOnBackgroundQueue
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [v4 lock];

  if ([(AXPRemoteCacheManager *)self treeDumpStatus]== 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(AXPRemoteCacheManager *)self setTreeDumpStatus:v5];
  v6 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [v6 unlock];

  v7 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[AXPRemoteCacheManager _sendAXHierachyOnBackgroundQueue]";
    _os_log_impl(&dword_23D766000, v7, OS_LOG_TYPE_INFO, "%s: starting to generate initial hierarchy", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = +[AXPTranslator sharediOSInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__AXPRemoteCacheManager__sendAXHierachyOnBackgroundQueue__block_invoke;
  v10[3] = &unk_278BE8650;
  objc_copyWeak(&v11, buf);
  [v8 generateAXTreeDumpTypeOnBackgroundThread:@"AXPTreeDumpTypeInitialDump" completionHandler:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v9 = *MEMORY[0x277D85DE8];
}

void __57__AXPRemoteCacheManager__sendAXHierachyOnBackgroundQueue__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained axInitialTreeDumpGeneratedOnBackgroundThreadCallback:v5 success:a2];
}

- (void)axTreeGenerationEnded
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [v4 lock];

  v5 = [(AXPRemoteCacheManager *)self treeDumpStatus]== 2;
  [(AXPRemoteCacheManager *)self setTreeDumpStatus:0];
  v6 = [(AXPRemoteCacheManager *)self axTreeGenerationLock];
  [v6 unlock];

  if (v5)
  {
    objc_initWeak(&location, self);
    v7 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[AXPRemoteCacheManager axTreeGenerationEnded]";
      _os_log_impl(&dword_23D766000, v7, OS_LOG_TYPE_INFO, "%s: pendingAXTreeGeneration, generating another AX hierarchy", buf, 0xCu);
    }

    v8 = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__AXPRemoteCacheManager_axTreeGenerationEnded__block_invoke;
    v10[3] = &unk_278BE8628;
    objc_copyWeak(&v11, &location);
    dispatch_async(v8, v10);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __46__AXPRemoteCacheManager_axTreeGenerationEnded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendAXHierachyOnBackgroundQueue];
}

- (void)axInitialTreeDumpGeneratedOnBackgroundThreadCallback:(id)a3 success:(BOOL)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
  dispatch_assert_queue_V2(v7);

  v8 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v31 = "[AXPRemoteCacheManager axInitialTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
    _os_log_impl(&dword_23D766000, v8, OS_LOG_TYPE_INFO, "%s: finished generating initial hierarchy", buf, 0xCu);
  }

  if (a4)
  {
    v9 = [MEMORY[0x277CBEB58] set];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [v6 treeDumpResponse];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = *v26;
      do
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v25 + 1) + 8 * v13) associatedTranslationObject];
          if (v14)
          {
            [v9 addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    if (-[AXPRemoteCacheManager lastAXTreeFullyGenerated](self, "lastAXTreeFullyGenerated") && (-[AXPRemoteCacheManager _cachedTranslationsForLayoutChange](self, "_cachedTranslationsForLayoutChange"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v9 isEqualToSet:v15], v15, v16))
    {
      v17 = AXPlatformTranslationLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v31 = "[AXPRemoteCacheManager axInitialTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
        _os_log_impl(&dword_23D766000, v17, OS_LOG_TYPE_INFO, "%s: skipping hierarchy dump because elements did not change", buf, 0xCu);
      }

      [(AXPRemoteCacheManager *)self axTreeGenerationEnded];
    }

    else
    {
      [(AXPRemoteCacheManager *)self set_cachedTranslationsForLayoutChange:v9];
      v19 = AXPlatformTranslationLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v31 = "[AXPRemoteCacheManager axInitialTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
        _os_log_impl(&dword_23D766000, v19, OS_LOG_TYPE_INFO, "%s: sending initial tree dump", buf, 0xCu);
      }

      [(AXPRemoteCacheManager *)self handleUpdatedAXTree:v6];
      v20 = AXPlatformTranslationLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v31 = "[AXPRemoteCacheManager axInitialTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
        _os_log_impl(&dword_23D766000, v20, OS_LOG_TYPE_INFO, "%s: generating additional tree dump", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v21 = +[AXPTranslator sharediOSInstance];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __86__AXPRemoteCacheManager_axInitialTreeDumpGeneratedOnBackgroundThreadCallback_success___block_invoke;
      v23[3] = &unk_278BE8650;
      objc_copyWeak(&v24, buf);
      [v21 generateAXTreeDumpTypeOnBackgroundThread:@"AXPTreeDumpTypeAdditionalData" completionHandler:v23];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v18 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v31 = "[AXPRemoteCacheManager axInitialTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
      _os_log_impl(&dword_23D766000, v18, OS_LOG_TYPE_INFO, "%s: initial AX tree dump terminated early!", buf, 0xCu);
    }

    [(AXPRemoteCacheManager *)self axTreeGenerationEnded];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __86__AXPRemoteCacheManager_axInitialTreeDumpGeneratedOnBackgroundThreadCallback_success___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:v5 success:a2];
}

- (void)axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:(id)a3 success:(BOOL)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[AXPRemoteCacheManager axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
    _os_log_impl(&dword_23D766000, v7, OS_LOG_TYPE_INFO, "%s: finished generating additional hierarchy", &v12, 0xCu);
  }

  v8 = [(AXPRemoteCacheManager *)self _axHierarchyGenerationQueue];
  dispatch_assert_queue_V2(v8);

  if (a4)
  {
    [(AXPRemoteCacheManager *)self setLastAXTreeFullyGenerated:1];
    v9 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[AXPRemoteCacheManager axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
      _os_log_impl(&dword_23D766000, v9, OS_LOG_TYPE_INFO, "%s: sending additional tree dump", &v12, 0xCu);
    }

    [(AXPRemoteCacheManager *)self handleUpdatedAXTree:v6];
  }

  else
  {
    [(AXPRemoteCacheManager *)self setLastAXTreeFullyGenerated:0];
    v10 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[AXPRemoteCacheManager axAdditionalTreeDumpGeneratedOnBackgroundThreadCallback:success:]";
      _os_log_impl(&dword_23D766000, v10, OS_LOG_TYPE_INFO, "%s: additional AX tree dump terminated early!", &v12, 0xCu);
    }
  }

  [(AXPRemoteCacheManager *)self axTreeGenerationEnded];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_processPlatformTranslationRequest:(id)a3
{
  v4 = a3;
  v5 = +[AXPTranslator sharedInstance];
  v6 = [v5 processTranslatorRequest:v4];

  [(AXPRemoteCacheManager *)self _attemptToSendResponse:v6];
}

- (void)_attemptToSendResponse:(id)a3
{
  v4 = a3;
  v15 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXPRemoteCacheManager _attemptToSendResponse:];
    }
  }

  else
  {
    v8 = [v5 length];
    v9 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(AXPRemoteCacheManager *)v8 _attemptToSendResponse:v9];
    }

    objc_initWeak(&location, self);
    v10 = [(AXPRemoteCacheManager *)self transportDelegate];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__AXPRemoteCacheManager__attemptToSendResponse___block_invoke;
    v11[3] = &unk_278BE8678;
    objc_copyWeak(&v13, &location);
    v12 = v4;
    [v10 accessibilityTranslationTransportSendData:v5 completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __48__AXPRemoteCacheManager__attemptToSendResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _responseSent:*(a1 + 32) withError:v3];
}

- (void)_responseSent:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
LABEL_9:
    [(AXPRemoteCacheManager *)self setFailedSendAttempts:0];
    goto LABEL_10;
  }

  v8 = [(AXPRemoteCacheManager *)self failedSendAttempts];
  v9 = AXPlatformTranslationLogCommon();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8 > 4)
  {
    if (v10)
    {
      [(AXPRemoteCacheManager *)self _responseSent:v7 withError:v9];
    }

    goto LABEL_9;
  }

  if (v10)
  {
    [AXPRemoteCacheManager _responseSent:withError:];
  }

  [(AXPRemoteCacheManager *)self setFailedSendAttempts:[(AXPRemoteCacheManager *)self failedSendAttempts]+ 1];
  [(AXPRemoteCacheManager *)self _attemptToSendResponse:v6];
LABEL_10:
}

- (void)handleNotification:(unint64_t)a3 data:(id)a4 associatedObject:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (a3 <= 0xF && ((1 << a3) & 0x9430) != 0)
  {
    v10 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[AXPRemoteCacheManager handleNotification:data:associatedObject:]";
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_23D766000, v10, OS_LOG_TYPE_INFO, "%s: notification: %lu", &v14, 0x16u);
    }

    [(AXPRemoteCacheManager *)self _elementVisualsUpdatedForNotification:a3 data:v8];
  }

  else
  {
    v12 = AXPlatformTranslationLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 134218242;
      v15 = a3;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_23D766000, v12, OS_LOG_TYPE_INFO, "handleNotification: sending notification: %lu, Data: %@", &v14, 0x16u);
    }

    if (a3 == 6 && v9)
    {
      [(AXPRemoteCacheManager *)self _sendTextRelatedAttributesForTranslation:v9];
    }

    v13 = objc_opt_new();
    [v13 setNotification:a3];
    [v13 setAssociatedNotificationObject:v9];
    [v13 setResultData:v8];
    [(AXPRemoteCacheManager *)self _attemptToSendResponse:v13];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendTextRelatedAttributesForTranslation:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_sendTextRelatedAttributesForTranslation__onceToken != -1)
  {
    [AXPRemoteCacheManager _sendTextRelatedAttributesForTranslation:];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = _sendTextRelatedAttributesForTranslation__s_textEditingRelatedAttributes;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = objc_alloc_init(AXPTranslatorRequest);
        [(AXPTranslatorRequest *)v8 setRequestType:5];
        v25 = v7;
        v26 = @"attributes";
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
        v27 = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [(AXPTranslatorRequest *)v8 setParameters:v10];

        [(AXPTranslatorRequest *)v8 setTranslation:v3];
        v11 = +[AXPTranslator sharedInstance];
        v12 = [v11 processTranslatorRequest:v8];

        v13 = [v12 resultData];

        if (v13)
        {
          [v12 setAssociatedTranslationObject:v3];
          [v12 setAssociatedRequestType:5];
          v14 = objc_opt_new();
          [v14 setAssociatedRequestType:11];
          v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v16 = [MEMORY[0x277CBEA60] arrayWithObject:v12];
          [v15 setObject:v16 forKeyedSubscript:@"treeDump"];
          [v15 setObject:@"AXPTreeDumpTypeAdditionalData" forKeyedSubscript:@"treeDumpType"];
          [v14 setResultData:v15];
          [(AXPRemoteCacheManager *)self _attemptToSendResponse:v14];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __66__AXPRemoteCacheManager__sendTextRelatedAttributesForTranslation___block_invoke()
{
  v0 = _sendTextRelatedAttributesForTranslation__s_textEditingRelatedAttributes;
  _sendTextRelatedAttributesForTranslation__s_textEditingRelatedAttributes = &unk_284FCC570;
}

- (AXPTranslationTransportDelegate)transportDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transportDelegate);

  return WeakRetained;
}

void __30__AXPRemoteCacheManager_start__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_23D766000, v0, v1, "Error decoding data as AXPTranslatorRequest! %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_axHierarchyGenerationQueue
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_23D766000, a1, a3, "%s: axTreeDumpSharedBackgroundQueue is NULL!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_attemptToSendResponse:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_23D766000, v0, v1, "Failed to archive response error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_attemptToSendResponse:(unint64_t)a1 .cold.2(unint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = vcvtd_n_f64_s64(a1, 0xAuLL);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_23D766000, a2, OS_LOG_TYPE_DEBUG, "Response: %f Kbytes", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_responseSent:(NSObject *)a3 withError:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 failedSendAttempts];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_23D766000, a3, OS_LOG_TYPE_ERROR, "Failed to send data after %lu attemps, error: %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_responseSent:withError:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_23D766000, v0, v1, "Failed to send message, retrying. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end