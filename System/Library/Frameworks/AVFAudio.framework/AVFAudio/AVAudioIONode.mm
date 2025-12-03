@interface AVAudioIONode
- (AVAudioIONode)initWithIOUnit:(void *)unit isInput:(BOOL)input;
- (AudioUnit)audioUnit;
- (BOOL)enableManualRenderingMode:(int64_t)mode isInput:(BOOL)input;
- (BOOL)enableRealtimeRenderingModeWithIOUnit:(void *)unit isInput:(BOOL)input forceIOUnitReset:(BOOL)reset;
- (BOOL)isInManualRenderingMode;
- (BOOL)isVoiceProcessingEnabled;
- (BOOL)setVoiceProcessingEnabled:(BOOL)enabled error:(NSError *)outError;
- (NSTimeInterval)presentationLatency;
- (int64_t)manualRenderingMode;
- (void)didAttachToEngine:(id)engine;
- (void)didDetachFromEngine:(id)engine error:(id *)error;
@end

@implementation AVAudioIONode

- (BOOL)enableRealtimeRenderingModeWithIOUnit:(void *)unit isInput:(BOOL)input forceIOUnitReset:(BOOL)reset
{
  resetCopy = reset;
  v27 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v11, self->super._impl);
  if (!unit)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v16 = "AVAEInternal.h";
      v17 = 1024;
      v18 = 71;
      v19 = 2080;
      v20 = "AVAudioIONode.mm";
      v21 = 1024;
      v22 = 110;
      v23 = 2080;
      v24 = "[AVAudioIONode enableRealtimeRenderingModeWithIOUnit:isInput:forceIOUnitReset:]";
      v25 = 2080;
      v26 = "ioUnit != nil";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "ioUnit != nil"}];
  }

  if ([(AVAudioIONode *)self isInManualRenderingMode]|| resetCopy)
  {
    if (v12)
    {
      std::recursive_mutex::unlock(v11);
      v12 = 0;
      operator new();
    }

    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }

  else
  {
    if (v14 == 1)
    {
      std::recursive_mutex::unlock(v13);
    }

    if (v12 == 1)
    {
      std::recursive_mutex::unlock(v11);
    }

    v9 = *MEMORY[0x1E69E9840];
    return 1;
  }

  return result;
}

- (BOOL)enableManualRenderingMode:(int64_t)mode isInput:(BOOL)input
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->super._impl);
  if ([(AVAudioIONode *)self isVoiceProcessingEnabled])
  {
    v6 = 0;
LABEL_10:
    if (v12 == 1)
    {
      std::recursive_mutex::unlock(v11);
    }

    if (v10 == 1)
    {
      std::recursive_mutex::unlock(v9);
    }

    return v6;
  }

  if ([(AVAudioIONode *)self isInManualRenderingMode]&& [(AVAudioIONode *)self manualRenderingMode]== mode)
  {
    v6 = 1;
    goto LABEL_10;
  }

  if ([(AVAudioIONode *)self isInManualRenderingMode])
  {
    impl = self->super._impl;
    v6 = 1;
    (*(*impl + 288))(impl, 1, mode);
    goto LABEL_10;
  }

  if (v10)
  {
    std::recursive_mutex::unlock(v9);
    v10 = 0;
    operator new();
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
  return result;
}

- (BOOL)isVoiceProcessingEnabled
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->super._impl);
  v3 = (*(*self->super._impl + 256))(self->super._impl);
  v5 = *v3 == 1635086197 && v3[1] == 1987078511 && v3[2] == 1634758764;
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  return v5;
}

