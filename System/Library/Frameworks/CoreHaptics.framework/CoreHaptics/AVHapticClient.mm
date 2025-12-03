@interface AVHapticClient
- (AVHapticClient)initWithOptions:(id)options error:(id *)error;
- (BOOL)clearEventsFromTime:(double)time channel:(unint64_t)channel;
- (BOOL)clearSequenceEvents:(unint64_t)events atTime:(double)time;
- (BOOL)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply;
- (BOOL)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply;
- (BOOL)doScheduleParamCurve:(unint64_t)curve atTime:(double)time channel:(unint64_t)channel paramCurve:(id)paramCurve error:(id *)error;
- (BOOL)doScheduleParamCurveWithMemoryReserve:(unint64_t)reserve atTime:(double)time channel:(unint64_t)channel memoryReserve:(HapticSharedMemoryAddressReserve *)memoryReserve paramCurve:(id)curve error:(id *)error;
- (BOOL)doSendEvents:(id)events withImmediateParameters:(id)parameters atTime:(double)time channel:(unint64_t)channel sorted:(BOOL)sorted outToken:(unint64_t *)token error:(id *)error;
- (BOOL)enableSequenceLooping:(unint64_t)looping enable:(BOOL)enable error:(id *)error;
- (BOOL)finish:(id)finish;
- (BOOL)loadAndPrepareHapticSequenceFromData:(id)data reply:(id)reply;
- (BOOL)loadAndPrepareHapticSequenceFromEvents:(id)events reply:(id)reply;
- (BOOL)loadAndPrepareHapticSequenceFromVibePattern:(id)pattern reply:(id)reply;
- (BOOL)loadHapticEvent:(id)event reply:(id)reply;
- (BOOL)pauseHapticSequence:(unint64_t)sequence atTime:(double)time;
- (BOOL)prepareHapticSequence:(unint64_t)sequence error:(id *)error;
- (BOOL)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (BOOL)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (BOOL)removeAssignedChannelID:(unint64_t)d error:(id *)error;
- (BOOL)requestAssignedChannels:(unint64_t)channels error:(id *)error;
- (BOOL)resetChannel:(unint64_t)channel atTime:(double)time;
- (BOOL)resetHapticSequence:(unint64_t)sequence atTime:(double)time;
- (BOOL)resumeHapticSequence:(unint64_t)sequence atTime:(double)time;
- (BOOL)scheduleParameterCurve:(unint64_t)curve curve:(id)a4 atTime:(double)time channel:(unint64_t)channel error:(id *)error;
- (BOOL)seekHapticSequence:(unint64_t)sequence toTime:(double)time;
- (BOOL)sendEvents:(id)events withImmediateParameters:(id)parameters atTime:(double)time channel:(unint64_t)channel outToken:(unint64_t *)token error:(id *)error;
- (BOOL)sendUnduckAudioCommand:(unint64_t)command atTime:(double)time;
- (BOOL)setChannelEventBehavior:(unint64_t)behavior channel:(unint64_t)channel;
- (BOOL)setParameter:(unint64_t)parameter atTime:(double)time value:(float)value channel:(unint64_t)channel;
- (BOOL)setPlayerBehavior:(unint64_t)behavior error:(id *)error;
- (BOOL)setSequenceChannelParameter:(unint64_t)parameter atTime:(double)time value:(float)value sequenceID:(unint64_t)d channel:(unint64_t)channel;
- (BOOL)setSequenceEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 channel:(unint64_t)channel;
- (BOOL)setSequenceLoopLength:(unint64_t)length length:(float)a4 error:(id *)error;
- (BOOL)setSequencePlaybackRate:(unint64_t)rate rate:(float)a4 error:(id *)error;
- (BOOL)setupConnectionWithOptions:(id)options error:(id *)error;
- (BOOL)startHapticSequence:(unint64_t)sequence atTime:(double)time withOffset:(double)offset;
- (BOOL)stopHapticSequence:(unint64_t)sequence atTime:(double)time;
- (double)hapticLatency;
- (id).cxx_construct;
- (id)getAsyncDelegateForMethod:(SEL)method errorHandler:(id)handler;
- (id)getSequenceFinishedHandlerForID:(unint64_t)d;
- (id)getSyncDelegateForMethod:(SEL)method errorHandler:(id)handler;
- (int)state;
- (uint64_t)doInit;
- (unsigned)calculateHapticCommandParamCurveMemorySize:(unsigned int)size;
- (void)allocateResources:(id)resources;
- (void)callSequenceFinishedHandlersWithError:(id)error;
- (void)clearAssignedChannels;
- (void)clientCompletedWithError:(id)error;
- (void)clientDisconnectingForReason:(unint64_t)reason error:(id)error;
- (void)clientStoppedForReason:(unint64_t)reason error:(id)error;
- (void)dealloc;
- (void)destroySharedMemory;
- (void)detachHapticSequence:(unint64_t)sequence;
- (void)detachSequenceEntryforID:(unint64_t)d;
- (void)disconnect;
- (void)doInit;
- (void)handleServerConnectionInterruption;
- (void)handleServerConnectionInvalidation;
- (void)prewarm:(id)prewarm;
- (void)queryServerCapabilities:(id)capabilities reply:(id)reply;
- (void)releaseResources;
- (void)sequenceFinished:(unint64_t)finished error:(id)error;
- (void)setChannelKeys:(id)keys;
- (void)setSequenceFinishedHandlerForID:(unint64_t)d finishedHandler:(id)handler;
- (void)setState:(int)state;
- (void)startRunning:(id)running;
- (void)stopPrewarm;
- (void)stopRunning;
- (void)stopRunning:(id)running;
@end

@implementation AVHapticClient

- (void)stopPrewarm
{
  v17 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v4 = *kAVHCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315906;
    v10 = "AVHapticClient.mm";
    v11 = 1024;
    v12 = 353;
    v13 = 2080;
    v14 = "[AVHapticClient stopPrewarm]";
    v15 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x stopping prewarm", &v9, 0x22u);
  }

LABEL_8:
  v7 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:&__block_literal_global_53];
  [v7 stopPrewarm];
  *(self + 192) = 0;

  v8 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 6) = 850045863;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 16) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  *(self + 14) = self + 120;
  caulk::xpc::reply_watchdog_factory::reply_watchdog_factory((self + 152));
  return self;
}

- (void)doInit
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((self + 8));
  if (WeakRetained)
  {
    if (kAVHCScope)
    {
      v2 = *kAVHCScope;
      if (!v2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v2 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = "AVHapticClient.mm";
      v7 = 1024;
      v8 = 1160;
      v9 = 2080;
      v10 = "operator()";
      _os_log_impl(&dword_21569A000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Initial XPC call to server timed out. Invalidating connection to prevent hang", &v5, 0x1Cu);
    }
  }

LABEL_9:
  [WeakRetained disconnect];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setState:(int)state
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(self + 36) != state)
  {
    if (kAVHSScope)
    {
      v5 = *kAVHSScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 136316162;
      v10 = "AVHapticClient.mm";
      v12 = 107;
      v13 = 2080;
      v11 = 1024;
      v14 = "[AVHapticClient setState:]";
      v15 = 1024;
      clientID = [(AVHapticClient *)self clientID];
      v17 = 1024;
      stateCopy = state;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x EngineState -> %d", &v9, 0x28u);
    }
  }

LABEL_9:
  *(self + 36) = state;
  v8 = *MEMORY[0x277D85DE8];
}

- (int)state
{
  v19 = *MEMORY[0x277D85DE8];
  if (kAVHSScope)
  {
    if (*(kAVHSScope + 8))
    {
      v3 = *kAVHSScope;
      if (v3)
      {
        v4 = v3;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          clientID = [(AVHapticClient *)self clientID];
          v6 = *(self + 36);
          v9 = 136316162;
          v10 = "AVHapticClient.mm";
          v12 = 113;
          v13 = 2080;
          v11 = 1024;
          v14 = "[AVHapticClient state]";
          v15 = 1024;
          v16 = clientID;
          v17 = 1024;
          v18 = v6;
          _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: (Client 0x%x returning EngineState %d)", &v9, 0x28u);
        }
      }
    }
  }

  result = *(self + 36);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (AVHapticClient)initWithOptions:(id)options error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (setupClientLogScopes(void)::once != -1)
  {
    setupClientLogScopes();
  }

  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v20 = "AVHapticClient.mm";
    v21 = 1024;
    v22 = 140;
    v23 = 2080;
    v24 = "[AVHapticClient initWithOptions:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initializing with options", buf, 0x1Cu);
  }

LABEL_10:
  v18.receiver = self;
  v18.super_class = AVHapticClient;
  v9 = [(AVHapticClient *)&v18 init];
  v10 = v9;
  if (v9)
  {
    [(AVHapticClient *)v9 doInit];
    if (![(AVHapticClient *)v10 setupConnectionWithOptions:optionsCopy error:error])
    {
      if (kAVHCScope)
      {
        v12 = *kAVHCScope;
        if (!v12)
        {
LABEL_27:
          [(AVHapticClient *)v10 disconnect];
          v14 = 0;
          goto LABEL_28;
        }
      }

      else
      {
        v12 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v20 = "AVHapticClient.mm";
        v21 = 1024;
        v22 = 145;
        v23 = 2080;
        v24 = "[AVHapticClient initWithOptions:error:]";
        _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Init calling disconnect on self", buf, 0x1Cu);
      }

      goto LABEL_27;
    }
  }

  if (!kAVHCScope)
  {
    v11 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
    goto LABEL_19;
  }

  v11 = *kAVHCScope;
  if (v11)
  {
LABEL_19:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v20 = "AVHapticClient.mm";
      v21 = 1024;
      v22 = 150;
      v23 = 2080;
      v24 = "[AVHapticClient initWithOptions:error:]";
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Init exited", buf, 0x1Cu);
    }
  }

  v14 = v10;
LABEL_28:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v11 = "AVHapticClient.mm";
    v12 = 1024;
    v13 = 156;
    v14 = 2080;
    v15 = "[AVHapticClient dealloc]";
    v16 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Deallocating HapticClient 0x%x", buf, 0x22u);
  }

LABEL_8:
  [(AVHapticClient *)self disconnect];
  [(AVHapticClient *)self destroySharedMemory];
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "AVHapticClient.mm";
    v12 = 1024;
    v13 = 159;
    v14 = 2080;
    v15 = "[AVHapticClient dealloc]";
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d %s: dealloc of HapticClient exited", buf, 0x1Cu);
  }

LABEL_15:
  v9.receiver = self;
  v9.super_class = AVHapticClient;
  [(AVHapticClient *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)queryServerCapabilities:(id)capabilities reply:(id)reply
{
  capabilitiesCopy = capabilities;
  replyCopy = reply;
  v8 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:&__block_literal_global_38];
  [v8 queryCapabilities:capabilitiesCopy reply:replyCopy];
}

void __48__AVHapticClient_queryServerCapabilities_reply___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 localizedDescription];
    v8 = 136315906;
    v9 = "AVHapticClient.mm";
    v10 = 1024;
    v11 = 167;
    v12 = 2080;
    v13 = "[AVHapticClient queryServerCapabilities:reply:]_block_invoke";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to get server capabilities: %@", &v8, 0x26u);
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
}

- (double)hapticLatency
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__1;
  v10[4] = __Block_byref_object_dispose__1;
  v11 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:&__block_literal_global_40];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__AVHapticClient_hapticLatency__block_invoke_41;
  v5[3] = &unk_2781C9308;
  v5[4] = &v6;
  v5[5] = v10;
  [v2 getHapticLatency:v5];
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);

  return v3;
}

void __31__AVHapticClient_hapticLatency__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 localizedDescription];
    v8 = 136315906;
    v9 = "AVHapticClient.mm";
    v10 = 1024;
    v11 = 177;
    v12 = 2080;
    v13 = "[AVHapticClient hapticLatency]_block_invoke";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to get latency: %@", &v8, 0x26u);
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
}

void __31__AVHapticClient_hapticLatency__block_invoke_41(uint64_t a1, void *a2, double a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  *(*(*(a1 + 32) + 8) + 24) = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v11 = 136315906;
      v12 = "AVHapticClient.mm";
      v13 = 1024;
      v14 = 182;
      v15 = 2080;
      v16 = "[AVHapticClient hapticLatency]_block_invoke";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v11, 0x26u);
    }
  }

LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)allocateResources:(id)resources
{
  v29 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v22 = "AVHapticClient.mm";
    v23 = 1024;
    v24 = 189;
    v25 = 2080;
    v26 = "[AVHapticClient allocateResources:]";
    v27 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x allocating", buf, 0x22u);
  }

LABEL_8:
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __36__AVHapticClient_allocateResources___block_invoke;
  v19[3] = &unk_2781C9330;
  v9 = resourcesCopy;
  v20 = v9;
  v10 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:v19];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __36__AVHapticClient_allocateResources___block_invoke_2;
  v15[3] = &unk_2781C9358;
  objc_copyWeak(&v17, &location);
  v11 = v9;
  v16 = v11;
  [v10 allocateClientResources:v15];
  if (kAVHCScope)
  {
    v12 = *kAVHCScope;
    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "AVHapticClient.mm";
    v23 = 1024;
    v24 = 217;
    v25 = 2080;
    v26 = "[AVHapticClient allocateResources:]";
    _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done allocating", buf, 0x1Cu);
  }

LABEL_15:
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x277D85DE8];
}

void __36__AVHapticClient_allocateResources___block_invoke_2(uint64_t a1, void *a2, int a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    if (kAVHCScope)
    {
      v9 = *kAVHCScope;
      if (!v9)
      {
LABEL_12:
        v14 = v8;
        goto LABEL_37;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    v12 = v9;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 localizedDescription];
      v25 = 136315906;
      v26 = "AVHapticClient.mm";
      v27 = 1024;
      v28 = 197;
      v29 = 2080;
      v30 = "[AVHapticClient allocateResources:]_block_invoke_2";
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to set up client: %@", &v25, 0x26u);
    }

    goto LABEL_12;
  }

  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315906;
    v26 = "AVHapticClient.mm";
    v27 = 1024;
    v28 = 201;
    v29 = 2080;
    v30 = "[AVHapticClient allocateResources:]_block_invoke";
    v31 = 1024;
    LODWORD(v32) = a3;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Server returned shared buffer of size %u", &v25, 0x22u);
  }

LABEL_17:
  if (!a3)
  {
    __36__AVHapticClient_allocateResources___block_invoke_2_cold_1();
  }

  if (kAVHCScope)
  {
    v16 = *kAVHCScope;
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315650;
    v26 = "AVHapticClient.mm";
    v27 = 1024;
    v28 = 203;
    v29 = 2080;
    v30 = "[AVHapticClient allocateResources:]_block_invoke";
    _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting up shared memory on client", &v25, 0x1Cu);
  }

LABEL_25:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    HapticCommandWriter = createHapticCommandWriter();
    WeakRetained[2] = HapticCommandWriter;
    if (!HapticCommandWriter)
    {
      if (kAVHCScope)
      {
        v20 = *kAVHCScope;
        if (!v20)
        {
LABEL_35:
          v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
          goto LABEL_36;
        }
      }

      else
      {
        v20 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315650;
        v26 = "AVHapticClient.mm";
        v27 = 1024;
        v28 = 208;
        v29 = 2080;
        v30 = "[AVHapticClient allocateResources:]_block_invoke";
        _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to access shared memory", &v25, 0x1Cu);
      }

      goto LABEL_35;
    }
  }

  v14 = 0;
LABEL_36:

LABEL_37:
  if (kAVHCScope)
  {
    v22 = *kAVHCScope;
    if (!v22)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v25 = 136315650;
    v26 = "AVHapticClient.mm";
    v27 = 1024;
    v28 = 213;
    v29 = 2080;
    v30 = "[AVHapticClient allocateResources:]_block_invoke";
    _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Notifying caller via completion callback", &v25, 0x1Cu);
  }

