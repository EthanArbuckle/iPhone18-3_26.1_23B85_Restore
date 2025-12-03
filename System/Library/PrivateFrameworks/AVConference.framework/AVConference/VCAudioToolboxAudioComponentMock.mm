@interface VCAudioToolboxAudioComponentMock
+ (id)sharedInstance;
- (BOOL)copyName:(OpaqueAudioComponent *)name outName:(const __CFString *)outName outStatus:(int *)status;
- (BOOL)findNextComponent:(OpaqueAudioComponent *)component description:(const AudioComponentDescription *)description outComponent:(OpaqueAudioComponent *)outComponent;
- (BOOL)getVersion:(OpaqueAudioComponent *)version outVersion:(unsigned int *)outVersion outStatus:(int *)status;
- (BOOL)instanceDispose:(OpaqueAudioComponentInstance *)dispose outStatus:(int *)status;
- (BOOL)instanceNew:(OpaqueAudioComponent *)new outInstance:(OpaqueAudioComponentInstance *)instance outStatus:(int *)status;
- (void)start;
- (void)stop;
@end

@implementation VCAudioToolboxAudioComponentMock

+ (id)sharedInstance
{
  if (sharedInstance_token_3 != -1)
  {
    +[VCAudioToolboxAudioComponentMock sharedInstance];
  }

  return sharedInstance__audioComponentMock;
}

VCAudioToolboxAudioComponentMock *__50__VCAudioToolboxAudioComponentMock_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCAudioToolboxAudioComponentMock);
  sharedInstance__audioComponentMock = result;
  return result;
}

- (void)start
{
  objc_sync_enter(self);
  if (!self->_isMockingEnabled)
  {
    _audioComponentStub = VCAudioToolboxAudioComponentMock_FindNext;
    off_1EDBDA6B8 = VCAudioToolboxAudioComponentMock_InstanceNew;
    off_1EDBDA6C0 = VCAudioToolboxAudioComponentMock_InstanceDispose;
    qword_1EDBDA6C8 = VCAudioToolboxAudioComponentMock_GetVersion;
    off_1EDBDA6D0 = VCAudioToolboxAudioComponentMock_CopyName;
    self->_isMockingEnabled = 1;
  }

  objc_sync_exit(self);
}

- (void)stop
{
  objc_sync_enter(self);
  if (self->_isMockingEnabled)
  {
    _audioComponentStub = MEMORY[0x1E698D7B0];
    off_1EDBDA6B8 = MEMORY[0x1E698D7C8];
    off_1EDBDA6C0 = MEMORY[0x1E698D7C0];
    qword_1EDBDA6C8 = MEMORY[0x1E698D7B8];
    off_1EDBDA6D0 = MEMORY[0x1E698D7A8];
    self->_isMockingEnabled = 0;
  }

  objc_sync_exit(self);
}

- (BOOL)findNextComponent:(OpaqueAudioComponent *)component description:(const AudioComponentDescription *)description outComponent:(OpaqueAudioComponent *)outComponent
{
  if (component || description->componentType != 1635086197 || description->componentFlags || description->componentFlagsMask)
  {
    return 0;
  }

  result = 0;
  componentSubType = description->componentSubType;
  if (componentSubType > 1919512418)
  {
    if (componentSubType == 1919512419)
    {
      v7 = 1919512419;
    }

    else
    {
      if (componentSubType != 1987078511)
      {
        return result;
      }

      v7 = 1987078511;
    }
  }

  else if (componentSubType == 1635017072)
  {
    v7 = 1635017072;
  }

  else
  {
    if (componentSubType != 1768907362)
    {
      return result;
    }

    v7 = 1650616687;
  }

  *outComponent = v7;
  return 1;
}

- (BOOL)instanceNew:(OpaqueAudioComponent *)new outInstance:(OpaqueAudioComponentInstance *)instance outStatus:(int *)status
{
  result = 0;
  if (new <= 1684366946)
  {
    if (new == 1635017072)
    {
      v6 = "isys";
    }

    else
    {
      if (new != 1650616687)
      {
        return result;
      }

      v6 = "nibb";
    }
  }

  else if (new == 1684366947)
  {
    v6 = "ifed";
  }

  else if (new == 1919512419)
  {
    v6 = "ioir";
  }

  else
  {
    if (new != 1987078511)
    {
      return result;
    }

    v6 = "nipv";
  }

  *instance = *v6;
  *status = 0;
  [+[VCCoreAudio_AudioUnitMock sharedInstance](VCCoreAudio_AudioUnitMock registerAudioUnitMockInstance:"registerAudioUnitMockInstance:", *instance];
  return 1;
}

- (BOOL)instanceDispose:(OpaqueAudioComponentInstance *)dispose outStatus:(int *)status
{
  v7 = *"nipv" == dispose || *"nibb" == dispose || *"ioir" == dispose || *"ifed" == dispose || *"isys" == dispose;
  v8 = v7;
  if (v7)
  {
    *status = 0;
    [+[VCCoreAudio_AudioUnitMock sharedInstance](VCCoreAudio_AudioUnitMock unregisterAudioUnitMockInstance:"unregisterAudioUnitMockInstance:", dispose];
  }

  return v8;
}

- (BOOL)getVersion:(OpaqueAudioComponent *)version outVersion:(unsigned int *)outVersion outStatus:(int *)status
{
  result = 0;
  if (version <= 1684366946)
  {
    if (version == 1635017072)
    {
      v6 = 1937339254;
    }

    else
    {
      if (version != 1650616687)
      {
        return result;
      }

      v6 = 1650620019;
    }
  }

  else if (version == 1684366947)
  {
    v6 = 1734700918;
  }

  else if (version == 1919512419)
  {
    v6 = 1919512438;
  }

  else
  {
    if (version != 1987078511)
    {
      return result;
    }

    v6 = 1987081843;
  }

  *outVersion = v6;
  *status = 0;
  return 1;
}

- (BOOL)copyName:(OpaqueAudioComponent *)name outName:(const __CFString *)outName outStatus:(int *)status
{
  result = 0;
  if (name <= 1684366946)
  {
    if (name == 1635017072)
    {
      v7 = &VCAudioToolboxAudioComponentMock_SystemAudioOutputName;
    }

    else
    {
      if (name != 1650616687)
      {
        return result;
      }

      v7 = &VCAudioToolboxAudioComponentMock_BasebandName;
    }
  }

  else if (name == 1684366947)
  {
    v7 = &VCAudioToolboxAudioComponentMock_DefaultOutputName;
  }

  else if (name == 1919512419)
  {
    v7 = &VCAudioToolboxAudioComponentMock_RemoteIOName;
  }

  else
  {
    if (name != 1987078511)
    {
      return result;
    }

    v7 = &VCAudioToolboxAudioComponentMock_VoiceProcessorName;
  }

  *outName = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*v7];
  *status = 0;
  return 1;
}

@end