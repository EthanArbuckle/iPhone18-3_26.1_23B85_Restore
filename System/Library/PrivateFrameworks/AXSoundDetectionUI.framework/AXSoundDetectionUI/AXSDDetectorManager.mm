@interface AXSDDetectorManager
+ (id)detectorRequestForDetector:(id)detector;
+ (id)detectorRequestForGeneralApplianceDetector;
+ (id)modelPathForURL:(id)l detectionType:(id)type;
+ (void)detectorRequestForGeneralApplianceDetector;
+ (void)initializeModelMap;
- (AXSDDetectorManager)init;
- (AXSDDetectorManagerDelegate)delegate;
- (BOOL)_addRequestToAnalyzer:(id)analyzer;
- (BOOL)_startDetectionWithFormat:(id)format;
- (BOOL)_testAudioFile:(id)file;
- (BOOL)addAllDetectors;
- (BOOL)addDetector:(id)detector;
- (BOOL)addDetectorType:(id)type;
- (BOOL)addGeneralApplianceDetector;
- (BOOL)removeDetector:(id)detector;
- (BOOL)removeDetectorType:(id)type;
- (BOOL)removeGeneralApplianceDetector;
- (BOOL)startDetectionWithFormat:(id)format;
- (BOOL)startGeneralApplianceDetectionWithFormat:(id)format;
- (id)_currentRequestForDetectionType:(id)type;
- (id)detectorRequestForDetectionType:(id)type;
- (void)_addCurrentRequest:(id)request withDetector:(id)detector;
- (void)_removeAllRequestsFromAnalyzer;
- (void)_removeCurrentRequestForDetectionType:(id)type;
- (void)_removeRequestFromAnalyzer:(id)analyzer;
- (void)_stopDetection;
- (void)addGeneralApplianceDetector;
- (void)processAudioBuffer:(id)buffer atTime:(id)time;
- (void)removeAllDetectors;
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didProduceResult:(id)result;
- (void)requestDidComplete:(id)complete;
- (void)stopDetection;
@end

@implementation AXSDDetectorManager