LABEL_44:
  (*(*(a1 + 32) + 16))();

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadHapticEvent:(id)event reply:(id)reply
{
  v36 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  replyCopy = reply;
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 222;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient loadHapticEvent:reply:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 2048;
    *&buf[36] = eventCopy;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x loading dictionary: %p", buf, 0x2Cu);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  *&buf[40] = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v12 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:&__block_literal_global_46];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __40__AVHapticClient_loadHapticEvent_reply___block_invoke_2;
  v22[3] = &unk_2781C9380;
  v22[4] = buf;
  v22[5] = &v23;
  [v12 loadHapticEvent:eventCopy reply:v22];
  v13 = *(*&buf[8] + 40);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_18;
  }

  if (!kAVHCScope)
  {
    v14 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v14 = *kAVHCScope;
  if (v14)
  {
LABEL_14:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*&buf[8] + 40);
      *v27 = 136315906;
      v28 = "AVHapticClient.mm";
      v29 = 1024;
      v30 = 234;
      v31 = 2080;
      v32 = "[AVHapticClient loadHapticEvent:reply:]";
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v27, 0x26u);
    }
  }

  v15 = *(*&buf[8] + 40);
LABEL_18:
  replyCopy[2](replyCopy, v24[3], v15);
  if (kAVHCScope)
  {
    v18 = *kAVHCScope;
    if (!v18)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *v27 = 136315650;
    v28 = "AVHapticClient.mm";
    v29 = 1024;
    v30 = 240;
    v31 = 2080;
    v32 = "[AVHapticClient loadHapticEvent:reply:]";
    _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done loading event", v27, 0x1Cu);
  }

LABEL_25:
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(buf, 8);

  v20 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

void __40__AVHapticClient_loadHapticEvent_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v6)
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = "AVHapticClient.mm";
      v12 = 1024;
      v13 = 229;
      v14 = 2080;
      v15 = "[AVHapticClient loadHapticEvent:reply:]_block_invoke_2";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v10, 0x26u);
    }
  }

LABEL_9:
  *(*(*(a1 + 40) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply
{
  v46 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  formatCopy = format;
  optionsCopy = options;
  replyCopy = reply;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v17 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:&__block_literal_global_49];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __69__AVHapticClient_createCustomAudioEvent_format_frames_options_reply___block_invoke_2;
  v27[3] = &unk_2781C9380;
  v27[4] = &v32;
  v27[5] = &v28;
  [v17 createCustomAudioEvent:eventCopy format:formatCopy frames:frames options:optionsCopy reply:v27];
  v18 = v33[5];
  if (!v18)
  {
    v20 = 0;
    goto LABEL_11;
  }

  if (!kAVHCScope)
  {
    v19 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v19 = *kAVHCScope;
  if (v19)
  {
LABEL_7:
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v33[5];
      *buf = 136315906;
      v39 = "AVHapticClient.mm";
      v40 = 1024;
      v41 = 257;
      v42 = 2080;
      v43 = "[AVHapticClient createCustomAudioEvent:format:frames:options:reply:]";
      v44 = 2112;
      v45 = v22;
      _os_log_impl(&dword_21569A000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", buf, 0x26u);
    }
  }

  v20 = v33[5];
LABEL_11:
  replyCopy[2](replyCopy, v29[3], v20);
  if (kAVHCScope)
  {
    v23 = *kAVHCScope;
    if (!v23)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v39 = "AVHapticClient.mm";
    v40 = 1024;
    v41 = 263;
    v42 = 2080;
    v43 = "[AVHapticClient createCustomAudioEvent:format:frames:options:reply:]";
    _os_log_impl(&dword_21569A000, v23, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done creating event", buf, 0x1Cu);
  }

LABEL_18:
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  v25 = *MEMORY[0x277D85DE8];
  return v18 == 0;
}

void __69__AVHapticClient_createCustomAudioEvent_format_frames_options_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v6)
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = "AVHapticClient.mm";
      v12 = 1024;
      v13 = 252;
      v14 = 2080;
      v15 = "[AVHapticClient createCustomAudioEvent:format:frames:options:reply:]_block_invoke_2";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v10, 0x26u);
    }
  }

LABEL_9:
  *(*(*(a1 + 40) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply
{
  v40 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v11 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:&__block_literal_global_51];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__AVHapticClient_copyCustomAudioEvent_options_reply___block_invoke_2;
  v21[3] = &unk_2781C9380;
  v21[4] = &v26;
  v21[5] = &v22;
  [v11 copyCustomAudioEvent:event options:optionsCopy reply:v21];
  v12 = v27[5];
  if (!v12)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if (!kAVHCScope)
  {
    v13 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v13 = *kAVHCScope;
  if (v13)
  {
LABEL_7:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v27[5];
      *buf = 136315906;
      v33 = "AVHapticClient.mm";
      v34 = 1024;
      v35 = 280;
      v36 = 2080;
      v37 = "[AVHapticClient copyCustomAudioEvent:options:reply:]";
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", buf, 0x26u);
    }
  }

  v14 = v27[5];
LABEL_11:
  replyCopy[2](replyCopy, v23[3], v14);
  if (kAVHCScope)
  {
    v17 = *kAVHCScope;
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v33 = "AVHapticClient.mm";
    v34 = 1024;
    v35 = 286;
    v36 = 2080;
    v37 = "[AVHapticClient copyCustomAudioEvent:options:reply:]";
    _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done copying event", buf, 0x1Cu);
  }

LABEL_18:
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v12 == 0;
}

void __53__AVHapticClient_copyCustomAudioEvent_options_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v6)
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = "AVHapticClient.mm";
      v12 = 1024;
      v13 = 275;
      v14 = 2080;
      v15 = "[AVHapticClient copyCustomAudioEvent:options:reply:]_block_invoke_2";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v10, 0x26u);
    }
  }

LABEL_9:
  *(*(*(a1 + 40) + 8) + 24) = a2;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__AVHapticClient_referenceCustomAudioEvent_reply___block_invoke;
  v19[3] = &unk_2781C93A8;
  v19[4] = &v20;
  v8 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__AVHapticClient_referenceCustomAudioEvent_reply___block_invoke_2;
  v18[3] = &unk_2781C93A8;
  v18[4] = &v20;
  [v8 referenceCustomAudioEvent:event reply:v18];
  v9 = v21[5];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (!kAVHCScope)
  {
    v10 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v10 = *kAVHCScope;
  if (v10)
  {
LABEL_7:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v21[5];
      *buf = 136315906;
      v27 = "AVHapticClient.mm";
      v28 = 1024;
      v29 = 302;
      v30 = 2080;
      v31 = "[AVHapticClient referenceCustomAudioEvent:reply:]";
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", buf, 0x26u);
    }
  }

  v11 = v21[5];
LABEL_11:
  replyCopy[2](replyCopy, v11);
  if (kAVHCScope)
  {
    v14 = *kAVHCScope;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v27 = "AVHapticClient.mm";
    v28 = 1024;
    v29 = 308;
    v30 = 2080;
    v31 = "[AVHapticClient referenceCustomAudioEvent:reply:]";
    _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done referencing event", buf, 0x1Cu);
  }

LABEL_18:
  _Block_object_dispose(&v20, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

void __50__AVHapticClient_referenceCustomAudioEvent_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v5 = *kAVHCScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = "AVHapticClient.mm";
      v10 = 1024;
      v11 = 298;
      v12 = 2080;
      v13 = "[AVHapticClient referenceCustomAudioEvent:reply:]_block_invoke_2";
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v8, 0x26u);
    }
  }

LABEL_9:

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  v34 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__AVHapticClient_releaseCustomAudioEvent_reply___block_invoke;
  v19[3] = &unk_2781C93A8;
  v19[4] = &v20;
  v8 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__AVHapticClient_releaseCustomAudioEvent_reply___block_invoke_2;
  v18[3] = &unk_2781C93A8;
  v18[4] = &v20;
  [v8 releaseCustomAudioEvent:event reply:v18];
  v9 = v21[5];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (!kAVHCScope)
  {
    v10 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v10 = *kAVHCScope;
  if (v10)
  {
LABEL_7:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v21[5];
      *buf = 136315906;
      v27 = "AVHapticClient.mm";
      v28 = 1024;
      v29 = 324;
      v30 = 2080;
      v31 = "[AVHapticClient releaseCustomAudioEvent:reply:]";
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", buf, 0x26u);
    }
  }

  v11 = v21[5];
LABEL_11:
  replyCopy[2](replyCopy, v11);
  if (kAVHCScope)
  {
    v14 = *kAVHCScope;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v27 = "AVHapticClient.mm";
    v28 = 1024;
    v29 = 330;
    v30 = 2080;
    v31 = "[AVHapticClient releaseCustomAudioEvent:reply:]";
    _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done releasing event", buf, 0x1Cu);
  }

LABEL_18:
  _Block_object_dispose(&v20, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

void __48__AVHapticClient_releaseCustomAudioEvent_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v5 = *kAVHCScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = "AVHapticClient.mm";
      v10 = 1024;
      v11 = 320;
      v12 = 2080;
      v13 = "[AVHapticClient releaseCustomAudioEvent:reply:]_block_invoke_2";
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v8, 0x26u);
    }
  }

LABEL_9:

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prewarm:(id)prewarm
{
  v26 = *MEMORY[0x277D85DE8];
  prewarmCopy = prewarm;
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v19 = "AVHapticClient.mm";
    v20 = 1024;
    v21 = 336;
    v22 = 2080;
    v23 = "[AVHapticClient prewarm:]";
    v24 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x starting prewarm", buf, 0x22u);
  }

LABEL_8:
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __26__AVHapticClient_prewarm___block_invoke;
  v16[3] = &unk_2781C9330;
  v9 = prewarmCopy;
  v17 = v9;
  v10 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:v16];
  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __26__AVHapticClient_prewarm___block_invoke_2;
  v13[3] = &unk_2781C9058;
  objc_copyWeak(&v15, buf);
  v11 = v9;
  v14 = v11;
  [v10 prewarm:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __26__AVHapticClient_prewarm___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 192) = v3 == 0;
  }

  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "AVHapticClient.mm";
    v11 = 1024;
    v12 = 346;
    v13 = 2080;
    v14 = "[AVHapticClient prewarm:]_block_invoke_2";
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Server called client-side prewarm completionCallback", &v9, 0x1Cu);
  }

LABEL_10:
  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __29__AVHapticClient_stopPrewarm__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 localizedDescription];
    v8 = 136315906;
    v9 = "AVHapticClient.mm";
    v10 = 1024;
    v11 = 355;
    v12 = 2080;
    v13 = "[AVHapticClient stopPrewarm]_block_invoke";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to stop prewarm: %@", &v8, 0x26u);
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)startRunning:(id)running
{
  v31 = *MEMORY[0x277D85DE8];
  runningCopy = running;
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "AVHapticClient.mm";
    v25 = 1024;
    v26 = 363;
    v27 = 2080;
    v28 = "[AVHapticClient startRunning:]";
    v29 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x starting", buf, 0x22u);
  }

LABEL_8:
  [(AVHapticClient *)self setState:1];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __31__AVHapticClient_startRunning___block_invoke;
  v19[3] = &unk_2781C9058;
  objc_copyWeak(&v21, &location);
  v9 = runningCopy;
  v20 = v9;
  v10 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __31__AVHapticClient_startRunning___block_invoke_2;
  v16[3] = &unk_2781C9058;
  objc_copyWeak(&v18, &location);
  v11 = v9;
  v17 = v11;
  [v10 startRunning:v16];
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v12 = *kAVHCScope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          clientID2 = [(AVHapticClient *)self clientID];
          *buf = 136315906;
          v24 = "AVHapticClient.mm";
          v25 = 1024;
          v26 = 380;
          v27 = 2080;
          v28 = "[AVHapticClient startRunning:]";
          v29 = 1024;
          clientID = clientID2;
          _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x done with startRunning:", buf, 0x22u);
        }
      }
    }
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __31__AVHapticClient_startRunning___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setState:0];
  }

  (*(*(a1 + 32) + 16))();
}

void __31__AVHapticClient_startRunning___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained setState:2 * (v4 == 0)];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stopRunning
{
  v18 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v4 = *kAVHCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "AVHapticClient.mm";
    v12 = 1024;
    v13 = 387;
    v14 = 2080;
    v15 = "[AVHapticClient stopRunning]";
    v16 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x stopping", &v10, 0x22u);
  }

LABEL_8:
  [(AVHapticClient *)self setState:0];
  v7 = *(self + 27);
  *(self + 27) = 0;

  v8 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:&__block_literal_global_55];
  [v8 stopRunning];

  v9 = *MEMORY[0x277D85DE8];
}

void __29__AVHapticClient_stopRunning__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 localizedDescription];
    v8 = 136315906;
    v9 = "AVHapticClient.mm";
    v10 = 1024;
    v11 = 391;
    v12 = 2080;
    v13 = "[AVHapticClient stopRunning]_block_invoke";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to stop running: %@", &v8, 0x26u);
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopRunning:(id)running
{
  v31 = *MEMORY[0x277D85DE8];
  runningCopy = running;
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "AVHapticClient.mm";
    v25 = 1024;
    v26 = 398;
    v27 = 2080;
    v28 = "[AVHapticClient stopRunning:]";
    v29 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x stopping", buf, 0x22u);
  }

LABEL_8:
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __30__AVHapticClient_stopRunning___block_invoke;
  v19[3] = &unk_2781C9058;
  objc_copyWeak(&v21, &location);
  v9 = runningCopy;
  v20 = v9;
  v10 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:v19];
  [(AVHapticClient *)self setState:3];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __30__AVHapticClient_stopRunning___block_invoke_2;
  v16[3] = &unk_2781C9058;
  objc_copyWeak(&v18, &location);
  v11 = v9;
  v17 = v11;
  [v10 stopRunning:v16];
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v12 = *kAVHCScope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          clientID2 = [(AVHapticClient *)self clientID];
          *buf = 136315906;
          v24 = "AVHapticClient.mm";
          v25 = 1024;
          v26 = 415;
          v27 = 2080;
          v28 = "[AVHapticClient stopRunning:]";
          v29 = 1024;
          clientID = clientID2;
          _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x done with stopRunning:", buf, 0x22u);
        }
      }
    }
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __30__AVHapticClient_stopRunning___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setState:0];
  }

  (*(*(a1 + 32) + 16))();
}

void __30__AVHapticClient_stopRunning___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setState:0];
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)finish:(id)finish
{
  v47 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  clientID = [(AVHapticClient *)self clientID];
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *v41 = "AVHapticClient.mm";
    *&v41[8] = 1024;
    *&v41[10] = 421;
    *&v41[14] = 2080;
    *&v41[16] = "[AVHapticClient finish:]";
    *&v41[24] = 1024;
    *&v41[26] = clientID;
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x finishing", buf, 0x22u);
  }

LABEL_8:
  if (![(AVHapticClient *)self running])
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4805 userInfo:0];
    if (kAVHCScope)
    {
      v18 = *kAVHCScope;
      if (!v18)
      {
LABEL_27:
        v22 = *(self + 17);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __25__AVHapticClient_finish___block_invoke_57;
        v30[3] = &unk_2781C93D0;
        v33 = finishCopy;
        v16 = v17;
        v31 = v16;
        selfCopy = self;
        dispatch_sync(v22, v30);

        v23 = &v33;
        goto LABEL_34;
      }
    }

    else
    {
      v18 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *v41 = "AVHapticClient.mm";
      *&v41[8] = 1024;
      *&v41[10] = 447;
      *&v41[14] = 2080;
      *&v41[16] = "[AVHapticClient finish:]";
      *&v41[24] = 2112;
      *&v41[26] = v17;
      *&v41[34] = 1024;
      LODWORD(v42) = clientID;
      _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Player was not running - bailing with error %@ for client 0x%x", buf, 0x2Cu);
    }

    goto LABEL_27;
  }

  v8 = *(self + 17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__AVHapticClient_finish___block_invoke;
  block[3] = &unk_2781C9030;
  v9 = finishCopy;
  block[4] = self;
  v39 = v9;
  dispatch_sync(v8, block);
  v10 = mach_absolute_time();
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v11 = *kAVHCScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316162;
          *v41 = "AVHapticClient.mm";
          *&v41[8] = 1024;
          *&v41[10] = 431;
          *&v41[14] = 2080;
          *&v41[16] = "[AVHapticClient finish:]";
          *&v41[24] = 2048;
          *&v41[26] = v10 * 0.0000000416666667;
          *&v41[34] = 2048;
          *&v42 = v10;
          _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing FinalEvent with time %f [host time was %llu]", buf, 0x30u);
        }
      }
    }
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v14 = *(selfCopy2 + 2);
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  *&v41[20] = 0u;
  *buf = 327792;
  *&v41[4] = v10 * 0.0000000416666667;
  *&v41[12] = -1;
  v15 = writeCommand();
  objc_sync_exit(selfCopy2);

  if ((v15 & 1) == 0)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
    if (kAVHCScope)
    {
      v20 = *kAVHCScope;
      if (!v20)
      {
LABEL_32:
        v25 = *(self + 17);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __25__AVHapticClient_finish___block_invoke_56;
        v34[3] = &unk_2781C93D0;
        v37 = v9;
        v16 = v19;
        v35 = v16;
        v36 = selfCopy2;
        dispatch_sync(v25, v34);

        goto LABEL_33;
      }
    }

    else
    {
      v20 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *v41 = "AVHapticClient.mm";
      *&v41[8] = 1024;
      *&v41[10] = 438;
      *&v41[14] = 2080;
      *&v41[16] = "[AVHapticClient finish:]";
      *&v41[24] = 2112;
      *&v41[26] = v19;
      *&v41[34] = 1024;
      LODWORD(v42) = clientID;
      _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Attempt to write FinalEvent failed - bailing by calling completionCallback with error %@ for client 0x%x", buf, 0x2Cu);
    }

    goto LABEL_32;
  }

  v16 = 0;
