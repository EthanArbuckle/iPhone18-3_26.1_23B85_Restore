@interface PHASESoundEvent
- (BOOL)indefinite;
- (BOOL)internalPrepareActionTreeWithCompletionBlock:(id)a3;
- (BOOL)internalStartActionTree:(id)a3 completion:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)prepareAndReturnError:(id *)a3;
- (BOOL)validateAudioSessionWithError:(id *)a3;
- (PHASERenderingState)renderingState;
- (PHASESoundEvent)init;
- (PHASESoundEvent)initWithEngine:(PHASEEngine *)engine assetIdentifier:(NSString *)assetIdentifier error:(NSError *)error;
- (PHASESoundEvent)initWithEngine:(PHASEEngine *)engine assetIdentifier:(NSString *)assetIdentifier mixerParameters:(PHASEMixerParameters *)mixerParameters error:(NSError *)error;
- (PHASESoundEvent)initWithEngine:(id)a3 assetIdentifier:(id)a4 source:(id)a5 listener:(id)a6 error:(id *)a7;
- (PHASESoundEvent)initWithEngine:(id)a3 rootNode:(id)a4 error:(id *)a5;
- (PHASESoundEvent)initWithEngine:(id)a3 rootNode:(id)a4 mixerParameters:(id)a5 error:(id *)a6;
- (PHASESoundEvent)initWithEngine:(id)a3 rootNode:(id)a4 source:(id)a5 listener:(id)a6 error:(id *)a7;
- (PHASESoundEvent)initWithEngine:(id)a3 soundPrototype:(id)a4 error:(id *)a5;
- (PHASESoundEvent)initWithEngine:(id)a3 soundPrototype:(id)a4 mixerParameters:(id)a5 error:(id *)a6;
- (PHASESoundEvent)initWithEngine:(id)a3 soundPrototype:(id)a4 source:(id)a5 listener:(id)a6 error:(id *)a7;
- (PHASESoundEventPrepareState)prepareState;
- (id).cxx_construct;
- (id)engine;
- (id)getActionTreeMetaParameterNames;
- (id)internalGetActionTreeMetaParameters;
- (id)internalGetActionTreeMixersWithMixerParameters:(id)a3 actionTreeAsset:(const void *)a4 outError:(id *)a5;
- (id)internalGetActionTreePullStreamNodes:(id)a3;
- (id)internalGetActionTreePushStreamNodes:(id)a3;
- (unint64_t)hash;
- (void)internalCleanup;
- (void)internalPrepareActionTreeWithCompletionBlock:(uint64_t)a3;
- (void)internalStartActionTree:(uint64_t)a3 completion:(uint64_t)a4;
- (void)pause;
- (void)prepareWithCompletion:(void *)handler;
- (void)prepareWithSessionIOBinding:(id)a3 completion:(id)a4;
- (void)registerTapSources;
- (void)resumeAtTime:(id)a3;
- (void)resumeAtTime:(uint64_t)a1;
- (void)seekToTime:(double)a3 resumeAtEngineTime:(id)a4 completion:(id)a5;
- (void)seekToTime:(double)time completion:(void *)handler;
- (void)seekToTime:(uint64_t)a3 completion:(void *)(a4;
- (void)setMetaParameter:(id)a3 value:(double)a4 withTimeInterval:(double)a5;
- (void)setMetaParameter:(id)a3 value:(id)a4;
- (void)setPrepareState:(int64_t)a3;
- (void)setRenderingState:(int64_t)a3;
- (void)startAtTime:(id)a3 completion:(id)a4;
- (void)stopAndInvalidate;
- (void)unregisterTapSources;
@end

@implementation PHASESoundEvent

- (PHASESoundEvent)init
{
  [(PHASESoundEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESoundEvent)initWithEngine:(id)a3 soundPrototype:(id)a4 mixerParameters:(id)a5 error:(id *)a6
{
  v51[1] = *MEMORY[0x277D85DE8];
  obj = a3;
  v39 = a4;
  v38 = a5;
  if (a6)
  {
    *a6 = 0;
  }

  v42.receiver = self;
  v42.super_class = PHASESoundEvent;
  v10 = [(PHASESoundEvent *)&v42 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_engine, obj);
    v11->_startCalled = 0;
    v11->_renderingState = 0;
    v11->_prepareState = 0;
    audioSession = v11->_audioSession;
    v11->_audioSession = 0;

    if (obj)
    {
      v13 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([obj implementation] + 48), 7);
      v14 = [obj assetRegistry];
      v15 = [v39 assetIdentifier];
      v40 = [v14 assetForIdentifier:v15];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        Phase::ActionTreeManager::AllocateActionTreeObject(v13, v40, v11);
      }

      v30 = *MEMORY[0x277CCA450];
      v48 = *MEMORY[0x277CCA450];
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"SoundEventNodeAsset not registered"];
      v49 = v31;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];

      v33 = **(Phase::Logger::GetInstance(v32) + 448);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [v26 objectForKeyedSubscript:v30];
        v35 = v34;
        v36 = [v34 UTF8String];
        *buf = 136315650;
        *&buf[4] = "PHASESoundEvent.mm";
        *&buf[12] = 1024;
        *&buf[14] = 158;
        v46 = 2080;
        v47 = v36;
        _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
      }

      if (a6)
      {
        *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925665 userInfo:v26];
      }
    }

    else
    {
      v23 = *MEMORY[0x277CCA450];
      v50 = *MEMORY[0x277CCA450];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"PHASE not initialized"];
      v51[0] = v24;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];

      v26 = **(Phase::Logger::GetInstance(v25) + 448);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [(PHASESoundEventNodeAsset *)v40 objectForKeyedSubscript:v23];
        v28 = v27;
        v29 = [v27 UTF8String];
        *buf = 136315650;
        *&buf[4] = "PHASESoundEvent.mm";
        *&buf[12] = 1024;
        *&buf[14] = 144;
        v46 = 2080;
        v47 = v29;
        _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v16 = *MEMORY[0x277CCA450];
    v43 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"PHASESoundEventNodeAsset not registered"];
    v44 = v17;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

    v19 = **(Phase::Logger::GetInstance(v18) + 448);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(PHASESoundEventNodeAsset *)v40 objectForKeyedSubscript:v16];
      v21 = v20;
      v22 = [v20 UTF8String];
      *buf = 136315650;
      *&buf[4] = "PHASESoundEvent.mm";
      *&buf[12] = 1024;
      *&buf[14] = 270;
      v46 = 2080;
      v47 = v22;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925665 userInfo:v40];
    }
  }

  return 0;
}

- (PHASESoundEvent)initWithEngine:(id)a3 soundPrototype:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(PHASEMixerParameters);
  v11 = [(PHASESoundEvent *)self initWithEngine:v8 soundPrototype:v9 mixerParameters:v10 error:a5];

  return v11;
}

- (PHASESoundEvent)initWithEngine:(id)a3 soundPrototype:(id)a4 source:(id)a5 listener:(id)a6 error:(id *)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24 = self;
  v15 = objc_alloc_init(PHASEMixerParameters);
  [v12 mixerInformation];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v16 = v27 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        if ([v20 mixerType] == 1)
        {
          v21 = [v20 identifier];
          [(PHASEMixerParameters *)v15 addSpatialMixerParametersWithIdentifier:v21 source:v13 listener:v14];
        }

        else
        {
          if ([v20 mixerType] != 2)
          {
            continue;
          }

          v21 = [v20 identifier];
          [(PHASEMixerParameters *)v15 addAmbientMixerParametersWithIdentifier:v21 listener:v14];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  v22 = [(PHASESoundEvent *)v24 initWithEngine:v25 soundPrototype:v12 mixerParameters:v15 error:a7];
  return v22;
}

- (PHASESoundEvent)initWithEngine:(id)a3 rootNode:(id)a4 mixerParameters:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [[PHASESoundPrototype alloc] initWithEngine:v10 actionTreeRootNode:v11 error:a6];
  v14 = [(PHASESoundEvent *)self initWithEngine:v10 soundPrototype:v13 mixerParameters:v12 error:a6];

  return v14;
}

- (PHASESoundEvent)initWithEngine:(id)a3 rootNode:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[PHASESoundPrototype alloc] initWithEngine:v8 actionTreeRootNode:v9 error:a5];
  v11 = [(PHASESoundEvent *)self initWithEngine:v8 soundPrototype:v10 error:a5];

  return v11;
}

- (PHASESoundEvent)initWithEngine:(id)a3 rootNode:(id)a4 source:(id)a5 listener:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [[PHASESoundPrototype alloc] initWithEngine:v12 actionTreeRootNode:v13 error:a7];
  v17 = [(PHASESoundEvent *)self initWithEngine:v12 soundPrototype:v16 source:v14 listener:v15 error:a7];

  return v17;
}

