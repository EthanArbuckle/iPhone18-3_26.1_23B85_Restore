@interface AXSDDetectorQueueManager
- (AXSDDetectorQueueManager)init;
- (AXSDDetectorQueueManagerDelegate)delegate;
- (BOOL)containsListenType:(id)type;
- (BOOL)prepareToListen;
- (id)currentDetectionTypes;
- (id)detectorManager;
- (void)_dequeueListenType:(id)type;
- (void)_queueListenType:(id)type;
- (void)addDetector:(id)detector;
- (void)addListenType:(id)type;
- (void)detectorStore:(id)store detectorsNeedUpdate:(id)update toDetectors:(id)detectors;
- (void)detectorsReadyForDetectorStore:(id)store;
- (void)prepareToListen;
- (void)removeAllListenTypes;
- (void)removeDetector:(id)detector;
- (void)removeListenType:(id)type;
- (void)stopListening;
@end

@implementation AXSDDetectorQueueManager

- (AXSDDetectorQueueManager)init
{
  v9.receiver = self;
  v9.super_class = AXSDDetectorQueueManager;
  v2 = [(AXSDDetectorQueueManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_ready = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    detectorQueue = v3->_detectorQueue;
    v3->_detectorQueue = v4;

    v6 = +[AXSDDetectorStore sharedInstance];
    [v6 addObserver:v3];

    v7 = +[AXSDDetectorStore sharedInstance];
    [v7 loadDetectors];
  }

  return v3;
}

- (id)detectorManager
{
  delegate = [(AXSDDetectorQueueManager *)self delegate];
  detectorManager = [delegate detectorManager];

  return detectorManager;
}

- (void)addListenType:(id)type
{
  typeCopy = type;
  v5 = +[AXSDDetectorStore sharedInstance];
  self->_ready = [v5 areDetectorsReady];

  if (self->_ready)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__AXSDDetectorQueueManager_addListenType___block_invoke;
    v7[3] = &unk_278BDD2C0;
    v7[4] = self;
    v8 = typeCopy;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorQueueManager addListenType:];
    }

    [(AXSDDetectorQueueManager *)self _queueListenType:typeCopy];
  }
}

void __42__AXSDDetectorQueueManager_addListenType___block_invoke(uint64_t a1)
{
  v2 = AXLogUltron();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__AXSDDetectorQueueManager_addListenType___block_invoke_cold_1();
  }

  v3 = a1 + 32;
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 detectorManager];
  v7 = *(a1 + 40);
  v6 = a1 + 40;
  v8 = [v5 addDetectorType:v7];

  if ((v8 & 1) == 0)
  {
    v9 = AXLogUltron();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __42__AXSDDetectorQueueManager_addListenType___block_invoke_cold_2(v3, v6, v9);
    }
  }
}

- (void)addDetector:(id)detector
{
  detectorCopy = detector;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__AXSDDetectorQueueManager_addDetector___block_invoke;
  v6[3] = &unk_278BDD2C0;
  v6[4] = self;
  v7 = detectorCopy;
  v5 = detectorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __40__AXSDDetectorQueueManager_addDetector___block_invoke(uint64_t a1)
{
  v2 = AXLogUltron();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40__AXSDDetectorQueueManager_addDetector___block_invoke_cold_1();
  }

  v3 = a1 + 32;
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 detectorManager];
  v7 = *(a1 + 40);
  v6 = a1 + 40;
  v8 = [v5 addDetector:v7];

  if ((v8 & 1) == 0)
  {
    v9 = AXLogUltron();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __40__AXSDDetectorQueueManager_addDetector___block_invoke_cold_2(v3, v6, v9);
    }
  }
}

- (void)removeListenType:(id)type
{
  typeCopy = type;
  v5 = +[AXSDDetectorStore sharedInstance];
  self->_ready = [v5 areDetectorsReady];

  if (self->_ready)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__AXSDDetectorQueueManager_removeListenType___block_invoke;
    v7[3] = &unk_278BDD2C0;
    v7[4] = self;
    v8 = typeCopy;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorQueueManager removeListenType:v6];
    }

    [(AXSDDetectorQueueManager *)self _dequeueListenType:typeCopy];
  }
}

