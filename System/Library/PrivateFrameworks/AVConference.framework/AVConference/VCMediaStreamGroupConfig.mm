@interface VCMediaStreamGroupConfig
- (BOOL)addMediaStreamInfo:(id)info;
- (BOOL)hasRepairedStreams;
- (NSArray)mediaStreams;
- (NSDictionary)groupEntries;
- (NSDictionary)streamIDToMediaStreamMap;
- (VCMediaStreamGroupConfig)init;
- (unsigned)rtpTimestampRate;
- (void)dealloc;
- (void)setDelegateQueue:(id)queue;
- (void)setJbTargetEstimatorSynchronizer:(tagVCJBTargetEstimatorSynchronizer *)synchronizer;
- (void)setupStreams;
@end

@implementation VCMediaStreamGroupConfig

- (VCMediaStreamGroupConfig)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCMediaStreamGroupConfig;
  v2 = [(VCMediaStreamGroupConfig *)&v4 init];
  if (v2)
  {
    v2->_mediaStreamInfoArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_groupEntries = objc_alloc_init(MEMORY[0x1E695DF90]);
    pthread_mutex_init(&v2->_mutex, 0);
  }

  return v2;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];

  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  jbTargetEstimatorSynchronizer = self->_jbTargetEstimatorSynchronizer;
  if (jbTargetEstimatorSynchronizer)
  {
    CFRelease(jbTargetEstimatorSynchronizer);
    self->_jbTargetEstimatorSynchronizer = 0;
  }

  pthread_mutex_destroy(&self->_mutex);

  v5.receiver = self;
  v5.super_class = VCMediaStreamGroupConfig;
  [(VCMediaStreamGroupConfig *)&v5 dealloc];
}

- (void)setDelegateQueue:(id)queue
{
  delegateQueue = self->_delegateQueue;
  if (delegateQueue != queue)
  {
    if (delegateQueue)
    {
      CFRelease(delegateQueue);
      self->_delegateQueue = 0;
    }

    if (queue)
    {
      dispatch_retain(queue);
      self->_delegateQueue = queue;
    }
  }
}

- (BOOL)addMediaStreamInfo:(id)info
{
  if (info)
  {
    [(VCMediaStreamGroupConfig *)self lock];
    self->_shouldSetupStreams = 1;
    [(NSMutableArray *)self->_mediaStreamInfoArray addObject:info];
    [(VCMediaStreamGroupConfig *)self unlock];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCMediaStreamGroupConfig *)v5 addMediaStreamInfo:v6];
    }
  }

  return info != 0;
}

- (NSArray)mediaStreams
{
  [(VCMediaStreamGroupConfig *)self lock];
  if (self->_shouldSetupStreams)
  {
    [(VCMediaStreamGroupConfig *)self setupStreams];
  }

  v3 = self->_mediaStreams;
  [(VCMediaStreamGroupConfig *)self unlock];
  return v3;
}

- (NSDictionary)streamIDToMediaStreamMap
{
  [(VCMediaStreamGroupConfig *)self lock];
  if (self->_shouldSetupStreams)
  {
    [(VCMediaStreamGroupConfig *)self setupStreams];
  }

  v3 = self->_streamIDToMediaStreamMap;
  [(VCMediaStreamGroupConfig *)self unlock];
  return v3;
}

- (NSDictionary)groupEntries
{
  [(VCMediaStreamGroupConfig *)self lock];
  if (self->_shouldSetupStreams)
  {
    [(VCMediaStreamGroupConfig *)self setupStreams];
  }

  v3 = self->_groupEntries;
  [(VCMediaStreamGroupConfig *)self unlock];
  return &v3->super;
}

- (BOOL)hasRepairedStreams
{
  [(VCMediaStreamGroupConfig *)self lock];
  if (self->_shouldSetupStreams)
  {
    [(VCMediaStreamGroupConfig *)self setupStreams];
  }

  hasRepairedStreams = self->_hasRepairedStreams;
  [(VCMediaStreamGroupConfig *)self unlock];
  return hasRepairedStreams;
}

- (unsigned)rtpTimestampRate
{
  [(VCMediaStreamGroupConfig *)self lock];
  if (self->_shouldSetupStreams)
  {
    [(VCMediaStreamGroupConfig *)self setupStreams];
  }

  rtpTimestampRate = self->_rtpTimestampRate;
  [(VCMediaStreamGroupConfig *)self unlock];
  return rtpTimestampRate;
}

- (void)setupStreams
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v15 = 136315906;
    v16 = v5;
    v17 = 2080;
    OUTLINED_FUNCTION_7();
    v18 = 199;
    v19 = v7;
    LODWORD(v20) = v8;
    v9 = " [%s] %s:%d Failed to create the stream array for streamToken=%u";
    v10 = v6;
    v11 = 34;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v9, &v15, v11);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [self performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      v18 = 199;
      v19 = 2112;
      v20 = v4;
      v21 = 2048;
      selfCopy = self;
      v23 = v13;
      v24 = v14;
      v9 = " [%s] %s:%d %@(%p) Failed to create the stream array for streamToken=%u";
      v10 = v12;
      v11 = 54;
      goto LABEL_12;
    }
  }

LABEL_10:
  *a2 = 0;
}

- (void)setJbTargetEstimatorSynchronizer:(tagVCJBTargetEstimatorSynchronizer *)synchronizer
{
  jbTargetEstimatorSynchronizer = self->_jbTargetEstimatorSynchronizer;
  if (jbTargetEstimatorSynchronizer)
  {
    CFRelease(jbTargetEstimatorSynchronizer);
  }

  self->_jbTargetEstimatorSynchronizer = synchronizer;
  if (synchronizer)
  {

    CFRetain(synchronizer);
  }
}

- (void)addMediaStreamInfo:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCMediaStreamGroupConfig addMediaStreamInfo:]";
  v6 = 1024;
  v7 = 126;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d media stream is nil", &v2, 0x1Cu);
}

@end