- (PHASESoundEvent)initWithEngine:(PHASEEngine *)engine assetIdentifier:(NSString *)assetIdentifier mixerParameters:(PHASEMixerParameters *)mixerParameters error:(NSError *)error
{
  v10 = engine;
  v11 = assetIdentifier;
  v12 = mixerParameters;
  v13 = [[PHASESoundPrototype alloc] initWithEngine:v10 registeredActionTreeIdentifier:v11 error:error];
  v14 = [(PHASESoundEvent *)self initWithEngine:v10 soundPrototype:v13 mixerParameters:v12 error:error];

  return v14;
}

- (PHASESoundEvent)initWithEngine:(PHASEEngine *)engine assetIdentifier:(NSString *)assetIdentifier error:(NSError *)error
{
  v8 = engine;
  v9 = assetIdentifier;
  v10 = [[PHASESoundPrototype alloc] initWithEngine:v8 registeredActionTreeIdentifier:v9 error:error];
  v11 = [(PHASESoundEvent *)self initWithEngine:v8 soundPrototype:v10 error:error];

  return v11;
}

- (PHASESoundEvent)initWithEngine:(id)a3 assetIdentifier:(id)a4 source:(id)a5 listener:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [[PHASESoundPrototype alloc] initWithEngine:v12 registeredActionTreeIdentifier:v13 error:a7];
  v17 = [(PHASESoundEvent *)self initWithEngine:v12 soundPrototype:v16 source:v14 listener:v15 error:a7];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && (ptr = self->_actionTreeObject.__ptr_, v6 = v4[4], *ptr == *v6) && *(ptr + 1) == v6[1];

  return v7;
}

- (unint64_t)hash
{
  v2 = 0;
  ptr = self->_actionTreeObject.__ptr_;
  result = 0xCBF29CE484222325;
  do
  {
    result = 0x100000001B3 * (result ^ *(ptr + v2++));
  }

  while (v2 != 16);
  return result;
}

- (void)prepareWithCompletion:(void *)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = handler;
  if ([(PHASESoundEvent *)self prepareState])
  {
    v5 = *MEMORY[0x277CCA450];
    v27 = *MEMORY[0x277CCA450];
    v6 = MEMORY[0x277CCACA8];
    v7 = [(PHASESoundPrototype *)self->_protoType assetIdentifier];
    v8 = [v6 stringWithFormat:@"prepare called multiple times on %@ asset %@:", self, v7];
    v28[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];

    v11 = **(Phase::Logger::GetInstance(v10) + 448);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v9 objectForKeyedSubscript:v5];
      v13 = v12;
      *buf = 136315650;
      v24 = "PHASESoundEvent.mm";
      v25 = 1024;
      *v26 = 387;
      *&v26[4] = 2080;
      *&v26[6] = [v12 UTF8String];
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else if ([(PHASESoundEvent *)self validateAudioSessionWithError:0])
  {
    Instance = Phase::Logger::GetInstance([(PHASESoundEvent *)self setPrepareState:1]);
    if (*(Instance + 456) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(Instance) + 448);
      v16 = Phase::Logger::GetInstance(v15);
      v17 = os_signpost_id_generate(**(v16 + 448));
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = v17;
        if (os_signpost_enabled(v15))
        {
          v19 = *self->_actionTreeObject.__ptr_;
          v20 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
          *buf = 134218496;
          v24 = self;
          v25 = 2048;
          *v26 = v19;
          *&v26[8] = 1024;
          *&v26[10] = v20;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v15, OS_SIGNPOST_EVENT, v18, "Phase_SoundEvent_Prepare", "SoundEvent@%p: %llu Prepare Called on AudioSessionId 0x%x", buf, 0x1Cu);
        }
      }
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __41__PHASESoundEvent_prepareWithCompletion___block_invoke;
    v21[3] = &unk_278B4F8A8;
    v21[4] = self;
    v22 = v4;
    [(PHASESoundEvent *)self internalPrepareActionTreeWithCompletionBlock:v21];
  }

  else
  {
    if (v4)
    {
      v4[2](v4, 0);
    }

    [(PHASESoundEvent *)self stopAndInvalidate];
  }
}

void __41__PHASESoundEvent_prepareWithCompletion___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 setPrepareState:2];
    if (a2 == 1 && (a3 & 1) == 0)
    {
      [*(a1 + 32) registerTapSources];
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v7 = (*(v7 + 2))(v7, a2);
  }

  v8 = **(Phase::Logger::GetInstance(v7) + 448);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 136315906;
    v11 = "PHASESoundEvent.mm";
    v12 = 1024;
    v13 = 436;
    v14 = 2112;
    v15 = v9;
    v16 = 2048;
    v17 = a2;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ prepare completed with result: %ld", &v10, 0x26u);
  }
}

- (BOOL)prepareAndReturnError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  [(PHASESoundEvent *)self prepareWithCompletion:0];
  return 1;
}

- (BOOL)internalStartActionTree:(id)a3 completion:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    *v40 = 0;
    *&v40[8] = v40;
    *&v40[16] = 0x3032000000;
    *&v40[24] = __Block_byref_object_copy__0;
    v41 = __Block_byref_object_dispose__0;
    v42 = [v7 copy];
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = &self->_ioStartHostTime;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__PHASESoundEvent_internalStartActionTree_completion___block_invoke;
    aBlock[3] = &unk_278B4F8D0;
    aBlock[4] = v37;
    aBlock[5] = v40;
    v9 = _Block_copy(aBlock);
    v10 = objc_loadWeakRetained(&self->_engine);
    v11 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v10 implementation] + 48), 7);

    v35 = *self->_actionTreeObject.__ptr_;
    v12 = _Block_copy(v9);
    v13 = v6;
    if (*(v11 + 16) <= 0)
    {
      v28 = **(v11 + 24);
      v29 = v28;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "Commandable.hpp";
        v47 = 1024;
        v48 = 132;
        _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.");
      exception->__vftable = (MEMORY[0x277D828D8] + 16);
    }

    v14 = **(v11 + 8);
    v15 = v13;
    v39 = 0;
    v38 = 1;
    v16 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v14, 72, &v39, &v38);
    if (!v16)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v32 = **(v14 + 48);
      v33 = v32;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "CommandQueue.hpp";
        v47 = 1024;
        v48 = 100;
        _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      v34 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v34, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v38)
    {
      v17 = **(v14 + 48);
      v18 = v17;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v46 = "CommandQueue.hpp";
        v47 = 1024;
        v48 = 89;
        v49 = 2048;
        v50 = v39;
        v51 = 2048;
        v52 = 72;
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v16 = &unk_284D363B8;
    *(v16 + 8) = v11;
    *(v16 + 16) = Phase::ActionTreeManager::StartActionTree;
    *(v16 + 24) = 0;
    *(v16 + 32) = v35;
    *(v16 + 48) = v15;
    *(v16 + 56) = [PHASESoundEvent internalStartActionTree:completion:]::$_0::__invoke;
    *(v16 + 64) = v12;
    Phase::LockFreeQueueSPSC::CommitBytes(v14, 72);
    atomic_store(0, (v14 + 40));

    v19 = 1;
    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v40, 8);
  }

  else
  {
    v20 = *MEMORY[0x277CCA450];
    v43 = *MEMORY[0x277CCA450];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"PHASE not initialized"];
    v44 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];

    v24 = **(Phase::Logger::GetInstance(v23) + 448);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v22 objectForKeyedSubscript:v20];
      v26 = v25;
      *v40 = 136315650;
      *&v40[4] = "PHASESoundEvent.mm";
      *&v40[12] = 1024;
      *&v40[14] = 459;
      *&v40[18] = 2080;
      *&v40[20] = [v25 UTF8String];
      _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", v40, 0x1Cu);
    }

    (*(v7 + 2))(v7, 0);
    v19 = 0;
  }

  return v19;
}

- (void)startAtTime:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_startCalled)
  {
    v9 = **(Phase::Logger::GetInstance(v7) + 448);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(PHASESoundPrototype *)self->_protoType assetIdentifier];
      *buf = 136315906;
      v21 = "PHASESoundEvent.mm";
      v22 = 1024;
      *v23 = 515;
      *&v23[4] = 2112;
      *&v23[6] = self;
      v24 = 2080;
      v25 = [v10 UTF8String];
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Start called multiple times for %@ with asset %s already", buf, 0x26u);
    }

    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }
  }

  else
  {
    if (!self->_prepareState)
    {
      [(PHASESoundEvent *)self prepareWithCompletion:0];
    }

    self->_startCalled = 1;
    Instance = Phase::Logger::GetInstance([(PHASESoundEvent *)self setRenderingState:1]);
    if (*(Instance + 456) == 1)
    {
      v12 = **(Phase::Logger::GetInstance(Instance) + 448);
      v13 = Phase::Logger::GetInstance(v12);
      v14 = os_signpost_id_generate(**(v13 + 448));
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = v14;
        if (os_signpost_enabled(v12))
        {
          v16 = *self->_actionTreeObject.__ptr_;
          v17 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
          *buf = 134218496;
          v21 = self;
          v22 = 2048;
          *v23 = v16;
          *&v23[8] = 1024;
          *&v23[10] = v17;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_EVENT, v15, "Phase_SoundEvent_Start", "SoundEvent@%p: %llu Start Called on AudioSessionId 0x%x", buf, 0x1Cu);
        }
      }
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__PHASESoundEvent_startAtTime_completion___block_invoke;
    v18[3] = &unk_278B4F8F8;
    v18[4] = self;
    v19 = v8;
    [(PHASESoundEvent *)self internalStartActionTree:v6 completion:v18];
  }
}

