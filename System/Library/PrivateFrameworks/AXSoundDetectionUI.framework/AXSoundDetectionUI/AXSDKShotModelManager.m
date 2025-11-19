@interface AXSDKShotModelManager
+ (id)requestForDetector:(id)a3;
- (AXSDKShotModelManager)init;
- (AXSDKShotModelManagerDelegate)delegate;
- (BOOL)addCustomDetector:(id)a3;
- (BOOL)removeCustomDetector:(id)a3;
- (BOOL)startDetectionWithFormat:(id)a3;
- (void)processAudioBuffer:(id)a3 atTime:(id)a4;
- (void)removeAllDetectors;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)request:(id)a3 didProduceResult:(id)a4;
- (void)requestDidComplete:(id)a3;
- (void)stopDetection;
@end

@implementation AXSDKShotModelManager

- (AXSDKShotModelManager)init
{
  v9.receiver = self;
  v9.super_class = AXSDKShotModelManager;
  v2 = [(AXSDKShotModelManager *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    currentRequests = v2->_currentRequests;
    v2->_currentRequests = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("kshot_ultron_audio", v5);
    audioQueue = v2->_audioQueue;
    v2->_audioQueue = v6;
  }

  return v2;
}

- (BOOL)startDetectionWithFormat:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _AXAssertIsMainThread();
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXSDKShotModelManager startDetectionWithFormat:];
  }

  if ([v4 channelCount] && (objc_msgSend(v4, "sampleRate"), v6 != 0.0))
  {
    streamAnalyzer = self->_streamAnalyzer;
    if (!streamAnalyzer)
    {
      v12 = [objc_alloc(MEMORY[0x277CDC8F0]) initWithFormat:v4];
      v13 = self->_streamAnalyzer;
      self->_streamAnalyzer = v12;

      streamAnalyzer = self->_streamAnalyzer;
    }

    [(SNAudioStreamAnalyzer *)streamAnalyzer removeAllRequests];
    v14 = AXLogUltron();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [AXSDKShotModelManager startDetectionWithFormat:?];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [(NSMutableDictionary *)self->_currentRequests allValues];
    v15 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(v7);
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
              [AXSDKShotModelManager startDetectionWithFormat:];
            }

            [(AXSDKShotModelManager *)self stopDetection];
            goto LABEL_7;
          }
        }

        v16 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXSDKShotModelManager startDetectionWithFormat:];
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
  [(SNAudioStreamAnalyzer *)self->_streamAnalyzer removeAllRequests];
  streamAnalyzer = self->_streamAnalyzer;
  self->_streamAnalyzer = 0;
}

- (BOOL)addCustomDetector:(id)a3
{
  v4 = a3;
  _AXAssertIsMainThread();
  p_currentRequests = &self->_currentRequests;
  currentRequests = self->_currentRequests;
  v7 = [v4 identifier];
  v8 = [(NSMutableDictionary *)currentRequests objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = [AXSDKShotModelManager requestForDetector:v4];
    if (v9)
    {
      if (![(AXSDKShotModelManager *)self streamAnalyzerIsRunning])
      {
        goto LABEL_12;
      }

      v10 = AXLogUltron();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [AXSDKShotModelManager addCustomDetector:v10];
      }

      streamAnalyzer = self->_streamAnalyzer;
      v21 = 0;
      [(SNAudioStreamAnalyzer *)streamAnalyzer addRequest:v9 withObserver:self error:&v21];
      v12 = v21;
      if (!v12)
      {
LABEL_12:
        v15 = *p_currentRequests;
        v16 = [v4 identifier];
        [v15 setObject:v9 forKeyedSubscript:v16];

        v17 = AXLogUltron();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [(AXSDKShotModelManager *)v4 addCustomDetector:?];
        }

        goto LABEL_15;
      }

      v13 = v12;
      v14 = AXLogUltron();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AXSDKShotModelManager addCustomDetector:];
      }
    }

    else
    {
      v19 = AXLogUltron();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [AXSDKShotModelManager addCustomDetector:v4];
      }
    }

    v18 = 0;
    goto LABEL_20;
  }

  v9 = AXLogUltron();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AXSDKShotModelManager addCustomDetector:v4];
  }

