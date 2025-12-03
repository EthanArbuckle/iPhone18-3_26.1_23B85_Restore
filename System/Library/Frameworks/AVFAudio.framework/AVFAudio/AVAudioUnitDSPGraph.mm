@interface AVAudioUnitDSPGraph
- (AVAudioUnitDSPGraph)init;
- (BOOL)loadAudioDSPManager;
- (BOOL)loadAudioUnitProcessingStripAtURL:(id)l error:(id *)error;
- (BOOL)loadDSPGraphAtURL:(id)l error:(id *)error;
- (NSURL)auProcessingStripURL;
- (NSURL)dspGraphURL;
@end

@implementation AVAudioUnitDSPGraph

- (NSURL)auProcessingStripURL
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  p_impl = &self->super.super._impl;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, self->super.super._impl);
  v3 = (*(**p_impl + 152))(*p_impl, 1635087216, 0, 0, &v12, 8);
  if (v3)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v14 = "AVAudioUnitDSPGraph.mm";
      v15 = 1024;
      v16 = 130;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d unable to get property kAUDSPGraphProperty_AUStrip %i", buf, 0x18u);
    }
  }

  else if (v12)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:
  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSURL)dspGraphURL
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  p_impl = &self->super.super._impl;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, self->super.super._impl);
  v3 = (*(**p_impl + 152))(*p_impl, 1685287015, 0, 0, &v12, 8);
  if (v3)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v14 = "AVAudioUnitDSPGraph.mm";
      v15 = 1024;
      v16 = 115;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d unable to get property kAUDSPGraphProperty_GraphTextFilePath %i", buf, 0x18u);
    }
  }

  else if (v12)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:
  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)loadAudioUnitProcessingStripAtURL:(id)l error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v14 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:l error:error];
  if (!v14)
  {
    return 0;
  }

  AVAudioNodeImplBase::GetAttachAndEngineLock(&v10, self->super.super._impl);
  v6 = (*(*self->super.super._impl + 160))(self->super.super._impl, 1635087216, 0, 0, &v14, 8);
  v7 = v6 == 0;
  if (v6)
  {
    v8 = error == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:v6 userInfo:0];
  }

  if (v13 == 1)
  {
    std::recursive_mutex::unlock(v12);
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  return v7;
}

- (BOOL)loadDSPGraphAtURL:(id)l error:(id *)error
{
  if (error)
  {
    *error = 0;
    relativePath = [l relativePath];
    if (!relativePath)
    {
      v7 = 0;
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:-50 userInfo:0];
      return v7;
    }
  }

  else
  {
    relativePath = [l relativePath];
    if (!relativePath)
    {
      return 0;
    }
  }

  v8 = relativePath;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v13, self->super.super._impl);
  v12 = v8;
  v9 = (*(*self->super.super._impl + 160))(self->super.super._impl, 1685287015, 0, 0, &v12, 8);
  v7 = v9 == 0;
  if (v9)
  {
    v10 = error == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:v9 userInfo:0];
  }

  if (v16 == 1)
  {
    std::recursive_mutex::unlock(v15);
  }

  if (v14 == 1)
  {
    std::recursive_mutex::unlock(v13);
  }

  return v7;
}

- (BOOL)loadAudioDSPManager
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVAudioUnitDSPGraph_loadAudioDSPManager__block_invoke;
  block[3] = &unk_1E7EF6988;
  block[4] = &v5;
  if ([AVAudioUnitDSPGraph loadAudioDSPManager]::once != -1)
  {
    dispatch_once(&[AVAudioUnitDSPGraph loadAudioDSPManager]::once, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __42__AVAudioUnitDSPGraph_loadAudioDSPManager__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  v3 = dlsym(v2, "GetAudioDSPManager");
  if (v3)
  {
    if ((atomic_load_explicit(&_ZGVZZ42__AVAudioUnitDSPGraph_loadAudioDSPManager_EUb_E8instance, memory_order_acquire) & 1) == 0)
    {
      v8 = v3;
      if (__cxa_guard_acquire(&_ZGVZZ42__AVAudioUnitDSPGraph_loadAudioDSPManager_EUb_E8instance))
      {
        _ZZZ42__AVAudioUnitDSPGraph_loadAudioDSPManager_EUb_E8instance = v8();
        __cxa_guard_release(&_ZGVZZ42__AVAudioUnitDSPGraph_loadAudioDSPManager_EUb_E8instance);
      }
    }

    v4 = *(*_ZZZ42__AVAudioUnitDSPGraph_loadAudioDSPManager_EUb_E8instance + 24);
    v5 = *MEMORY[0x1E69E9840];

    v4();
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AVAudioUnitDSPGraph.mm";
      v11 = 1024;
      v12 = 51;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Unable to call RegisterAudioUnits_Internal from libAudioDSP.dylib.", &v9, 0x12u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    v7 = *MEMORY[0x1E69E9840];
  }
}

- (AVAudioUnitDSPGraph)init
{
  if (![(AVAudioUnitDSPGraph *)self loadAudioDSPManager])
  {
    return 0;
  }

  v6 = 0;
  v5 = *"xfuagpsdlppa";
  v4.receiver = self;
  v4.super_class = AVAudioUnitDSPGraph;
  return [(AVAudioUnit *)&v4 initWithAudioComponentDescription:&v5];
}

@end