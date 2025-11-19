@interface AVAudioUnitEffect
- (AVAudioUnitEffect)initWithAudioComponentDescription:(AudioComponentDescription *)audioComponentDescription;
- (BOOL)bypass;
- (void)setBypass:(BOOL)bypass;
@end

@implementation AVAudioUnitEffect

- (void)setBypass:(BOOL)bypass
{
  v3 = bypass;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super._impl);
  v5 = v3;
  (*(*self->super.super._impl + 144))(self->super.super._impl, 21, 0, 0, &v5, 4);
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }
}

- (BOOL)bypass
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super._impl);
  v5 = 0;
  (*(*self->super.super._impl + 152))(self->super.super._impl, 21, 0, 0, &v5, 4);
  v3 = v5;
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  return v3 != 0;
}

- (AVAudioUnitEffect)initWithAudioComponentDescription:(AudioComponentDescription *)audioComponentDescription
{
  v22 = *MEMORY[0x1E69E9840];
  componentType = audioComponentDescription->componentType;
  if (audioComponentDescription->componentType <= 1635086445)
  {
    v6 = componentType == 1635083896;
    v7 = 28006;
  }

  else
  {
    v6 = componentType == 1635086446 || componentType == 1635086957;
    v7 = 29304;
  }

  v8 = v7 | 0x61750000;
  if (!v6 && componentType != v8)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      v15 = "AVAudioUnitEffect.mm";
      v16 = 1024;
      v17 = 26;
      v18 = 2080;
      v19 = "[AVAudioUnitEffect initWithAudioComponentDescription:]";
      v20 = 2080;
      v21 = "(audioComponentDescription.componentType == kAudioUnitType_Effect) || (audioComponentDescription.componentType == kAudioUnitType_MusicEffect) || (audioComponentDescription.componentType == kAudioUnitType_Panner) || (audioComponentDescription.componentType == kAudioUnitType_RemoteEffect) || (audioComponentDescription.componentType == kAudioUnitType_RemoteMusicEffect)";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "(audioComponentDescription.componentType == kAudioUnitType_Effect) || (audioComponentDescription.componentType == kAudioUnitType_MusicEffect) || (audioComponentDescription.componentType == kAudioUnitType_Panner) || (audioComponentDescription.componentType == kAudioUnitType_RemoteEffect) || (audioComponentDescription.componentType == kAudioUnitType_RemoteMusicEffect)"}];
  }

  *buf = *&audioComponentDescription->componentType;
  *&buf[16] = audioComponentDescription->componentFlagsMask;
  v13.receiver = self;
  v13.super_class = AVAudioUnitEffect;
  result = [(AVAudioUnit *)&v13 initWithAudioComponentDescription:buf];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end