LABEL_33:
  v23 = &v39;
LABEL_34:

  if (kAVHCScope)
  {
    v26 = *kAVHCScope;
    if (!v26)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v26 = MEMORY[0x277D86220];
    v27 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *v41 = "AVHapticClient.mm";
    *&v41[8] = 1024;
    *&v41[10] = 453;
    *&v41[14] = 2080;
    *&v41[16] = "[AVHapticClient finish:]";
    *&v41[24] = 1024;
    *&v41[26] = clientID;
    _os_log_impl(&dword_21569A000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%x done with finish", buf, 0x22u);
  }

LABEL_41:
  v28 = *MEMORY[0x277D85DE8];
  return v16 == 0;
}

uint64_t __25__AVHapticClient_finish___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v2 = *kAVHCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x21606F540](*(a1 + 40));
    v8 = 136315906;
    v9 = "AVHapticClient.mm";
    v10 = 1024;
    v11 = 426;
    v12 = 2080;
    v13 = "[AVHapticClient finish:]_block_invoke";
    v14 = 2048;
    v15 = v5;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: completionCallback set to %p", &v8, 0x26u);
  }

LABEL_8:
  result = [*(a1 + 32) setCompletionCallback:*(a1 + 40)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __25__AVHapticClient_finish___block_invoke_56(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 setCompletionCallback:0];
}

uint64_t __25__AVHapticClient_finish___block_invoke_57(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 setCompletionCallback:0];
}

- (BOOL)setChannelEventBehavior:(unint64_t)behavior channel:(unint64_t)channel
{
  v32 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[14] = 465;
    *&buf[18] = 2080;
    *&buf[12] = 1024;
    *&buf[20] = "[AVHapticClient setChannelEventBehavior:channel:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 1024;
    *&buf[36] = behavior;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x, behavior %u", buf, 0x28u);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v31 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __50__AVHapticClient_setChannelEventBehavior_channel___block_invoke;
  v21[3] = &unk_2781C93A8;
  v21[4] = buf;
  v11 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __50__AVHapticClient_setChannelEventBehavior_channel___block_invoke_2;
  v20[3] = &unk_2781C93A8;
  v20[4] = buf;
  [v11 setChannelEventBehavior:channel behavior:behavior reply:v20];
  v12 = *(*&buf[8] + 40);
  if (!v12)
  {
    goto LABEL_16;
  }

  if (kAVHCScope)
  {
    v13 = *kAVHCScope;
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*&buf[8] + 40);
    *v22 = 136315906;
    v23 = "AVHapticClient.mm";
    v24 = 1024;
    v25 = 476;
    v26 = 2080;
    v27 = "[AVHapticClient setChannelEventBehavior:channel:]";
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v22, 0x26u);
  }

LABEL_16:
  if (kAVHCScope)
  {
    v16 = *kAVHCScope;
    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v22 = 136315650;
    v23 = "AVHapticClient.mm";
    v24 = 1024;
    v25 = 481;
    v26 = 2080;
    v27 = "[AVHapticClient setChannelEventBehavior:channel:]";
    _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done setting behavior", v22, 0x1Cu);
  }

LABEL_23:
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x277D85DE8];
  return v12 == 0;
}

void __50__AVHapticClient_setChannelEventBehavior_channel___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v5 = *kAVHCScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = "AVHapticClient.mm";
      v10 = 1024;
      v11 = 472;
      v12 = 2080;
      v13 = "[AVHapticClient setChannelEventBehavior:channel:]_block_invoke_2";
      v14 = 2048;
      v15 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %p", &v8, 0x26u);
    }
  }

