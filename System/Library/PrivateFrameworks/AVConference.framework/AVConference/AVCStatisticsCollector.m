@interface AVCStatisticsCollector
- (BOOL)shouldProcessAtTime:(double)a3;
- (BOOL)unregisterStatisticsChangeHandlerWithType:(int)a3 handlerIndex:(int)a4;
- (id)getStatistics:(id)a3;
- (id)initForSimulation:(BOOL)a3 useExternalThread:(BOOL)a4;
- (int)registerStatisticsChangeHandlerWithType:(int)a3 handler:(id)a4;
- (tagVCStatisticsMessage)getVCStatisticsWithType:(SEL)a3 time:(int)a4;
- (void)dealloc;
- (void)setMode:(unsigned int)a3;
- (void)setServerBag:(id)a3;
- (void)setStatistics:(id)a3;
- (void)start;
- (void)stop;
- (void)unregisterAllStatisticsChangeHandlers;
@end

@implementation AVCStatisticsCollector

- (id)initForSimulation:(BOOL)a3 useExternalThread:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AVCStatisticsCollector;
  v6 = [(AVCStatisticsCollector *)&v20 init];
  if (v6)
  {
    v6->_statisticsCollection = malloc_type_calloc(1uLL, 0x248uLL, 0x100004086FD6A20uLL);
    v7 = *MEMORY[0x1E695E480];
    VCAllocatorFirstCome_Create(*MEMORY[0x1E695E480], "AVCStatisticsCollectorEntryAllocator", &v6->_statisticsChangeHandlerEntryAllocator);
    for (i = 384; i != 928; i += 32)
    {
      VCSingleLinkedListInitialize(v6 + i, _AVCStatisticsCollectorHandlerList_CompareListEntries);
    }

    v6->_changeHandlerRequests.prev = &v6->_changeHandlerRequests;
    v6->_changeHandlerRequests.next = &v6->_changeHandlerRequests;
    VCAllocatorFirstCome_Create(v7, "AVCStatisticsCollectorChangeHandlerRequestAllocator", &v6->_changeHandlerRequestAllocator);
    v6->_bandwidthEstimatorMap = objc_alloc_init(VCRateControlBandwidthEstimatorMap);
    v6->_owrdEstimator = objc_alloc_init(VCRateControlOWRDEstimator);
    v6->_history = objc_alloc_init(VCStatisticsHistory);
    v9 = [+[VCDefaults sharedInstance](VCDefaults rateControlStatisticsQueueWaitTime];
    v6->_forceQueueWaitTimeMs = v9 & ~(v9 >> 31);
    v6->_useExternalThread = v4;
    if (v5)
    {
      v10 = 1;
    }

    else
    {
      v10 = 300;
    }

    v6->_queue = [[VCStatisticsCollectorQueue alloc] initWithQueueSize:v10 shouldBlockWhenFull:v5 queueWaitTimeMs:v6->_forceQueueWaitTimeMs useExternalThread:v4];
    v6->_changeHandlerRequestsLock._os_unfair_lock_opaque = 0;
    pthread_rwlock_init(&v6->_statisticsChangeHandlersLock, 0);
    pthread_rwlock_init(&v6->_processCompletionHandlerLock, 0);
    pthread_rwlock_init(&v6->_statisticsCollectionLock, 0);
    v33.__sig = 0xAAAAAAAAAAAAAAAALL;
    *v33.__opaque = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutexattr_init(&v33);
    pthread_mutexattr_settype(&v33, 2);
    pthread_mutex_init(&v6->_startMutex, &v33);
    if (objc_opt_class() == v6)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v22 = v12;
          v23 = 2080;
          v24 = "[AVCStatisticsCollector initForSimulation:useExternalThread:]";
          v25 = 1024;
          v26 = 175;
          v27 = 1024;
          LODWORD(v28) = v4;
          v14 = "VCRC [%s] %s:%d statisticsCollector is initiated with useExternalThread=%{BOOL}d";
          v15 = v13;
          v16 = 34;
LABEL_17:
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(AVCStatisticsCollector *)v6 performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v22 = v17;
          v23 = 2080;
          v24 = "[AVCStatisticsCollector initForSimulation:useExternalThread:]";
          v25 = 1024;
          v26 = 175;
          v27 = 2112;
          v28 = v11;
          v29 = 2048;
          v30 = v6;
          v31 = 1024;
          v32 = v4;
          v14 = "VCRC [%s] %s:%d %@(%p) statisticsCollector is initiated with useExternalThread=%{BOOL}d";
          v15 = v18;
          v16 = 54;
          goto LABEL_17;
        }
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v3;
      v11 = 2080;
      v12 = "[AVCStatisticsCollector dealloc]";
      v13 = 1024;
      v14 = 181;
      v15 = 2048;
      v16 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d dealloc called %p", buf, 0x26u);
    }
  }

  [(AVCStatisticsCollector *)self stop];

  free(self->_statisticsCollection);
  os_unfair_lock_lock(&self->_changeHandlerRequestsLock);
  *buf = 0;
  while (1)
  {
    next = self->_changeHandlerRequests.next;
    if (next == &self->_changeHandlerRequests)
    {
      break;
    }

    isa = next->super.isa;
    self->_changeHandlerRequests.next = next->super.isa;
    *(isa + 1) = next->_bandwidthEstimatorMap;
    next->super.isa = next;
    next->_bandwidthEstimatorMap = next;
    *buf = next;
    _AVCStatisticsCollector_DestroyChangeHandlerRequest(self, buf);
  }

  changeHandlerRequestAllocator = self->_changeHandlerRequestAllocator;
  if (changeHandlerRequestAllocator)
  {
    CFRelease(changeHandlerRequestAllocator);
  }

  os_unfair_lock_unlock(&self->_changeHandlerRequestsLock);
  pthread_rwlock_wrlock(&self->_statisticsChangeHandlersLock);
  _AVCStatisticsCollector_CleanupChangeHandlers(self);
  statisticsChangeHandlerEntryAllocator = self->_statisticsChangeHandlerEntryAllocator;
  if (statisticsChangeHandlerEntryAllocator)
  {
    CFRelease(statisticsChangeHandlerEntryAllocator);
  }

  pthread_rwlock_unlock(&self->_statisticsChangeHandlersLock);
  pthread_rwlock_destroy(&self->_statisticsChangeHandlersLock);
  _AVCStatisticsCollector_SetProcessCompleteHandler(self, 0);
  pthread_rwlock_destroy(&self->_processCompletionHandlerLock);
  pthread_mutex_destroy(&self->_startMutex);

  pthread_rwlock_destroy(&self->_statisticsCollectionLock);
  v9.receiver = self;
  v9.super_class = AVCStatisticsCollector;
  [(AVCStatisticsCollector *)&v9 dealloc];
}