- (AXSDDetectorManager)init
{
  v12.receiver = self;
  v12.super_class = AXSDDetectorManager;
  v2 = [(AXSDDetectorManager *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    currentAssetIdsByType = v2->_currentAssetIdsByType;
    v2->_currentAssetIdsByType = v3;

    v5 = objc_opt_new();
    currentRequestsByAssetID = v2->_currentRequestsByAssetID;
    v2->_currentRequestsByAssetID = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.accessibility.axhadetector.analyzer", v7);
    analyzerQueue = v2->_analyzerQueue;
    v2->_analyzerQueue = v8;

    +[AXSDDetectorManager initializeModelMap];
    currentGeneralApplianceRequest = v2->_currentGeneralApplianceRequest;
    v2->_currentGeneralApplianceRequest = 0;
  }

  return v2;
}

- (void)_addCurrentRequest:(id)request withDetector:(id)detector
{
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  detectorCopy = detector;
  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_opt_class();
    v19 = v18;
    model = [detectorCopy model];
    assetId = [model assetId];
    v22 = 138413058;
    v23 = v18;
    v24 = 2112;
    v25 = detectorCopy;
    v26 = 2112;
    v27 = requestCopy;
    v28 = 2112;
    v29 = assetId;
    _os_log_debug_impl(&dword_23D62D000, v8, OS_LOG_TYPE_DEBUG, "[%@]: Adding current detector: %@, with request: %@, and assetID: %@", &v22, 0x2Au);
  }

  currentAssetIdsByType = self->_currentAssetIdsByType;
  model2 = [detectorCopy model];
  assetId2 = [model2 assetId];
  identifier = [detectorCopy identifier];
  [(NSMutableDictionary *)currentAssetIdsByType setObject:assetId2 forKey:identifier];

  currentRequestsByAssetID = self->_currentRequestsByAssetID;
  model3 = [detectorCopy model];
  assetId3 = [model3 assetId];
  [(NSMutableDictionary *)currentRequestsByAssetID setObject:requestCopy forKey:assetId3];

  v16 = +[AXSDDetectorStore sharedInstance];
  [v16 enableDetector:detectorCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_removeCurrentRequestForDetectionType:(id)type
{
  v19 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [(NSMutableDictionary *)self->_currentAssetIdsByType objectForKey:typeCopy];
  if (v5)
  {
    v6 = +[AXSDDetectorStore sharedInstance];
    v7 = [v6 detectorWithAssetID:v5];

    v8 = +[AXSDDetectorStore sharedInstance];
    [v8 disableDetector:v7];

    v9 = AXLogUltron();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412802;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = typeCopy;
      v17 = 2112;
      v18 = v7;
      v12 = v14;
      _os_log_debug_impl(&dword_23D62D000, v9, OS_LOG_TYPE_DEBUG, "[%@]: removing current detection type: %@ with asset: %@", &v13, 0x20u);
    }

    [(NSMutableDictionary *)self->_currentRequestsByAssetID removeObjectForKey:v5];
    [(NSMutableDictionary *)self->_currentAssetIdsByType removeObjectForKey:typeCopy];
  }

  else
  {
    v10 = AXLogUltron();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager _removeCurrentRequestForDetectionType:];
    }

    v7 = +[AXSDDetectorStore sharedInstance];
    [v7 disableDetectorWithIdentifier:typeCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_currentRequestForDetectionType:(id)type
{
  typeCopy = type;
  v5 = [(NSMutableDictionary *)self->_currentAssetIdsByType objectForKey:typeCopy];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_currentRequestsByAssetID objectForKey:v5];
  }

  else
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager _currentRequestForDetectionType:];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)startDetectionWithFormat:(id)format
{
  formatCopy = format;
  _AXAssertIsMainThread();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AXSDDetectorManager_startDetectionWithFormat___block_invoke;
  block[3] = &unk_278BDD688;
  v9 = formatCopy;
  v10 = &v11;
  block[4] = self;
  v6 = formatCopy;
  dispatch_sync(analyzerQueue, block);
  LOBYTE(formatCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return formatCopy;
}

uint64_t __48__AXSDDetectorManager_startDetectionWithFormat___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _startDetectionWithFormat:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_startDetectionWithFormat:(id)format
{
  v32 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager _startDetectionWithFormat:];
  }

  if ([formatCopy channelCount] && (objc_msgSend(formatCopy, "sampleRate"), v6 != 0.0))
  {
    streamAnalyzer = self->_streamAnalyzer;
    if (!streamAnalyzer)
    {
      v12 = [objc_alloc(MEMORY[0x277CDC8F0]) initWithFormat:formatCopy];
      v13 = self->_streamAnalyzer;
      self->_streamAnalyzer = v12;

      streamAnalyzer = self->_streamAnalyzer;
    }

    [(SNAudioStreamAnalyzer *)streamAnalyzer removeAllRequests];
    v14 = AXLogUltron();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorManager _startDetectionWithFormat:?];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    _currentRequests = [(AXSDDetectorManager *)self _currentRequests];
    v15 = [_currentRequests countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(_currentRequests);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = self->_streamAnalyzer;
          v26 = 0;
          [(SNAudioStreamAnalyzer *)v20 addRequest:v19 withObserver:self error:&v26];
          v21 = v26;
          if (self->_streamAnalyzer)
          {
            v22 = v21 == 0;
          }

          else
          {
            v22 = 0;
          }

          if (!v22)
          {
            v23 = v21;
            v24 = AXLogUltron();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              [AXSDDetectorManager _startDetectionWithFormat:];
            }

            [(AXSDDetectorManager *)self stopDetection];
            goto LABEL_7;
          }
        }

        v16 = [_currentRequests countByEnumeratingWithState:&v27 objects:v31 count:16];
        v8 = 1;
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    _currentRequests = AXLogUltron();
    if (os_log_type_enabled(_currentRequests, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager _startDetectionWithFormat:];
    }