LABEL_9:

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)resetChannel:(unint64_t)channel atTime:(double)time
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136316418;
          *&v14[0] = "AVHapticClient.mm";
          WORD4(v14[0]) = 1024;
          *(v14 + 10) = 490;
          HIWORD(v14[0]) = 2080;
          *&v14[1] = "[AVHapticClient resetChannel:atTime:]";
          WORD4(v14[1]) = 1024;
          *(&v14[1] + 10) = [(AVHapticClient *)selfCopy clientID];
          HIWORD(v14[1]) = 2048;
          *&v14[2] = time;
          WORD4(v14[2]) = 1024;
          *(&v14[2] + 10) = channel;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x writing reset event: time: %.3f channelID: %u", &v13, 0x32u);
        }
      }
    }
  }

  v9 = *(selfCopy + 2);
  memset(&v14[1] + 4, 0, 84);
  v13 = 786544;
  *(v14 + 4) = time;
  *(v14 + 12) = channel;
  v10 = writeCommand();
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)doSendEvents:(id)events withImmediateParameters:(id)parameters atTime:(double)time channel:(unint64_t)channel sorted:(BOOL)sorted outToken:(unint64_t *)token error:(id *)error
{
  v105 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  parametersCopy = parameters;
  v94 = eventsCopy;
  v90 = [eventsCopy count];
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v13 = *kAVHCScope;
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          *v101 = "AVHapticClient.mm";
          *&v101[8] = 1024;
          *&v101[10] = 562;
          *&v101[14] = 2080;
          *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
          *&v101[24] = 1024;
          *&v101[26] = [(AVHapticClient *)self clientID];
          *&v101[30] = 1024;
          *&v101[32] = v90;
          *&v101[36] = 2048;
          *&v101[38] = time;
          _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x writing %u events from passed-in event array at time: %.3f", buf, 0x32u);
        }
      }
    }
  }

  v99 = 0;
  if (v90)
  {
    v15 = 0;
    v16 = 336;
    do
    {
      v17 = [eventsCopy objectAtIndexedSubscript:v15];
      eventCategory = [v17 eventCategory];
      if (eventCategory)
      {
        if (eventCategory == 1)
        {
          v22 = 168;
        }

        else
        {
          if (eventCategory != 2)
          {
            if (kAVHCScope)
            {
              v71 = *kAVHCScope;
              if (!v71)
              {
LABEL_110:
                if (error)
                {
                  *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4821 userInfo:0];
                }

                goto LABEL_154;
              }
            }

            else
            {
              v71 = MEMORY[0x277D86220];
              v77 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *v101 = "AVHapticClient.mm";
              *&v101[8] = 1024;
              *&v101[10] = 588;
              *&v101[14] = 2080;
              *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
              _os_log_impl(&dword_21569A000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Event is none of haptic/audio event, parameter, or parameter curve. returning", buf, 0x1Cu);
            }

            goto LABEL_110;
          }

          parameterCurve = [v17 parameterCurve];
          controlPoints = [parameterCurve controlPoints];
          v21 = [controlPoints count];

          v22 = [(AVHapticClient *)self calculateHapticCommandParamCurveMemorySize:v21];
        }
      }

      else
      {
        [v17 duration];
        if (v23 == 0.0)
        {
          v22 = 168;
        }

        else
        {
          v22 = 336;
        }
      }

      v16 += v22;
      ++v15;
    }

    while (v90 != v15);
  }

  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v24 = *(self + 2);
  if ((reserveForWrite() & 1) == 0)
  {
    if ([eventsCopy count] < 3)
    {
      if (!kAVHCScope || (*(kAVHCScope + 8) & 1) == 0)
      {
        goto LABEL_154;
      }

      v69 = *kAVHCScope;
      v68 = v69;
      if (v69)
      {
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *v101 = "AVHapticClient.mm";
          *&v101[8] = 1024;
          *&v101[10] = 618;
          *&v101[14] = 2080;
          *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
          _os_log_impl(&dword_21569A000, v68, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Bailing out on recursion because event array cannot be split further", buf, 0x1Cu);
        }

        goto LABEL_154;
      }

      goto LABEL_155;
    }

    if (!sorted)
    {
      eventsCopy = [eventsCopy sortedArrayUsingComparator:&__block_literal_global_353];
    }

    v94 = eventsCopy;
    v72 = [eventsCopy subarrayWithRange:{0, HapticClientUtil::getIndexOfSplitPoint<AVHapticEvent>(eventsCopy)}];
    if (kAVHCScope && (*(kAVHCScope + 8) & 1) != 0)
    {
      v73 = *kAVHCScope;
      v68 = v73;
      if (!v73)
      {
LABEL_96:

        goto LABEL_155;
      }

      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *v101 = "AVHapticClient.mm";
        *&v101[8] = 1024;
        *&v101[10] = 609;
        *&v101[14] = 2080;
        *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
        *&v101[24] = 1024;
        *&v101[26] = v99;
        _os_log_impl(&dword_21569A000, v68, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Bailing out on recursion (availableSize = %u)", buf, 0x22u);
      }
    }

    LOBYTE(v68) = 0;
    goto LABEL_96;
  }

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v25 = *kAVHCScope;
      if (v25)
      {
        v26 = v25;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *v101 = "AVHapticClient.mm";
          *&v101[8] = 1024;
          *&v101[10] = 622;
          *&v101[14] = 2080;
          *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
          *&v101[24] = 2048;
          *&v101[26] = time;
          _os_log_impl(&dword_21569A000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: ====>> StartEventList at time: %f", buf, 0x26u);
        }
      }
    }
  }

  v27 = *(self + 2);
  memset(&v101[20], 0, 84);
  *buf = 393328;
  *&v101[4] = time;
  *&v101[12] = channel;
  if (!writeCommandToReserved())
  {
    if (kAVHCScope)
    {
      v70 = *kAVHCScope;
      if (!v70)
      {
LABEL_101:
        if (!error)
        {
          goto LABEL_154;
        }

        v75 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
LABEL_119:
        LOBYTE(v68) = 0;
        *error = v75;
        goto LABEL_155;
      }
    }

    else
    {
      v70 = MEMORY[0x277D86220];
      v74 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v101 = "AVHapticClient.mm";
      *&v101[8] = 1024;
      *&v101[10] = 623;
      *&v101[14] = 2080;
      *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
      _os_log_impl(&dword_21569A000, v70, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
    }

    goto LABEL_101;
  }

  if (!v90)
  {
LABEL_65:
    if (kAVHCScope)
    {
      if (*(kAVHCScope + 8))
      {
        v64 = *kAVHCScope;
        if (v64)
        {
          v65 = v64;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *v101 = "AVHapticClient.mm";
            *&v101[8] = 1024;
            *&v101[10] = 655;
            *&v101[14] = 2080;
            *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
            *&v101[24] = 2048;
            *&v101[26] = time;
            _os_log_impl(&dword_21569A000, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <<==== EndEventList at time: %f", buf, 0x26u);
          }
        }
      }
    }

    v66 = *(self + 2);
    memset(&v101[20], 0, 84);
    *buf = 458864;
    *&v101[4] = time;
    *&v101[12] = channel;
    if (writeCommandToReserved())
    {
      v67 = *(self + 2);
      updateReservedWriteIndex();
      LOBYTE(v68) = 1;
      goto LABEL_155;
    }

    if (kAVHCScope)
    {
      v76 = *kAVHCScope;
      if (!v76)
      {
LABEL_117:
        if (!error)
        {
          goto LABEL_154;
        }

        v75 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
        goto LABEL_119;
      }
    }

    else
    {
      v76 = MEMORY[0x277D86220];
      v78 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v101 = "AVHapticClient.mm";
      *&v101[8] = 1024;
      *&v101[10] = 656;
      *&v101[14] = 2080;
      *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
      _os_log_impl(&dword_21569A000, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
    }

    goto LABEL_117;
  }

  v28 = 0;
  while (1)
  {
    v29 = [eventsCopy objectAtIndexedSubscript:v28];
    eventCategory2 = [v29 eventCategory];
    if (!eventCategory2)
    {
      break;
    }

    if (eventCategory2 != 1)
    {
      if (eventCategory2 == 2)
      {
        if (kAVHCScope)
        {
          if (*(kAVHCScope + 8))
          {
            v31 = *kAVHCScope;
            if (v31)
            {
              v32 = v31;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                [v29 time];
                *buf = 136315906;
                *v101 = "AVHapticClient.mm";
                *&v101[8] = 1024;
                *&v101[10] = 645;
                *&v101[14] = 2080;
                *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
                *&v101[24] = 2048;
                *&v101[26] = v33;
                _os_log_impl(&dword_21569A000, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Param curve: relative time %f", buf, 0x26u);
              }
            }
          }
        }

        paramType = [v29 paramType];
        [v29 time];
        v36 = v35;
        parameterCurve2 = [v29 parameterCurve];
        controlPoints2 = [parameterCurve2 controlPoints];
        v39 = [controlPoints2 sortedArrayUsingComparator:&__block_literal_global_356];
        [(AVHapticClient *)self doScheduleParamCurveWithMemoryReserve:paramType atTime:channel channel:&v95 memoryReserve:v39 paramCurve:error error:v36];

        goto LABEL_64;
      }

      if (kAVHCScope)
      {
        v79 = *kAVHCScope;
        if (!v79)
        {
LABEL_136:
          if (!error)
          {
            goto LABEL_153;
          }

          v82 = -4821;
          goto LABEL_152;
        }
      }

      else
      {
        v79 = MEMORY[0x277D86220];
        v81 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v101 = "AVHapticClient.mm";
        *&v101[8] = 1024;
        *&v101[10] = 650;
        *&v101[14] = 2080;
        *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
        _os_log_impl(&dword_21569A000, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Event is none of haptic/audio event, parameter, or parameter curve. returning", buf, 0x1Cu);
      }

      goto LABEL_136;
    }

    if (kAVHCScope)
    {
      if (*(kAVHCScope + 8))
      {
        v40 = *kAVHCScope;
        if (v40)
        {
          v41 = v40;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            [v29 time];
            *buf = 136315906;
            *v101 = "AVHapticClient.mm";
            *&v101[8] = 1024;
            *&v101[10] = 640;
            *&v101[14] = 2080;
            *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
            *&v101[24] = 2048;
            *&v101[26] = v42;
            _os_log_impl(&dword_21569A000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Param event: relative time %f", buf, 0x26u);
          }
        }
      }
    }

    v43 = *(self + 2);
    [v29 time];
    v45 = v44;
    paramType2 = [v29 paramType];
    [v29 value];
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    memset(&v101[32], 0, 80);
    *buf = 196644;
    *&v101[4] = v45;
    *&v101[12] = channel;
    *&v101[20] = paramType2;
    *&v101[28] = v47;
    if ((writeCommandToReserved() & 1) == 0)
    {
      if (kAVHCScope)
      {
        v80 = *kAVHCScope;
        if (!v80)
        {
          goto LABEL_150;
        }
      }

      else
      {
        v80 = MEMORY[0x277D86220];
        v84 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v101 = "AVHapticClient.mm";
        *&v101[8] = 1024;
        *&v101[10] = 641;
        *&v101[14] = 2080;
        *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
        _os_log_impl(&dword_21569A000, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
      }

      goto LABEL_149;
    }

LABEL_64:

    if (v90 == ++v28)
    {
      goto LABEL_65;
    }
  }

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v48 = *kAVHCScope;
      if (v48)
      {
        v49 = v48;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          [v29 time];
          *buf = 136315906;
          *v101 = "AVHapticClient.mm";
          *&v101[8] = 1024;
          *&v101[10] = 628;
          *&v101[14] = 2080;
          *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
          *&v101[24] = 2048;
          *&v101[26] = v50;
          _os_log_impl(&dword_21569A000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Start event: relative time %f", buf, 0x26u);
        }
      }
    }
  }

  v51 = *(self + 2);
  startEventFromEvent(v29, parametersCopy, channel, *(self + 3), buf);
  if (writeCommandToReserved())
  {
    [v29 duration];
    if (v52 != 0.0)
    {
      if (kAVHCScope)
      {
        if (*(kAVHCScope + 8))
        {
          v53 = *kAVHCScope;
          if (v53)
          {
            v54 = v53;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              [v29 time];
              v56 = v55;
              [v29 duration];
              *buf = 136315906;
              *v101 = "AVHapticClient.mm";
              *&v101[8] = 1024;
              *&v101[10] = 631;
              *&v101[14] = 2080;
              *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
              *&v101[24] = 2048;
              *&v101[26] = v56 + v57;
              _os_log_impl(&dword_21569A000, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Stop event added: relative time %f", buf, 0x26u);
            }
          }
        }
      }

      v58 = *(self + 2);
      [v29 time];
      v60 = v59;
      [v29 duration];
      v61 = *(self + 3);
      memset(&v101[36], 0, 68);
      *buf = 131184;
      *&v101[4] = v60 + v62;
      *&v101[12] = channel;
      *&v101[20] = 0;
      *&v101[28] = v61;
      if ((writeCommandToReserved() & 1) == 0)
      {
        if (kAVHCScope)
        {
          v80 = *kAVHCScope;
          if (!v80)
          {
            goto LABEL_150;
          }
        }

        else
        {
          v80 = MEMORY[0x277D86220];
          v85 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *v101 = "AVHapticClient.mm";
          *&v101[8] = 1024;
          *&v101[10] = 632;
          *&v101[14] = 2080;
          *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
          _os_log_impl(&dword_21569A000, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
        }

        goto LABEL_149;
      }
    }

    v63 = *(self + 3);
    if (token)
    {
      *token = v63;
    }

    *(self + 3) = v63 + 1;
    goto LABEL_64;
  }

  if (kAVHCScope)
  {
    v80 = *kAVHCScope;
    if (!v80)
    {
      goto LABEL_150;
    }
  }

  else
  {
    v80 = MEMORY[0x277D86220];
    v83 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *v101 = "AVHapticClient.mm";
    *&v101[8] = 1024;
    *&v101[10] = 629;
    *&v101[14] = 2080;
    *&v101[16] = "[AVHapticClient doSendEvents:withImmediateParameters:atTime:channel:sorted:outToken:error:]";
    _os_log_impl(&dword_21569A000, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
  }

LABEL_149:

LABEL_150:
  if (!error)
  {
    goto LABEL_153;
  }

  v82 = -4899;
LABEL_152:
  *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:v82 userInfo:0];
LABEL_153:

LABEL_154:
  LOBYTE(v68) = 0;
LABEL_155:

  v86 = *MEMORY[0x277D85DE8];
  return v68;
}

- (BOOL)doScheduleParamCurve:(unint64_t)curve atTime:(double)time channel:(unint64_t)channel paramCurve:(id)paramCurve error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  paramCurveCopy = paramCurve;
  v13 = [paramCurveCopy count];
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v14 = *kAVHCScope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          *&buf[4] = "AVHapticClient.mm";
          v25 = 1024;
          *v26 = 669;
          *&v26[4] = 2080;
          *&v26[6] = "[AVHapticClient doScheduleParamCurve:atTime:channel:paramCurve:error:]";
          *&v26[14] = 1024;
          *&v26[16] = [(AVHapticClient *)self clientID];
          v27 = 1024;
          v28 = v13;
          v29 = 2048;
          timeCopy = time;
          _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x writing %u param curve control points from passed-in param curve array at time: %.3f", buf, 0x32u);
        }
      }
    }
  }

  [(AVHapticClient *)self calculateHapticCommandParamCurveMemorySize:v13];
  memset(buf, 0, sizeof(buf));
  *&v26[2] = 0;
  *&v26[10] = 0;
  v16 = *(self + 2);
  if (reserveForWrite())
  {
    v17 = [(AVHapticClient *)self doScheduleParamCurveWithMemoryReserve:curve atTime:channel channel:buf memoryReserve:paramCurveCopy paramCurve:error error:time];
    v18 = paramCurveCopy;
  }

  else
  {
    v18 = [paramCurveCopy sortedArrayUsingComparator:&__block_literal_global_356];

    IndexOfSplit = HapticClientUtil::getIndexOfSplitPoint<AVHapticEvent>(v18);
    v20 = [v18 subarrayWithRange:{0, IndexOfSplit}];
    if ([(AVHapticClient *)self doScheduleParamCurve:curve atTime:channel channel:v20 paramCurve:error error:time])
    {
      v21 = [v18 subarrayWithRange:{IndexOfSplit, v13 - IndexOfSplit}];

      v17 = [(AVHapticClient *)self doScheduleParamCurve:curve atTime:channel channel:v21 paramCurve:error error:time];
      v20 = v21;
    }

    else
    {
      v17 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)doScheduleParamCurveWithMemoryReserve:(unint64_t)reserve atTime:(double)time channel:(unint64_t)channel memoryReserve:(HapticSharedMemoryAddressReserve *)memoryReserve paramCurve:(id)curve error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  curveCopy = curve;
  v11 = [curveCopy objectAtIndexedSubscript:0];
  [v11 time];
  v13 = v12;

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v14 = *kAVHCScope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          *v68 = "AVHapticClient.mm";
          *&v68[8] = 1024;
          *&v68[10] = 716;
          *&v68[14] = 2080;
          *&v68[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
          *&v68[24] = 1024;
          *&v68[26] = reserve;
          *&v68[30] = 2048;
          *&v68[32] = time;
          *&v68[40] = 2048;
          *&v68[42] = v13;
          *&v68[50] = 2048;
          *&v68[52] = v13 + time;
          _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: => StartParamCurveList (paramID %u) at (relative-to-event-list) original time %.3f + firstPointTimeOffset %.3f = adjusted time %.3f", buf, 0x40u);
        }
      }
    }
  }

  v16 = [curveCopy count];
  v57 = v16;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v17 = *kAVHCScope;
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *v68 = "AVHapticClient.mm";
          *&v68[8] = 1024;
          *&v68[10] = 719;
          *&v68[14] = 2080;
          *&v68[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
          *&v68[24] = 1024;
          *&v68[26] = v16;
          _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: %u curve points", buf, 0x22u);
        }
      }
    }
  }

  v19 = *(self + 2);
  *buf = 589936;
  *&v68[4] = v13 + time;
  *&v68[12] = channel;
  *&v68[20] = reserve;
  memset(&v68[28], 0, 76);
  if (!writeCommandToReserved())
  {
    if (kAVHCScope)
    {
      v44 = *kAVHCScope;
      if (!v44)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v44 = MEMORY[0x277D86220];
      v45 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v68 = "AVHapticClient.mm";
      *&v68[8] = 1024;
      *&v68[10] = 722;
      *&v68[14] = 2080;
      *&v68[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
      _os_log_impl(&dword_21569A000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
    }

LABEL_53:
    if (error)
    {
      v46 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
LABEL_67:
      v43 = 0;
      *error = v46;
      goto LABEL_75;
    }

LABEL_74:
    v43 = 0;
    goto LABEL_75;
  }

  if (v16)
  {
    v21 = 0;
    v22 = 0.0;
    *&v20 = 136316162;
    v53 = v20;
    while (1)
    {
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      if (v21 + 16 <= v16)
      {
        v23 = 16;
      }

      else
      {
        v23 = v16 - v21;
      }

      v58 = 0uLL;
      v59 = 0uLL;
      if (v23)
      {
        v24 = 0;
        v25 = v21;
        v26 = &v58 + 2;
        do
        {
          v27 = [curveCopy objectAtIndexedSubscript:{v25, v53}];
          [v27 time];
          *&v28 = v28 - v22 - v13;
          *(v26 - 1) = *&v28;
          [v27 value];
          clientParamToSynthParam();
          if (kAVHCScope)
          {
            if (*(kAVHCScope + 8))
            {
              v29 = *kAVHCScope;
              if (v29)
              {
                v30 = v29;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  v31 = *(v26 - 1);
                  v32 = *v26;
                  *buf = 136316674;
                  *v68 = "AVHapticClient.mm";
                  *&v68[8] = 1024;
                  *&v68[10] = 747;
                  *&v68[14] = 2080;
                  *&v68[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
                  *&v68[24] = 1024;
                  *&v68[26] = v25;
                  *&v68[30] = 1024;
                  *&v68[32] = 0;
                  *&v68[36] = 2048;
                  *&v68[38] = v31;
                  *&v68[46] = 2048;
                  *&v68[48] = v32;
                  _os_log_impl(&dword_21569A000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Point #%u for synth param[%u]: adjusted rel time: %.3f, converted value: %f", buf, 0x3Cu);
                }
              }
            }
          }

          ++v24;
          v26 += 2;
          ++v25;
        }

        while (v24 < v23);
      }

      LODWORD(v58) = v23;
      v33 = v22;
      v16 = v57;
      if (v21 + 16 <= v57)
      {
        v34 = [curveCopy objectAtIndexedSubscript:v21 + 15];
        [v34 time];
        v36 = v35;

        v33 = v36 - v13;
        v16 = v57;
      }

      if (kAVHCScope)
      {
        if (*(kAVHCScope + 8))
        {
          v37 = *kAVHCScope;
          if (v37)
          {
            v38 = v37;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = v53;
              *v68 = "AVHapticClient.mm";
              *&v68[8] = 1024;
              *&v68[10] = 757;
              *&v68[14] = 2080;
              *&v68[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
              *&v68[24] = 1024;
              *&v68[26] = reserve;
              *&v68[30] = 2048;
              *&v68[32] = v22;
              _os_log_impl(&dword_21569A000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: == AddParamCurve (paramID %u) rel time %.3f", buf, 0x2Cu);
            }

            v16 = v57;
          }
        }
      }

      v39 = *(self + 2);
      v70 = v64;
      v71 = v65;
      v72 = v66;
      *&v68[60] = v60;
      *&v68[76] = v61;
      *&v68[92] = v62;
      v69 = v63;
      *&v68[28] = v58;
      *&v68[44] = v59;
      *buf = 655524;
      *&v68[4] = v22;
      *&v68[12] = channel;
      *&v68[20] = reserve;
      if ((writeCommandToReserved() & 1) == 0)
      {
        break;
      }

      v21 += 15;
      v22 = v33;
      if (v21 >= v16)
      {
        goto LABEL_38;
      }
    }

    if (kAVHCScope)
    {
      v48 = *kAVHCScope;
      if (!v48)
      {
LABEL_72:
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
        }

        goto LABEL_74;
      }
    }

    else
    {
      v48 = MEMORY[0x277D86220];
      v50 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v68 = "AVHapticClient.mm";
      *&v68[8] = 1024;
      *&v68[10] = 758;
      *&v68[14] = 2080;
      *&v68[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
      _os_log_impl(&dword_21569A000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
    }

    goto LABEL_72;
  }

LABEL_38:
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v40 = *kAVHCScope;
      if (v40)
      {
        v41 = v40;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          *v68 = "AVHapticClient.mm";
          *&v68[8] = 1024;
          *&v68[10] = 763;
          *&v68[14] = 2080;
          *&v68[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
          *&v68[24] = 1024;
          *&v68[26] = reserve;
          *&v68[30] = 2048;
          *&v68[32] = time;
          *&v68[40] = 2048;
          *&v68[42] = v13;
          *&v68[50] = 2048;
          *&v68[52] = v13 + time;
          _os_log_impl(&dword_21569A000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <= EndParamCurveList (paramID %u) at  original time %f + firstPointTimeOffset %.3f = adjusted time %.3f", buf, 0x40u);
        }
      }
    }
  }

  v42 = *(self + 2);
  memset(&v68[28], 0, 76);
  *buf = 721008;
  *&v68[4] = v13 + time;
  *&v68[12] = channel;
  *&v68[20] = reserve;
  if ((writeCommandToReserved() & 1) == 0)
  {
    if (kAVHCScope)
    {
      v47 = *kAVHCScope;
      if (!v47)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v47 = MEMORY[0x277D86220];
      v49 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v68 = "AVHapticClient.mm";
      *&v68[8] = 1024;
      *&v68[10] = 764;
      *&v68[14] = 2080;
      *&v68[16] = "[AVHapticClient doScheduleParamCurveWithMemoryReserve:atTime:channel:memoryReserve:paramCurve:error:]";
      _os_log_impl(&dword_21569A000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Memory write failed", buf, 0x1Cu);
    }

LABEL_65:
    if (error)
    {
      v46 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4899 userInfo:0];
      goto LABEL_67;
    }

    goto LABEL_74;
  }

  v43 = 1;
LABEL_75:

  v51 = *MEMORY[0x277D85DE8];
  return v43;
}

- (BOOL)sendEvents:(id)events withImmediateParameters:(id)parameters atTime:(double)time channel:(unint64_t)channel outToken:(unint64_t *)token error:(id *)error
{
  selfCopy = self;
  parametersCopy = parameters;
  eventsCopy = events;
  objc_sync_enter(selfCopy);
  LOBYTE(error) = [(AVHapticClient *)selfCopy doSendEvents:eventsCopy withImmediateParameters:parametersCopy atTime:channel channel:0 sorted:token outToken:error error:time];

  objc_sync_exit(selfCopy);
  return error;
}

- (BOOL)clearEventsFromTime:(double)time channel:(unint64_t)channel
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136316418;
          *&v14[0] = "AVHapticClient.mm";
          WORD4(v14[0]) = 1024;
          *(v14 + 10) = 778;
          HIWORD(v14[0]) = 2080;
          *&v14[1] = "[AVHapticClient clearEventsFromTime:channel:]";
          WORD4(v14[1]) = 1024;
          *(&v14[1] + 10) = [(AVHapticClient *)selfCopy clientID];
          HIWORD(v14[1]) = 2048;
          *&v14[2] = time;
          WORD4(v14[2]) = 1024;
          *(&v14[2] + 10) = 4;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x writing command: time: %.3f type: %hu", &v13, 0x32u);
        }
      }
    }
  }

  v9 = *(selfCopy + 2);
  memset(&v14[1] + 4, 0, 84);
  v13 = 262256;
  *(v14 + 4) = time;
  *(v14 + 12) = channel;
  v10 = writeCommand();
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)setParameter:(unint64_t)parameter atTime:(double)time value:(float)value channel:(unint64_t)channel
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v11 = *kAVHCScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v17 = 136316930;
          *v18 = "AVHapticClient.mm";
          *&v18[8] = 1024;
          *&v18[10] = 786;
          *&v18[14] = 2080;
          *&v18[16] = "[AVHapticClient setParameter:atTime:value:channel:]";
          *&v18[24] = 1024;
          *&v18[26] = [(AVHapticClient *)selfCopy clientID];
          *&v18[30] = 2048;
          *&v19 = time;
          WORD4(v19) = 1024;
          *(&v19 + 10) = 3;
          HIWORD(v19) = 1024;
          LODWORD(v20) = parameter;
          WORD2(v20) = 2048;
          *(&v20 + 6) = value;
          _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client 0x%x writing command: time: %.3f type: %hu ID: %u, value: %f", &v17, 0x42u);
        }
      }
    }
  }

  v13 = *(selfCopy + 2);
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v17 = 196644;
  *&v18[4] = time;
  *&v18[12] = channel;
  *&v18[20] = parameter;
  *&v18[28] = value;
  v14 = writeCommand();
  objc_sync_exit(selfCopy);

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)scheduleParameterCurve:(unint64_t)curve curve:(id)a4 atTime:(double)time channel:(unint64_t)channel error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = a4;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(AVHapticClient *)selfCopy doScheduleParamCurve:curve atTime:channel channel:v12 paramCurve:error error:time])
  {
    if (kAVHCScope)
    {
      v16 = *kAVHCScope;
      if (!v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    v18 = v16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AVHapticClient scheduleParameterCurve:v19 curve:v18 atTime:? channel:? error:?];
    }

LABEL_9:
    [AVHapticClient scheduleParameterCurve:curve:atTime:channel:error:];
  }

  objc_sync_exit(selfCopy);

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)loadAndPrepareHapticSequenceFromData:(id)data reply:(id)reply
{
  v48 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  replyCopy = reply;
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 808;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient loadAndPrepareHapticSequenceFromData:reply:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 2048;
    *&buf[36] = dataCopy;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x loading sequence: %p", buf, 0x2Cu);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  *&buf[40] = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __61__AVHapticClient_loadAndPrepareHapticSequenceFromData_reply___block_invoke;
  v26[3] = &unk_2781C93A8;
  v26[4] = buf;
  v12 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v26];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__AVHapticClient_loadAndPrepareHapticSequenceFromData_reply___block_invoke_2;
  v25[3] = &unk_2781C93F8;
  v25[4] = &v35;
  v25[5] = &v31;
  v25[6] = &v27;
  v25[7] = buf;
  [v12 loadHapticSequenceFromData:dataCopy reply:v25];
  v13 = (*&buf[8] + 40);
  if (!*(*&buf[8] + 40))
  {
    v15 = v36[3];
    obj = 0;
    [(AVHapticClient *)self prepareHapticSequence:v15 error:&obj];
    objc_storeStrong(v13, obj);
    v16 = *(*&buf[8] + 40);
    v17 = v16 == 0;
    goto LABEL_18;
  }

  if (!kAVHCScope)
  {
    v14 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v14 = *kAVHCScope;
  if (v14)
  {
LABEL_14:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*&buf[8] + 40);
      *v39 = 136315906;
      v40 = "AVHapticClient.mm";
      v41 = 1024;
      v42 = 826;
      v43 = 2080;
      v44 = "[AVHapticClient loadAndPrepareHapticSequenceFromData:reply:]";
      v45 = 2048;
      v46 = v19;
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %p", v39, 0x26u);
    }
  }

  v17 = 0;
  v16 = *(*&buf[8] + 40);