- (void)start
{
  if (a1 >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_2(&dword_1DB56E000, v1, v2, "VCRC [%s] %s:%d statisticsCollector[%p] is already started", v3, v4, v5, v6, v7);
    }
  }
}

- (void)stop
{
  if (a1 >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_2(&dword_1DB56E000, v1, v2, "VCRC [%s] %s:%d statisticsCollector[%p] is already stopped", v3, v4, v5, v6, v7);
    }
  }
}

- (void)setStatistics:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v4 = a3 ? [objc_msgSend(a3 "description")] : "<nil>";
    asprintf(&__str, "newStatistics=%s", v4);
    if (__str)
    {
      __lasts = 0;
      v5 = strtok_r(__str, "\n", &__lasts);
      v6 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v12 = v7;
            v13 = 2080;
            v14 = "[AVCStatisticsCollector setStatistics:]";
            v15 = 1024;
            v16 = 246;
            v17 = 2080;
            v18 = "";
            v19 = 2080;
            v20 = v5;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v5 = strtok_r(0, "\n", &__lasts);
      }

      while (v5);
      free(__str);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVCStatisticsCollector setStatistics:];
    }
  }
}

- (id)getStatistics:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    __str = 0;
    v4 = a3 ? [objc_msgSend(a3 "description")] : "<nil>";
    asprintf(&__str, "keys=%s", v4);
    if (__str)
    {
      __lasts = 0;
      v5 = strtok_r(__str, "\n", &__lasts);
      v6 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v13 = v7;
            v14 = 2080;
            v15 = "[AVCStatisticsCollector getStatistics:]";
            v16 = 1024;
            v17 = 252;
            v18 = 2080;
            v19 = "";
            v20 = 2080;
            v21 = v5;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v5 = strtok_r(0, "\n", &__lasts);
      }

      while (v5);
      free(__str);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVCStatisticsCollector getStatistics:];
    }
  }

  return 0;
}

- (void)setMode:(unsigned int)a3
{
  v3 = *&a3;
  self->_mode = a3;
  [(VCRateControlBandwidthEstimatorMap *)self->_bandwidthEstimatorMap setMode:?];
  owrdEstimator = self->_owrdEstimator;

  [(VCRateControlOWRDEstimator *)owrdEstimator setMode:v3];
}

- (void)setServerBag:(id)a3
{
  serverBag = self->_serverBag;
  if (serverBag != a3)
  {

    self->_serverBag = a3;
  }

  bandwidthEstimatorMap = self->_bandwidthEstimatorMap;

  [(VCRateControlBandwidthEstimatorMap *)bandwidthEstimatorMap setServerBag:a3];
}