LABEL_7:
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)stopDetection
{
  _AXAssertIsMainThread();
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__AXSDDetectorManager_stopDetection__block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(analyzerQueue, block);
}

- (void)_stopDetection
{
  [(SNAudioStreamAnalyzer *)self->_streamAnalyzer removeAllRequests];
  streamAnalyzer = self->_streamAnalyzer;
  self->_streamAnalyzer = 0;
}

- (BOOL)addGeneralApplianceDetector
{
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager addGeneralApplianceDetector];
  }

  _AXAssertIsMainThread();
  if (self->_currentGeneralApplianceRequest)
  {
    v4 = AXLogUltronKShot();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorManager addGeneralApplianceDetector];
    }

    goto LABEL_15;
  }

  v4 = +[AXSDDetectorManager detectorRequestForGeneralApplianceDetector];
  if (!v4)
  {
    v8 = AXLogUltronKShot();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager addGeneralApplianceDetector];
    }

    goto LABEL_18;
  }

  if ([(AXSDDetectorManager *)self streamAnalyzerIsRunning])
  {
    v5 = AXLogUltronKShot();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorManager addGeneralApplianceDetector];
    }

    streamAnalyzer = self->_streamAnalyzer;
    v12 = 0;
    [(SNAudioStreamAnalyzer *)streamAnalyzer addRequest:v4 withObserver:self error:&v12];
    v7 = v12;
    if (v7)
    {
      v8 = v7;
      v9 = AXLogUltronKShot();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXSDDetectorManager addGeneralApplianceDetector];
      }

LABEL_18:
      v10 = 0;
      goto LABEL_19;
    }
  }

  objc_storeStrong(&self->_currentGeneralApplianceRequest, v4);
LABEL_15:
  v10 = 1;
LABEL_19:

  return v10;
}

- (BOOL)removeGeneralApplianceDetector
{
  _AXAssertIsMainThread();
  v3 = AXLogUltronKShot();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager removeGeneralApplianceDetector];
  }

  v4 = self->_currentGeneralApplianceRequest;
  if (v4)
  {
    if ([(AXSDDetectorManager *)self streamAnalyzerIsRunning])
    {
      [(SNAudioStreamAnalyzer *)self->_streamAnalyzer removeRequest:v4];
    }

    currentGeneralApplianceRequest = self->_currentGeneralApplianceRequest;
    self->_currentGeneralApplianceRequest = 0;
  }

  else
  {
    currentGeneralApplianceRequest = AXLogUltronKShot();
    if (os_log_type_enabled(currentGeneralApplianceRequest, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorManager removeGeneralApplianceDetector];
    }
  }

  return 1;
}

- (BOOL)startGeneralApplianceDetectionWithFormat:(id)format
{
  formatCopy = format;
  _AXAssertIsMainThread();
  v5 = AXLogUltronKShot();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager startGeneralApplianceDetectionWithFormat:];
  }

  p_streamAnalyzer = &self->_streamAnalyzer;
  streamAnalyzer = self->_streamAnalyzer;
  if (!streamAnalyzer)
  {
    v8 = [objc_alloc(MEMORY[0x277CDC8F0]) initWithFormat:formatCopy];
    v9 = *p_streamAnalyzer;
    *p_streamAnalyzer = v8;

    streamAnalyzer = *p_streamAnalyzer;
  }

  [(SNAudioStreamAnalyzer *)streamAnalyzer removeAllRequests];
  if (!self->_currentGeneralApplianceRequest && ![(AXSDDetectorManager *)self addGeneralApplianceDetector])
  {
    v14 = AXLogUltronKShot();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager startGeneralApplianceDetectionWithFormat:];
    }

    goto LABEL_21;
  }

  v10 = AXLogUltronKShot();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(AXSDDetectorManager *)&self->_currentGeneralApplianceRequest startGeneralApplianceDetectionWithFormat:v10];
  }

  v11 = self->_streamAnalyzer;
  currentGeneralApplianceRequest = self->_currentGeneralApplianceRequest;
  v19 = 0;
  [(SNAudioStreamAnalyzer *)v11 addRequest:currentGeneralApplianceRequest withObserver:self error:&v19];
  v13 = v19;
  v14 = v13;
  if (self->_streamAnalyzer)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  if (!v15)
  {
    v17 = AXLogUltronKShot();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager addGeneralApplianceDetector];
    }

    [(AXSDDetectorManager *)self stopDetection];