LABEL_18:
  replyCopy[2](replyCopy, v36[3], v28[3], v16, v32[3]);
  if (kAVHCScope)
  {
    v20 = *kAVHCScope;
    if (!v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v39 = 136315650;
    v40 = "AVHapticClient.mm";
    v41 = 1024;
    v42 = 834;
    v43 = 2080;
    v44 = "[AVHapticClient loadAndPrepareHapticSequenceFromData:reply:]";
    _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done loading sequence", v39, 0x1Cu);
  }

LABEL_25:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(buf, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

void __61__AVHapticClient_loadAndPrepareHapticSequenceFromData_reply___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a4;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v11 = *kAVHCScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v16 = 136315650;
          v17 = "AVHapticClient.mm";
          v18 = 1024;
          v19 = 817;
          v20 = 2080;
          v21 = "[AVHapticClient loadAndPrepareHapticSequenceFromData:reply:]_block_invoke_2";
          _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loadAndPrepareHapticSequenceFromData:reply: top of [serverDelegate loadHapticSequenceFromData] reply block", &v16, 0x1Cu);
        }
      }
    }
  }

  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a5;
  *(*(a1[6] + 8) + 24) = a3;
  objc_storeStrong((*(a1[7] + 8) + 40), a4);
  if (v10)
  {
    if (kAVHCScope)
    {
      v13 = *kAVHCScope;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315906;
      v17 = "AVHapticClient.mm";
      v18 = 1024;
      v19 = 822;
      v20 = 2080;
      v21 = "[AVHapticClient loadAndPrepareHapticSequenceFromData:reply:]_block_invoke";
      v22 = 2048;
      v23 = v10;
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %p", &v16, 0x26u);
    }
  }

LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadAndPrepareHapticSequenceFromEvents:(id)events reply:(id)reply
{
  v49 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  replyCopy = reply;
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 841;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient loadAndPrepareHapticSequenceFromEvents:reply:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x loading sequence from event array", buf, 0x22u);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v48 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__AVHapticClient_loadAndPrepareHapticSequenceFromEvents_reply___block_invoke;
  v26[3] = &unk_2781C93A8;
  v26[4] = buf;
  v12 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v26];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __63__AVHapticClient_loadAndPrepareHapticSequenceFromEvents_reply___block_invoke_2;
  v25[3] = &unk_2781C93F8;
  v25[4] = &v35;
  v25[5] = &v31;
  v25[6] = &v27;
  v25[7] = buf;
  [v12 loadHapticSequenceFromEvents:eventsCopy reply:v25];
  v13 = (*&buf[8] + 40);
  if (!*(*&buf[8] + 40))
  {
    v15 = v36[3];
    obj = 0;
    [(AVHapticClient *)self prepareHapticSequence:v15 error:&obj];
    objc_storeStrong(v13, obj);
    v16 = *(*&buf[8] + 40);
    v17 = v16 == 0;
    goto LABEL_18;
  }

  if (!kAVHCScope)
  {
    v14 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v14 = *kAVHCScope;
  if (v14)
  {
LABEL_14:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*&buf[8] + 40);
      *v39 = 136315906;
      v40 = "AVHapticClient.mm";
      v41 = 1024;
      v42 = 859;
      v43 = 2080;
      v44 = "[AVHapticClient loadAndPrepareHapticSequenceFromEvents:reply:]";
      v45 = 2112;
      v46 = v19;
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v39, 0x26u);
    }
  }

  v17 = 0;
  v16 = *(*&buf[8] + 40);
LABEL_18:
  replyCopy[2](replyCopy, v36[3], v28[3], v16, v32[3]);
  if (kAVHCScope)
  {
    v20 = *kAVHCScope;
    if (!v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v39 = 136315650;
    v40 = "AVHapticClient.mm";
    v41 = 1024;
    v42 = 867;
    v43 = 2080;
    v44 = "[AVHapticClient loadAndPrepareHapticSequenceFromEvents:reply:]";
    _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done loading sequence", v39, 0x1Cu);
  }

LABEL_25:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(buf, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

void __63__AVHapticClient_loadAndPrepareHapticSequenceFromEvents_reply___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a4;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v11 = *kAVHCScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v16 = 136315650;
          v17 = "AVHapticClient.mm";
          v18 = 1024;
          v19 = 850;
          v20 = 2080;
          v21 = "[AVHapticClient loadAndPrepareHapticSequenceFromEvents:reply:]_block_invoke_2";
          _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loadAndPrepareHapticSequenceFromEvents:reply: top of [serverDelegate loadHapticSequenceFromEvents] reply block", &v16, 0x1Cu);
        }
      }
    }
  }

  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a5;
  *(*(a1[6] + 8) + 24) = a3;
  objc_storeStrong((*(a1[7] + 8) + 40), a4);
  if (v10)
  {
    if (kAVHCScope)
    {
      v13 = *kAVHCScope;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "AVHapticClient.mm";
      v18 = 1024;
      v19 = 855;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Got error from server: %@", &v16, 0x1Cu);
    }
  }

LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadAndPrepareHapticSequenceFromVibePattern:(id)pattern reply:(id)reply
{
  v40 = *MEMORY[0x277D85DE8];
  patternCopy = pattern;
  replyCopy = reply;
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 873;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient loadAndPrepareHapticSequenceFromVibePattern:reply:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 2048;
    *&buf[36] = patternCopy;
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x loading pattern: %p", buf, 0x2Cu);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  *&buf[40] = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = -1;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __68__AVHapticClient_loadAndPrepareHapticSequenceFromVibePattern_reply___block_invoke;
  v26[3] = &unk_2781C93A8;
  v26[4] = buf;
  v12 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v26];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __68__AVHapticClient_loadAndPrepareHapticSequenceFromVibePattern_reply___block_invoke_2;
  v25[3] = &unk_2781C9380;
  v25[4] = &v27;
  v25[5] = buf;
  [v12 loadVibePattern:patternCopy reply:v25];
  v13 = (*&buf[8] + 40);
  if (!*(*&buf[8] + 40))
  {
    v15 = v28[3];
    obj = 0;
    [(AVHapticClient *)self prepareHapticSequence:v15 error:&obj];
    objc_storeStrong(v13, obj);
    v16 = *(*&buf[8] + 40);
    v17 = v16 == 0;
    goto LABEL_18;
  }

  if (!kAVHCScope)
  {
    v14 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v14 = *kAVHCScope;
  if (v14)
  {
LABEL_14:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*&buf[8] + 40);
      *v31 = 136315906;
      v32 = "AVHapticClient.mm";
      v33 = 1024;
      v34 = 887;
      v35 = 2080;
      v36 = "[AVHapticClient loadAndPrepareHapticSequenceFromVibePattern:reply:]";
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v31, 0x26u);
    }
  }

  v17 = 0;
  v16 = *(*&buf[8] + 40);
LABEL_18:
  replyCopy[2](replyCopy, v28[3], v16);
  if (kAVHCScope)
  {
    v20 = *kAVHCScope;
    if (!v20)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v31 = 136315650;
    v32 = "AVHapticClient.mm";
    v33 = 1024;
    v34 = 895;
    v35 = 2080;
    v36 = "[AVHapticClient loadAndPrepareHapticSequenceFromVibePattern:reply:]";
    _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done loading pattern", v31, 0x1Cu);
  }

LABEL_25:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(buf, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

void __68__AVHapticClient_loadAndPrepareHapticSequenceFromVibePattern_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v12 = 136315650;
          v13 = "AVHapticClient.mm";
          v14 = 1024;
          v15 = 880;
          v16 = 2080;
          v17 = "[AVHapticClient loadAndPrepareHapticSequenceFromVibePattern:reply:]_block_invoke_2";
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loadAndPrepareHapticSequenceFromVibePattern:reply: top of [serverDelegate loadVibePattern] reply block", &v12, 0x1Cu);
        }
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v6)
  {
    if (kAVHCScope)
    {
      v9 = *kAVHCScope;
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = "AVHapticClient.mm";
      v14 = 1024;
      v15 = 883;
      v16 = 2080;
      v17 = "[AVHapticClient loadAndPrepareHapticSequenceFromVibePattern:reply:]_block_invoke";
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v12, 0x26u);
    }
  }

LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)setSequenceEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 channel:(unint64_t)channel
{
  v34 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 901;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient setSequenceEventBehavior:behavior:channel:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 1024;
    *&buf[36] = behavior;
    LOWORD(v33) = 1024;
    *(&v33 + 2) = a4;
    _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x, seqID %u, behavior %u", buf, 0x2Eu);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v33 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__AVHapticClient_setSequenceEventBehavior_behavior_channel___block_invoke;
  v23[3] = &unk_2781C93A8;
  v23[4] = buf;
  v13 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v23];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __60__AVHapticClient_setSequenceEventBehavior_behavior_channel___block_invoke_2;
  v22[3] = &unk_2781C93A8;
  v22[4] = buf;
  [v13 setSequenceEventBehavior:behavior behavior:a4 channelIndex:channel reply:v22];
  v14 = *(*&buf[8] + 40);
  if (!v14)
  {
    goto LABEL_16;
  }

  if (kAVHCScope)
  {
    v15 = *kAVHCScope;
    if (!v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*&buf[8] + 40);
    *v24 = 136315906;
    v25 = "AVHapticClient.mm";
    v26 = 1024;
    v27 = 912;
    v28 = 2080;
    v29 = "[AVHapticClient setSequenceEventBehavior:behavior:channel:]";
    v30 = 2112;
    v31 = v17;
    _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v24, 0x26u);
  }

LABEL_16:
  if (kAVHCScope)
  {
    v18 = *kAVHCScope;
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *v24 = 136315650;
    v25 = "AVHapticClient.mm";
    v26 = 1024;
    v27 = 917;
    v28 = 2080;
    v29 = "[AVHapticClient setSequenceEventBehavior:behavior:channel:]";
    _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done setting behavior", v24, 0x1Cu);
  }

LABEL_23:
  _Block_object_dispose(buf, 8);

  v20 = *MEMORY[0x277D85DE8];
  return v14 == 0;
}

void __60__AVHapticClient_setSequenceEventBehavior_behavior_channel___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v5 = *kAVHCScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = "AVHapticClient.mm";
      v10 = 1024;
      v11 = 908;
      v12 = 2080;
      v13 = "[AVHapticClient setSequenceEventBehavior:behavior:channel:]_block_invoke_2";
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v8, 0x26u);
    }
  }

LABEL_9:

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setSequenceFinishedHandlerForID:(unint64_t)d finishedHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  std::mutex::lock((self + 48));
  v7 = *(self + 15);
  if (v7)
  {
    v8 = self + 120;
    do
    {
      v9 = *(v7 + 4);
      v10 = v9 >= d;
      v11 = v9 < d;
      if (v10)
      {
        v8 = v7;
      }

      v7 = *&v7[8 * v11];
    }

    while (v7);
    if (v8 != self + 120 && *(v8 + 4) <= d)
    {
      std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::erase(self + 14, v8);
    }
  }

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v12 = *kAVHCScope;
      if (v12)
      {
        v13 = v12;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = MEMORY[0x21606F540](handlerCopy);
          *buf = 136316162;
          v19 = "AVHapticClient.mm";
          v20 = 1024;
          v21 = 929;
          v22 = 2080;
          v23 = "[AVHapticClient setSequenceFinishedHandlerForID:finishedHandler:]";
          v24 = 2048;
          v25 = v14;
          v26 = 1024;
          dCopy2 = d;
          _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Caching sequence finished handler block %p for seqID %u", buf, 0x2Cu);
        }
      }
    }
  }

  v16 = [[AVHapticSequenceEntry alloc] initWithHandler:handlerCopy];
  std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::__emplace_unique_key_args<unsigned long,unsigned long &,AVHapticSequenceEntry * {__strong}>(self + 112, &dCopy);

  std::mutex::unlock((self + 48));
  v15 = *MEMORY[0x277D85DE8];
}

- (id)getSequenceFinishedHandlerForID:(unint64_t)d
{
  std::mutex::lock((self + 48));
  v5 = *(self + 15);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = (self + 120);
  do
  {
    v7 = *(v5 + 4);
    v8 = v7 >= d;
    v9 = v7 < d;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * v9];
  }

  while (v5);
  if (v6 != (self + 120) && v6[4] <= d)
  {
    handler = [v6[5] handler];
    v10 = MEMORY[0x21606F540]();
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  std::mutex::unlock((self + 48));

  return v10;
}

- (void)callSequenceFinishedHandlersWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 136315650;
    v16 = "AVHapticClient.mm";
    v17 = 1024;
    v18 = 942;
    v19 = 2080;
    v20 = "[AVHapticClient callSequenceFinishedHandlersWithError:]";
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Calling completion handlers on any active sequences", &v15, 0x1Cu);
  }

LABEL_8:
  std::mutex::lock((self + 48));
  v7 = *(self + 14);
  v8 = self + 120;
  if (v7 != self + 120)
  {
    do
    {
      v9 = *(v7 + 5);
      handler = [v9 handler];
      (handler)[2](handler, errorCopy);

      v11 = *(v7 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v7 + 2);
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v7 = v12;
    }

    while (v12 != v8);
  }

  std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::destroy(self + 112, *(self + 15));
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = v8;
  std::mutex::unlock((self + 48));

  v14 = *MEMORY[0x277D85DE8];
}

