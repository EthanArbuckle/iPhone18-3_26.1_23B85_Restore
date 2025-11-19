@interface AVAudioOutputNode
- (id)manualRenderingFormat;
- (unsigned)manualRenderingMaximumFrameCount;
@end

@implementation AVAudioOutputNode

- (unsigned)manualRenderingMaximumFrameCount
{
  v24 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, self->super.super._impl);
  if (![(AVAudioIONode *)self isInManualRenderingMode])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v3 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v13 = "AVAEInternal.h";
      v14 = 1024;
      v15 = 71;
      v16 = 2080;
      v17 = "AVAudioIONode.mm";
      v18 = 1024;
      v19 = 152;
      v20 = 2080;
      v21 = "[AVAudioOutputNode manualRenderingMaximumFrameCount]";
      v22 = 2080;
      v23 = "self.isInManualRenderingMode";
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "self.isInManualRenderingMode"}];
  }

  v4 = (*(*self->super.super._impl + 40))(self->super.super._impl);
  v5 = (*(*v4 + 152))(v4);
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

- (id)manualRenderingFormat
{
  v23 = *MEMORY[0x1E69E9840];
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->super.super._impl);
  if (![(AVAudioIONode *)self isInManualRenderingMode])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v3 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v12 = "AVAEInternal.h";
      v13 = 1024;
      v14 = 71;
      v15 = 2080;
      v16 = "AVAudioIONode.mm";
      v17 = 1024;
      v18 = 144;
      v19 = 2080;
      v20 = "[AVAudioOutputNode manualRenderingFormat]";
      v21 = 2080;
      v22 = "self.isInManualRenderingMode";
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "self.isInManualRenderingMode"}];
  }

  v4 = [(AVAudioNode *)self outputFormatForBus:0];
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

@end