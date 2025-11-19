@interface VCObject
- (VCObject)init;
- (void)dealloc;
- (void)setReportingAgent:(opaqueRTCReporting *)a3;
- (void)startTerminationTimer:(unsigned int)a3 terminationType:(int)a4;
- (void)stopTerminationTimer;
@end

@implementation VCObject

- (VCObject)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCObject;
  v2 = [(VCObject *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_mutex, 0);
    pthread_mutex_init(&v3->_timeoutMutex, 0);
    v3->_logPrefix = objc_alloc_init(MEMORY[0x1E696AEC0]);
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCObject *)self stopTerminationTimer];

  FigCFWeakReferenceStore();
  pthread_mutex_destroy(&self->_mutex);
  pthread_mutex_destroy(&self->_timeoutMutex);
  v3.receiver = self;
  v3.super_class = VCObject;
  [(VCObject *)&v3 dealloc];
}

- (void)setReportingAgent:(opaqueRTCReporting *)a3
{
  self->_reportingAgent = a3;

  v4 = a3;
}

- (void)startTerminationTimer:(unsigned int)a3 terminationType:(int)a4
{
  v5 = *&a3;
  v28 = *MEMORY[0x1E69E9840];
  if (!VCDefaults_GetBoolValueForKey(@"skipTerminationTimer", 0))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%p) Timeout=%d", v8, self, v5];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v21 = v10;
        v22 = 2080;
        v23 = "[VCObject startTerminationTimer:terminationType:]";
        v24 = 1024;
        v25 = 112;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@. Starting timer", buf, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_timeoutMutex);
    if (self->_timeoutTimer)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCObject *)v12 startTerminationTimer:v9 terminationType:v13];
        }
      }
    }

    else
    {
      v14 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self->_reportingAgent];
      v15 = objc_opt_class();
      v16 = [VCDispatchTimer alloc];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __50__VCObject_startTerminationTimer_terminationType___block_invoke;
      v18[3] = &unk_1E85F9EE8;
      v19 = a4;
      v18[4] = v9;
      v18[5] = v14;
      v18[6] = v15;
      v18[7] = v8;
      v17 = [(VCDispatchTimer *)v16 initWithIntervalSeconds:v5 callbackBlock:v18];
      self->_timeoutTimer = v17;
      [(VCDispatchTimer *)v17 start];
    }

    pthread_mutex_unlock(&self->_timeoutMutex);
  }
}

uint64_t __50__VCObject_startTerminationTimer_terminationType___block_invoke(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __50__VCObject_startTerminationTimer_terminationType___block_invoke_cold_2();
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      __50__VCObject_startTerminationTimer_terminationType___block_invoke_cold_1();
    }
  }

  return [*(a1 + 48) terminateProcess:objc_msgSend(MEMORY[0x1E696AEC0] terminateSource:"stringWithFormat:" agent:{@"Termination Timeout - %@ type=%d", *(a1 + 32), *(a1 + 64)), *(a1 + 56), objc_msgSend(*(a1 + 40), "strong")}];
}

- (void)stopTerminationTimer
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_timeoutMutex);
  if (self->_timeoutTimer)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = 136316162;
        v7 = v3;
        v8 = 2080;
        v9 = "[VCObject stopTerminationTimer]";
        v10 = 1024;
        v11 = 136;
        v12 = 2112;
        v13 = NSStringFromClass(v5);
        v14 = 2048;
        v15 = self;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@(%p). Stopping timer", &v6, 0x30u);
      }
    }

    [(VCDispatchTimer *)self->_timeoutTimer stop];

    self->_timeoutTimer = 0;
    pthread_mutex_unlock(&self->_timeoutMutex);
  }

  else
  {

    pthread_mutex_unlock(&self->_timeoutMutex);
  }
}

- (void)startTerminationTimer:(NSObject *)a3 terminationType:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315906;
  *&v3[4] = a1;
  *&v3[12] = 2080;
  *&v3[14] = "[VCObject startTerminationTimer:terminationType:]";
  *&v3[22] = 1024;
  LODWORD(v4) = 115;
  WORD2(v4) = 2112;
  *(&v4 + 6) = a2;
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, a2, a3, " [%s] %s:%d %@. VCDispatchTimer is already active", *v3, *&v3[8], *&v3[16], v4, *MEMORY[0x1E69E9840]);
}

void __50__VCObject_startTerminationTimer_terminationType___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_0_29();
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@. Timeout triggered. Terminating process ...", v1, 0x26u);
}

void __50__VCObject_startTerminationTimer_terminationType___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d %@. Timeout triggered. Terminating process ...");
}

@end