- (void)detachSequenceEntryforID:(unint64_t)d
{
  v23 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 48));
  v5 = *(self + 15);
  if (v5)
  {
    v6 = (self + 120);
    do
    {
      v7 = *(v5 + 4);
      v8 = v7 >= d;
      v9 = v7 < d;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *&v5[8 * v9];
    }

    while (v5);
    if (v6 != (self + 120) && v6[4] <= d)
    {
      if ([v6[5] running])
      {
        if (kAVHCScope)
        {
          if (*(kAVHCScope + 8))
          {
            v10 = *kAVHCScope;
            if (v10)
            {
              v11 = v10;
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
              {
                v15 = 136315906;
                v16 = "AVHapticClient.mm";
                v17 = 1024;
                v18 = 965;
                v19 = 2080;
                v20 = "[AVHapticClient detachSequenceEntryforID:]";
                v21 = 1024;
                dCopy2 = d;
                _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sequence %u is running - setting entry to detached", &v15, 0x22u);
              }
            }
          }
        }

        [v6[5] setDetached:1];
      }

      else
      {
        if (kAVHCScope)
        {
          if (*(kAVHCScope + 8))
          {
            v12 = *kAVHCScope;
            if (v12)
            {
              v13 = v12;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                v15 = 136315906;
                v16 = "AVHapticClient.mm";
                v17 = 1024;
                v18 = 969;
                v19 = 2080;
                v20 = "[AVHapticClient detachSequenceEntryforID:]";
                v21 = 1024;
                dCopy2 = d;
                _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Sequence %u is not running - deleting entry", &v15, 0x22u);
              }
            }
          }
        }

        std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::erase(self + 14, v6);
      }
    }
  }

  std::mutex::unlock((self + 48));
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)prepareHapticSequence:(unint64_t)sequence error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[14] = 977;
    *&buf[18] = 2080;
    *&buf[12] = 1024;
    *&buf[20] = "[AVHapticClient prepareHapticSequence:error:]";
    *&buf[28] = 1024;
    *&buf[30] = [(AVHapticClient *)self clientID];
    *&buf[34] = 1024;
    *&buf[36] = sequence;
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x preparing sequenceID: %u", buf, 0x28u);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v31 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __46__AVHapticClient_prepareHapticSequence_error___block_invoke;
  v21[3] = &unk_2781C93A8;
  v21[4] = buf;
  v11 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__AVHapticClient_prepareHapticSequence_error___block_invoke_2;
  v20[3] = &unk_2781C93A8;
  v20[4] = buf;
  [v11 prepareHapticSequence:sequence reply:v20];
  v12 = *(*&buf[8] + 40);
  if (!v12)
  {
    goto LABEL_18;
  }

  if (!kAVHCScope)
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
    goto LABEL_13;
  }

  v13 = *kAVHCScope;
  if (v13)
  {
LABEL_13:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*&buf[8] + 40);
      *v22 = 136315906;
      v23 = "AVHapticClient.mm";
      v24 = 1024;
      v25 = 989;
      v26 = 2080;
      v27 = "[AVHapticClient prepareHapticSequence:error:]";
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error during transaction: %@", v22, 0x26u);
    }
  }

  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

LABEL_18:
  if (kAVHCScope)
  {
    v16 = *kAVHCScope;
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v22 = 136315650;
    v23 = "AVHapticClient.mm";
    v24 = 1024;
    v25 = 997;
    v26 = 2080;
    v27 = "[AVHapticClient prepareHapticSequence:error:]";
    _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done preparing", v22, 0x1Cu);
  }

LABEL_25:
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x277D85DE8];
  return v12 == 0;
}

void __46__AVHapticClient_prepareHapticSequence_error___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v5 = *kAVHCScope;
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v10 = 136315650;
          v11 = "AVHapticClient.mm";
          v12 = 1024;
          v13 = 983;
          v14 = 2080;
          v15 = "[AVHapticClient prepareHapticSequence:error:]_block_invoke_2";
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: prepareHapticSequence:error: top of [serverDelegate prepareHapticSequence] reply block", &v10, 0x1Cu);
        }
      }
    }
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = "AVHapticClient.mm";
      v12 = 1024;
      v13 = 985;
      v14 = 2080;
      v15 = "[AVHapticClient prepareHapticSequence:error:]_block_invoke";
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v10, 0x26u);
    }
  }

LABEL_15:

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)enableSequenceLooping:(unint64_t)looping enable:(BOOL)enable error:(id *)error
{
  enableCopy = enable;
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v9 = *kAVHCScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v16 = 136316418;
          *v17 = "AVHapticClient.mm";
          *&v17[8] = 1024;
          *&v17[10] = 1006;
          *&v17[14] = 2080;
          *&v17[16] = "[AVHapticClient enableSequenceLooping:enable:error:]";
          *&v17[24] = 1024;
          *&v17[26] = 22;
          *&v17[30] = 1024;
          v18 = *&looping;
          LOWORD(v19) = 1024;
          *(&v19 + 2) = enableCopy;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: (time 0) type: %hu sequenceID: %u looping: %d", &v16, 0x2Eu);
        }
      }
    }
  }

  v11 = *(selfCopy + 2);
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v16 = 1441832;
  *&v17[4] = 0;
  *&v17[12] = looping;
  *&v17[20] = looping;
  *&v17[28] = 101;
  v18 = enableCopy;
  v12 = writeCommand();
  objc_sync_exit(selfCopy);

  if (error)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-4811 userInfo:0];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)setSequenceLoopLength:(unint64_t)length length:(float)a4 error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v9 = *kAVHCScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v16 = 136316418;
          *v17 = "AVHapticClient.mm";
          *&v17[8] = 1024;
          *&v17[10] = 1021;
          *&v17[14] = 2080;
          *&v17[16] = "[AVHapticClient setSequenceLoopLength:length:error:]";
          *&v17[24] = 1024;
          *&v17[26] = 22;
          *&v17[30] = 1024;
          v18 = *&length;
          LOWORD(v19) = 2048;
          *(&v19 + 2) = a4;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: (time 0) type: %hu sequenceID: %u loop length: %f", &v16, 0x32u);
        }
      }
    }
  }

  v11 = *(selfCopy + 2);
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v16 = 1441832;
  *&v17[4] = 0;
  *&v17[12] = length;
  *&v17[20] = length;
  *&v17[28] = 102;
  v18 = a4;
  v12 = writeCommand();
  objc_sync_exit(selfCopy);

  if (error)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-4811 userInfo:0];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)setSequencePlaybackRate:(unint64_t)rate rate:(float)a4 error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v9 = *kAVHCScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v16 = 136316418;
          *v17 = "AVHapticClient.mm";
          *&v17[8] = 1024;
          *&v17[10] = 1036;
          *&v17[14] = 2080;
          *&v17[16] = "[AVHapticClient setSequencePlaybackRate:rate:error:]";
          *&v17[24] = 1024;
          *&v17[26] = 22;
          *&v17[30] = 1024;
          v18 = *&rate;
          LOWORD(v19) = 2048;
          *(&v19 + 2) = a4;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: (time 0) type: %hu sequenceID: %u rate: %f", &v16, 0x32u);
        }
      }
    }
  }

  v11 = *(selfCopy + 2);
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v16 = 1441832;
  *&v17[4] = 0;
  *&v17[12] = rate;
  *&v17[20] = rate;
  *&v17[28] = 103;
  v18 = a4;
  v12 = writeCommand();
  objc_sync_exit(selfCopy);

  if (error)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-4811 userInfo:0];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)startHapticSequence:(unint64_t)sequence atTime:(double)time withOffset:(double)offset
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v9 = *kAVHCScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v15 = 136316674;
          *v16 = "AVHapticClient.mm";
          *&v16[8] = 1024;
          *&v16[10] = 1049;
          *&v16[14] = 2080;
          *&v16[16] = "[AVHapticClient startHapticSequence:atTime:withOffset:]";
          *&v16[24] = 2048;
          *&v16[26] = time;
          *&v16[34] = 1024;
          LODWORD(v17[0]) = 20;
          WORD2(v17[0]) = 1024;
          *(v17 + 6) = sequence;
          WORD5(v17[0]) = 2048;
          *(v17 + 12) = offset;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f type: %hu sequenceID: %u offset: %f", &v15, 0x3Cu);
        }
      }
    }
  }

  v11 = *(selfCopy + 2);
  memset(v17, 0, 124);
  v15 = 1310760;
  *&v16[4] = time;
  *&v16[12] = sequence;
  *&v16[20] = 51;
  *&v16[28] = offset;
  v12 = writeCommand();
  if (v12)
  {
    [(AVHapticClient *)selfCopy setRunStateForSequenceEntryWithID:sequence running:1];
  }

  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)stopHapticSequence:(unint64_t)sequence atTime:(double)time
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136316418;
          *v14 = "AVHapticClient.mm";
          *&v14[8] = 1024;
          *&v14[10] = 1063;
          *&v14[14] = 2080;
          *&v14[16] = "[AVHapticClient stopHapticSequence:atTime:]";
          *&v14[24] = 2048;
          *&v14[26] = time;
          *&v14[34] = 1024;
          LODWORD(v15) = 20;
          WORD2(v15) = 1024;
          *(&v15 + 6) = sequence;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v13, 0x32u);
        }
      }
    }
  }

  v9 = *(selfCopy + 2);
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v13 = 1310760;
  *&v14[4] = time;
  *&v14[12] = sequence;
  *&v14[20] = 52;
  *&v14[28] = 0xBFF0000000000000;
  v10 = writeCommand();
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)pauseHapticSequence:(unint64_t)sequence atTime:(double)time
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136316418;
          *v14 = "AVHapticClient.mm";
          *&v14[8] = 1024;
          *&v14[10] = 1071;
          *&v14[14] = 2080;
          *&v14[16] = "[AVHapticClient pauseHapticSequence:atTime:]";
          *&v14[24] = 2048;
          *&v14[26] = time;
          *&v14[34] = 1024;
          LODWORD(v15) = 20;
          WORD2(v15) = 1024;
          *(&v15 + 6) = sequence;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v13, 0x32u);
        }
      }
    }
  }

  v9 = *(selfCopy + 2);
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v13 = 1310760;
  *&v14[4] = time;
  *&v14[12] = sequence;
  *&v14[20] = 53;
  *&v14[28] = 0xBFF0000000000000;
  v10 = writeCommand();
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)resumeHapticSequence:(unint64_t)sequence atTime:(double)time
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136316418;
          *v14 = "AVHapticClient.mm";
          *&v14[8] = 1024;
          *&v14[10] = 1079;
          *&v14[14] = 2080;
          *&v14[16] = "[AVHapticClient resumeHapticSequence:atTime:]";
          *&v14[24] = 2048;
          *&v14[26] = time;
          *&v14[34] = 1024;
          LODWORD(v15) = 20;
          WORD2(v15) = 1024;
          *(&v15 + 6) = sequence;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v13, 0x32u);
        }
      }
    }
  }

  v9 = *(selfCopy + 2);
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v13 = 1310760;
  *&v14[4] = time;
  *&v14[12] = sequence;
  *&v14[20] = 54;
  *&v14[28] = 0xBFF0000000000000;
  v10 = writeCommand();
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)seekHapticSequence:(unint64_t)sequence toTime:(double)time
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136316418;
          *v14 = "AVHapticClient.mm";
          *&v14[8] = 1024;
          *&v14[10] = 1088;
          *&v14[14] = 2080;
          *&v14[16] = "[AVHapticClient seekHapticSequence:toTime:]";
          *&v14[24] = 2048;
          *&v14[26] = 0;
          *&v14[34] = 1024;
          LODWORD(v15) = 20;
          WORD2(v15) = 1024;
          *(&v15 + 6) = sequence;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v13, 0x32u);
        }
      }
    }
  }

  v9 = *(selfCopy + 2);
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v13 = 1310760;
  *&v14[4] = 0;
  *&v14[12] = sequence;
  *&v14[20] = 55;
  *&v14[28] = time;
  v10 = writeCommand();
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)resetHapticSequence:(unint64_t)sequence atTime:(double)time
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136316418;
          *v14 = "AVHapticClient.mm";
          *&v14[8] = 1024;
          *&v14[10] = 1096;
          *&v14[14] = 2080;
          *&v14[16] = "[AVHapticClient resetHapticSequence:atTime:]";
          *&v14[24] = 2048;
          *&v14[26] = time;
          *&v14[34] = 1024;
          LODWORD(v15) = 20;
          WORD2(v15) = 1024;
          *(&v15 + 6) = sequence;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v13, 0x32u);
        }
      }
    }
  }

  v9 = *(selfCopy + 2);
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v13 = 1310760;
  *&v14[4] = time;
  *&v14[12] = sequence;
  *&v14[20] = 56;
  *&v14[28] = 0xBFF0000000000000;
  v10 = writeCommand();
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)sendUnduckAudioCommand:(unint64_t)command atTime:(double)time
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136316418;
          *v14 = "AVHapticClient.mm";
          *&v14[8] = 1024;
          *&v14[10] = 1104;
          *&v14[14] = 2080;
          *&v14[16] = "[AVHapticClient sendUnduckAudioCommand:atTime:]";
          *&v14[24] = 2048;
          *&v14[26] = time;
          *&v14[34] = 1024;
          LODWORD(v15) = 20;
          WORD2(v15) = 1024;
          *(&v15 + 6) = command;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f seq cmd type: %hu sequenceID: %u", &v13, 0x32u);
        }
      }
    }
  }

  v9 = *(selfCopy + 2);
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v13 = 1310760;
  *&v14[4] = time;
  *&v14[12] = command;
  *&v14[20] = 57;
  *&v14[28] = 0xBFF0000000000000;
  v10 = writeCommand();
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)setSequenceChannelParameter:(unint64_t)parameter atTime:(double)time value:(float)value sequenceID:(unint64_t)d channel:(unint64_t)channel
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v13 = *kAVHCScope;
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v19 = 136317186;
          *v20 = "AVHapticClient.mm";
          *&v20[8] = 1024;
          *&v20[10] = 1112;
          *&v20[14] = 2080;
          *&v20[16] = "[AVHapticClient setSequenceChannelParameter:atTime:value:sequenceID:channel:]";
          *&v20[24] = 2048;
          *&v20[26] = time;
          *&v20[34] = 1024;
          *v21 = 21;
          *&v21[4] = 1024;
          *&v21[6] = d;
          *&v21[10] = 1024;
          LODWORD(v22[0]) = channel;
          WORD2(v22[0]) = 1024;
          *(v22 + 6) = parameter;
          WORD5(v22[0]) = 2048;
          *(v22 + 12) = value;
          _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f type: %hu sequenceID: %u channel: %u param: %u value: %.3f", &v19, 0x48u);
        }
      }
    }
  }

  v15 = *(selfCopy + 2);
  memset(v22, 0, sizeof(v22));
  v19 = 1376312;
  *&v20[4] = time;
  *&v20[12] = d;
  *&v20[20] = 0;
  *&v20[28] = channel;
  *v21 = parameter;
  *&v21[8] = value;
  v16 = writeCommand();
  objc_sync_exit(selfCopy);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)clearSequenceEvents:(unint64_t)events atTime:(double)time
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v7 = *kAVHCScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136316418;
          *v14 = "AVHapticClient.mm";
          *&v14[8] = 1024;
          *&v14[10] = 1120;
          *&v14[14] = 2080;
          *&v14[16] = "[AVHapticClient clearSequenceEvents:atTime:]";
          *&v14[24] = 2048;
          *&v14[26] = time;
          *&v14[34] = 1024;
          LODWORD(v15) = 23;
          WORD2(v15) = 1024;
          *(&v15 + 6) = events;
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Writing command: time: %.3f cmd type: %hu sequenceID: %u", &v13, 0x32u);
        }
      }
    }
  }

  v9 = *(selfCopy + 2);
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  *&v14[20] = 0u;
  v13 = 1507440;
  *&v14[4] = time;
  *&v14[12] = events;
  v10 = writeCommand();
  objc_sync_exit(selfCopy);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)detachHapticSequence:(unint64_t)sequence
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 136316162;
    v12 = "AVHapticClient.mm";
    v14 = 1128;
    v15 = 2080;
    v13 = 1024;
    v16 = "[AVHapticClient detachHapticSequence:]";
    v17 = 1024;
    clientID = [(AVHapticClient *)selfCopy clientID];
    v19 = 1024;
    sequenceCopy = sequence;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%x detaching sequenceID %u", &v11, 0x28u);
  }

LABEL_8:
  v9 = [(AVHapticClient *)selfCopy getAsyncDelegateForMethod:a2 errorHandler:&__block_literal_global_67];
  [(AVHapticClient *)selfCopy detachSequenceEntryforID:sequence];
  [v9 detachSequence:sequence];

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)releaseResources
{
  v16 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v4 = *kAVHCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "AVHapticClient.mm";
    v12 = 1024;
    v13 = 1139;
    v14 = 2080;
    v15 = "[AVHapticClient releaseResources]";
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: releasing resources", &v10, 0x1Cu);
  }