LABEL_15:
  v18 = 1;
LABEL_20:

  return v18;
}

- (BOOL)removeCustomDetector:(id)a3
{
  v4 = a3;
  _AXAssertIsMainThread();
  currentRequests = self->_currentRequests;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)currentRequests objectForKeyedSubscript:v6];

  if (v7)
  {
    if ([(AXSDKShotModelManager *)self streamAnalyzerIsRunning])
    {
      [(SNAudioStreamAnalyzer *)self->_streamAnalyzer removeRequest:v7];
    }

    v8 = self->_currentRequests;
    v9 = [v4 identifier];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];
  }

  else
  {
    v10 = AXLogUltron();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [AXSDKShotModelManager removeCustomDetector:v4];
    }
  }

  return 1;
}

- (void)removeAllDetectors
{
  _AXAssertIsMainThread();
  [(NSMutableDictionary *)self->_currentRequests removeAllObjects];
  if ([(AXSDKShotModelManager *)self streamAnalyzerIsRunning])
  {
    streamAnalyzer = self->_streamAnalyzer;

    [(SNAudioStreamAnalyzer *)streamAnalyzer removeAllRequests];
  }
}

+ (id)requestForDetector:(id)a3
{
  v3 = a3;
  v4 = [v3 mlModel];
  if (v4)
  {
    v21 = 0;
    v5 = [objc_alloc(MEMORY[0x277CDC900]) initWithMLModel:v4 error:&v21];
    v6 = v21;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v18 = [v4 modelDescription];
      v11 = [v18 inputDescriptionsByName];
      v12 = [v11 objectForKeyedSubscript:@"td_audio"];
      v13 = [v12 multiArrayConstraint];
      v14 = [v13 shape];
      v15 = [v14 lastObject];
      v16 = [v15 int64ValueSafe];

      CMTimeMake(&v20, v16, 16000);
      v19 = v20;
      [v5 setWindowDuration:&v19];
      [v5 setOverlapFactor:((v16 + -7800.0) / v16)];
      v10 = v5;
    }

    else
    {
      v9 = AXLogUltron();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AXSDKShotModelManager requestForDetector:v3];
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXSDKShotModelManager requestForDetector:v3];
    }

    v10 = 0;
  }

  return v10;
}

- (void)processAudioBuffer:(id)a3 atTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  audioQueue = self->_audioQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AXSDKShotModelManager_processAudioBuffer_atTime___block_invoke;
  block[3] = &unk_278BDD338;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(audioQueue, block);
}

uint64_t __51__AXSDKShotModelManager_processAudioBuffer_atTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 48) sampleTime];

  return [v2 analyzeAudioBuffer:v1 atAudioFramePosition:v3];
}

- (void)request:(id)a3 didProduceResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 timeRange];
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  v9 = [(AXSDKShotModelManager *)self delegate:v10];
  [v9 receivedObservation:v8 forDetector:v6];

LABEL_6:
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AXSDKShotModelManager request:didFailWithError:];
  }

  v9 = [(AXSDKShotModelManager *)self delegate];
  [v9 receivedError:v6 fromDetector:v7];
}

- (void)requestDidComplete:(id)a3
{
  v4 = a3;
  v5 = [(AXSDKShotModelManager *)self delegate];
  [v5 receivedCompletion:v4];
}

- (AXSDKShotModelManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startDetectionWithFormat:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "Custom Detection Controller: startDetectionWithFormat: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)startDetectionWithFormat:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 24) allValues];
  [v1 count];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startDetectionWithFormat:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Unable to add request to stream analyzer: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startDetectionWithFormat:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Custom Detection Controller: Received an invalid input format. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addCustomDetector:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addCustomDetector:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Custom Detector: Unable to add request to stream analyzer: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addCustomDetector:(void *)a1 .cold.4(void *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 name];
  v11 = [a1 identifier];
  v12 = *a2;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addCustomDetector:(void *)a1 .cold.5(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeCustomDetector:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)requestForDetector:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v9 = [a1 identifier];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)requestForDetector:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)request:didFailWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Request failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end