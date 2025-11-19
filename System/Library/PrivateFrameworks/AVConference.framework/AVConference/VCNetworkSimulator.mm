@interface VCNetworkSimulator
+ (id)sharedInstance;
- (VCNetworkSimulator)init;
- (id)createDefaultPolicies;
- (id)loadPoliciesFromJson;
- (int)processNetwork;
- (int)waitForCondition:(_opaque_pthread_cond_t *)a3 withTimeout:(double)a4 conditionPredicate:(BOOL *)a5;
- (void)dealloc;
- (void)loadPoliciesFromJson;
- (void)setupNetwork;
- (void)start;
- (void)stop;
@end

@implementation VCNetworkSimulator

- (VCNetworkSimulator)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCNetworkSimulator;
  v2 = [(VCNetworkSimulator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_mutex, 0);
    pthread_cond_init(&v3->_packetPushedCondition, 0);
    pthread_cond_init(&v3->_queueEmptyCondition, 0);
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_11 != -1)
  {
    +[VCNetworkSimulator sharedInstance];
  }

  return sharedInstance_sharedNetworkSimulator;
}

VCNetworkSimulator *__36__VCNetworkSimulator_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCNetworkSimulator);
  sharedInstance_sharedNetworkSimulator = result;
  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  pthread_mutex_destroy(&self->_mutex);
  pthread_cond_destroy(&self->_packetPushedCondition);
  pthread_cond_destroy(&self->_queueEmptyCondition);
  v3.receiver = self;
  v3.super_class = VCNetworkSimulator;
  [(VCNetworkSimulator *)&v3 dealloc];
}

- (id)createDefaultPolicies
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = @"SingleQueueImpairments";
  v12[0] = @"time";
  v12[1] = @"value";
  v13[0] = &unk_1F579D1D0;
  v13[1] = &unk_1F579D1E8;
  v14 = @"FixedBandwidth";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCNetworkSimulator createDefaultPolicies]";
      v10 = 1024;
      v11 = 82;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Using default json policies.", &v6, 0x1Cu);
    }
  }

  return v2;
}

- (id)loadPoliciesFromJson
{
  v31 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v3 = [+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")];
  v4 = VCDefaults_CopyStringValueForKey(@"emulatedNetworkConfigJSONString");
  if (!(v3 | v4))
  {
    [(VCNetworkSimulator *)self loadPoliciesFromJson];
    goto LABEL_15;
  }

  if (v3 && [v3 length])
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3 options:0 error:&v16];
    if (!v5)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v18 = v9;
            v19 = 2080;
            v20 = "[VCNetworkSimulator loadPoliciesFromJson]";
            v21 = 1024;
            v22 = 98;
            v23 = 2112;
            v24 = v3;
            v25 = 2112;
            v26 = v16;
            v11 = " [%s] %s:%d Error loading json policies from path=%@ error=%@";
            v12 = v10;
            v13 = 48;
LABEL_24:
            _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v6 = [(VCNetworkSimulator *)self performSelector:sel_logPrefix];
        }

        else
        {
          v6 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316674;
            v18 = v14;
            v19 = 2080;
            v20 = "[VCNetworkSimulator loadPoliciesFromJson]";
            v21 = 1024;
            v22 = 98;
            v23 = 2112;
            v24 = v6;
            v25 = 2048;
            v26 = self;
            v27 = 2112;
            v28 = v3;
            v29 = 2112;
            v30 = v16;
            v11 = " [%s] %s:%d %@(%p) Error loading json policies from path=%@ error=%@";
            v12 = v15;
            v13 = 68;
            goto LABEL_24;
          }
        }
      }

LABEL_15:
      v7 = [(VCNetworkSimulator *)self createDefaultPolicies];
      if (!v4)
      {
        return v7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = [v4 dataUsingEncoding:4];
  }

  v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:0];
  if (!v7)
  {
    [(VCNetworkSimulator *)self loadPoliciesFromJson];
    goto LABEL_15;
  }

  if (v4)
  {
LABEL_11:
    CFRelease(v4);
  }

  return v7;
}

- (void)setupNetwork
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

uint64_t __34__VCNetworkSimulator_setupNetwork__block_invoke(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 32) + 40));
  *(*(a1 + 32) + 200) = 0;
  pthread_cond_signal((*(a1 + 32) + 104));
  v2 = (*(a1 + 32) + 40);

  return pthread_mutex_unlock(v2);
}

- (void)start
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (self->_isStarted)
  {
    if (self->_thread)
    {
      if ([(VCEmulatedNetwork *)self->_network numberOfPacketsWaitingInOutputQueue])
      {
        [(VCNetworkSimulator *)self waitForCondition:&self->_queueEmptyCondition withTimeout:&self->_isQueueEmpty conditionPredicate:0.01];
      }

      thread = self->_thread;
      if (thread)
      {
        VCRealTimeThread_Stop(thread);
        VCRealTimeThread_Finalize(self->_thread);
        self->_thread = 0;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v4 = VRTraceErrorLogLevelToCSTR();
          v5 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v7 = 136315650;
            v8 = v4;
            v9 = 2080;
            v10 = "[VCNetworkSimulator stop]";
            v11 = 1024;
            v12 = 170;
            _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCRealTimeThread_Stop for network simulator", &v7, 0x1Cu);
          }
        }
      }
    }

    network = self->_network;
    if (network)
    {

      self->_network = 0;
    }

    self->_isStarted = 0;
  }

  objc_sync_exit(self);
}

- (int)processNetwork
{
  [(VCEmulatedNetwork *)self->_network runUntilTime:micro()];
  while ([(VCEmulatedNetwork *)self->_network numberOfPacketsWaitingInOutputQueue])
  {
  }

  pthread_mutex_lock(&self->_mutex);
  self->_isQueueEmpty = 1;
  pthread_cond_signal(&self->_queueEmptyCondition);
  pthread_mutex_unlock(&self->_mutex);

  return [(VCNetworkSimulator *)self waitForCondition:&self->_packetPushedCondition withTimeout:0 conditionPredicate:0.005];
}

- (int)waitForCondition:(_opaque_pthread_cond_t *)a3 withTimeout:(double)a4 conditionPredicate:(BOOL *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v12.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v12.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&self->_mutex);
  if (a4 <= 0.0)
  {
    v10 = 60;
  }

  else
  {
    v12.tv_sec = a4;
    v12.tv_nsec = ((a4 - a4) * 1000000000.0);
    do
    {
      v9 = pthread_cond_timedwait_relative_np(a3, &self->_mutex, &v12);
      v10 = v9;
    }

    while (a5 && !*a5 && !v9);
  }

  pthread_mutex_unlock(&self->_mutex);
  return v10;
}

- (void)loadPoliciesFromJson
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

@end