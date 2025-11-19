@interface AXSDVoiceTriggerModelManager
- (AXSDVoiceTriggerModelManager)initWithError:(id *)a3;
- (AXSDVoiceTriggerModelManagerDelegate)delegate;
- (id)_readConfigFileWithError:(id *)a3;
- (void)_startListening;
- (void)_startListeningWithFormat:(id)a3;
- (void)_stopListeningWithError:(id)a3;
- (void)modelDidUpdate:(id)a3 assetVersion:(unint64_t)a4 withError:(id)a5;
- (void)processAudioBuffer:(id)a3 atTime:(id)a4;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)request:(id)a3 didProduceResult:(id)a4;
- (void)startListening;
- (void)startListeningWithFormat:(id)a3;
- (void)stopListening;
- (void)stopListeningWithError:(id)a3;
@end

@implementation AXSDVoiceTriggerModelManager

- (AXSDVoiceTriggerModelManager)initWithError:(id *)a3
{
  v13.receiver = self;
  v13.super_class = AXSDVoiceTriggerModelManager;
  v3 = [(AXSDVoiceTriggerModelManager *)&v13 init];
  v4 = v3;
  if (v3)
  {
    v3->_startRequested = 0;
    format = v3->_format;
    v3->_format = 0;

    assetPath = v4->_assetPath;
    v4->_assetPath = 0;

    v7 = [[AXSDVoiceTriggerAssetManager alloc] initWithDelegate:v4];
    assetManager = v4->_assetManager;
    v4->_assetManager = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.accessibility.axsoundactions.analyzer", v9);
    analyzerQueue = v4->_analyzerQueue;
    v4->_analyzerQueue = v10;
  }

  return v4;
}

- (void)startListeningWithFormat:(id)a3
{
  v4 = a3;
  analyzerQueue = self->_analyzerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__AXSDVoiceTriggerModelManager_startListeningWithFormat___block_invoke;
  v7[3] = &unk_278BDD2C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(analyzerQueue, v7);
}

- (void)_startListeningWithFormat:(id)a3
{
  objc_storeStrong(&self->_format, a3);
  self->_startRequested = 1;
  if (self->_assetPath)
  {

    [(AXSDVoiceTriggerModelManager *)self _startListening];
  }
}

- (void)startListening
{
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__AXSDVoiceTriggerModelManager_startListening__block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(analyzerQueue, block);
}

- (void)_startListening
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "Unable to add request to stream analyzer: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)processAudioBuffer:(id)a3 atTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__AXSDVoiceTriggerModelManager_processAudioBuffer_atTime___block_invoke;
  block[3] = &unk_278BDD338;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(analyzerQueue, block);
}

uint64_t __58__AXSDVoiceTriggerModelManager_processAudioBuffer_atTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 48) sampleTime];

  return [v2 analyzeAudioBuffer:v1 atAudioFramePosition:v3];
}

- (void)stopListening
{
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__AXSDVoiceTriggerModelManager_stopListening__block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(analyzerQueue, block);
}

- (void)stopListeningWithError:(id)a3
{
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__AXSDVoiceTriggerModelManager_stopListeningWithError___block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(analyzerQueue, block);
}

- (void)_stopListeningWithError:(id)a3
{
  self->_startRequested = 0;
  streamAnalyzer = self->_streamAnalyzer;
  v5 = a3;
  [(SNAudioStreamAnalyzer *)streamAnalyzer removeAllRequests];
  v6 = self->_streamAnalyzer;
  self->_streamAnalyzer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained listeningStoppedWithError:v5];
}

- (void)request:(id)a3 didProduceResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AXLogSoundActions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AXSDVoiceTriggerModelManager request:v7 didProduceResult:v8];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(AXSDVoiceTriggerModelManager *)self delegate];
    [v9 receivedObservation:v7 forDetector:v6];
  }
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AXLogSoundActions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(AXSDVoiceTriggerModelManager *)v6 request:v7 didFailWithError:v8];
  }

  v9 = [(AXSDVoiceTriggerModelManager *)self delegate];
  [v9 receivedError:v7 fromDetector:v6];
}

- (id)_readConfigFileWithError:(id *)a3
{
  v4 = [(NSURL *)self->_assetPath URLByAppendingPathComponent:@"VoiceTriggerConfig"];
  v5 = [v4 URLByAppendingPathExtension:@"json"];

  if (!v5)
  {
    if (!a3)
    {
      v8 = 0;
      goto LABEL_14;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = @"Cannot locate config file";
LABEL_10:
    [v12 ax_errorWithDomain:@"VoiceTrigger" description:{v13, v16}];
    v8 = 0;
    *a3 = v14 = 0;
    goto LABEL_17;
  }

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5];
  if (!v6)
  {
    if (!a3)
    {
      v8 = 0;
      goto LABEL_16;
    }

    v12 = MEMORY[0x277CCA9B8];
    v16 = v5;
    v13 = @"Cannot read config file: %@";
    goto LABEL_10;
  }

  v7 = v6;
  v17 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v17];
  v9 = v17;
  v10 = v9;
  if (!a3 || !v9)
  {

    if (v10)
    {
      goto LABEL_16;
    }

LABEL_14:
    v8 = v8;
    v14 = v8;
    goto LABEL_17;
  }

  v11 = v9;
  *a3 = v10;

LABEL_16:
  v14 = 0;
LABEL_17:

  return v14;
}

- (void)modelDidUpdate:(id)a3 assetVersion:(unint64_t)a4 withError:(id)a5
{
  v6 = a3;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  AXPerformBlockOnMainThread();
}

void __70__AXSDVoiceTriggerModelManager_modelDidUpdate_assetVersion_withError___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    if (*(v2 + 32) == 1)
    {
      v3 = *(v2 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__AXSDVoiceTriggerModelManager_modelDidUpdate_assetVersion_withError___block_invoke_2;
      block[3] = &unk_278BDD248;
      block[4] = v2;
      dispatch_async(v3, block);
    }
  }

  else
  {
    v4 = *(v2 + 64);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __70__AXSDVoiceTriggerModelManager_modelDidUpdate_assetVersion_withError___block_invoke_3;
    v5[3] = &unk_278BDD2C0;
    v5[4] = v2;
    v6 = *(a1 + 48);
    dispatch_async(v4, v5);
  }
}

- (AXSDVoiceTriggerModelManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)request:(uint64_t)a1 didProduceResult:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_23D62D000, a2, OS_LOG_TYPE_DEBUG, "AXSDVoiceTriggerModelManager: didProduceResult: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)request:(os_log_t)log didFailWithError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_23D62D000, log, OS_LOG_TYPE_ERROR, "Voice Trigger Request failed: %@, %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end