LABEL_21:
    v16 = 0;
  }

  return v16;
}

- (BOOL)addDetector:(id)detector
{
  identifier = [detector identifier];
  LOBYTE(self) = [(AXSDDetectorManager *)self addDetectorType:identifier];

  return self;
}

- (BOOL)addDetectorType:(id)type
{
  v24 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  _AXAssertIsMainThread();
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2112;
    *&buf[14] = typeCopy;
    v6 = *&buf[4];
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_INFO, "[%@]: Add Detection Type: %@", buf, 0x16u);
  }

  v7 = [(NSMutableDictionary *)self->_currentAssetIdsByType objectForKeyedSubscript:typeCopy];
  v8 = v7 == 0;

  if (v8)
  {
    v11 = +[AXSDDetectorStore sharedInstance];
    v9 = [v11 detectorWithIdentifier:typeCopy];

    v12 = AXLogUltron();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorManager addDetectorType:];
    }

    if (v9)
    {
      v13 = [AXSDDetectorManager detectorRequestForDetector:v9];
      v14 = v13;
      if (v13)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v23 = 0;
        analyzerQueue = self->_analyzerQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __39__AXSDDetectorManager_addDetectorType___block_invoke;
        block[3] = &unk_278BDD688;
        v21 = buf;
        block[4] = self;
        v14 = v13;
        v20 = v14;
        dispatch_sync(analyzerQueue, block);
        [(AXSDDetectorManager *)self _addCurrentRequest:v14 withDetector:v9];

        _Block_object_dispose(buf, 8);
        v10 = 1;
LABEL_18:

        goto LABEL_19;
      }

      v16 = AXLogUltron();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AXSDDetectorManager addDetectorType:];
      }
    }

    else
    {
      v14 = AXLogUltron();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AXSDDetectorManager addDetectorType:];
      }
    }

    v10 = 0;
    goto LABEL_18;
  }

  v9 = AXLogUltron();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager addDetectorType:];
  }

  v10 = 1;
LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __39__AXSDDetectorManager_addDetectorType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _addRequestToAnalyzer:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)removeDetector:(id)detector
{
  identifier = [detector identifier];
  LOBYTE(self) = [(AXSDDetectorManager *)self removeDetectorType:identifier];

  return self;
}

- (BOOL)removeDetectorType:(id)type
{
  typeCopy = type;
  _AXAssertIsMainThread();
  v5 = [(AXSDDetectorManager *)self _currentRequestForDetectionType:typeCopy];
  v6 = v5;
  if (v5)
  {
    analyzerQueue = self->_analyzerQueue;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __42__AXSDDetectorManager_removeDetectorType___block_invoke;
    v13 = &unk_278BDD2C0;
    selfCopy = self;
    v15 = v5;
    dispatch_async(analyzerQueue, &v10);
    [(AXSDDetectorManager *)self _removeCurrentRequestForDetectionType:typeCopy, v10, v11, v12, v13, selfCopy];
  }

  else
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AXSDDetectorManager removeDetectorType:];
    }
  }

  return 1;
}