LABEL_8:
  [(AVHapticClient *)self destroySharedMemory];
  v6 = [(AVHapticClient *)self getAsyncDelegateForMethod:a2 errorHandler:&__block_literal_global_69];
  [v6 releaseClientResources];
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "AVHapticClient.mm";
    v12 = 1024;
    v13 = 1144;
    v14 = 2080;
    v15 = "[AVHapticClient releaseResources]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: done releasing", &v10, 0x1Cu);
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)setupConnectionWithOptions:(id)options error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1167;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient setupConnectionWithOptions:error:]";
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] Connecting...", buf, 0x1Cu);
  }

LABEL_8:
  v10 = [optionsCopy objectForKey:@"MachServiceName"];
  v11 = objc_alloc(MEMORY[0x277CCAE80]);
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"com.apple.audio.hapticd";
  }

  v13 = [v11 initWithMachServiceName:v12 options:4096];
  v14 = *(self + 1);
  *(self + 1) = v13;

  v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2827A07E0];
  [*(self + 1) setExportedInterface:v15];

  [*(self + 1) setExportedObject:self];
  v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2827A4690];
  [*(self + 1) setRemoteObjectInterface:v16];

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v17 = *kAVHCScope;
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(self + 1);
          *buf = 136315906;
          *&buf[4] = "AVHapticClient.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1176;
          *&buf[18] = 2080;
          *&buf[20] = "[AVHapticClient setupConnectionWithOptions:error:]";
          *&buf[28] = 2112;
          *&buf[30] = v19;
          _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: [xpc] Connection: %@", buf, 0x26u);
        }
      }
    }
  }

  remoteObjectInterface = [*(self + 1) remoteObjectInterface];
  [remoteObjectInterface setXPCType:MEMORY[0x277D864B8] forSelector:sel_allocateClientResources_ argumentIndex:0 ofReply:1];

  objc_initWeak(&location, self);
  v21 = *(self + 1);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke;
  v58[3] = &unk_2781C9420;
  objc_copyWeak(&v59, &location);
  [v21 setInterruptionHandler:v58];
  v22 = *(self + 1);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke_2;
  v56[3] = &unk_2781C9420;
  objc_copyWeak(&v57, &location);
  [v22 setInvalidationHandler:v56];
  [(AVHapticClient *)self setConnected:1];
  [*(self + 1) resume];
  [(AVHapticClient *)self setServerProcessID:0];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v72 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  if (kAVHCScope)
  {
    v23 = *kAVHCScope;
    if (!v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v61 = 136315906;
    v62 = "AVHapticClient.mm";
    v63 = 1024;
    v64 = 1196;
    v65 = 2080;
    v66 = "[AVHapticClient setupConnectionWithOptions:error:]";
    v67 = 2112;
    v68 = optionsCopy;
    _os_log_impl(&dword_21569A000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling configureWithOptions:reply on server with dictionary: '%@'", v61, 0x26u);
  }

LABEL_24:
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke_142;
  v51[3] = &unk_2781C93A8;
  v51[4] = buf;
  v25 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v51];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke_2_143;
  v50[3] = &unk_2781C9448;
  v50[4] = &v52;
  v26 = caulk::xpc::reply_watchdog_factory::reply_with_timeout<unsigned long>((self + 152), v50);
  [v25 configureWithOptions:optionsCopy reply:v26];
  -[AVHapticClient setServerProcessID:](self, "setServerProcessID:", [*(self + 1) processIdentifier]);
  if (kAVHCScope)
  {
    v27 = *kAVHCScope;
    if (!v27)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v27 = MEMORY[0x277D86220];
    v28 = MEMORY[0x277D86220];
  }

  v29 = v27;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = *(self + 1);
    processIdentifier = [v30 processIdentifier];
    *v61 = 136316162;
    v62 = "AVHapticClient.mm";
    v63 = 1024;
    v64 = 1209;
    v65 = 2080;
    v66 = "[AVHapticClient setupConnectionWithOptions:error:]";
    v67 = 2112;
    v68 = v30;
    v69 = 1024;
    v70 = processIdentifier;
    _os_log_impl(&dword_21569A000, v29, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] Server connection: %@, PID: %d", v61, 0x2Cu);
  }

LABEL_31:
  if (*(*&buf[8] + 40))
  {
    if (kAVHCScope)
    {
      v32 = *kAVHCScope;
      if (!v32)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v32 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(*&buf[8] + 40);
      *v61 = 136315906;
      v62 = "AVHapticClient.mm";
      v63 = 1024;
      v64 = 1212;
      v65 = 2080;
      v66 = "[AVHapticClient setupConnectionWithOptions:error:]";
      v67 = 2112;
      v68 = v35;
      v36 = "%25s:%-5d %s: [xpc] Got error during transaction: %@";
      v37 = v32;
      v38 = OS_LOG_TYPE_DEFAULT;
LABEL_48:
      _os_log_impl(&dword_21569A000, v37, v38, v36, v61, 0x26u);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  v33 = v53[3];
  if (!v33)
  {
    if (kAVHCScope)
    {
      v39 = *kAVHCScope;
      if (!v39)
      {
LABEL_53:
        v43 = *&buf[8];
        v44 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4810 userInfo:0];
        v32 = *(v43 + 40);
        *(v43 + 40) = v44;
        goto LABEL_54;
      }
    }

    else
    {
      v39 = MEMORY[0x277D86220];
      v42 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *v61 = 136315650;
      v62 = "AVHapticClient.mm";
      v63 = 1024;
      v64 = 1215;
      v65 = 2080;
      v66 = "[AVHapticClient setupConnectionWithOptions:error:]";
      _os_log_impl(&dword_21569A000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: [xpc] ERROR: Failed retrieving client ID", v61, 0x1Cu);
    }

    goto LABEL_53;
  }

  *(self + 25) = v33;
  if (!kAVHCScope)
  {
    v32 = MEMORY[0x277D86220];
    v40 = MEMORY[0x277D86220];
LABEL_46:
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v41 = *(self + 25);
      *v61 = 136315906;
      v62 = "AVHapticClient.mm";
      v63 = 1024;
      v64 = 1220;
      v65 = 2080;
      v66 = "[AVHapticClient setupConnectionWithOptions:error:]";
      v67 = 2048;
      v68 = v41;
      v36 = "%25s:%-5d %s: Client ID: 0x%lx";
      v37 = v32;
      v38 = OS_LOG_TYPE_INFO;
      goto LABEL_48;
    }

LABEL_54:

    goto LABEL_55;
  }

  v32 = *kAVHCScope;
  if (v32)
  {
    goto LABEL_46;
  }

LABEL_55:
  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  if (kAVHCScope)
  {
    v45 = *kAVHCScope;
    if (!v45)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v45 = MEMORY[0x277D86220];
    v46 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    *v61 = 136315650;
    v62 = "AVHapticClient.mm";
    v63 = 1024;
    v64 = 1226;
    v65 = 2080;
    v66 = "[AVHapticClient setupConnectionWithOptions:error:]";
    _os_log_impl(&dword_21569A000, v45, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] done connecting", v61, 0x1Cu);
  }

LABEL_64:
  v47 = *(*&buf[8] + 40) == 0;

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&v57);
  objc_destroyWeak(&v59);
  objc_destroyWeak(&location);

  v48 = *MEMORY[0x277D85DE8];
  return v47;
}

void __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleServerConnectionInterruption];
}

void __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleServerConnectionInvalidation];
}

void __51__AVHapticClient_setupConnectionWithOptions_error___block_invoke_2_143(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "AVHapticClient.mm";
      v9 = 1024;
      v10 = 1201;
      v11 = 2080;
      v12 = "[AVHapticClient setupConnectionWithOptions:error:]_block_invoke_2";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Failed setting options / retrieving client ID from server", &v7, 0x1Cu);
    }
  }

LABEL_9:
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = *MEMORY[0x277D85DE8];
}

- (id)getAsyncDelegateForMethod:(SEL)method errorHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v7 = *(self + 1);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__AVHapticClient_getAsyncDelegateForMethod_errorHandler___block_invoke;
  v11[3] = &unk_2781C9470;
  v13[1] = method;
  objc_copyWeak(v13, &location);
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v9;
}

void __57__AVHapticClient_getAsyncDelegateForMethod_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v9 = [WeakRetained clientID];
      v10 = [v3 localizedDescription];
      v12 = 136316418;
      v13 = "AVHapticClient.mm";
      v14 = 1024;
      v15 = 1235;
      v16 = 2080;
      v17 = "[AVHapticClient getAsyncDelegateForMethod:errorHandler:]_block_invoke";
      v18 = 2112;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Async XPC call for '%@' (client ID 0x%x) failed: %@", &v12, 0x36u);
    }
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (id)getSyncDelegateForMethod:(SEL)method errorHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v7 = *(self + 1);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__AVHapticClient_getSyncDelegateForMethod_errorHandler___block_invoke;
  v11[3] = &unk_2781C9470;
  v13[1] = method;
  objc_copyWeak(v13, &location);
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v9;
}

void __56__AVHapticClient_getSyncDelegateForMethod_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v9 = [WeakRetained clientID];
      v10 = [v3 localizedDescription];
      v12 = 136316418;
      v13 = "AVHapticClient.mm";
      v14 = 1024;
      v15 = 1246;
      v16 = 2080;
      v17 = "[AVHapticClient getSyncDelegateForMethod:errorHandler:]_block_invoke";
      v18 = 2112;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Sync XPC call for '%@' (client ID 0x%x) failed: %@", &v12, 0x36u);
    }
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)disconnect
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(AVHapticClient *)self connected])
  {
    goto LABEL_16;
  }

  [(AVHapticClient *)self setConnected:0];
  if (!kAVHCScope)
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
    goto LABEL_6;
  }

  v3 = *kAVHCScope;
  if (v3)
  {
LABEL_6:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 136315650;
      v9 = "AVHapticClient.mm";
      v10 = 1024;
      v11 = 1257;
      v12 = 2080;
      v13 = "[AVHapticClient disconnect]";
      _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] Invalidating...", &v8, 0x1Cu);
    }
  }

  [*(self + 1) invalidate];
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "AVHapticClient.mm";
    v10 = 1024;
    v11 = 1259;
    v12 = 2080;
    v13 = "[AVHapticClient disconnect]";
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] done disconnecting", &v8, 0x1Cu);
  }

LABEL_16:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setChannelKeys:(id)keys
{
  keysCopy = keys;
  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:keysCopy copyItems:1];
  v5 = *(self + 26);
  *(self + 26) = v4;
}

- (BOOL)setPlayerBehavior:(unint64_t)behavior error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v25 = "AVHapticClient.mm";
    v26 = 1024;
    v27 = 1289;
    v28 = 2080;
    v29 = "[AVHapticClient setPlayerBehavior:error:]";
    v30 = 1024;
    behaviorCopy = behavior;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Calling server with player behavior %u", buf, 0x22u);
  }

LABEL_8:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__AVHapticClient_setPlayerBehavior_error___block_invoke;
  v17[3] = &unk_2781C93A8;
  v17[4] = &v18;
  v10 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__AVHapticClient_setPlayerBehavior_error___block_invoke_2;
  v16[3] = &unk_2781C93A8;
  v16[4] = &v18;
  [v10 setPlayerBehavior:behavior reply:v16];
  if (error)
  {
    *error = v19[5];
  }

  if (kAVHCScope)
  {
    v11 = *kAVHCScope;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v25 = "AVHapticClient.mm";
    v26 = 1024;
    v27 = 1298;
    v28 = 2080;
    v29 = "[AVHapticClient setPlayerBehavior:error:]";
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Exited", buf, 0x1Cu);
  }

LABEL_17:
  v13 = v19[5] == 0;

  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __42__AVHapticClient_setPlayerBehavior_error___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v4)
  {
    if (kAVHCScope)
    {
      v5 = *kAVHCScope;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = "AVHapticClient.mm";
      v10 = 1024;
      v11 = 1295;
      v12 = 2080;
      v13 = "[AVHapticClient setPlayerBehavior:error:]_block_invoke_2";
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Got error from server: %@", &v8, 0x26u);
    }
  }

LABEL_9:

  v7 = *MEMORY[0x277D85DE8];
}

- (void)clearAssignedChannels
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__1;
  v4[4] = __Block_byref_object_dispose__1;
  v5 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__AVHapticClient_clearAssignedChannels__block_invoke;
  v3[3] = &unk_2781C93A8;
  v3[4] = v4;
  v2 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v3];
  [v2 releaseChannels];

  _Block_object_dispose(v4, 8);
}

- (BOOL)requestAssignedChannels:(unint64_t)channels error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1313;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient requestAssignedChannels:error:]";
    *&buf[28] = 1024;
    *&buf[30] = channels;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Calling server with request for %u channels", buf, 0x22u);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__AVHapticClient_requestAssignedChannels_error___block_invoke;
  v20[3] = &unk_2781C93A8;
  v20[4] = buf;
  v10 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v20];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__AVHapticClient_requestAssignedChannels_error___block_invoke_2;
  v17[3] = &unk_2781C9498;
  v17[4] = buf;
  objc_copyWeak(&v18, &location);
  [v10 requestChannels:channels reply:v17];
  v11 = *(*&buf[8] + 40);
  if (error)
  {
    v12 = v11;
    *error = v11;
  }

  if (kAVHCScope)
  {
    v13 = *kAVHCScope;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v21 = 136315650;
    v22 = "AVHapticClient.mm";
    v23 = 1024;
    v24 = 1331;
    v25 = 2080;
    v26 = "[AVHapticClient requestAssignedChannels:error:]";
    _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done requesting channels", v21, 0x1Cu);
  }

LABEL_17:
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v11 == 0;
}

void __48__AVHapticClient_requestAssignedChannels_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315906;
    v13 = "AVHapticClient.mm";
    v14 = 1024;
    v15 = 1321;
    v16 = 2080;
    v17 = "[AVHapticClient requestAssignedChannels:error:]_block_invoke_2";
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Server returned count of %u", &v12, 0x22u);
  }

LABEL_8:
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setChannelKeys:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeAssignedChannelID:(unint64_t)d error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "AVHapticClient.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1337;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticClient removeAssignedChannelID:error:]";
    *&buf[28] = 1024;
    *&buf[30] = d;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Calling server with request to remove channelID %u", buf, 0x22u);
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__1;
  *&buf[32] = __Block_byref_object_dispose__1;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__AVHapticClient_removeAssignedChannelID_error___block_invoke;
  v18[3] = &unk_2781C93A8;
  v18[4] = buf;
  v10 = [(AVHapticClient *)self getSyncDelegateForMethod:a2 errorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__AVHapticClient_removeAssignedChannelID_error___block_invoke_2;
  v17[3] = &unk_2781C93A8;
  v17[4] = buf;
  [v10 removeChannel:d reply:v17];
  v11 = *(*&buf[8] + 40);
  if (error)
  {
    v12 = v11;
    *error = v11;
  }

  if (kAVHCScope)
  {
    v13 = *kAVHCScope;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *v19 = 136315650;
    v20 = "AVHapticClient.mm";
    v21 = 1024;
    v22 = 1349;
    v23 = 2080;
    v24 = "[AVHapticClient removeAssignedChannelID:error:]";
    _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d %s: done removing channel", v19, 0x1Cu);
  }

LABEL_17:
  _Block_object_dispose(buf, 8);

  v15 = *MEMORY[0x277D85DE8];
  return v11 == 0;
}

