@interface VCStatisticsCollectorQueue
- (VCStatisticsCollectorQueue)initWithQueueSize:(int)a3 shouldBlockWhenFull:(BOOL)a4 queueWaitTimeMs:(unsigned int)a5 useExternalThread:(BOOL)a6;
- (void)dealloc;
- (void)start;
- (void)stop;
- (void)stopThread;
@end

@implementation VCStatisticsCollectorQueue

- (VCStatisticsCollectorQueue)initWithQueueSize:(int)a3 shouldBlockWhenFull:(BOOL)a4 queueWaitTimeMs:(unsigned int)a5 useExternalThread:(BOOL)a6
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCStatisticsCollectorQueue;
  v10 = [(VCStatisticsCollectorQueue *)&v14 init];
  v11 = v10;
  if (!v10)
  {
    return v11;
  }

  v10->_maxQueueSize = a3;
  if (a3 > 300)
  {
    a3 = 300;
LABEL_6:
    v10->_maxQueueSize = a3;
    goto LABEL_7;
  }

  if (a3 <= 1)
  {
    a3 = 2;
    goto LABEL_6;
  }

LABEL_7:
  v10->_queueProcessWaitTimeMs = a5;
  v10->_shouldProcessMessageImmediately = a5 == 0;
  v10->_shouldProcessMessageOnExternalThread = a6;
  v12 = (a3 * 0.75);
  if (!v12)
  {
    v12 = a3;
  }

  v10->_almostFullQueueSize = v12;
  v10->_shouldBlockWhenFull = a4 & ~a6;
  v10->_isThreadRunning = 0;
  *&v10->_firstMessageIndex = 0;
  pthread_mutex_init(&v10->_queueMutex, 0);
  pthread_cond_init(&v11->_queueNotFullCondition, 0);
  pthread_cond_init(&v11->_queueNotEmptyCondition, 0);
  pthread_mutex_init(&v11->_waitMutex, 0);
  pthread_cond_init(&v11->_waitCondition, 0);
  return v11;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCStatisticsCollectorQueue dealloc]";
      v10 = 1024;
      v11 = 87;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d dealloc called", buf, 0x1Cu);
    }
  }

  _Block_release(self->_messageHandler);
  pthread_mutex_destroy(&self->_queueMutex);
  pthread_cond_destroy(&self->_queueNotFullCondition);
  pthread_cond_destroy(&self->_queueNotEmptyCondition);
  pthread_mutex_destroy(&self->_waitMutex);
  pthread_cond_destroy(&self->_waitCondition);
  v5.receiver = self;
  v5.super_class = VCStatisticsCollectorQueue;
  [(VCStatisticsCollectorQueue *)&v5 dealloc];
}

- (void)start
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCStatisticsCollectorQueue start]";
  v6 = 1024;
  v7 = 113;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d VCRateControlStatisticsProc thread create failed (%d)", v3, 0x22u);
}

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_thread)
  {
    [(VCStatisticsCollectorQueue *)self stopThread];
    FigThreadJoin();
    self->_thread = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v8 = v3;
        v9 = 2080;
        v10 = "[VCStatisticsCollectorQueue stop]";
        v11 = 1024;
        v12 = 128;
        v5 = "VCRC [%s] %s:%d VCRateControlStatisticsProc thread ended";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0x1Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v6;
      v9 = 2080;
      v10 = "[VCStatisticsCollectorQueue stop]";
      v11 = 1024;
      v12 = 121;
      v5 = "VCRC [%s] %s:%d Stop VCStatisticsCollectorQueue without VCRateControlStatisticsProc thread";
      goto LABEL_8;
    }
  }
}

- (void)stopThread
{
  v3 = &self->_messageQueue[286].var0.addRemoveEndPoint + 12;
  pthread_mutex_lock(&self->_queueMutex);
  self->_isThreadRunning = 0;
  v3[335] = 0;
  if (self->_shouldBlockWhenFull || BYTE1(v3[372].remoteSSRC) == 1)
  {
    pthread_cond_signal(&self->_queueNotEmptyCondition);
  }

  else
  {
    pthread_mutex_lock(&self->_waitMutex);
    pthread_cond_signal(&self->_waitCondition);
    pthread_mutex_unlock(&self->_waitMutex);
  }

  pthread_mutex_unlock(&self->_queueMutex);
}

@end