- (BOOL)_addRequestToAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  if (![(AXSDDetectorManager *)self streamAnalyzerIsRunning])
  {
    goto LABEL_8;
  }

  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDDetectorManager _addRequestToAnalyzer:];
  }

  streamAnalyzer = self->_streamAnalyzer;
  v12 = 0;
  [(SNAudioStreamAnalyzer *)streamAnalyzer addRequest:analyzerCopy withObserver:self error:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = v7;
    v9 = AXLogUltron();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager _addRequestToAnalyzer:];
    }

    v10 = 0;
  }

  else
  {
LABEL_8:
    v10 = 1;
  }

  return v10;
}

- (void)_removeRequestFromAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  if ([(AXSDDetectorManager *)self streamAnalyzerIsRunning])
  {
    [(SNAudioStreamAnalyzer *)self->_streamAnalyzer removeRequest:analyzerCopy];
  }
}

- (void)_removeAllRequestsFromAnalyzer
{
  if ([(AXSDDetectorManager *)self streamAnalyzerIsRunning])
  {
    streamAnalyzer = self->_streamAnalyzer;

    [(SNAudioStreamAnalyzer *)streamAnalyzer removeAllRequests];
  }
}

- (BOOL)addAllDetectors
{
  v15 = *MEMORY[0x277D85DE8];
  _AXAssertIsMainThread();
  keyEnumerator = [modelMap keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    v7 = 1;
    *&v5 = 138412290;
    v12 = v5;
    do
    {
      if (![(AXSDDetectorManager *)self addDetectorType:v6, v12])
      {
        v8 = AXLogUltron();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = v12;
          v14 = v6;
          _os_log_error_impl(&dword_23D62D000, v8, OS_LOG_TYPE_ERROR, "Add All Detectors: failed to add %@", buf, 0xCu);
        }

        v7 = 0;
      }

      nextObject2 = [keyEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  else
  {
    v7 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (void)removeAllDetectors
{
  _AXAssertIsMainThread();
  [(NSMutableDictionary *)self->_currentAssetIdsByType removeAllObjects];
  [(NSMutableDictionary *)self->_currentRequestsByAssetID removeAllObjects];
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AXSDDetectorManager_removeAllDetectors__block_invoke;
  block[3] = &unk_278BDD248;
  block[4] = self;
  dispatch_async(analyzerQueue, block);
}

- (void)processAudioBuffer:(id)buffer atTime:(id)time
{
  bufferCopy = buffer;
  timeCopy = time;
  analyzerQueue = self->_analyzerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__AXSDDetectorManager_processAudioBuffer_atTime___block_invoke;
  block[3] = &unk_278BDD338;
  block[4] = self;
  v12 = bufferCopy;
  v13 = timeCopy;
  v9 = timeCopy;
  v10 = bufferCopy;
  dispatch_async(analyzerQueue, block);
}

uint64_t __49__AXSDDetectorManager_processAudioBuffer_atTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 48) sampleTime];

  return [v2 analyzeAudioBuffer:v1 atAudioFramePosition:v3];
}

+ (id)modelPathForURL:(id)l detectionType:(id)type
{
  lCopy = l;
  v6 = [modelMap objectForKeyedSubscript:type];
  if (v6)
  {
    v7 = [lCopy URLByAppendingPathComponent:v6];
    v8 = [v7 URLByAppendingPathExtension:@"mlmodelc"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)detectorRequestForDetectionType:(id)type
{
  typeCopy = type;
  v5 = +[AXSDDetectorStore sharedInstance];
  v6 = [v5 detectorWithIdentifier:typeCopy];

  if (v6)
  {
    v7 = [AXSDDetectorManager detectorRequestForDetector:v6];
    [(AXSDDetectorManager *)self _addCurrentRequest:v7 withDetector:v6];
  }

  else
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXSDDetectorManager detectorRequestForDetectionType:];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)detectorRequestForDetector:(id)detector
{
  v40 = *MEMORY[0x277D85DE8];
  detectorCopy = detector;
  identifier = [detectorCopy identifier];
  if (testBundle)
  {
    modelURL = testBundle;
  }

  else
  {
    modelURL = [detectorCopy modelURL];
  }

  v6 = modelURL;
  v7 = AXLogUltron();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = testBundle;
    _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_INFO, "Test bundle - should be null on prod: %@", buf, 0xCu);
  }

  if (v6)
  {
    v8 = [AXSDDetectorManager modelPathForURL:v6 detectionType:identifier];
    if (!v8)
    {
      v11 = AXLogUltron();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[AXSDDetectorManager detectorRequestForDetector:];
      }

      v19 = 0;
      goto LABEL_30;
    }

    v29 = 0;
    v9 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v8 error:&v29];
    v10 = v29;
    v11 = v10;
    if (v9 && !v10)
    {
      isUsingSoundPrint = [detectorCopy isUsingSoundPrint];
      v13 = objc_alloc(MEMORY[0x277CDC918]);
      v14 = v13;
      if (isUsingSoundPrint)
      {
        v28 = 0;
        v15 = [v13 initWithMLModel:v9 error:&v28];
        v16 = v28;
        if (v16)
        {
          v17 = v16;
          v18 = AXLogUltron();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            *buf = 138413314;
            v31 = v24;
            v32 = 2112;
            v33 = detectorCopy;
            v34 = 2112;
            v35 = v8;
            v36 = 2112;
            v37 = v9;
            v38 = 2112;
            v39 = v17;
            v25 = v24;
            _os_log_error_impl(&dword_23D62D000, v18, OS_LOG_TYPE_ERROR, "[%@]: unable to create SNDetectSoundRequest from mlmodel init. \n\tdetector: %@, path: %@, model: %@, error: %@", buf, 0x34u);
          }

LABEL_23:
          v19 = 0;
LABEL_29:

LABEL_30:
          goto LABEL_31;
        }
      }

      else
      {
        identifier2 = [detectorCopy identifier];
        v15 = [v14 initWithVGGishBasedMLModel:v9 soundIdentifier:identifier2];

        if (!v15)
        {
          v21 = AXLogUltron();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v26 = objc_opt_class();
            *buf = 138413058;
            v31 = v26;
            v32 = 2112;
            v33 = detectorCopy;
            v34 = 2112;
            v35 = v8;
            v36 = 2112;
            v37 = v9;
            v27 = v26;
            _os_log_error_impl(&dword_23D62D000, v21, OS_LOG_TYPE_ERROR, "[%@]: unable to create SNDetectSoundRequest from vggish model. \n\tdetector: %@, path: %@, model: %@", buf, 0x2Au);
          }

          v15 = 0;
        }
      }

      v15 = v15;
      v19 = v15;
      goto LABEL_29;
    }

    v15 = AXLogUltron();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v31 = v8;
      v32 = 2112;
      v33 = identifier;
      v34 = 2112;
      v35 = v11;
      _os_log_error_impl(&dword_23D62D000, v15, OS_LOG_TYPE_ERROR, "Unable to create MLModel from path %@ for detectionType %@. error: %@", buf, 0x20u);
    }

    goto LABEL_23;
  }

  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[AXSDDetectorManager detectorRequestForDetector:];
  }

  v19 = 0;