- (BOOL)setVoiceProcessingEnabled:(BOOL)enabled error:(NSError *)outError
{
  v5 = enabled;
  v31 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v24, self->super._impl);
  if ([(AVAudioIONode *)self isVoiceProcessingEnabled]== v5)
  {
    v10 = 1;
  }

  else
  {
    implementation = [(AVAudioEngine *)[(AVAudioNode *)self engine] implementation];
    if ([AVAudioEngineImpl::GetOutputNode(implementation) isVoiceProcessingEnabled] == v5)
    {
      v9 = 0;
    }

    else
    {
      v8 = implementation[1];
      if (v5)
      {
        v9 = -10863;
      }

      else
      {
        v9 = 0;
      }

      if ((*(v8 + 187) & 1) == 0)
      {
        if (*(v8 + 185))
        {
          v9 = -10849;
        }

        else
        {
          AudioSession = AVAudioEngineImpl::GetAudioSession(implementation);
          if (!AudioSession || ([AudioSession isInputAvailable] & 1) != 0)
          {
            v12 = implementation[5];
            if (v12)
            {
              AVAudioEngineImpl::GetInputConnectionPointForNode(implementation, v12, 0);
              v13 = implementation[5];
              AVAudioEngineGraph::RemoveIONode(implementation[1], implementation[5], 0, 0);
              AVAudioEngineImpl::DetachNode(implementation, implementation[5], 1, 0);
            }

            v16 = implementation[4];
            if (v16)
            {
              AVAudioEngineImpl::GetOutputConnectionPointsForNode(implementation, v16, 0);
              v17 = implementation[4];
              AVAudioEngineGraph::RemoveIONode(implementation[1], implementation[4], 1, 0);
              AVAudioEngineImpl::DetachNode(implementation, implementation[4], 1, 0);
            }

            v18 = implementation[7];
            implementation[7] = 0;
            if (v18)
            {
              (*(*v18 + 8))(v18);
            }

            v19 = AVAudioEngineImpl::GetAudioSession(implementation);
            AVAudioIOUnit::Create(buf, implementation, v5, v19, v20);
          }

          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v14 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            v15 = *implementation;
            buf[0] = 136315650;
            *&buf[1] = "AVAudioEngine.mm";
            v29 = 1024;
            *v30 = 1602;
            *&v30[4] = 2048;
            *&v30[6] = v15;
            _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine@%p: No input device available, cannot enable VoiceProcessing.", buf, 0x1Cu);
          }

          v9 = -10876;
        }
      }
    }

    if (outError)
    {
      if (v9)
      {
        v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:v9 userInfo:0];
      }

      else
      {
        v21 = 0;
      }

      *outError = v21;
    }

    v10 = v9 == 0;
  }

  if (v27 == 1)
  {
    std::recursive_mutex::unlock(v26);
  }

  if (v25 == 1)
  {
    std::recursive_mutex::unlock(v24);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

- (int64_t)manualRenderingMode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->super._impl);
  v3 = *(self->super._impl + 10);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (BOOL)isInManualRenderingMode
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->super._impl);
  v3 = *(self->super._impl + 72);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)didDetachFromEngine:(id)engine error:(id *)error
{
  implementation = [engine implementation];
  impl = self->super._impl;
  std::lock[abi:ne200100]<std::recursive_mutex,std::recursive_mutex>((impl + 96), (implementation + 112));
  (*(*self->super._impl + 24))(self->super._impl, engine);
  std::recursive_mutex::unlock((impl + 96));

  std::recursive_mutex::unlock((implementation + 112));
}

- (void)didAttachToEngine:(id)engine
{
  implementation = [engine implementation];
  impl = self->super._impl;
  std::lock[abi:ne200100]<std::recursive_mutex,std::recursive_mutex>((impl + 96), (implementation + 112));
  (*(*self->super._impl + 16))(self->super._impl, engine);
  std::recursive_mutex::unlock((impl + 96));

  std::recursive_mutex::unlock((implementation + 112));
}

- (AudioUnit)audioUnit
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->super._impl);
  v3 = (*(*self->super._impl + 224))(self->super._impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (NSTimeInterval)presentationLatency
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->super._impl);
  v3 = (*(*self->super._impl + 216))(self->super._impl);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (AVAudioIONode)initWithIOUnit:(void *)unit isInput:(BOOL)input
{
  if (unit)
  {
    operator new();
  }

  operator new();
}

@end