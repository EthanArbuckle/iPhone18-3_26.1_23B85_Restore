@interface AXSDKShotDetectorQueueManager
- (AXSDKShotDetectorQueueManager)init;
- (BOOL)currentGeneralDetectorIsValid;
- (void)addGeneralApplianceDetector;
- (void)assetsNotReadyForUltronManager:(id)manager;
- (void)assetsReadyForUltronManager:(id)manager;
- (void)removeGeneralApplianceDetector;
@end

@implementation AXSDKShotDetectorQueueManager

- (AXSDKShotDetectorQueueManager)init
{
  v7.receiver = self;
  v7.super_class = AXSDKShotDetectorQueueManager;
  v2 = [(AXSDDetectorQueueManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_ready = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    detectorQueue = v3->_detectorQueue;
    v3->_detectorQueue = v4;

    v3->_queueGeneralDetector = 0;
  }

  return v3;
}

- (void)addGeneralApplianceDetector
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, "Detector Queue manager: Add General Appliance Detector", buf, 2u);
  }

  if (self->_ready)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__AXSDKShotDetectorQueueManager_addGeneralApplianceDetector__block_invoke;
    block[3] = &unk_278BDD248;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v4 = AXLogUltronKShot();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "Controller: Queue general detector", buf, 2u);
    }

    self->_queueGeneralDetector = 1;
  }
}

void __60__AXSDKShotDetectorQueueManager_addGeneralApplianceDetector__block_invoke(uint64_t a1)
{
  v2 = AXLogUltronKShot();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_23D62D000, v2, OS_LOG_TYPE_DEFAULT, "Controller: add general detector", v14, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = [v3 detectorManager];
  v5 = [v4 addGeneralApplianceDetector];

  if ((v5 & 1) == 0)
  {
    v6 = AXLogUltronKShot();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__AXSDKShotDetectorQueueManager_addGeneralApplianceDetector__block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (void)removeGeneralApplianceDetector
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, "Detector Queue manager: Remove General Appliance Detector", buf, 2u);
  }

  if (self->_ready)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__AXSDKShotDetectorQueueManager_removeGeneralApplianceDetector__block_invoke;
    block[3] = &unk_278BDD248;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v4 = AXLogUltronKShot();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "Controller: Dequeue general detector", buf, 2u);
    }

    self->_queueGeneralDetector = 0;
  }
}

void __63__AXSDKShotDetectorQueueManager_removeGeneralApplianceDetector__block_invoke(uint64_t a1)
{
  v2 = AXLogUltronKShot();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_23D62D000, v2, OS_LOG_TYPE_DEFAULT, "Controller: remove general detector", v14, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = [v3 detectorManager];
  v5 = [v4 removeGeneralApplianceDetector];

  if ((v5 & 1) == 0)
  {
    v6 = AXLogUltronKShot();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__AXSDKShotDetectorQueueManager_removeGeneralApplianceDetector__block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (BOOL)currentGeneralDetectorIsValid
{
  delegate = [(AXSDDetectorQueueManager *)self delegate];
  detectorManager = [delegate detectorManager];
  currentGeneralApplianceRequest = [detectorManager currentGeneralApplianceRequest];
  v5 = currentGeneralApplianceRequest != 0;

  return v5;
}

- (void)assetsReadyForUltronManager:(id)manager
{
  self->_ready = 1;
  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "KShot Controller Received: assetsReadyForUltronManager", buf, 2u);
  }

  if (self->_queueGeneralDetector)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__AXSDKShotDetectorQueueManager_assetsReadyForUltronManager___block_invoke;
    block[3] = &unk_278BDD248;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __61__AXSDKShotDetectorQueueManager_assetsReadyForUltronManager___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 detectorManager];
  v4 = [v3 addGeneralApplianceDetector];

  if ((v4 & 1) == 0)
  {
    v5 = AXLogUltron();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__AXSDKShotDetectorQueueManager_assetsReadyForUltronManager___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(*(a1 + 32) + 41) = 0;
  v13 = [*(a1 + 32) delegate];
  [v13 assetsReadyAndDetectorsAdded];
}

- (void)assetsNotReadyForUltronManager:(id)manager
{
  v20 = *MEMORY[0x277D85DE8];
  self->_ready = 0;
  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "Controller: Assets are not ready will add current detectors to queue.", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  currentDetectionTypes = [(AXSDDetectorQueueManager *)self currentDetectionTypes];
  v6 = [currentDetectionTypes countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(currentDetectionTypes);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = AXLogUltron();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v10;
          _os_log_impl(&dword_23D62D000, v11, OS_LOG_TYPE_DEFAULT, "Controller: Adding %@ to queue.", buf, 0xCu);
        }

        [(AXSDDetectorQueueManager *)self addListenType:v10];
      }

      v7 = [currentDetectionTypes countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  [(AXSDDetectorQueueManager *)self removeAllListenTypes];
  if ([(AXSDKShotDetectorQueueManager *)self currentGeneralDetectorIsValid])
  {
    self->_queueGeneralDetector = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end