void __42__PHASESoundEvent_startAtTime_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRenderingState:0];
  v4 = *(a1 + 40);
  if (v4)
  {
    v4 = (*(v4 + 2))(v4, a2);
  }

  v5 = **(Phase::Logger::GetInstance(v4) + 448);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 136315906;
    v8 = "PHASESoundEvent.mm";
    v9 = 1024;
    v10 = 552;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ completed with result: %ld", &v7, 0x26u);
  }
}

- (void)prepareWithSessionIOBinding:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  audioSession = self->_audioSession;
  if (!audioSession || ([v6 session], v10 = objc_claimAutoreleasedReturnValue(), v10, audioSession == v10))
  {
    v13 = **(Phase::Logger::GetInstance(v7) + 448);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 session];
      v17 = 136315906;
      v18 = "PHASESoundEvent.mm";
      v19 = 1024;
      v20 = 571;
      v21 = 2112;
      v22 = self;
      v23 = 1024;
      v24 = [v14 opaqueSessionID];
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preparing %@, associated with audio sessionId 0x%x", &v17, 0x22u);
    }

    v15 = [v6 session];
    v16 = self->_audioSession;
    self->_audioSession = v15;

    [(PHASESoundEvent *)self prepareWithCompletion:v8];
  }

  else
  {
    v11 = **(Phase::Logger::GetInstance(v7) + 448);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
      v17 = 136315906;
      v18 = "PHASESoundEvent.mm";
      v19 = 1024;
      v20 = 562;
      v21 = 2112;
      v22 = self;
      v23 = 1024;
      v24 = v12;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d %@ already assigned an audio sessionId 0x%x", &v17, 0x22u);
    }

    if (v8)
    {
      (*(v8 + 2))(v8, 0);
    }
  }
}

- (void)pause
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(self->_actionTreeObject.__ptr_ + 144))
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);

    if (WeakRetained)
    {
      [(PHASESoundEvent *)self setRenderingState:2];
      v4 = objc_loadWeakRetained(&self->_engine);
      v5 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v4 implementation] + 48), 7);

      v14 = *self->_actionTreeObject.__ptr_;
      v6 = **(v5 + 8);
      v13 = 0;
      v12 = 1;
      v7 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v6, 32, &v13, &v12);
      if (!v7)
      {
        Instance = Phase::Logger::GetInstance(0);
        Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        v10 = **(v6 + 48);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v16 = "CommandQueue.hpp";
          v17 = 1024;
          v18 = 100;
          _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      }

      if (v12)
      {
        v8 = **(v6 + 48);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v16 = "CommandQueue.hpp";
          v17 = 1024;
          v18 = 89;
          v19 = 2048;
          v20 = v13;
          v21 = 2048;
          v22 = 32;
          _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
        }
      }

      *v7 = &unk_284D363E0;
      *(v7 + 8) = v5;
      *(v7 + 16) = v14;
      Phase::LockFreeQueueSPSC::CommitBytes(v6, 32);
      atomic_store(0, (v6 + 40));
    }
  }
}

- (void)resumeAtTime:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(self->_actionTreeObject.__ptr_ + 144))
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);

    if (WeakRetained)
    {
      [(PHASESoundEvent *)self setRenderingState:1];
      v6 = objc_loadWeakRetained(&self->_engine);
      v7 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v6 implementation] + 48), 7);

      v17 = *self->_actionTreeObject.__ptr_;
      v8 = v4;
      v9 = **(v7 + 8);
      v16 = 0;
      v15 = 1;
      v10 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v9, 40, &v16, &v15);
      if (!v10)
      {
        Instance = Phase::Logger::GetInstance(0);
        Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        v13 = **(v9 + 48);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v19 = "CommandQueue.hpp";
          v20 = 1024;
          v21 = 100;
          _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      }

      if (v15)
      {
        v11 = **(v9 + 48);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v19 = "CommandQueue.hpp";
          v20 = 1024;
          v21 = 89;
          v22 = 2048;
          v23 = v16;
          v24 = 2048;
          v25 = 40;
          _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
        }
      }

      *v10 = &unk_284D36408;
      *(v10 + 8) = v7;
      *(v10 + 16) = v17;
      *(v10 + 32) = v8;
      Phase::LockFreeQueueSPSC::CommitBytes(v9, 40);
      atomic_store(0, (v9 + 40));
    }
  }
}

- (void)stopAndInvalidate
{
  v29 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(self);
  if (*(Instance + 456) == 1)
  {
    v4 = **(Phase::Logger::GetInstance(Instance) + 448);
    v5 = Phase::Logger::GetInstance(v4);
    v6 = os_signpost_id_generate(**(v5 + 448));
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v4))
      {
        v8 = *self->_actionTreeObject.__ptr_;
        v9 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
        *buf = 134218496;
        v24 = self;
        v25 = 2048;
        *v26 = v8;
        *&v26[8] = 1024;
        *&v26[10] = v9;
        _os_signpost_emit_with_name_impl(&dword_23A302000, v4, OS_SIGNPOST_EVENT, v7, "Phase_SoundEvent_Stop", "SoundEvent@%p: %llu Stop Called on AudioSessionId 0x%x", buf, 0x1Cu);
      }
    }
  }

  if (*(self->_actionTreeObject.__ptr_ + 144))
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    v11 = WeakRetained == 0;

    if (!v11)
    {
      v12 = objc_loadWeakRetained(&self->_engine);
      v13 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v12 implementation] + 48), 7);

      v22 = *self->_actionTreeObject.__ptr_;
      v14 = **(v13 + 8);
      v21 = 0;
      v20 = 1;
      v15 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v14, 32, &v21, &v20);
      if (!v15)
      {
        v17 = Phase::Logger::GetInstance(0);
        Phase::Logger::DumpTailspinWithThrottleAsync(v17, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        v18 = **(v14 + 48);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "CommandQueue.hpp";
          v25 = 1024;
          *v26 = 100;
          _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      }

      if (v20)
      {
        v16 = **(v14 + 48);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v24 = "CommandQueue.hpp";
          v25 = 1024;
          *v26 = 89;
          *&v26[4] = 2048;
          *&v26[6] = v21;
          v27 = 2048;
          v28 = 32;
          _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
        }
      }

      *v15 = &unk_284D36430;
      *(v15 + 8) = v13;
      *(v15 + 16) = v22;
      Phase::LockFreeQueueSPSC::CommitBytes(v14, 32);
      atomic_store(0, (v14 + 40));
      if ([(PHASESoundEvent *)self renderingState])
      {
        [(PHASESoundEvent *)self setRenderingState:0];
      }
    }
  }
}

- (void)registerTapSources
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v4 = objc_loadWeakRetained(&self->_engine);
    if ([v4 implementation])
    {
      v5 = objc_loadWeakRetained(&self->_engine);
      v6 = *([v5 implementation] + 536);

      if ((v6 & 1) == 0)
      {
        v7 = objc_loadWeakRetained(&self->_engine);
        v8 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v7 implementation] + 48), 7);

        Phase::ActionTreeManager::GetAllValidSubmixIds(v8, *self->_actionTreeObject.__ptr_, *(self->_actionTreeObject.__ptr_ + 1), &v17);
        begin = self->_submixIds.__begin_;
        if (begin)
        {
          self->_submixIds.__end_ = begin;
          operator delete(begin);
          self->_submixIds.__begin_ = 0;
          self->_submixIds.__end_ = 0;
          self->_submixIds.__cap_ = 0;
        }

        v10 = v17;
        self->_submixIds.__begin_ = v17;
        v11 = v18;
        *&self->_submixIds.__end_ = v18;
        if (v10 != v11)
        {
          if (self->_prepareState != 2)
          {
            std::terminate();
          }

          v12 = objc_loadWeakRetained(&self->_engine);
          v13 = [v12 implementation];
          v14 = Phase::Controller::TaskManager::GetService<Phase::TapSourceRegistry>(*(v13 + 96), *(v13 + 104));

          if (v14)
          {
            v15 = getpid();
            Phase::TapSourceRegistry::CacheTapInfo(v14, v15, self->_audioSession, &self->_cachedTapInfo);
            Phase::TapSourceRegistry::RegisterTapSource(v14, 0, &self->_submixIds.__begin_, &self->_cachedTapInfo);
            Phase::TapSourceRegistry::RegisterTapSource(v14, 1, &self->_submixIds.__begin_, &self->_cachedTapInfo);
          }
        }
      }
    }

    else
    {
    }
  }
}