LABEL_31:

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)detectorRequestForGeneralApplianceDetector
{
  v22 = *MEMORY[0x277D85DE8];
  if (testBundle)
  {
    localPathForKShotGeneralApplianceDetector = testBundle;
  }

  else
  {
    v3 = +[AXUltronModelAssetManager sharedInstance];
    localPathForKShotGeneralApplianceDetector = [v3 localPathForKShotGeneralApplianceDetector];
  }

  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = testBundle;
    _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_INFO, "Test bundle - should be null on prod: %@", buf, 0xCu);
  }

  if (localPathForKShotGeneralApplianceDetector)
  {
    v19 = 0;
    v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:localPathForKShotGeneralApplianceDetector error:&v19];
    v6 = v19;
    v7 = v6;
    if (!v5 || v6)
    {
      v14 = AXLogUltron();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[AXSDDetectorManager detectorRequestForGeneralApplianceDetector];
      }

      v13 = 0;
    }

    else
    {
      v8 = +[AXUltronModelAssetManager sharedInstance];
      isKShotUsingSoundPrint = [v8 isKShotUsingSoundPrint];

      if (isKShotUsingSoundPrint)
      {
        v18 = 0;
        v10 = [objc_alloc(MEMORY[0x277CDC918]) initWithMLModel:v5 error:&v18];
        v11 = v18;
        if (v11)
        {
          v12 = AXLogUltron();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            +[AXSDDetectorManager detectorRequestForGeneralApplianceDetector];
          }

          v13 = 0;
        }

        else
        {
          v13 = v10;
        }
      }

      else
      {
        v15 = AXLogUltron();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23D62D000, v15, OS_LOG_TYPE_INFO, "KShot General Appliance is not using Sound Print", buf, 2u);
        }

        v13 = [objc_alloc(MEMORY[0x277CDC918]) initWithVGGishBasedMLModel:v5 soundIdentifier:@"general_appliance"];
      }
    }
  }

  else
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[AXSDDetectorManager detectorRequestForGeneralApplianceDetector];
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (void)initializeModelMap
{
  v14[17] = *MEMORY[0x277D85DE8];
  if (!modelMap)
  {
    v2 = *MEMORY[0x277CE6F18];
    v13[0] = *MEMORY[0x277CE6F30];
    v13[1] = v2;
    v14[0] = @"baby_distressed";
    v14[1] = @"car_horn";
    v3 = *MEMORY[0x277CE6F38];
    v13[2] = *MEMORY[0x277CE6F20];
    v13[3] = v3;
    v14[2] = @"cat_meow";
    v14[3] = @"dog_bark";
    v4 = *MEMORY[0x277CE6F40];
    v13[4] = *MEMORY[0x277CE6F48];
    v13[5] = v4;
    v14[4] = @"door_bell";
    v14[5] = @"door_knock";
    v5 = *MEMORY[0x277CE6F78];
    v13[6] = *MEMORY[0x277CE6F50];
    v13[7] = v5;
    v14[6] = @"fire_alarm";
    v14[7] = @"shout";
    v6 = *MEMORY[0x277CE6F88];
    v13[8] = *MEMORY[0x277CE6F80];
    v13[9] = v6;
    v14[8] = @"siren_alarm";
    v14[9] = @"smoke_alarm";
    v7 = *MEMORY[0x277CE6F00];
    v13[10] = *MEMORY[0x277CE6F90];
    v13[11] = v7;
    v14[10] = @"water_running";
    v14[11] = @"beep";
    v8 = *MEMORY[0x277CE6F08];
    v13[12] = *MEMORY[0x277CE6F10];
    v13[13] = v8;
    v14[12] = @"buzzer";
    v14[13] = @"ding_bell";
    v9 = *MEMORY[0x277CE6F58];
    v13[14] = *MEMORY[0x277CE6F28];
    v13[15] = v9;
    v14[14] = @"cough";
    v14[15] = @"glass_breaking";
    v13[16] = *MEMORY[0x277CE6F68];
    v14[16] = @"kettle";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:17];
    v11 = modelMap;
    modelMap = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_testAudioFile:(id)file
{
  fileCopy = file;
  v18 = 0;
  v5 = [objc_alloc(MEMORY[0x277CDC8D8]) initWithURL:fileCopy error:&v18];
  v6 = v18;
  if (v6)
  {
    v7 = v6;
    NSLog(&cfstr_Error.isa, v6);
    v8 = 0;
  }

  else
  {
    keyEnumerator = [modelMap keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      v11 = nextObject;
      while (1)
      {
        v12 = [(AXSDDetectorManager *)self detectorRequestForDetectionType:v11];
        v17 = 0;
        [v5 addRequest:v12 withObserver:self error:&v17];
        v13 = v17;
        if (v13)
        {
          break;
        }

        nextObject2 = [keyEnumerator nextObject];

        v11 = nextObject2;
        if (!nextObject2)
        {
          goto LABEL_7;
        }
      }

      v7 = v13;
      v15 = AXLogUltron();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [AXSDDetectorManager _testAudioFile:];
      }

      v8 = 0;
    }

    else
    {
LABEL_7:
      [v5 analyze];
      v7 = 0;
      v8 = 1;
    }
  }

  return v8;
}