void __45__AXSDDetectorQueueManager_removeListenType___block_invoke(uint64_t a1)
{
  v2 = AXLogUltron();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45__AXSDDetectorQueueManager_removeListenType___block_invoke_cold_1();
  }

  v3 = a1 + 32;
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 detectorManager];
  v7 = *(a1 + 40);
  v6 = a1 + 40;
  v8 = [v5 removeDetectorType:v7];

  if ((v8 & 1) == 0)
  {
    v9 = AXLogUltron();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __45__AXSDDetectorQueueManager_removeListenType___block_invoke_cold_2(v3, v6, v9);
    }
  }
}

- (BOOL)containsListenType:(id)type
{
  typeCopy = type;
  delegate = [(AXSDDetectorQueueManager *)self delegate];
  detectorManager = [delegate detectorManager];
  currentDetectors = [detectorManager currentDetectors];
  v8 = [currentDetectors containsObject:typeCopy];

  return v8;
}

- (void)removeDetector:(id)detector
{
  detectorCopy = detector;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__AXSDDetectorQueueManager_removeDetector___block_invoke;
  v6[3] = &unk_278BDD2C0;
  v6[4] = self;
  v7 = detectorCopy;
  v5 = detectorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __43__AXSDDetectorQueueManager_removeDetector___block_invoke(uint64_t a1)
{
  v2 = AXLogUltron();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __43__AXSDDetectorQueueManager_removeDetector___block_invoke_cold_1();
  }

  v3 = a1 + 32;
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 detectorManager];
  v7 = *(a1 + 40);
  v6 = a1 + 40;
  v8 = [v5 addDetector:v7];

  if ((v8 & 1) == 0)
  {
    v9 = AXLogUltron();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __43__AXSDDetectorQueueManager_removeDetector___block_invoke_cold_2(v3, v6, v9);
    }
  }
}

- (void)removeAllListenTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AXSDDetectorQueueManager_removeAllListenTypes__block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__AXSDDetectorQueueManager_removeAllListenTypes__block_invoke(uint64_t a1)
{
  v2 = AXLogUltron();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __48__AXSDDetectorQueueManager_removeAllListenTypes__block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = [v3 detectorManager];
  [v4 removeAllDetectors];
}

- (BOOL)prepareToListen
{
  v3 = +[AXSDDetectorStore sharedInstance];
  [v3 addObserver:self];

  v4 = +[AXSDDetectorStore sharedInstance];
  self->_ready = [v4 areDetectorsReady];

  ready = self->_ready;
  if (!ready)
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorQueueManager prepareToListen];
    }
  }

  return ready;
}

- (void)stopListening
{
  v3 = +[AXSDDetectorStore sharedInstance];
  [v3 removeObserver:self];
}

- (id)currentDetectionTypes
{
  v2 = MEMORY[0x277CBEB98];
  delegate = [(AXSDDetectorQueueManager *)self delegate];
  detectorManager = [delegate detectorManager];
  currentDetectors = [detectorManager currentDetectors];
  v6 = [v2 setWithArray:currentDetectors];

  return v6;
}

- (void)_queueListenType:(id)type
{
  typeCopy = type;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorQueueManager _queueListenType:];
  }

  [(NSMutableSet *)self->_detectorQueue addObject:typeCopy];
}

- (void)_dequeueListenType:(id)type
{
  typeCopy = type;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorQueueManager _dequeueListenType:];
  }

  [(NSMutableSet *)self->_detectorQueue removeObject:typeCopy];
}