- (void)unregisterTapSources
{
  p_submixIds = &self->_submixIds;
  if (self->_submixIds.__begin_ != self->_submixIds.__end_)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    if (WeakRetained)
    {
      v10 = WeakRetained;
      v5 = objc_loadWeakRetained(&self->_engine);
      if ([v5 implementation])
      {
        v6 = objc_loadWeakRetained(&self->_engine);
        v7 = *([v6 implementation] + 536);

        if ((v7 & 1) == 0)
        {
          v11 = objc_loadWeakRetained(&self->_engine);
          v8 = [v11 implementation];
          v9 = Phase::Controller::TaskManager::GetService<Phase::TapSourceRegistry>(*(v8 + 96), *(v8 + 104));

          if (v9)
          {
            Phase::TapSourceRegistry::UnregisterTapSource(v9, 0, p_submixIds, &self->_cachedTapInfo);

            Phase::TapSourceRegistry::UnregisterTapSource(v9, 1, p_submixIds, &self->_cachedTapInfo);
          }
        }
      }

      else
      {
      }
    }
  }
}

- (void)setMetaParameter:(id)a3 value:(double)a4 withTimeInterval:(double)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (*(self->_actionTreeObject.__ptr_ + 144))
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);

    if (WeakRetained)
    {
      v10 = objc_loadWeakRetained(&self->_engine);
      v11 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v10 implementation] + 48), 7);

      ptr = self->_actionTreeObject.__ptr_;
      v13 = *ptr;
      v14 = *(ptr + 1);
      v15 = [v8 UTF8String];
      if (v15 && (v16 = *v15, *v15))
      {
        v17 = v15 + 1;
        v18 = 0xCBF29CE484222325;
        do
        {
          v18 = 0x100000001B3 * (v18 ^ v16);
          v19 = *v17++;
          v16 = v19;
        }

        while (v19);
      }

      else
      {
        v18 = 0;
      }

      v20 = Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::ActionTreeManager,BOOL,Phase::UniqueObjectId,unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double>(v11, v13, v14, v18, 1, *&a4, a5);
      if ((v20 & 1) == 0)
      {
        v21 = **(Phase::Logger::GetInstance(v20) + 448);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315650;
          v23 = "PHASESoundEvent.mm";
          v24 = 1024;
          v25 = 730;
          v26 = 2112;
          v27 = self;
          _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %@ Command buffer full.  Unable to set MetaParameter.  Consider having fewer sound event API calls in a given frame", &v22, 0x1Cu);
        }
      }
    }
  }
}

- (void)setMetaParameter:(id)a3 value:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (*(self->_actionTreeObject.__ptr_ + 144))
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);

    if (WeakRetained)
    {
      v9 = objc_loadWeakRetained(&self->_engine);
      v10 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v9 implementation] + 48), 7);

      v11 = [v7 UTF8String];
      if (v11 && (v12 = *v11, *v11))
      {
        v13 = 0xCBF29CE484222325;
        v14 = v11 + 1;
        do
        {
          v13 = 0x100000001B3 * (v13 ^ v12);
          v15 = *v14++;
          v12 = v15;
        }

        while (v15);
      }

      else
      {
        v13 = 0;
      }

      ptr = self->_actionTreeObject.__ptr_;
      v17 = *ptr;
      v18 = *(ptr + 1);
      v19 = [v6 UTF8String];
      if (v19 && (v20 = *v19, *v19))
      {
        v21 = 0xCBF29CE484222325;
        v22 = v19 + 1;
        do
        {
          v21 = 0x100000001B3 * (v21 ^ v20);
          v23 = *v22++;
          v20 = v23;
        }

        while (v23);
      }

      else
      {
        v21 = 0;
      }

      v24 = Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::ActionTreeManager,BOOL,Phase::UniqueObjectId,unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double>(v10, v17, v18, v21, 2, v13, 0.0);
      if ((v24 & 1) == 0)
      {
        v25 = **(Phase::Logger::GetInstance(v24) + 448);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = 136315650;
          v27 = "PHASESoundEvent.mm";
          v28 = 1024;
          v29 = 751;
          v30 = 2112;
          v31 = self;
          _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d %@ Command buffer full.  Unable to set MetaParameter.  Consider having fewer sound event API calls in a given frame", &v26, 0x1Cu);
        }
      }
    }
  }
}

- (PHASERenderingState)renderingState
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    return self->_renderingState;
  }

  else
  {
    return 0;
  }
}

- (PHASESoundEventPrepareState)prepareState
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    return self->_prepareState;
  }

  else
  {
    return 2;
  }
}

- (BOOL)indefinite
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    v4 = *(self->_actionTreeObject.__ptr_ + 3);
    if (v4)
    {
      LOBYTE(v4) = *(v4 + 112) ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

- (void)internalCleanup
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (WeakRetained)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(NSDictionary *)self->_mixers allValues];
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v5)
    {
      v6 = *v19;
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v18 + 1) + 8 * v7);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
            if ([v9 sourceDirectivityModel])
            {
              v10 = *([WeakRetained implementation] + 368);
              (*(*v10 + 352))(v10, [v9 sourceDirectivityModel]);
            }

            if ([v9 listenerDirectivityModel])
            {
              v11 = *([WeakRetained implementation] + 368);
              (*(*v11 + 352))(v11, [v9 listenerDirectivityModel]);
            }

            if ([v9 distanceModel])
            {
              v12 = *([WeakRetained implementation] + 368);
              (*(*v12 + 360))(v12, [v9 distanceModel]);
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v18 objects:v30 count:16];
      }

      while (v5);
    }

    v13 = [(PHASESoundEvent *)self renderingState];
    if (v13)
    {
      v14 = **(Phase::Logger::GetInstance(v13) + 448);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *self->_actionTreeObject.__ptr_;
        v16 = [(PHASESoundEvent *)self renderingState];
        if (v16 > PHASERenderingStatePaused)
        {
          v17 = "<not found>";
        }

        else
        {
          v17 = off_278B4F958[v16];
        }

        *buf = 136315906;
        v23 = "PHASESoundEvent.mm";
        v24 = 1024;
        v25 = 835;
        v26 = 2048;
        v27 = v15;
        v28 = 2080;
        v29 = v17;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d (sound event: %llu) - the sound event state should be stopped prior to its teardown. (rendering state: %s)", buf, 0x26u);
      }

      [(PHASESoundEvent *)self setRenderingState:0];
    }

    [(PHASESoundEvent *)self unregisterTapSources];
    [WeakRetained removeSoundEvent:self];
  }
}

- (BOOL)validateAudioSessionWithError:(id *)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = self->_audioSession;
  if (a3)
  {
    *a3 = 0;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = self->_mixers;
  v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (!v7)
  {
LABEL_21:

    if (!v5)
    {
      v5 = [MEMORY[0x277CB83F8] sharedInstance];
    }

    v5 = v5;
    audioSession = self->_audioSession;
    self->_audioSession = v5;
    v22 = 1;
    goto LABEL_33;
  }

  v46 = a3;
  obj = v6;
  v8 = *v49;
LABEL_5:
  v9 = 0;
  while (1)
  {
    if (*v49 != v8)
    {
      objc_enumerationMutation(obj);
    }

    v10 = [(NSDictionary *)self->_mixers objectForKey:*(*(&v48 + 1) + 8 * v9)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 source];
      v12 = [v11 parent];

      if (v12)
      {
        break;
      }
    }

LABEL_19:

    if (++v9 == v7)
    {
      v6 = obj;
      v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v48 objects:v62 count:16];
      if (!v7)
      {
        goto LABEL_21;
      }

      goto LABEL_5;
    }
  }

  while (1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    v13 = [v12 session];
    v14 = v13 == 0;

    if (v14)
    {
      goto LABEL_18;
    }

    if (v5)
    {
      break;
    }

    v5 = [v12 session];
LABEL_18:
    v20 = [v12 parent];

    v12 = v20;
    if (!v20)
    {
      goto LABEL_19;
    }
  }

  v15 = self->_audioSession;
  if (v15)
  {
    v16 = [v12 session];
    v17 = v15 == v16;

    if (!v17)
    {
      v35 = *MEMORY[0x277CCA450];
      v60 = *MEMORY[0x277CCA450];
      v36 = MEMORY[0x277CCACA8];
      v37 = [(AVAudioSession *)self->_audioSession opaqueSessionID];
      v38 = [v12 session];
      v39 = [v36 stringWithFormat:@"A PHASESoundEvent cannot prepare with a session IO binding (sessionID=%u) that disagrees with its PHASESource's root object's audio session (sessionID=%u)", v37, objc_msgSend(v38, "opaqueSessionID")];
      v61 = v39;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];

      v41 = **(Phase::Logger::GetInstance(v40) + 448);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = [v28 objectForKeyedSubscript:v35];
        v43 = v42;
        v44 = [v42 UTF8String];
        *buf = 136315650;
        v55 = "PHASESoundEvent.mm";
        v56 = 1024;
        v57 = 898;
        v58 = 2080;
        v59 = v44;
        _os_log_impl(&dword_23A302000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
      }

      if (v46)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  v18 = [v12 session];
  v19 = v5 == v18;

  if (v19)
  {
    goto LABEL_18;
  }

  v23 = *MEMORY[0x277CCA450];
  v52 = *MEMORY[0x277CCA450];
  v24 = MEMORY[0x277CCACA8];
  v25 = [(AVAudioSession *)v5 opaqueSessionID];
  v26 = [v12 session];
  v27 = [v24 stringWithFormat:@"A PHASESoundEvent cannot have multiple PHASESources with different session root objects (sessionIDs %u and %u)", v25, objc_msgSend(v26, "opaqueSessionID")];
  v53 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];

  v30 = **(Phase::Logger::GetInstance(v29) + 448);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v32 = [v28 objectForKeyedSubscript:v23];
    v33 = v32;
    v34 = [v32 UTF8String];
    *buf = 136315650;
    v55 = "PHASESoundEvent.mm";
    v56 = 1024;
    v57 = 917;
    v58 = 2080;
    v59 = v34;
    _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
  }

  if (v46)
  {
LABEL_31:
    *v46 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925668 userInfo:v28];
  }