- (void)request:(id)request didProduceResult:(id)result
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  resultCopy = result;
  if ([resultCopy detected])
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = resultCopy;
LABEL_10:
      _os_log_impl(&dword_23D62D000, v8, OS_LOG_TYPE_DEFAULT, "Results: %@", buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (resultCopy)
  {
    [resultCopy timeRange];
    [resultCopy timeRange];
    v9 = (v18 / SDWORD2(v15));
  }

  else
  {
    v9 = 0.0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
  }

  if (fmodf(v9, 30.0) == 0.0)
  {
    v8 = AXLogUltron();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = resultCopy;
      goto LABEL_10;
    }

LABEL_11:
  }

  if (resultCopy)
  {
    [resultCopy timeRange];
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v10 = [(AXSDDetectorManager *)self delegate:v12];
  [v10 receivedObservation:resultCopy forDetector:requestCopy];

LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)request:(id)request didFailWithError:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AXSDDetectorManager request:didFailWithError:];
  }

  delegate = [(AXSDDetectorManager *)self delegate];
  [delegate receivedError:errorCopy fromDetector:requestCopy];
}

- (void)requestDidComplete:(id)complete
{
  completeCopy = complete;
  delegate = [(AXSDDetectorManager *)self delegate];
  [delegate receivedCompletion:completeCopy];
}