- (void)handleServerConnectionInterruption
{
  v33 = *MEMORY[0x277D85DE8];
  clientID = [(AVHapticClient *)self clientID];
  if (kAVHCScope)
  {
    v4 = *kAVHCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v26 = "AVHapticClient.mm";
    v27 = 1024;
    v28 = 1356;
    v29 = 2080;
    v30 = "[AVHapticClient handleServerConnectionInterruption]";
    v31 = 1024;
    v32 = clientID;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: [xpc] Entered (due to connection interruption) for client ID 0x%x", buf, 0x22u);
  }

LABEL_8:
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4811 userInfo:0];
  v7 = *(self + 5);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }

  [(AVHapticClient *)self callSequenceFinishedHandlersWithError:v6];
  objc_initWeak(&location, self);
  v8 = *(self + 17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__AVHapticClient_handleServerConnectionInterruption__block_invoke;
  block[3] = &unk_2781C94C0;
  objc_copyWeak(&v23, &location);
  v9 = v6;
  v22 = v9;
  dispatch_async(v8, block);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(AVHapticClient *)selfCopy running])
  {
    asyncStopCallback = [(AVHapticClient *)selfCopy asyncStopCallback];
    v12 = asyncStopCallback == 0;

    if (!v12)
    {
      if (kAVHCScope)
      {
        v13 = *kAVHCScope;
        if (!v13)
        {
LABEL_19:
          asyncStopCallback2 = [(AVHapticClient *)selfCopy asyncStopCallback];
          if ([(AVHapticClient *)selfCopy disconnecting])
          {
            v16 = 3;
          }

          else
          {
            v16 = -1;
          }

          asyncStopCallback2[2](asyncStopCallback2, v16);

          v17 = *(selfCopy + 27);
          *(selfCopy + 27) = 0;

          goto LABEL_23;
        }
      }

      else
      {
        v13 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v26 = "AVHapticClient.mm";
        v27 = 1024;
        v28 = 1375;
        v29 = 2080;
        v30 = "[AVHapticClient handleServerConnectionInterruption]";
        _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d %s: We were running, so call async stopped callback", buf, 0x1Cu);
      }

      goto LABEL_19;
    }
  }

LABEL_23:
  objc_sync_exit(selfCopy);

  *(selfCopy + 25) = -1;
  *(selfCopy + 148) = 0;
  [(AVHapticClient *)selfCopy setState:0];
  if (kAVHCScope)
  {
    v18 = *kAVHCScope;
    if (!v18)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v26 = "AVHapticClient.mm";
    v27 = 1024;
    v28 = 1383;
    v29 = 2080;
    v30 = "[AVHapticClient handleServerConnectionInterruption]";
    v31 = 1024;
    v32 = clientID;
    _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] done handling crash for client ID 0x%x", buf, 0x22u);
  }

LABEL_30:
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v20 = *MEMORY[0x277D85DE8];
}

void __52__AVHapticClient_handleServerConnectionInterruption__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained completionCallback];

  if (v3)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
LABEL_9:
        v6 = [WeakRetained completionCallback];
        v6[2](v6, *(a1 + 32));

        [WeakRetained setCompletionCallback:0];
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 136315650;
      v9 = "AVHapticClient.mm";
      v10 = 1024;
      v11 = 1367;
      v12 = 2080;
      v13 = "[AVHapticClient handleServerConnectionInterruption]_block_invoke";
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d %s: We were waiting for a completion callback, so call it now", &v8, 0x1Cu);
    }

    goto LABEL_9;
  }

LABEL_10:

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleServerConnectionInvalidation
{
  v20 = *MEMORY[0x277D85DE8];
  clientID = [(AVHapticClient *)self clientID];
  if ([(AVHapticClient *)self connected])
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
LABEL_12:
        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4811 userInfo:0];
        v7 = *(self + 5);
        if (v7)
        {
          (*(v7 + 16))(v7, v5);
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = "AVHapticClient.mm";
      v14 = 1024;
      v15 = 1390;
      v16 = 2080;
      v17 = "[AVHapticClient handleServerConnectionInvalidation]";
      v18 = 1024;
      v19 = clientID;
      _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: [xpc] Entered (due to connection invalidation) for client ID 0x%x", &v12, 0x22u);
    }

    goto LABEL_12;
  }

  if (!kAVHCScope)
  {
    v5 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
LABEL_15:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 136315906;
      v13 = "AVHapticClient.mm";
      v14 = 1024;
      v15 = 1398;
      v16 = 2080;
      v17 = "[AVHapticClient handleServerConnectionInvalidation]";
      v18 = 1024;
      v19 = clientID;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] Entered (due to client disconnect) for client ID 0x%x", &v12, 0x22u);
    }

    goto LABEL_17;
  }

  v5 = *kAVHCScope;
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 136315906;
    v13 = "AVHapticClient.mm";
    v14 = 1024;
    v15 = 1400;
    v16 = 2080;
    v17 = "[AVHapticClient handleServerConnectionInvalidation]";
    v18 = 1024;
    v19 = clientID;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] done handling disconnect for client ID 0x%x", &v12, 0x22u);
  }

LABEL_25:
  v11 = *MEMORY[0x277D85DE8];
}

- (unsigned)calculateHapticCommandParamCurveMemorySize:(unsigned int)size
{
  v24 = *MEMORY[0x277D85DE8];
  if (size < 0x11)
  {
    v5 = 1;
  }

  else
  {
    v3 = (size - 16) / 0xF;
    if (size - 16 == 15 * v3)
    {
      v4 = (size - 16) / 0xF;
    }

    else
    {
      v4 = v3 + 1;
    }

    v5 = v4 + 1;
  }

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v6 = *kAVHCScope;
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v10 = 136316674;
          v11 = "AVHapticClient.mm";
          v12 = 1024;
          v13 = 1426;
          v14 = 2080;
          v15 = "[AVHapticClient calculateHapticCommandParamCurveMemorySize:]";
          v16 = 1024;
          v17 = v5;
          v18 = 1024;
          v19 = v5 + 2;
          v20 = 1024;
          v21 = 168;
          v22 = 1024;
          v23 = 168 * (v5 + 2);
          _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: %u sub curves, %u HapticCommands in total, sizeof(HapticCommand):%u, total size:%u bytes ", &v10, 0x34u);
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 168 * (v5 + 2);
}

- (void)destroySharedMemory
{
  obj = self;
  objc_sync_enter(obj);
  v2 = *(obj + 2);
  destroyHapticCommandWriter();
  *(obj + 2) = 0;
  objc_sync_exit(obj);
}

- (void)sequenceFinished:(unint64_t)finished error:(id)error
{
  *&v33[5] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136316162;
    v27 = "AVHapticClient.mm";
    v29 = 1443;
    v30 = 2080;
    v28 = 1024;
    v31 = "[AVHapticClient sequenceFinished:error:]";
    v32 = 1024;
    *v33 = [(AVHapticClient *)self clientID];
    v33[2] = 1024;
    *&v33[3] = finished;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-side sequence finish callback for client 0x%x, seq %u", &v26, 0x28u);
  }

LABEL_8:
  std::mutex::lock((self + 48));
  v10 = *(self + 15);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = (self + 120);
  do
  {
    v12 = *(v10 + 4);
    v13 = v12 >= finished;
    v14 = v12 < finished;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *&v10[8 * v14];
  }

  while (v10);
  if (v11 != (self + 120) && v11[4] <= finished)
  {
    handler = [v11[5] handler];
    [v11[5] setRunning:0];
    if ([v11[5] detached])
    {
      if (kAVHCScope)
      {
        if (*(kAVHCScope + 8))
        {
          v17 = *kAVHCScope;
          if (v17)
          {
            v18 = v17;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v26 = 136315650;
              v27 = "AVHapticClient.mm";
              v28 = 1024;
              v29 = 1452;
              v30 = 2080;
              v31 = "[AVHapticClient sequenceFinished:error:]";
              _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Deleting finished handler block for detached sequence", &v26, 0x1Cu);
            }
          }
        }
      }

      std::__tree<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,AVHapticSequenceEntry * {__strong}>>>::erase(self + 14, v11);
    }

    std::mutex::unlock((self + 48));
    if (handler)
    {
      if (kAVHCScope)
      {
        if (*(kAVHCScope + 8))
        {
          v19 = *kAVHCScope;
          if (v19)
          {
            v20 = v19;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v21 = MEMORY[0x21606F540](handler);
              v26 = 136315906;
              v27 = "AVHapticClient.mm";
              v28 = 1024;
              v29 = 1458;
              v30 = 2080;
              v31 = "[AVHapticClient sequenceFinished:error:]";
              v32 = 2048;
              *v33 = v21;
              _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling cached sequence finished handler block %p", &v26, 0x26u);
            }
          }
        }
      }

      (*(handler + 16))(handler, errorCopy);
      if (kAVHCScope)
      {
        if (*(kAVHCScope + 8))
        {
          v22 = *kAVHCScope;
          if (v22)
          {
            v23 = v22;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              clientID = [(AVHapticClient *)self clientID];
              v26 = 136315906;
              v27 = "AVHapticClient.mm";
              v28 = 1024;
              v29 = 1460;
              v30 = 2080;
              v31 = "[AVHapticClient sequenceFinished:error:]";
              v32 = 1024;
              *v33 = clientID;
              _os_log_impl(&dword_21569A000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client-side sequence finish callback done for client 0x%x", &v26, 0x22u);
            }
          }
        }
      }

      goto LABEL_43;
    }
  }

  else
  {
LABEL_16:
    std::mutex::unlock((self + 48));
  }

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v15 = *kAVHCScope;
      if (v15)
      {
        handler = v15;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v26 = 136315906;
          v27 = "AVHapticClient.mm";
          v28 = 1024;
          v29 = 1463;
          v30 = 2080;
          v31 = "[AVHapticClient sequenceFinished:error:]";
          v32 = 1024;
          *v33 = finished;
          _os_log_impl(&dword_21569A000, handler, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No cached sequence finished handler block for seq %u", &v26, 0x22u);
        }

LABEL_43:
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)clientCompletedWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (kAVHCScope)
  {
    v5 = *kAVHCScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v19 = "AVHapticClient.mm";
    v20 = 1024;
    v21 = 1472;
    v22 = 2080;
    v23 = "[AVHapticClient clientCompletedWithError:]";
    v24 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-side (async) finish completion callback for client 0x%x called from server", buf, 0x22u);
  }

LABEL_8:
  objc_initWeak(&location, self);
  v8 = *(self + 17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__AVHapticClient_clientCompletedWithError___block_invoke;
  block[3] = &unk_2781C94C0;
  objc_copyWeak(&v16, &location);
  v9 = errorCopy;
  v15 = v9;
  dispatch_async(v8, block);
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v10 = *kAVHCScope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          clientID2 = [(AVHapticClient *)self clientID];
          *buf = 136315906;
          v19 = "AVHapticClient.mm";
          v20 = 1024;
          v21 = 1491;
          v22 = 2080;
          v23 = "[AVHapticClient clientCompletedWithError:]";
          v24 = 1024;
          clientID = clientID2;
          _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client-side finish completionCallback done for client 0x%x", buf, 0x22u);
        }
      }
    }
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __43__AVHapticClient_clientCompletedWithError___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v19 = 136315650;
    v20 = "AVHapticClient.mm";
    v21 = 1024;
    v22 = 1488;
    v23 = 2080;
    v24 = "[AVHapticClient clientCompletedWithError:]_block_invoke";
    v16 = "%25s:%-5d %s: AVHapticClient 'strongSelf' is nil";
    goto LABEL_30;
  }

  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  v6 = v3;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315906;
    v20 = "AVHapticClient.mm";
    v21 = 1024;
    v22 = 1477;
    v23 = 2080;
    v24 = "[AVHapticClient clientCompletedWithError:]_block_invoke";
    v25 = 1024;
    LODWORD(v26) = [WeakRetained clientID];
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Async dispatch: preparing to call completionCallback for client 0x%x", &v19, 0x22u);
  }

LABEL_12:
  v7 = [WeakRetained completionCallback];
  v8 = v7 == 0;

  if (v8)
  {
    if (kAVHCScope)
    {
      v4 = *kAVHCScope;
      if (!v4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v4 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v19 = 136315650;
    v20 = "AVHapticClient.mm";
    v21 = 1024;
    v22 = 1484;
    v23 = 2080;
    v24 = "[AVHapticClient clientCompletedWithError:]_block_invoke";
    v16 = "%25s:%-5d %s: strongSelf.completionCallback is nil";
LABEL_30:
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_DEFAULT, v16, &v19, 0x1Cu);
LABEL_31:

    goto LABEL_32;
  }

  if (!kAVHCScope)
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
    goto LABEL_20;
  }

  v9 = *kAVHCScope;
  if (v9)
  {
LABEL_20:
    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [WeakRetained completionCallback];
      v13 = MEMORY[0x21606F540]();
      v19 = 136315906;
      v20 = "AVHapticClient.mm";
      v21 = 1024;
      v22 = 1479;
      v23 = 2080;
      v24 = "[AVHapticClient clientCompletedWithError:]_block_invoke";
      v25 = 2048;
      v26 = v13;
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling completionCallback %p and then setting to nil", &v19, 0x26u);
    }
  }

  v14 = [WeakRetained completionCallback];
  v14[2](v14, *(a1 + 32));

  [WeakRetained setCompletionCallback:0];
LABEL_32:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)clientStoppedForReason:(unint64_t)reason error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136316162;
    v22 = "AVHapticClient.mm";
    v24 = 1496;
    v25 = 2080;
    v23 = 1024;
    v26 = "[AVHapticClient clientStoppedForReason:error:]";
    v27 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    v29 = 1024;
    reasonCopy = reason;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-side (async) stop callback for client 0x%x, reason %d", &v21, 0x28u);
  }

LABEL_8:
  selfCopy = self;
  objc_sync_enter(selfCopy);
  asyncStopCallback = [(AVHapticClient *)selfCopy asyncStopCallback];
  v12 = asyncStopCallback == 0;

  if (!v12)
  {
    if (![(AVHapticClient *)selfCopy running])
    {
      if (kAVHCScope)
      {
        v13 = *kAVHCScope;
        if (!v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v13 = MEMORY[0x277D86220];
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315650;
        v22 = "AVHapticClient.mm";
        v23 = 1024;
        v24 = 1499;
        v25 = 2080;
        v26 = "[AVHapticClient clientStoppedForReason:error:]";
        _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client thinks it is not running.  Did we just get a call to stop?", &v21, 0x1Cu);
      }
    }

LABEL_17:
    [(AVHapticClient *)selfCopy setState:0];
    asyncStopCallback2 = [(AVHapticClient *)selfCopy asyncStopCallback];
    asyncStopCallback2[2](asyncStopCallback2, reason);

    v16 = *(selfCopy + 27);
    *(selfCopy + 27) = 0;
  }

  objc_sync_exit(selfCopy);

  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v17 = *kAVHCScope;
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          clientID2 = [(AVHapticClient *)selfCopy clientID];
          v21 = 136315906;
          v22 = "AVHapticClient.mm";
          v23 = 1024;
          v24 = 1505;
          v25 = 2080;
          v26 = "[AVHapticClient clientStoppedForReason:error:]";
          v27 = 1024;
          clientID = clientID2;
          _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client-side (async) stop callback done for client 0x%x", &v21, 0x22u);
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)clientDisconnectingForReason:(unint64_t)reason error:(id)error
{
  reasonCopy = reason;
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136316162;
    v12 = "AVHapticClient.mm";
    v14 = 1510;
    v15 = 2080;
    v13 = 1024;
    v16 = "[AVHapticClient clientDisconnectingForReason:error:]";
    v17 = 1024;
    clientID = [(AVHapticClient *)self clientID];
    v19 = 1024;
    v20 = reasonCopy;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client-side call for client 0x%x with disconnect reason %d", &v11, 0x28u);
  }

LABEL_8:
  *(self + 148) = 1;

  v10 = *MEMORY[0x277D85DE8];
}

- (uint64_t)doInit
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

void __36__AVHapticClient_allocateResources___block_invoke_2_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315394;
    v1 = "AVHapticClient.mm";
    v2 = 1024;
    v3 = 202;
    _os_log_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE [(sharedBufferSize > 0) != 0 is false]: ", &v0, 0x12u);
  }

  __break(1u);
}

- (void)scheduleParameterCurve:(os_log_t)log curve:atTime:channel:error:.cold.1(int a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "AVHapticClient.mm";
  *(buf + 6) = 1024;
  *(buf + 14) = 796;
  *(buf + 9) = 2080;
  *(buf + 20) = "[AVHapticClient scheduleParameterCurve:curve:atTime:channel:error:]";
  *(buf + 14) = 1024;
  *(buf + 30) = a1;
  _os_log_impl(&dword_21569A000, log, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Client 0x%x: doScheduleParamCurve failed!", buf, 0x22u);
}

- (void)scheduleParameterCurve:curve:atTime:channel:error:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315394;
    v1 = "AVHapticClient.mm";
    v2 = 1024;
    v3 = 798;
    _os_log_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE [(result) != 0 is false]: ", &v0, 0x12u);
  }

  __break(1u);
}

@end