LABEL_32:

  v22 = 0;
  audioSession = obj;
LABEL_33:

  return v22;
}

- (BOOL)internalPrepareActionTreeWithCompletionBlock:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    audioSession = self->_audioSession;
    if (!audioSession)
    {
      std::terminate();
    }

    *(self->_actionTreeObject.__ptr_ + 83) = [(AVAudioSession *)audioSession opaqueSessionID];
    *v37 = 0;
    *&v37[8] = v37;
    *&v37[16] = 0x3032000000;
    *&v37[24] = __Block_byref_object_copy__0;
    v38 = __Block_byref_object_dispose__0;
    v39 = [v4 copy];
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v34[3] = &self->_preparedHostTime;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__PHASESoundEvent_internalPrepareActionTreeWithCompletionBlock___block_invoke;
    aBlock[3] = &unk_278B4F920;
    aBlock[4] = v34;
    aBlock[5] = v37;
    v7 = _Block_copy(aBlock);
    v8 = objc_loadWeakRetained(&self->_engine);
    v9 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v8 implementation] + 48), 7);

    v32 = *self->_actionTreeObject.__ptr_;
    v10 = _Block_copy(v7);
    if (*(v9 + 16) <= 0)
    {
      v25 = **(v9 + 24);
      v26 = v25;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v43 = "Commandable.hpp";
        v44 = 1024;
        v45 = 132;
        _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.");
      exception->__vftable = (MEMORY[0x277D828D8] + 16);
    }

    v11 = v10;
    v12 = **(v9 + 8);
    v36 = 0;
    v35 = 1;
    v13 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v12, 64, &v36, &v35);
    if (!v13)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v29 = **(v12 + 48);
      v30 = v29;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v43 = "CommandQueue.hpp";
        v44 = 1024;
        v45 = 100;
        _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      v31 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v31, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v35)
    {
      v14 = **(v12 + 48);
      v15 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v43 = "CommandQueue.hpp";
        v44 = 1024;
        v45 = 89;
        v46 = 2048;
        v47 = v36;
        v48 = 2048;
        v49 = 64;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v13 = &unk_284D36480;
    *(v13 + 8) = v9;
    *(v13 + 16) = Phase::ActionTreeManager::PrepareActionTree;
    *(v13 + 24) = 0;
    *(v13 + 32) = v32;
    *(v13 + 48) = [PHASESoundEvent internalPrepareActionTreeWithCompletionBlock:]::$_4::__invoke;
    *(v13 + 56) = v11;
    Phase::LockFreeQueueSPSC::CommitBytes(v12, 64);
    atomic_store(0, (v12 + 40));
    v16 = 1;

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v37, 8);
  }

  else
  {
    v17 = *MEMORY[0x277CCA450];
    v40 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"PHASE not initialized"];
    v41 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];

    v21 = **(Phase::Logger::GetInstance(v20) + 448);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v19 objectForKeyedSubscript:v17];
      v23 = v22;
      *v37 = 136315650;
      *&v37[4] = "PHASESoundEvent.mm";
      *&v37[12] = 1024;
      *&v37[14] = 954;
      *&v37[18] = 2080;
      *&v37[20] = [v22 UTF8String];
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", v37, 0x1Cu);
    }

    (*(v4 + 2))(v4, 0, 1);
    v16 = 0;
  }

  return v16;
}

- (id)getActionTreeMetaParameterNames
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  ptr = self->_actionTreeObject.__ptr_;
  v5 = *(ptr + 3);
  if (*(v5 + 64))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [*(ptr + 2) getNullableString:*(*(v5 + 72) + v6)];
      if (v8)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
        [v3 addObject:v9];
      }

      ++v7;
      ptr = self->_actionTreeObject.__ptr_;
      v5 = *(ptr + 3);
      v6 += 464;
    }

    while (v7 < *(v5 + 64));
  }

  return v3;
}

- (id)internalGetActionTreeMetaParameters
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  ptr = self->_actionTreeObject.__ptr_;
  v5 = *(ptr + 3);
  if (*(v5 + 64))
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [*(ptr + 2) getNullableString:*(*(v5 + 72) + v6)];
      ptr = self->_actionTreeObject.__ptr_;
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = *(*(ptr + 3) + 72);
      if (*(v9 + v6 + 8) != 1)
      {
        goto LABEL_16;
      }

      v10 = *(v9 + v6 + 12);
      if (v10 == 2)
      {
        break;
      }

      if (v10 == 1)
      {
        v11 = [PHASENumberMetaParameter alloc];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
        v13 = [(PHASENumberMetaParameter *)v11 initWithUID:v12 value:self rangeMin:*(v9 + v6 + 48) rangeMax:*(v9 + v6 + 32) delegate:*(v9 + v6 + 40)];

        v14 = v13;
        v15 = [(PHASEMetaParameter *)v14 identifier];
        [v3 setObject:v14 forKeyedSubscript:v15];
LABEL_15:

        ptr = self->_actionTreeObject.__ptr_;
      }

LABEL_16:
      ++v7;
      v5 = *(ptr + 3);
      v6 += 464;
      if (v7 >= *(v5 + 64))
      {
        goto LABEL_17;
      }
    }

    if (*(v9 + v6 + 48))
    {
      v16 = [*(ptr + 2) getNullableString:?];
    }

    else
    {
      v16 = "";
    }

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = "";
    }

    v18 = [PHASEStringMetaParameter alloc];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
    v21 = [(PHASEStringMetaParameter *)v18 initWithUID:v19 value:v20 delegate:self];

    v14 = v21;
    v15 = [(PHASEMetaParameter *)v14 identifier];
    [v3 setObject:v14 forKeyedSubscript:v15];
    goto LABEL_15;
  }

LABEL_17:
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v22;
}

- (id)internalGetActionTreeMixersWithMixerParameters:(id)a3 actionTreeAsset:(const void *)a4 outError:(id *)a5
{
  v243[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v198 = v7;
  v204 = [v7 parameterDictionary];
  if (a5)
  {
    *a5 = 0;
  }

  v199 = a5;
  if (v7 && [v204 count] || (v8 = *(a4 + 24), !v8))
  {
LABEL_9:
    v203 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v204, "count")}];
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    obj = [v204 allKeys];
    v200 = [obj countByEnumeratingWithState:&v209 objects:v235 count:16];
    if (v200)
    {
      v201 = *v210;
      do
      {
        for (i = 0; i != v200; ++i)
        {
          if (*v210 != v201)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v209 + 1) + 8 * i);
          v11 = [v204 objectForKeyedSubscript:v10];
          v207 = v11;
          v12 = [v11 mixerType];
          if (v12 == 1)
          {
            v28 = [v11 source];
            if (!v28 || ([v11 listener], v29 = objc_claimAutoreleasedReturnValue(), v30 = v29 == 0, v29, v28, v30))
            {
              v98 = *MEMORY[0x277CCA450];
              v233 = *MEMORY[0x277CCA450];
              v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize PHASESoundEvent: Sound instance spatial mixer dictionary not complete for mixer %@", v10];
              v234 = v99;
              v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v234 forKeys:&v233 count:1];

              v102 = **(Phase::Logger::GetInstance(v101) + 448);
              v103 = os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);
              v104 = v199;
              if (v103)
              {
                v105 = [v100 objectForKeyedSubscript:v98];
                v106 = v105;
                v107 = [v105 UTF8String];
                *buf = 136315650;
                v237 = "PHASESoundEvent.mm";
                v238 = 1024;
                v239 = 1136;
                v240 = 2080;
                v241 = v107;
                _os_log_impl(&dword_23A302000, v102, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);

                v104 = v199;
              }

              v108 = v104 == 0;

              if (!v108)
              {
LABEL_105:
                *v199 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925668 userInfo:v100];
              }

