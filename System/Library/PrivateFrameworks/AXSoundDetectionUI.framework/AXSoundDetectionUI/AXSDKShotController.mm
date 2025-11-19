@interface AXSDKShotController
+ (id)sharedInstance;
- (AXSDKShotController)init;
- (BOOL)listenEngineShouldResumeAfterAudioSessionInterruption;
- (BOOL)retrainModelWithIdentifier:(id)a3;
- (void)_retrainModelIdentifierUpdated;
- (void)addGeneralApplianceDetector;
- (void)deregisterListener:(id)a3;
- (void)hearingMLHelperService:(id)a3 eventOccurred:(int64_t)a4;
- (void)kickoffTrainingForDetector:(id)a3;
- (void)listenEngineDidStartWithInputFormat:(id)a3;
- (void)listenEngineFailedToStartWithError:(id)a3;
- (void)receivedCompletion:(id)a3;
- (void)receivedError:(id)a3 fromDetector:(id)a4;
- (void)registerListener:(id)a3 forRecordingUpdates:(id)a4;
- (void)removeAllListenTypes;
- (void)savedTrainingRecordingForDetector:(id)a3;
- (void)startListening;
- (void)startListeningToTrainDetector:(id)a3;
- (void)stopListening;
@end

@implementation AXSDKShotController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[AXSDKShotController sharedInstance];
  }

  v3 = sharedInstance___SharedController;

  return v3;
}

uint64_t __37__AXSDKShotController_sharedInstance__block_invoke()
{
  sharedInstance___SharedController = objc_alloc_init(AXSDKShotController);

  return MEMORY[0x2821F96F8]();
}

- (AXSDKShotController)init
{
  v26.receiver = self;
  v26.super_class = AXSDKShotController;
  v2 = [(AXSDKShotController *)&v26 init];
  v3 = v2;
  if (v2)
  {
    [(AXSDKShotController *)v2 setVisualizationBucketCount:0];
    v4 = +[AXSDListenEngine sharedInstance];
    listenEngine = v3->_listenEngine;
    v3->_listenEngine = v4;

    v6 = [[AXSDKShotRecordingManager alloc] initWithSampleLength:0.000022675737 bufferSize:[(AXSDListenEngine *)v3->_listenEngine bufferSize]];
    kShotRecordingManager = v3->_kShotRecordingManager;
    v3->_kShotRecordingManager = v6;

    [(AXSDKShotRecordingManager *)v3->_kShotRecordingManager setDelegate:v3];
    v8 = objc_alloc_init(AXSDDetectorManager);
    [(AXSDKShotController *)v3 setDetectorManager:v8];

    v9 = [(AXSDKShotController *)v3 detectorManager];
    [v9 setDelegate:v3];

    v10 = objc_alloc_init(AXSDKShotDetectorQueueManager);
    detectorQueueManager = v3->_detectorQueueManager;
    v3->_detectorQueueManager = v10;

    [(AXSDDetectorQueueManager *)v3->_detectorQueueManager setDelegate:v3];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.accessibility.kshotcontrollere.listenerqueue", v12);
    listenerQueue = v3->_listenerQueue;
    v3->_listenerQueue = v13;

    v15 = objc_opt_new();
    listenerHanders = v3->_listenerHanders;
    v3->_listenerHanders = v15;

    v17 = objc_alloc_init(MEMORY[0x277D12B70]);
    xpcHelperService = v3->_xpcHelperService;
    v3->_xpcHelperService = v17;

    [(HearingMLHelperService *)v3->_xpcHelperService setDelegate:v3];
    v19 = objc_alloc_init(_TtC18AXSoundDetectionUI44AXSDKShotNSRecordingControllerImplementation);
    trainingController = v3->_trainingController;
    v3->_trainingController = v19;

    if ([MEMORY[0x277D12B60] isInternalInstall])
    {
      objc_initWeak(&location, v3);
      v21 = [MEMORY[0x277CE6F98] sharedInstance];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __27__AXSDKShotController_init__block_invoke;
      v23[3] = &unk_278BDD060;
      objc_copyWeak(&v24, &location);
      [v21 registerUpdateBlock:v23 forRetrieveSelector:sel_retrainModelIdentifier withListener:v3];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }

  return v3;
}

void __27__AXSDKShotController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _retrainModelIdentifierUpdated];
}