- (void)detectorsReadyForDetectorStore:(id)store
{
  v15 = *MEMORY[0x277D85DE8];
  self->_ready = 1;
  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = objc_opt_class();
    v5 = v14;
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_INFO, "[%@]: detectors ready", buf, 0xCu);
  }

  v6 = [(NSMutableSet *)self->_detectorQueue count];
  v7 = AXLogUltron();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorQueueManager detectorsReadyForDetectorStore:];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__AXSDDetectorQueueManager_detectorsReadyForDetectorStore___block_invoke;
    block[3] = &unk_278BDD248;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      *buf = 138412290;
      v14 = v9;
      v10 = v9;
      _os_log_impl(&dword_23D62D000, v8, OS_LOG_TYPE_INFO, "[%@]: assets ready but no detectors in queue to start", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __59__AXSDDetectorQueueManager_detectorsReadyForDetectorStore___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v30 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  v4 = [v3 detectorQueue];
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v36;
    *&v6 = 138412802;
    v29 = v6;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        v11 = +[AXSDDetectorStore sharedInstance];
        v12 = [v11 detectorWithIdentifier:v10];

        v13 = AXLogUltron();
        v14 = v13;
        if (!v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            __59__AXSDDetectorQueueManager_detectorsReadyForDetectorStore___block_invoke_cold_2(v2, v10, v14);
          }

          goto LABEL_24;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = *v2;
          v16 = objc_opt_class();
          *buf = v29;
          v41 = v16;
          v42 = 2112;
          v43 = v10;
          v44 = 2112;
          v45 = v12;
          v17 = v16;
          _os_log_impl(&dword_23D62D000, v14, OS_LOG_TYPE_INFO, "[%@]: adding listen type: %@. with asset: %@", buf, 0x20u);
        }

        v18 = [*v2 delegate];
        v19 = [v18 detectorManager];
        v20 = [v19 addDetector:v12];

        if ((v20 & 1) == 0)
        {
          v14 = AXLogUltron();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            __59__AXSDDetectorQueueManager_detectorsReadyForDetectorStore___block_invoke_cold_1(v2, v10, v14);
          }

LABEL_24:

          goto LABEL_25;
        }

        [v30 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v35 objects:v46 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = v30;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      v25 = 0;
      do
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v31 + 1) + 8 * v25);
        v27 = [*v2 detectorQueue];
        [v27 removeObject:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v23);
  }

  v4 = [*v2 delegate];
  [v4 assetsReadyAndDetectorsAdded];
LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)detectorStore:(id)store detectorsNeedUpdate:(id)update toDetectors:(id)detectors
{
  v42 = *MEMORY[0x277D85DE8];
  detectorsCopy = detectors;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [detectorsCopy countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v33;
    *&v8 = 138412546;
    v27 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(detectorsCopy);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        isInstalled = [v12 isInstalled];
        v14 = AXLogUltron();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
        if (isInstalled)
        {
          if (v15)
          {
            v16 = objc_opt_class();
            *buf = v27;
            v38 = v16;
            v39 = 2112;
            v40 = v12;
            v17 = v16;
            _os_log_impl(&dword_23D62D000, v14, OS_LOG_TYPE_INFO, "[%@]: Swapping updated dtector: %@", buf, 0x16u);
          }

          identifier = [v12 identifier];
          [(AXSDDetectorQueueManager *)self removeListenType:identifier];

          [(AXSDDetectorQueueManager *)self addDetector:v12];
        }

        else
        {
          if (v15)
          {
            v19 = objc_opt_class();
            *buf = v27;
            v38 = v19;
            v39 = 2112;
            v40 = v12;
            v20 = v19;
            _os_log_impl(&dword_23D62D000, v14, OS_LOG_TYPE_INFO, "[%@]: Detector is new but not installed: %@", buf, 0x16u);
          }
        }
      }

      v9 = [detectorsCopy countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v9);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = detectorsCopy;
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(AXSDDetectorQueueManager *)self removeDetector:*(*(&v28 + 1) + 8 * j)];
      }

      v23 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v23);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (AXSDDetectorQueueManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addListenType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __42__AXSDDetectorQueueManager_addListenType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_11(v2);
  v4 = *(v0 + 40);
  v5 = OUTLINED_FUNCTION_5(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __40__AXSDDetectorQueueManager_addDetector___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_11(v2);
  v4 = *(v0 + 40);
  v5 = OUTLINED_FUNCTION_5(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __45__AXSDDetectorQueueManager_removeListenType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_11(v2);
  v4 = *(v0 + 40);
  v5 = OUTLINED_FUNCTION_5(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __43__AXSDDetectorQueueManager_removeDetector___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  v1 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_11(v2);
  v4 = *(v0 + 40);
  v5 = OUTLINED_FUNCTION_5(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __48__AXSDDetectorQueueManager_removeAllListenTypes__block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)prepareToListen
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queueListenType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_dequeueListenType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)detectorsReadyForDetectorStore:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v10 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = *v0;
  v3 = v1;
  [v2 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end