LABEL_106:

              v87 = 0;
              v74 = v207;
              goto LABEL_107;
            }

            v31 = [v207 listener];
            v32 = [v31 engine];
            WeakRetained = objc_loadWeakRetained(&self->_engine);
            v34 = v32 == WeakRetained;

            if (!v34)
            {
              v139 = *MEMORY[0x277CCA450];
              v231 = *MEMORY[0x277CCA450];
              v140 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize PHASESoundEvent: PHASEListener on mixer %@ is from a different engine instance", v10];
              v232 = v140;
              v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v232 forKeys:&v231 count:1];

              v142 = **(Phase::Logger::GetInstance(v141) + 448);
              v143 = os_log_type_enabled(v142, OS_LOG_TYPE_ERROR);
              v144 = v199;
              if (v143)
              {
                v145 = [v100 objectForKeyedSubscript:v139];
                v146 = v145;
                v147 = [v145 UTF8String];
                *buf = 136315650;
                v237 = "PHASESoundEvent.mm";
                v238 = 1024;
                v239 = 1151;
                v240 = 2080;
                v241 = v147;
                _os_log_impl(&dword_23A302000, v142, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);

                v144 = v199;
              }

              v148 = v144 == 0;

              if (!v148)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            v35 = [v207 source];
            v36 = [v35 engine];
            v37 = objc_loadWeakRetained(&self->_engine);
            v38 = v36 == v37;

            if (!v38)
            {
              v159 = *MEMORY[0x277CCA450];
              v229 = *MEMORY[0x277CCA450];
              v160 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize PHASESoundEvent: PHASESource on mixer %@ is from a different engine instance", v10];
              v230 = v160;
              v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v230 forKeys:&v229 count:1];

              v162 = **(Phase::Logger::GetInstance(v161) + 448);
              v163 = os_log_type_enabled(v162, OS_LOG_TYPE_ERROR);
              v164 = v199;
              if (v163)
              {
                v165 = [v100 objectForKeyedSubscript:v159];
                v166 = v165;
                v167 = [v165 UTF8String];
                *buf = 136315650;
                v237 = "PHASESoundEvent.mm";
                v238 = 1024;
                v239 = 1166;
                v240 = 2080;
                v241 = v167;
                _os_log_impl(&dword_23A302000, v162, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);

                v164 = v199;
              }

              v168 = v164 == 0;

              if (!v168)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            v39 = [v207 source];
            v40 = [v39 isConnectedToRoot];

            if ((v40 & 1) == 0)
            {
              v169 = *MEMORY[0x277CCA450];
              v227 = *MEMORY[0x277CCA450];
              v170 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize PHASESoundEvent: PHASESource on mixer %@ is not connected to the scene", v10];
              v228 = v170;
              v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v228 forKeys:&v227 count:1];

              v172 = **(Phase::Logger::GetInstance(v171) + 448);
              v173 = os_log_type_enabled(v172, OS_LOG_TYPE_ERROR);
              v174 = v199;
              if (v173)
              {
                v175 = [v100 objectForKeyedSubscript:v169];
                v176 = v175;
                v177 = [v175 UTF8String];
                *buf = 136315650;
                v237 = "PHASESoundEvent.mm";
                v238 = 1024;
                v239 = 1181;
                v240 = 2080;
                v241 = v177;
                _os_log_impl(&dword_23A302000, v172, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);

                v174 = v199;
              }

              v178 = v174 == 0;

              if (!v178)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            v41 = [v207 listener];
            v42 = [v41 isConnectedToRoot];

            if (!v42)
            {
              v179 = *MEMORY[0x277CCA450];
              v225 = *MEMORY[0x277CCA450];
              v180 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize PHASESoundEvent: PHASEListener on mixer %@ is not connected to the scene", v10];
              v226 = v180;
              v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v226 forKeys:&v225 count:1];

              v182 = **(Phase::Logger::GetInstance(v181) + 448);
              v183 = os_log_type_enabled(v182, OS_LOG_TYPE_ERROR);
              v184 = v199;
              if (v183)
              {
                v185 = [v100 objectForKeyedSubscript:v179];
                v186 = v185;
                v187 = [v185 UTF8String];
                *buf = 136315650;
                v237 = "PHASESoundEvent.mm";
                v238 = 1024;
                v239 = 1196;
                v240 = 2080;
                v241 = v187;
                _os_log_impl(&dword_23A302000, v182, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);

                v184 = v199;
              }

              v188 = v184 == 0;

              if (!v188)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            if (*(a4 + 24))
            {
              v44 = 0;
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 1456;
              do
              {
                v49 = *(a4 + 13);
                if (*(v49 + v48 - 1448) == 1)
                {
                  v50 = *(v49 + v48 - 1456);
                  if (v50 == Phase::GetStringHashId(v10, v43))
                  {
                    v51 = v49 + v48;
                    if (*(v49 + v48))
                    {
                      v52 = objc_loadWeakRetained(&self->_engine);
                      v53 = [v52 implementation];
                      v45 = (*(**(v53 + 368) + 48))(*(v53 + 368), v51, 0);
                    }

                    if (*(v51 - 1008))
                    {
                      v54 = objc_loadWeakRetained(&self->_engine);
                      v55 = [v54 implementation];
                      v47 = (*(**(v55 + 368) + 48))(*(v55 + 368), v51 - 1008, 1);
                    }

                    v56 = (v51 - 1424);
                    if (*v56)
                    {
                      v57 = objc_loadWeakRetained(&self->_engine);
                      v58 = [v57 implementation];
                      v46 = (*(**(v58 + 368) + 56))(*(v58 + 368), v56);
                    }
                  }
                }

                ++v44;
                v48 += 5944;
              }

              while (v44 < *(a4 + 24));
            }

            else
            {
              v47 = 0;
              v46 = 0;
              v45 = 0;
            }

            v63 = [PHASESpatialMixer alloc];
            v64 = objc_alloc_init(MEMORY[0x277CBEA60]);
            v65 = [v207 source];
            v66 = [v207 listener];
            v24 = [(PHASESpatialMixer *)v63 initWithIdentifier:v10 spatialModelerSends:v64 source:v65 listener:v66 sourceDirectivityModel:v45 listenerDirectivityModel:v47 distanceModel:v46];

            [v203 setObject:v24 forKey:v10];
          }

          else
          {
            if (v12 != 2)
            {
              v109 = *MEMORY[0x277CCA450];
              v217 = *MEMORY[0x277CCA450];
              v110 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize PHASESoundEvent: Sound instance invalid spatial mixer type for mixer %@", v10];
              v218 = v110;
              v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v218 forKeys:&v217 count:1];

              v112 = **(Phase::Logger::GetInstance(v111) + 448);
              v113 = os_log_type_enabled(v112, OS_LOG_TYPE_ERROR);
              v114 = v199;
              if (v113)
              {
                v115 = [v100 objectForKeyedSubscript:v109];
                v116 = v115;
                v117 = [v115 UTF8String];
                *buf = 136315650;
                v237 = "PHASESoundEvent.mm";
                v238 = 1024;
                v239 = 1320;
                v240 = 2080;
                v241 = v117;
                _os_log_impl(&dword_23A302000, v112, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);

                v114 = v199;
              }

              v118 = v114 == 0;

              if (!v118)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            v13 = [v11 listener];
            v14 = [v13 engine];
            v15 = objc_loadWeakRetained(&self->_engine);
            v16 = v14 == v15;

            if (!v16)
            {
              v119 = *MEMORY[0x277CCA450];
              v223 = *MEMORY[0x277CCA450];
              v120 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize PHASESoundEvent: PHASEListener on mixer %@ is from a different engine instance", v10];
              v224 = v120;
              v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v224 forKeys:&v223 count:1];

              v122 = **(Phase::Logger::GetInstance(v121) + 448);
              v123 = os_log_type_enabled(v122, OS_LOG_TYPE_ERROR);
              v124 = v199;
              if (v123)
              {
                v125 = [v100 objectForKeyedSubscript:v119];
                v126 = v125;
                v127 = [v125 UTF8String];
                *buf = 136315650;
                v237 = "PHASESoundEvent.mm";
                v238 = 1024;
                v239 = 1252;
                v240 = 2080;
                v241 = v127;
                _os_log_impl(&dword_23A302000, v122, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);

                v124 = v199;
              }

              v128 = v124 == 0;

              if (!v128)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            v17 = [v207 listener];
            v18 = v17 == 0;

            if (v18)
            {
              v129 = *MEMORY[0x277CCA450];
              v221 = *MEMORY[0x277CCA450];
              v130 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize PHASESoundEvent: Sound instance ambient mixer dictionary not complete for mixer %@", v10];
              v222 = v130;
              v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v222 forKeys:&v221 count:1];

              v132 = **(Phase::Logger::GetInstance(v131) + 448);
              v133 = os_log_type_enabled(v132, OS_LOG_TYPE_ERROR);
              v134 = v199;
              if (v133)
              {
                v135 = [v100 objectForKeyedSubscript:v129];
                v136 = v135;
                v137 = [v135 UTF8String];
                *buf = 136315650;
                v237 = "PHASESoundEvent.mm";
                v238 = 1024;
                v239 = 1267;
                v240 = 2080;
                v241 = v137;
                _os_log_impl(&dword_23A302000, v132, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);

                v134 = v199;
              }

              v138 = v134 == 0;

              if (!v138)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            v19 = [v207 listener];
            v20 = [v19 isConnectedToRoot];

            if (!v20)
            {
              v149 = *MEMORY[0x277CCA450];
              v219 = *MEMORY[0x277CCA450];
              v150 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize PHASESoundEvent: PHASEListener on mixer %@ is not connected to the scene", v10];
              v220 = v150;
              v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v220 forKeys:&v219 count:1];

              v152 = **(Phase::Logger::GetInstance(v151) + 448);
              v153 = os_log_type_enabled(v152, OS_LOG_TYPE_ERROR);
              v154 = v199;
              if (v153)
              {
                v155 = [v100 objectForKeyedSubscript:v149];
                v156 = v155;
                v157 = [v155 UTF8String];
                *buf = 136315650;
                v237 = "PHASESoundEvent.mm";
                v238 = 1024;
                v239 = 1282;
                v240 = 2080;
                v241 = v157;
                _os_log_impl(&dword_23A302000, v152, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);

                v154 = v199;
              }

              v158 = v154 == 0;

              if (!v158)
              {
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            if (*(a4 + 24))
            {
              v22 = 0;
              v23 = 0;
              v24 = 0;
              *&v206 = 0;
              do
              {
                v25 = *(a4 + 13);
                if (*(v25 + v22 + 8) == 2)
                {
                  v26 = *(v25 + v22);
                  if (v26 == Phase::GetStringHashId(v10, v21))
                  {
                    v27 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:*(v25 + v22 + 32)];

                    v206 = *(v25 + v22 + 36);
                    v24 = v27;
                  }
                }

                ++v23;
                v22 += 5944;
              }

              while (v23 < *(a4 + 24));
            }

            else
            {
              v24 = 0;
              *&v206 = 0;
            }

            v59 = [PHASEAmbientMixer alloc];
            v60 = [v207 listener];
            v61 = objc_loadWeakRetained(&self->_engine);
            v62 = [(PHASEAmbientMixer *)v59 initWithIdentifier:v10 listener:v60 inputChannelLayout:v24 orientation:v61 engine:*self->_actionTreeObject.__ptr_ actionTreeObjectId:*(self->_actionTreeObject.__ptr_ + 1), *&v206];

            [v203 setObject:v62 forKey:v10];
          }
        }

        v200 = [obj countByEnumeratingWithState:&v209 objects:v235 count:16];
      }

      while (v200);
    }

    v67 = objc_loadWeakRetained(&self->_engine);
    obj = [v67 assetRegistry];

    if (obj)
    {
      v68 = *(a4 + 24);
      if (!v68)
      {
        v74 = 0;
LABEL_73:
        v87 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v203];
        goto LABEL_107;
      }

      v69 = 0;
      v70 = 0;
      v71 = 0;
      while (1)
      {
        v72 = *(a4 + 13);
        v73 = (v72 + v69);
        if (*(v72 + v69 + 8) == 3)
        {
          v74 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:*(v72 + v69 + 32)];

          v75 = [*(self->_actionTreeObject.__ptr_ + 2) getNullableString:*v73];
          if (!v75)
          {
            v190 = *MEMORY[0x277CCA450];
            v213 = *MEMORY[0x277CCA450];
            v191 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize PHASESoundEvent: Problem looking up the channel mixer definition."];
            v214 = v191;
            v192 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v214 forKeys:&v213 count:1];

            v194 = **(Phase::Logger::GetInstance(v193) + 448);
            if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
            {
              v195 = [v192 objectForKeyedSubscript:v190];
              v196 = v195;
              v197 = [v195 UTF8String];
              *buf = 136315650;
              v237 = "PHASESoundEvent.mm";
              v238 = 1024;
              v239 = 1359;
              v240 = 2080;
              v241 = v197;
              _os_log_impl(&dword_23A302000, v194, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
            }

            if (v199)
            {
              *v199 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925669 userInfo:v192];
            }

LABEL_117:
            v87 = 0;
            goto LABEL_107;
          }

          v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:v75];
          v77 = [[PHASEChannelMixer alloc] initWithIdentifier:v76 inputChannelLayout:v74];
          [v203 setObject:v77 forKey:v76];

          v68 = *(a4 + 24);
          v71 = v74;
        }

        else
        {
          v74 = v71;
        }

        ++v70;
        v69 += 5944;
        if (v70 >= v68)
        {
          goto LABEL_73;
        }
      }
    }

    v88 = *MEMORY[0x277CCA450];
    v215 = *MEMORY[0x277CCA450];
    v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"PHASE Engine initialization error"];
    v216 = v89;
    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v216 forKeys:&v215 count:1];

    v91 = **(Phase::Logger::GetInstance(v90) + 448);
    v92 = os_log_type_enabled(v91, OS_LOG_TYPE_ERROR);
    v93 = v199;
    if (v92)
    {
      v94 = [v74 objectForKeyedSubscript:v88];
      v95 = v94;
      v96 = [v94 UTF8String];
      *buf = 136315650;
      v237 = "PHASESoundEvent.mm";
      v238 = 1024;
      v239 = 1335;
      v240 = 2080;
      v241 = v96;
      _os_log_impl(&dword_23A302000, v91, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);

      v93 = v199;
    }

    v97 = v93 == 0;

    if (v97)
    {
      obj = 0;
      goto LABEL_117;
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925669 userInfo:v74];
    obj = 0;
    *v199 = v87 = 0;
