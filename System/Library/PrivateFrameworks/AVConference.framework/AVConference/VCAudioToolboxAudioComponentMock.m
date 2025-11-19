@interface VCAudioToolboxAudioComponentMock
+ (id)sharedInstance;
- (BOOL)copyName:(OpaqueAudioComponent *)a3 outName:(const __CFString *)a4 outStatus:(int *)a5;
- (BOOL)findNextComponent:(OpaqueAudioComponent *)a3 description:(const AudioComponentDescription *)a4 outComponent:(OpaqueAudioComponent *)a5;
- (BOOL)getVersion:(OpaqueAudioComponent *)a3 outVersion:(unsigned int *)a4 outStatus:(int *)a5;
- (BOOL)instanceDispose:(OpaqueAudioComponentInstance *)a3 outStatus:(int *)a4;
- (BOOL)instanceNew:(OpaqueAudioComponent *)a3 outInstance:(OpaqueAudioComponentInstance *)a4 outStatus:(int *)a5;
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

- (BOOL)findNextComponent:(OpaqueAudioComponent *)a3 description:(const AudioComponentDescription *)a4 outComponent:(OpaqueAudioComponent *)a5
{
  if (a3 || a4->componentType != 1635086197 || a4->componentFlags || a4->componentFlagsMask)
  {
    return 0;
  }

  result = 0;
  componentSubType = a4->componentSubType;
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

  *a5 = v7;
  return 1;
}

- (BOOL)instanceNew:(OpaqueAudioComponent *)a3 outInstance:(OpaqueAudioComponentInstance *)a4 outStatus:(int *)a5
{
  result = 0;
  if (a3 <= 1684366946)
  {
    if (a3 == 1635017072)
    {
      v6 = "isys";
    }

    else
    {
      if (a3 != 1650616687)
      {
        return result;
      }

      v6 = "nibb";
    }
  }

  else if (a3 == 1684366947)
  {
    v6 = "ifed";
  }

  else if (a3 == 1919512419)
  {
    v6 = "ioir";
  }

  else
  {
    if (a3 != 1987078511)
    {
      return result;
    }

    v6 = "nipv";
  }

  *a4 = *v6;
  *a5 = 0;
  [+[VCCoreAudio_AudioUnitMock sharedInstance](VCCoreAudio_AudioUnitMock registerAudioUnitMockInstance:"registerAudioUnitMockInstance:", *a4];
  return 1;
}

- (BOOL)instanceDispose:(OpaqueAudioComponentInstance *)a3 outStatus:(int *)a4
{
  v7 = *"nipv" == a3 || *"nibb" == a3 || *"ioir" == a3 || *"ifed" == a3 || *"isys" == a3;
  v8 = v7;
  if (v7)
  {
    *a4 = 0;
    [+[VCCoreAudio_AudioUnitMock sharedInstance](VCCoreAudio_AudioUnitMock unregisterAudioUnitMockInstance:"unregisterAudioUnitMockInstance:", a3];
  }

  return v8;
}

- (BOOL)getVersion:(OpaqueAudioComponent *)a3 outVersion:(unsigned int *)a4 outStatus:(int *)a5
{
  result = 0;
  if (a3 <= 1684366946)
  {
    if (a3 == 1635017072)
    {
      v6 = 1937339254;
    }

    else
    {
      if (a3 != 1650616687)
      {
        return result;
      }

      v6 = 1650620019;
    }
  }

  else if (a3 == 1684366947)
  {
    v6 = 1734700918;
  }

  else if (a3 == 1919512419)
  {
    v6 = 1919512438;
  }

  else
  {
    if (a3 != 1987078511)
    {
      return result;
    }

    v6 = 1987081843;
  }

  *a4 = v6;
  *a5 = 0;
  return 1;
}

- (BOOL)copyName:(OpaqueAudioComponent *)a3 outName:(const __CFString *)a4 outStatus:(int *)a5
{
  result = 0;
  if (a3 <= 1684366946)
  {
    if (a3 == 1635017072)
    {
      v7 = &VCAudioToolboxAudioComponentMock_SystemAudioOutputName;
    }

    else
    {
      if (a3 != 1650616687)
      {
        return result;
      }

      v7 = &VCAudioToolboxAudioComponentMock_BasebandName;
    }
  }

  else if (a3 == 1684366947)
  {
    v7 = &VCAudioToolboxAudioComponentMock_DefaultOutputName;
  }

  else if (a3 == 1919512419)
  {
    v7 = &VCAudioToolboxAudioComponentMock_RemoteIOName;
  }

  else
  {
    if (a3 != 1987078511)
    {
      return result;
    }

    v7 = &VCAudioToolboxAudioComponentMock_VoiceProcessorName;
  }

  *a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*v7];
  *a5 = 0;
  return 1;
}

@end