- (AXSDDetectorManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_removeCurrentRequestForDetectionType:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_currentRequestForDetectionType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: unable to find SNDetectSoundRequest for Detection Type: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startDetectionWithFormat:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startDetectionWithFormat:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = [a1 _currentRequests];
  [v3 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_startDetectionWithFormat:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startDetectionWithFormat:.cold.4()
{
  OUTLINED_FUNCTION_7();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: Received an invalid input format. %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addGeneralApplianceDetector
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startGeneralApplianceDetectionWithFormat:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "KShot Detector Manager: start general appliance detection with format: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)startGeneralApplianceDetectionWithFormat:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startGeneralApplianceDetectionWithFormat:(os_log_t)log .cold.3(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_23D62D000, log, OS_LOG_TYPE_DEBUG, "KShot Detector Manager: adding request %@ to stream analyzer: %@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addDetectorType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "Add Detector: Detection type %@ has already been added to the request.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addDetectorType:.cold.2()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addDetectorType:.cold.3()
{
  OUTLINED_FUNCTION_7();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: unable to create request for detection type: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addDetectorType:.cold.4()
{
  OUTLINED_FUNCTION_7();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: no useable detector found for listen type: %@ even though assets are ready", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeDetectorType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addRequestToAnalyzer:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addRequestToAnalyzer:.cold.2()
{
  OUTLINED_FUNCTION_7();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: unable to add request to stream analyzer: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)detectorRequestForDetectionType:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_2();
  v1 = v0;
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "[%@]: no useable detector found for listen type: %@ even though assets are ready", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)detectorRequestForDetector:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)detectorRequestForDetector:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)detectorRequestForGeneralApplianceDetector
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_testAudioFile:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)request:didFailWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 soundIdentifier];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "Request failed: %@, %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end