LABEL_107:
  }

  else
  {
    v9 = (*(a4 + 13) + 8);
    while ((*v9 - 1) > 1)
    {
      v9 += 743;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v78 = *MEMORY[0x277CCA450];
    v242 = *MEMORY[0x277CCA450];
    v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize PHASESoundEvent: Missing required spatial/ambient mixer parameters"];
    v243[0] = v79;
    v203 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v243 forKeys:&v242 count:1];

    v81 = **(Phase::Logger::GetInstance(v80) + 448);
    v82 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
    v83 = a5;
    if (v82)
    {
      v84 = [v203 objectForKeyedSubscript:v78];
      v85 = v84;
      *buf = 136315650;
      v237 = "PHASESoundEvent.mm";
      v238 = 1024;
      v239 = 1107;
      v240 = 2080;
      v241 = [v84 UTF8String];
      _os_log_impl(&dword_23A302000, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);

      v83 = v199;
    }

    v86 = v83 == 0;

    if (v86)
    {
      v87 = 0;
    }

    else
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925668 userInfo:v203];
      *v199 = v87 = 0;
    }
  }

  return v87;
}

- (id)internalGetActionTreePushStreamNodes:(id)a3
{
  v35 = a3;
  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  ptr = self->_actionTreeObject.__ptr_;
  v5 = *(ptr + 3);
  if (*(v5 + 40))
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 56) + 4 * v6);
      if (*(*(v5 + 88) + v7) == 9)
      {
        v8 = *(*(v5 + 48) + 8 * v6);
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(*(ptr + 2), "getString:", v8)}];
        v9 = self->_actionTreeObject.__ptr_;
        v10 = *(*(v9 + 3) + 88) + v7;
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(*(v9 + 2), "getString:", *(v10 + 16))}];
        v12 = [(PHASESoundEvent *)self mixers];
        v36 = v8;
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = self;
        WeakRetained = objc_loadWeakRetained(&self->_engine);
        v16 = [WeakRetained assetRegistry];
        v17 = [v35 assetIdentifier];
        v18 = [v16 assetForIdentifier:v17];

        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v13;
            v34 = v11;
            v19 = [v18 streamNodeFormats];
            v32 = [v19 objectForKeyedSubscript:v37];

            v20 = [PHASEPushStreamNode alloc];
            v21 = objc_loadWeakRetained(&self->_engine);
            v22 = self->_actionTreeObject.__ptr_;
            v24 = *v22;
            v23 = *(v22 + 1);
            v25 = *(v10 + 64);
            v26 = [MEMORY[0x277CCABB0] numberWithDouble:*(v10 + 72)];
            LOBYTE(v30) = v25;
            v13 = v33;
            v27 = [(PHASEStreamNode *)v20 initWithEngine:v21 actionTreeUniqueId:v24 nodeStringHashId:v23 mixer:v36 format:v33 normalize:v32 targetLKFS:v30, v26];

            [v31 setObject:v27 forKey:v37];
            v11 = v34;
            self = v14;
          }
        }

        ptr = self->_actionTreeObject.__ptr_;
      }

      ++v6;
      v5 = *(ptr + 3);
    }

    while (v6 < *(v5 + 40));
  }

  v28 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v31];

  return v28;
}