- (void)registerListener:(id)a3 forRecordingUpdates:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = AXLogUltronKShot();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_23D62D000, v8, OS_LOG_TYPE_DEFAULT, "Register recording listener: %@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
  listenerQueue = self->_listenerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__AXSDKShotController_registerListener_forRecordingUpdates___block_invoke;
  block[3] = &unk_278BDD360;
  v15 = v9;
  v16 = v7;
  block[4] = self;
  v11 = v9;
  v12 = v7;
  dispatch_async(listenerQueue, block);

  v13 = *MEMORY[0x277D85DE8];
}

void __60__AXSDKShotController_registerListener_forRecordingUpdates___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v4 = [*(a1 + 48) copy];
  v3 = _Block_copy(v4);
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

- (void)deregisterListener:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogUltronKShot();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEFAULT, "Deregister audio listener: %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
  listenerQueue = self->_listenerQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__AXSDKShotController_deregisterListener___block_invoke;
  v10[3] = &unk_278BDD2C0;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  dispatch_async(listenerQueue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startListening
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, "KShot Controller: Start Listening", buf, 2u);
  }

  if ([(AXSDDetectorQueueManager *)self->_detectorQueueManager prepareToListen])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__AXSDKShotController_startListening__block_invoke;
    block[3] = &unk_278BDD248;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)startListeningToTrainDetector:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogUltronKShot();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEFAULT, "KShot Controller: Start listening to train detector: %@", &v8, 0xCu);
  }

  if (v4)
  {
    [(AXSDKShotController *)self addGeneralApplianceDetector];
    [(AXSDKShotRecordingManager *)self->_kShotRecordingManager setTargetDetector:v4];
    [(AXSDKShotController *)self startListening];
  }

  else
  {
    v6 = AXLogUltronKShot();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXSDKShotController startListeningToTrainDetector:];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopListening
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, "KShot Controller: Stop Listening", buf, 2u);
  }

  [(AXSDDetectorQueueManager *)self->_detectorQueueManager stopListening];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__AXSDKShotController_stopListening__block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __36__AXSDKShotController_stopListening__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeListenDelegate:?];
  v2 = [*(a1 + 32) detectorManager];
  [v2 removeAllDetectors];

  v3 = [*(a1 + 32) detectorManager];
  [v3 stopDetection];

  v4 = *(*(a1 + 32) + 16);

  return [v4 reset];
}

- (void)addGeneralApplianceDetector
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23D62D000, v3, OS_LOG_TYPE_DEFAULT, "KShot Controller: Add General Appliance Detector", v4, 2u);
  }

  [(AXSDKShotDetectorQueueManager *)self->_detectorQueueManager addGeneralApplianceDetector];
}

- (void)removeAllListenTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__AXSDKShotController_removeAllListenTypes__block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __43__AXSDKShotController_removeAllListenTypes__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) detectorManager];
  [v1 removeAllDetectors];
}

- (void)kickoffTrainingForDetector:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEFAULT, "KShot Controller: Kicking off training of detector: %@", buf, 0xCu);
  }

  trainingController = self->_trainingController;
  v10 = 0;
  [(AXSDKShotRecordingImplementation *)trainingController kickoffMLTrainingOfDetector:v4 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = AXLogUltronKShot();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXSDKShotController kickoffTrainingForDetector:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)retrainModelWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[AXSDDetectorStore sharedInstance];
  v6 = [v5 detectorWithIdentifier:v4];

  if (!v6)
  {
    v8 = AXLogUltronKShot();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXSDKShotController retrainModelWithIdentifier:];
    }

    goto LABEL_8;
  }

  if (([v6 isCustom] & 1) == 0)
  {
    v8 = AXLogUltronKShot();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXSDKShotController retrainModelWithIdentifier:];
    }

LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v7 = [(AXSDKShotController *)self retrainDetector:v6];
LABEL_9:

  return v7;
}

- (void)_retrainModelIdentifierUpdated
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listenEngineDidStartWithInputFormat:(id)a3
{
  v4 = a3;
  v5 = AXLogUltronKShot();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_DEFAULT, "Starting listen engine", buf, 2u);
  }

  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__AXSDKShotController_listenEngineDidStartWithInputFormat___block_invoke;
    v7[3] = &unk_278BDD2C0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else
  {
    v6 = AXLogUltronKShot();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXSDKShotController listenEngineDidStartWithInputFormat:];
    }

    [(AXSDKShotController *)self stopListening];
  }
}

void __59__AXSDKShotController_listenEngineDidStartWithInputFormat___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) detectorManager];
  [v2 startGeneralApplianceDetectionWithFormat:*(a1 + 40)];
}

- (void)listenEngineFailedToStartWithError:(id)a3
{
  v3 = a3;
  v4 = AXLogUltronKShot();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [AXSDKShotController listenEngineFailedToStartWithError:];
  }
}

- (BOOL)listenEngineShouldResumeAfterAudioSessionInterruption
{
  v2 = [MEMORY[0x277CE6F98] sharedInstance];
  v3 = [v2 shouldBeListeningForSoundRecognitionCustomSounds];

  return v3;
}

- (void)receivedCompletion:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = AXLogUltronKShot();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_DEFAULT, "Received Completion for: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedError:(id)a3 fromDetector:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AXLogUltronKShot();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(AXSDKShotController *)v6 receivedError:v5 fromDetector:v7];
  }
}

- (void)savedTrainingRecordingForDetector:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(NSMutableDictionary *)self->_listenerHanders allKeys];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(NSMutableDictionary *)self->_listenerHanders objectForKey:*(*(&v19 + 1) + 8 * v9), v13, v14, v15, v16];
          v11 = v10;
          if (v10)
          {
            v13 = MEMORY[0x277D85DD0];
            v14 = 3221225472;
            v15 = __57__AXSDKShotController_savedTrainingRecordingForDetector___block_invoke;
            v16 = &unk_278BDD388;
            v18 = v10;
            v17 = v4;
            AXPerformBlockOnMainThread();
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)hearingMLHelperService:(id)a3 eventOccurred:(int64_t)a4
{
  v6 = AXLogUltronKShot();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(AXSDKShotController *)self hearingMLHelperService:a4 eventOccurred:v6];
  }

  if (self->_trainingDetector)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.kshot.model.error", 0, 0, 1u);
    AXSDSoundDetectionSendKShotModelFailedNotification(self->_trainingDetector);
    v8 = [MEMORY[0x277CE6F98] sharedInstance];
    [v8 setKShotDetectorModelFailed:self->_trainingDetector modelFailed:1];

    v9 = [MEMORY[0x277CE6F98] sharedInstance];
    [v9 setIsActivelyTrainingAKShotModel:0];

    trainingDetector = self->_trainingDetector;
    self->_trainingDetector = 0;
  }
}

- (void)kickoffTrainingForDetector:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_23D62D000, v0, v1, "KShot Controller: Error kicking off training for detector: %@. Error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)retrainModelWithIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)retrainModelWithIdentifier:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listenEngineFailedToStartWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedError:(NSObject *)a3 fromDetector:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 soundIdentifier];
  OUTLINED_FUNCTION_0_0();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_23D62D000, a3, OS_LOG_TYPE_ERROR, "Received Error for %@: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)hearingMLHelperService:(NSObject *)a3 eventOccurred:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = *(a1 + 56);
  OUTLINED_FUNCTION_1(&dword_23D62D000, a2, a3, "HearingMLHelperService: Invaidation event occured - code: %ld - detector: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end