@interface AVAudioInputNode
- (AVAudioVoiceProcessingOtherAudioDuckingConfiguration)voiceProcessingOtherAudioDuckingConfiguration;
- (BOOL)isVoiceProcessingAGCEnabled;
- (BOOL)isVoiceProcessingBypassed;
- (BOOL)isVoiceProcessingInputMuted;
- (BOOL)setManualRenderingInputPCMFormat:(AVAudioFormat *)format inputBlock:(AVAudioIONodeInputBlock)block;
- (BOOL)setMutedSpeechActivityEventListener:(void *)listenerBlock;
- (float)rate;
- (void)setVoiceProcessingAGCEnabled:(BOOL)voiceProcessingAGCEnabled;
- (void)setVoiceProcessingBypassed:(BOOL)voiceProcessingBypassed;
- (void)setVoiceProcessingInputMuted:(BOOL)voiceProcessingInputMuted;
- (void)setVoiceProcessingOtherAudioDuckingConfiguration:(AVAudioVoiceProcessingOtherAudioDuckingConfiguration)voiceProcessingOtherAudioDuckingConfiguration;
@end

@implementation AVAudioInputNode

- (void)setVoiceProcessingOtherAudioDuckingConfiguration:(AVAudioVoiceProcessingOtherAudioDuckingConfiguration)voiceProcessingOtherAudioDuckingConfiguration
{
  duckingLevel = voiceProcessingOtherAudioDuckingConfiguration.duckingLevel;
  enableAdvancedDucking = voiceProcessingOtherAudioDuckingConfiguration.enableAdvancedDucking;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->super.super._impl);
  if ([(AVAudioIONode *)self isVoiceProcessingEnabled])
  {
    v6[0] = enableAdvancedDucking;
    v6[1] = duckingLevel;
    (*(*self->super.super._impl + 144))(self->super.super._impl, 2108, 0, 0, v6, 8);
  }

  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }
}

- (AVAudioVoiceProcessingOtherAudioDuckingConfiguration)voiceProcessingOtherAudioDuckingConfiguration
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->super.super._impl);
  if ([(AVAudioIONode *)self isVoiceProcessingEnabled])
  {
    v8 = 0;
    v3 = (*(*self->super.super._impl + 152))(self->super.super._impl, 2108, 0, 0, &v8, 8);
    if (v3)
    {
      v4 = HIDWORD(v8);
    }

    else
    {
      v4 = AVAudioVoiceProcessingOtherAudioDuckingLevelDefault;
    }

    if (v8)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = AVAudioVoiceProcessingOtherAudioDuckingLevelDefault;
    v5 = 0;
  }

  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  v6 = v5;
  v7 = v4;
  result.duckingLevel = v7;
  result.enableAdvancedDucking = v6;
  return result;
}

- (BOOL)setMutedSpeechActivityEventListener:(void *)listenerBlock
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->super.super._impl);
  if ([(AVAudioIONode *)self isVoiceProcessingEnabled])
  {
    v8 = 0;
    if (listenerBlock)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __56__AVAudioInputNode_setMutedSpeechActivityEventListener___block_invoke;
      v7[3] = &unk_1E7EF5198;
      v7[4] = listenerBlock;
      v8 = v7;
    }

    v5 = (*(*self->super.super._impl + 144))(self->super.super._impl, 2106, 0, 0, &v8, 8);
  }

  else
  {
    v5 = 0;
  }

  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  return v5;
}

- (void)setVoiceProcessingInputMuted:(BOOL)voiceProcessingInputMuted
{
  v3 = voiceProcessingInputMuted;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super._impl);
  if ([(AVAudioIONode *)self isVoiceProcessingEnabled])
  {
    v5 = v3;
    (*(*self->super.super._impl + 144))(self->super.super._impl, 2104, 0, 1, &v5, 4);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }
}

- (BOOL)isVoiceProcessingInputMuted
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super._impl);
  if ([(AVAudioIONode *)self isVoiceProcessingEnabled])
  {
    v5 = 0;
    (*(*self->super.super._impl + 152))(self->super.super._impl, 2104, 0, 1, &v5, 4);
    v3 = v5 != 0;
  }

  else
  {
    v3 = 0;
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  return v3;
}

- (void)setVoiceProcessingAGCEnabled:(BOOL)voiceProcessingAGCEnabled
{
  v3 = voiceProcessingAGCEnabled;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super._impl);
  if ([(AVAudioIONode *)self isVoiceProcessingEnabled])
  {
    v5 = v3;
    (*(*self->super.super._impl + 144))(self->super.super._impl, 2101, 0, 1, &v5, 4);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }
}

- (BOOL)isVoiceProcessingAGCEnabled
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super._impl);
  if ([(AVAudioIONode *)self isVoiceProcessingEnabled])
  {
    v5 = 0;
    (*(*self->super.super._impl + 152))(self->super.super._impl, 2101, 0, 1, &v5, 4);
    v3 = v5 != 0;
  }

  else
  {
    v3 = 0;
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  return v3;
}

- (void)setVoiceProcessingBypassed:(BOOL)voiceProcessingBypassed
{
  v3 = voiceProcessingBypassed;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super._impl);
  if ([(AVAudioIONode *)self isVoiceProcessingEnabled])
  {
    v5 = v3;
    (*(*self->super.super._impl + 144))(self->super.super._impl, 2100, 0, 1, &v5, 4);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }
}

- (BOOL)isVoiceProcessingBypassed
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super._impl);
  if ([(AVAudioIONode *)self isVoiceProcessingEnabled])
  {
    v5 = 0;
    (*(*self->super.super._impl + 152))(self->super.super._impl, 2100, 0, 1, &v5, 4);
    v3 = v5 != 0;
  }

  else
  {
    v3 = 0;
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  return v3;
}

- (BOOL)setManualRenderingInputPCMFormat:(AVAudioFormat *)format inputBlock:(AVAudioIONodeInputBlock)block
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->super.super._impl);
  if ([(AVAudioIONode *)self isInManualRenderingMode])
  {
    v7 = AVAudioEngineImpl::SetInputNodeRenderCallback(*([(AVAudioEngine *)[(AVAudioNode *)self engine] implementation]+ 8), format, block);
  }

  else
  {
    v7 = 0;
  }

  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  return v7;
}

- (float)rate
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v3, self->super.super._impl);
  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  if (v4 == 1)
  {
    std::recursive_mutex::unlock(v3);
  }

  return 1.0;
}

@end