- (id)internalGetActionTreePullStreamNodes:(id)a3
{
  v35 = a3;
  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  ptr = self->_actionTreeObject.__ptr_;
  v5 = *(ptr + 3);
  if (*(v5 + 40))
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 56) + 4 * v6);
      if (*(*(v5 + 88) + v7) == 12)
      {
        v8 = *(*(v5 + 48) + 8 * v6);
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(*(ptr + 2), "getString:", v8)}];
        v9 = self->_actionTreeObject.__ptr_;
        v10 = *(*(v9 + 3) + 88) + v7;
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(*(v9 + 2), "getString:", *(v10 + 16))}];
        v12 = [(PHASESoundEvent *)self mixers];
        v36 = v8;
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = self;
        WeakRetained = objc_loadWeakRetained(&self->_engine);
        v16 = [WeakRetained assetRegistry];
        v17 = [v35 assetIdentifier];
        v18 = [v16 assetForIdentifier:v17];

        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v13;
            v34 = v11;
            v19 = [v18 streamNodeFormats];
            v32 = [v19 objectForKeyedSubscript:v37];

            v20 = [PHASEPullStreamNode alloc];
            v21 = objc_loadWeakRetained(&self->_engine);
            v22 = self->_actionTreeObject.__ptr_;
            v24 = *v22;
            v23 = *(v22 + 1);
            v25 = *(v10 + 64);
            v26 = [MEMORY[0x277CCABB0] numberWithDouble:*(v10 + 72)];
            LOBYTE(v30) = v25;
            v13 = v33;
            v27 = [(PHASEStreamNode *)v20 initWithEngine:v21 actionTreeUniqueId:v24 nodeStringHashId:v23 mixer:v36 format:v33 normalize:v32 targetLKFS:v30, v26];

            [v31 setObject:v27 forKey:v37];
            v11 = v34;
            self = v14;
          }
        }

        ptr = self->_actionTreeObject.__ptr_;
      }

      ++v6;
      v5 = *(ptr + 3);
    }

    while (v6 < *(v5 + 40));
  }

  v28 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v31];

  return v28;
}

- (void)seekToTime:(double)time completion:(void *)handler
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = handler;
  v8 = **(Phase::Logger::GetInstance(v7) + 448);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    *buf = 136315906;
    v44 = "PHASESoundEvent.mm";
    v45 = 1024;
    v46 = 1477;
    v47 = 2112;
    v48 = self;
    v49 = 2048;
    v50 = *&time;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ seekToTime %f", buf, 0x26u);
  }

  if (!*(self->_actionTreeObject.__ptr_ + 144))
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    v32 = **(Phase::Logger::GetInstance(v9) + 448);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v44 = "PHASESoundEvent.mm";
      v45 = 1024;
      v46 = 1483;
      v47 = 2112;
      v48 = self;
      v33 = "%25s:%-5d seekToTime: %@ Invalid sound event instance";
LABEL_19:
      _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x1Cu);
    }

LABEL_20:
    (*(v7 + 2))(v7, 0);
    goto LABEL_21;
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = WeakRetained == 0;

  if (v11)
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    v32 = **(Phase::Logger::GetInstance(v12) + 448);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v44 = "PHASESoundEvent.mm";
      v45 = 1024;
      v46 = 1493;
      v47 = 2112;
      v48 = self;
      v33 = "%25s:%-5d seekToTime: %@ PHASE not initialized";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (!self->_prepareState)
  {
    [(PHASESoundEvent *)self prepareWithCompletion:0];
  }

  v13 = [(Phase::Logger *)v7 copy];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = NSStringFromSelector(a2);
  v17 = PHASEGetPropertyBounded<double>(v15, v16, time, 0.0, 1.79769313e308);

  v18 = objc_loadWeakRetained(&self->_engine);
  v19 = Phase::Controller::TaskManager::GetService<Phase::ActionTreeManager>(([v18 implementation] + 48), 7);

  ptr = self->_actionTreeObject.__ptr_;
  v21 = *ptr;
  v22 = *(ptr + 1);
  v23 = objc_loadWeakRetained(&self->_engine);
  [v23 unitsPerSecond];
  v25 = v24;
  v26 = _Block_copy(v13);
  if (*(v19 + 16) <= 0)
  {
    v34 = **(v19 + 24);
    v35 = v34;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "Commandable.hpp";
      v45 = 1024;
      v46 = 132;
      _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.");
    exception->__vftable = (MEMORY[0x277D828D8] + 16);
  }

  v27 = v26;
  v28 = **(v19 + 8);
  v42 = 0;
  v41 = 1;
  v29 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v28, 72, &v42, &v41);
  if (!v29)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v38 = **(v28 + 48);
    v39 = v38;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "CommandQueue.hpp";
      v45 = 1024;
      v46 = 100;
      _os_log_impl(&dword_23A302000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v40, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v41)
  {
    v30 = **(v28 + 48);
    v31 = v30;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v44 = "CommandQueue.hpp";
      v45 = 1024;
      v46 = 89;
      v47 = 2048;
      v48 = v42;
      v49 = 2048;
      v50 = 72;
      _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v29 = &unk_284D364A8;
  *(v29 + 8) = v19;
  *(v29 + 16) = Phase::ActionTreeManager::SeekActionTree;
  *(v29 + 24) = 0;
  *(v29 + 32) = v21;
  *(v29 + 40) = v22;
  *(v29 + 48) = v17 * v25;
  *(v29 + 56) = [PHASESoundEvent seekToTime:completion:]::$_5::__invoke;
  *(v29 + 64) = v27;
  Phase::LockFreeQueueSPSC::CommitBytes(v28, 72);
  atomic_store(0, (v28 + 40));

LABEL_21:
}

- (void)seekToTime:(double)a3 resumeAtEngineTime:(id)a4 completion:(id)a5
{
  v9 = a4;
  v8 = a5;
  [(PHASESoundEvent *)self pause];
  [(PHASESoundEvent *)self seekToTime:v8 completion:a3];
  [(PHASESoundEvent *)self resumeAtTime:v9];
}

- (id)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (void)setPrepareState:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(self);
  if (*(Instance + 1636) == 1)
  {
    v6 = **(Phase::Logger::GetInstance(Instance) + 448);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      prepareState = self->_prepareState;
      if (prepareState > 2)
      {
        v8 = "<not found>";
      }

      else
      {
        v8 = off_278B4F940[prepareState];
      }

      v9 = *self->_actionTreeObject.__ptr_;
      if (a3 > 2)
      {
        v10 = "<not found>";
      }

      else
      {
        v10 = off_278B4F940[a3];
      }

      v11 = 136316162;
      v12 = "PHASESoundEvent.mm";
      v13 = 1024;
      v14 = 1555;
      v15 = 2048;
      v16 = v9;
      v17 = 2080;
      v18 = v8;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu) - prepare state changed from '%s' to '%s'", &v11, 0x30u);
    }
  }

  self->_prepareState = a3;
}

- (void)setRenderingState:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = self;
  v5 = objc_sync_enter(v4);
  Instance = Phase::Logger::GetInstance(v5);
  if (*(Instance + 1636) == 1 && v4->_renderingState != a3)
  {
    v7 = **(Phase::Logger::GetInstance(Instance) + 448);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      renderingState = v4->_renderingState;
      if (renderingState > 2)
      {
        v9 = "<not found>";
      }

      else
      {
        v9 = off_278B4F958[renderingState];
      }

      v10 = *v4->_actionTreeObject.__ptr_;
      if (a3 > 2)
      {
        v11 = "<not found>";
      }

      else
      {
        v11 = off_278B4F958[a3];
      }

      v12 = 136316162;
      v13 = "PHASESoundEvent.mm";
      v14 = 1024;
      v15 = 1570;
      v16 = 2048;
      v17 = v10;
      v18 = 2080;
      v19 = v9;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu) - rendering state changed from '%s' to '%s'", &v12, 0x30u);
    }
  }

  v4->_renderingState = a3;
  objc_sync_exit(v4);
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  return self;
}

- (void)internalStartActionTree:(uint64_t)a3 completion:(uint64_t)a4
{
  if (a5)
  {
    a5[2](a5, a3, a4);
  }
}

- (void)internalPrepareActionTreeWithCompletionBlock:(uint64_t)a3
{
  if (a6)
  {
    a6[2](a6, a3, a4, a5);
  }
}

- (void)seekToTime:(uint64_t)a3 completion:(void *)(a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    a4[2](a4, a3);
  }

  v7 = **(Phase::Logger::GetInstance(a1) + 448);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = "PHASESoundEvent.mm";
    v10 = 1024;
    v11 = 1513;
    v12 = 2048;
    v13 = a1;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PHASESoundEvent %llu seekToTime completed with result %ld", &v8, 0x26u);
  }
}

- (void)resumeAtTime:(uint64_t)a1
{

  JUMPOUT(0x23EE864A0);
}

@end