- (int)registerStatisticsChangeHandlerWithType:(int)a3 handler:(id)a4
{
  if ((a3 - 1) > 0xF)
  {
    nextChangeHandlerIdentifier = -1;
  }

  else
  {
    pthread_rwlock_wrlock(&self->_statisticsCollectionLock);
    nextChangeHandlerIdentifier = self->_nextChangeHandlerIdentifier;
    self->_nextChangeHandlerIdentifier = nextChangeHandlerIdentifier + 1;
    pthread_rwlock_unlock(&self->_statisticsCollectionLock);
    os_unfair_lock_lock(&self->_changeHandlerRequestsLock);
    _AVCStatisticsCollector_PushChangeHandlerRequest(self, 0, a3, nextChangeHandlerIdentifier, a4);
    os_unfair_lock_unlock(&self->_changeHandlerRequestsLock);
  }

  pthread_mutex_lock(&self->_startMutex);
  if (!self->_isStarted)
  {
    _AVCStatisticsCollector_UpdateStatisticChangeHandlerDictionaryCache(self);
  }

  pthread_mutex_unlock(&self->_startMutex);
  return nextChangeHandlerIdentifier;
}

- (BOOL)unregisterStatisticsChangeHandlerWithType:(int)a3 handlerIndex:(int)a4
{
  if ((a3 - 1) > 0xF)
  {
    v7 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_changeHandlerRequestsLock);
    v7 = _AVCStatisticsCollector_PushChangeHandlerRequest(self, 1, a3, a4, 0);
    os_unfair_lock_unlock(&self->_changeHandlerRequestsLock);
  }

  pthread_mutex_lock(&self->_startMutex);
  if (!self->_isStarted)
  {
    _AVCStatisticsCollector_UpdateStatisticChangeHandlerDictionaryCache(self);
  }

  pthread_mutex_unlock(&self->_startMutex);
  return v7;
}

- (void)unregisterAllStatisticsChangeHandlers
{
  os_unfair_lock_lock(&self->_changeHandlerRequestsLock);
  _AVCStatisticsCollector_PushChangeHandlerRequest(self, 2, 0, 0, 0);
  os_unfair_lock_unlock(&self->_changeHandlerRequestsLock);
  pthread_mutex_lock(&self->_startMutex);
  if (!self->_isStarted)
  {
    _AVCStatisticsCollector_UpdateStatisticChangeHandlerDictionaryCache(self);
  }

  pthread_mutex_unlock(&self->_startMutex);
}

- (BOOL)shouldProcessAtTime:(double)a3
{
  forceQueueWaitTimeMs = self->_forceQueueWaitTimeMs;
  v4 = a3 == 0.0 || forceQueueWaitTimeMs == 0;
  if (!v4 && a3 - self->_previousProcessTime <= forceQueueWaitTimeMs / 1000.0)
  {
    return 0;
  }

  self->_previousProcessTime = a3;
  return 1;
}

- (tagVCStatisticsMessage)getVCStatisticsWithType:(SEL)a3 time:(int)a4
{
  *(&retstr->var0.addRemoveEndPoint + 21) = 0;
  *(&retstr->var0.addRemoveEndPoint + 17) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 19) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 13) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 15) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 9) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 11) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 5) = 0u;
  *(&retstr->var0.addRemoveEndPoint + 7) = 0u;
  *&retstr->var0.rtcpRR.lastSequenceNumber = 0u;
  *(&retstr->var0.addRemoveEndPoint + 3) = 0u;
  *&retstr->type = 0u;
  *&retstr->isVCRCInternal = 0u;
  _AVCStatisticsCollector_GetVCStatisticsWithType(self, a4, retstr, a5);
  return result;
}

uint64_t ___AVCStatisticsCollector_ProcessVCStatisticsInternal_block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  v3 = *(a1 + 32);
  v4 = *(v2 + 16);
  v15[0] = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 64);
  v15[3] = *(v3 + 48);
  v15[4] = v7;
  v15[1] = v5;
  v15[2] = v6;
  v8 = *(v3 + 80);
  v9 = *(v3 + 96);
  v10 = *(v3 + 128);
  v15[7] = *(v3 + 112);
  v15[8] = v10;
  v15[5] = v8;
  v15[6] = v9;
  v11 = *(v3 + 144);
  v12 = *(v3 + 160);
  v13 = *(v3 + 176);
  v16 = *(v3 + 192);
  v15[10] = v12;
  v15[11] = v13;
  v15[9] = v11;
  return v4(v2, v15);
}

- (void)setStatistics:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d setStatistics:newStatsistics is deprecated", v2, v3, v4, v5, v6);
}

- (void)getStatistics:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d getStatistics:keys is deprecated", v2, v3, v4, v5, v6);
}

@end