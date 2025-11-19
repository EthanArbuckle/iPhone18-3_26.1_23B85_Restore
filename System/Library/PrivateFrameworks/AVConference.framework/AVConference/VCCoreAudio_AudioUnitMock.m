@interface VCCoreAudio_AudioUnitMock
+ (id)sharedInstance;
- (BOOL)audioUnit:(OpaqueAudioComponentInstance *)a3 setParameter:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 value:(float)a7 bufferOffsetInFrames:(unsigned int)a8 outStatus:(int *)a9;
- (BOOL)complexRender:(OpaqueAudioComponentInstance *)a3 ioActionFlags:(unsigned int *)a4 inTimeStamp:(const AudioTimeStamp *)a5 inOutputBusNumber:(unsigned int)a6 inNumberOfPackets:(unsigned int)a7 outNumberOfPackets:(unsigned int *)a8 outPacketDescriptions:(AudioStreamPacketDescription *)a9 ioData:(AudioBufferList *)a10 outMetadata:(void *)a11 outMetadataByteSize:(unsigned int *)a12 outStatus:(int *)a13;
- (BOOL)generateMutedTalkerNotification:(unsigned int)a3;
- (BOOL)getProperty:(OpaqueAudioComponentInstance *)a3 inID:(unsigned int)a4 inScope:(unsigned int)a5 inElement:(unsigned int)a6 outData:(void *)a7 ioDataSize:(unsigned int *)a8 outStatus:(int *)a9;
- (BOOL)initialize:(OpaqueAudioComponentInstance *)a3 outStatus:(int *)a4;
- (BOOL)outputUnitStart:(OpaqueAudioComponentInstance *)a3 outStatus:(int *)a4;
- (BOOL)outputUnitStop:(OpaqueAudioComponentInstance *)a3 outStatus:(int *)a4;
- (BOOL)registerAudioUnitMockInstance:(OpaqueAudioComponentInstance *)a3;
- (BOOL)render:(OpaqueAudioComponentInstance *)a3 ioActionFlags:(unsigned int *)a4 inTimeStamp:(const AudioTimeStamp *)a5 inOutputBusNumber:(unsigned int)a6 inNumberFrames:(unsigned int)a7 ioData:(AudioBufferList *)a8 outStatus:(int *)a9;
- (BOOL)setProperty:(OpaqueAudioComponentInstance *)a3 inID:(unsigned int)a4 inScope:(unsigned int)a5 inElement:(unsigned int)a6 inData:(const void *)a7 inDataSize:(unsigned int)a8 outStatus:(int *)a9;
- (BOOL)shouldProcessAudioUnit:(OpaqueAudioComponentInstance *)a3;
- (BOOL)uninitialize:(OpaqueAudioComponentInstance *)a3 outStatus:(int *)a4;
- (BOOL)unregisterAudioUnitMockInstance:(OpaqueAudioComponentInstance *)a3;
- (VCCoreAudio_AudioUnitMock)init;
- (id)audioInstanceForAudioUnit:(OpaqueAudioComponentInstance *)a3;
- (id)newActiveInstances;
- (void)dealloc;
- (void)init;
- (void)runAudioCallback;
- (void)runAudioCallbackWithSampleCount:(unsigned int)a3 timeGap:(double)a4;
- (void)start;
- (void)startMicThread;
- (void)stop;
- (void)stopMicThread;
@end

@implementation VCCoreAudio_AudioUnitMock

+ (id)sharedInstance
{
  if (sharedInstance_token_6 != -1)
  {
    +[VCCoreAudio_AudioUnitMock sharedInstance];
  }

  return sharedInstance__audioUnitMock;
}

- (VCCoreAudio_AudioUnitMock)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCCoreAudio_AudioUnitMock;
  v2 = [(VCObject *)&v5 init];
  if (!v2)
  {
    [VCCoreAudio_AudioUnitMock init];
LABEL_8:

    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_audioUnitInstanceMap = v3;
  if (!v3)
  {
    [(VCCoreAudio_AudioUnitMock *)v2 init];
    goto LABEL_8;
  }

  if (pthread_rwlock_init(&v2->_callbackLock, 0))
  {
    [(VCCoreAudio_AudioUnitMock *)v2 init];
    goto LABEL_8;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  pthread_rwlock_destroy(&self->_callbackLock);
  v3.receiver = self;
  v3.super_class = VCCoreAudio_AudioUnitMock;
  [(VCObject *)&v3 dealloc];
}

- (void)start
{
  pthread_rwlock_wrlock(&self->_callbackLock);
  [(VCObject *)self lock];
  if (!self->_isMockingEnabled)
  {
    _audioUnitStub = VCCoreAudio_AudioUnitMock_Initialize;
    off_1EDBDA668 = VCCoreAudio_AudioUnitMock_Uninitialize;
    off_1EDBDA670 = VCCoreAudio_AudioUnitMock_SetProperty;
    off_1EDBDA678 = VCCoreAudio_AudioUnitMock_GetProperty;
    off_1EDBDA680 = VCCoreAudio_AudioUnitMock_Render;
    off_1EDBDA688 = VCCoreAudio_AudioUnitMock_ComplexRender;
    off_1EDBDA690 = VCCoreAudio_AudioUnitMock_OutputUnitStart;
    off_1EDBDA698 = VCCoreAudio_AudioUnitMock_OutputUnitStop;
    off_1EDBDA6A0 = VCCoreAudio_AudioUnitMock_SetParameter;
    self->_isMockingEnabled = 1;
    if ([VCDefaults BOOLeanValueForKey:@"forceEnableAudioMockInputPathForAppleTV" defaultValue:0])
    {
      [(VCCoreAudio_AudioUnitMock *)self startMicThread];
    }
  }

  [(VCObject *)self unlock];

  pthread_rwlock_unlock(&self->_callbackLock);
}

- (void)stop
{
  pthread_rwlock_wrlock(&self->_callbackLock);
  [(VCObject *)self lock];
  if (self->_isMockingEnabled)
  {
    _audioUnitStub = MEMORY[0x1E698D7F0];
    off_1EDBDA668 = MEMORY[0x1E698D810];
    off_1EDBDA670 = MEMORY[0x1E698D808];
    off_1EDBDA678 = MEMORY[0x1E698D7E8];
    off_1EDBDA680 = MEMORY[0x1E698D7F8];
    off_1EDBDA688 = MEMORY[0x1E698D7E0];
    off_1EDBDA690 = MEMORY[0x1E698D7D0];
    off_1EDBDA698 = MEMORY[0x1E698D7D8];
    off_1EDBDA6A0 = MEMORY[0x1E698D800];
    self->_isMockingEnabled = 0;
    if (self->_micThread)
    {
      [(VCCoreAudio_AudioUnitMock *)self stopMicThread];
    }
  }

  [(VCObject *)self unlock];

  pthread_rwlock_unlock(&self->_callbackLock);
}

- (void)startMicThread
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = "[VCCoreAudio_AudioUnitMock startMicThread]";
  v4 = 1024;
  v5 = 237;
  v6 = v0;
  v7 = "com.apple.VideoConference.VCAudioUnitMock.MicThread";
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create thread=%s", v2, 0x26u);
}

- (void)stopMicThread
{
  self->_terminateMicThread = 1;
  VCRealTimeThread_Stop(self->_micThread);
  VCRealTimeThread_Finalize(self->_micThread);

  +[VCVTPWrapper stopVTP];
}

- (id)newActiveInstances
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(VCObject *)self lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)self->_audioUnitInstanceMap allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (!self->_terminateMicThread && self->_isMockingEnabled)
        {
          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 isInitialized])
          {
            if ([v9 isRunning] && (objc_msgSend(v9, "isReconfiguring") & 1) == 0)
            {
              [v3 addObject:v9];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  [(VCObject *)self unlock];
  return v3;
}

- (void)runAudioCallback
{
  v13 = *MEMORY[0x1E69E9840];
  if (!pthread_rwlock_tryrdlock(&self->_callbackLock))
  {
    v3 = [(VCCoreAudio_AudioUnitMock *)self newActiveInstances];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v7++) runAudioCallback];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
      }

      while (v5);
    }

    pthread_rwlock_unlock(&self->_callbackLock);
  }
}

- (void)runAudioCallbackWithSampleCount:(unsigned int)a3 timeGap:(double)a4
{
  v5 = *&a3;
  v17 = *MEMORY[0x1E69E9840];
  if (!pthread_rwlock_tryrdlock(&self->_callbackLock))
  {
    v7 = [(VCCoreAudio_AudioUnitMock *)self newActiveInstances];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) runAudioCallbackWithSampleCount:v5 timeGap:a4];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v9);
    }

    pthread_rwlock_unlock(&self->_callbackLock);
  }
}

- (BOOL)generateMutedTalkerNotification:(unsigned int)a3
{
  v3 = *&a3;
  v17 = *MEMORY[0x1E69E9840];
  if (pthread_rwlock_tryrdlock(&self->_callbackLock))
  {
    return 0;
  }

  v6 = [(VCCoreAudio_AudioUnitMock *)self newActiveInstances];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    v5 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (v5)
        {
          v5 = [*(*(&v13 + 1) + 8 * i) generateMutedTalkerNotification:v3];
        }

        else
        {
          v5 = 0;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }

  else
  {
    v5 = 1;
  }

  pthread_rwlock_unlock(&self->_callbackLock);
  return v5;
}

- (BOOL)registerAudioUnitMockInstance:(OpaqueAudioComponentInstance *)a3
{
  pthread_rwlock_wrlock(&self->_callbackLock);
  [(VCObject *)self lock];
  v5 = [(VCCoreAudio_AudioUnitMock *)self audioInstanceForAudioUnit:a3];
  if (!v5)
  {
    v6 = objc_alloc_init(VCCoreAudio_AudioUnitMockInstance);
    v7 = [(VCCoreAudio_AudioUnitMock *)self newKeyForAudioUnit:a3];
    [(NSMutableDictionary *)self->_audioUnitInstanceMap setObject:v6 forKeyedSubscript:v7];
  }

  [(VCObject *)self unlock];
  pthread_rwlock_unlock(&self->_callbackLock);
  return v5 == 0;
}

- (BOOL)unregisterAudioUnitMockInstance:(OpaqueAudioComponentInstance *)a3
{
  pthread_rwlock_wrlock(&self->_callbackLock);
  [(VCObject *)self lock];
  v5 = [(VCCoreAudio_AudioUnitMock *)self audioInstanceForAudioUnit:a3];
  if (v5)
  {
    v6 = [(VCCoreAudio_AudioUnitMock *)self newKeyForAudioUnit:a3];
    [(NSMutableDictionary *)self->_audioUnitInstanceMap setObject:0 forKeyedSubscript:v6];
  }

  [(VCObject *)self unlock];
  pthread_rwlock_unlock(&self->_callbackLock);
  return v5 != 0;
}

- (BOOL)shouldProcessAudioUnit:(OpaqueAudioComponentInstance *)a3
{
  result = 1;
  if (a3 > 1919512424)
  {
    if (a3 == 1919512425)
    {
      return result;
    }

    v4 = 1987078510;
  }

  else
  {
    if (a3 == 1650616686)
    {
      return result;
    }

    v4 = 1684366953;
  }

  if (a3 != v4)
  {
    return a3 == 1937339241;
  }

  return result;
}

- (id)audioInstanceForAudioUnit:(OpaqueAudioComponentInstance *)a3
{
  v4 = [(VCCoreAudio_AudioUnitMock *)self newKeyForAudioUnit:a3];
  v5 = [(NSMutableDictionary *)self->_audioUnitInstanceMap objectForKey:v4];

  return v5;
}

- (BOOL)setProperty:(OpaqueAudioComponentInstance *)a3 inID:(unsigned int)a4 inScope:(unsigned int)a5 inElement:(unsigned int)a6 inData:(const void *)a7 inDataSize:(unsigned int)a8 outStatus:(int *)a9
{
  v9 = *&a8;
  v11 = *&a5;
  if (a4 == 2021 || a4 == 8)
  {
    pthread_rwlock_wrlock(&self->_callbackLock);
  }

  [(VCObject *)self lock];
  if (!self->_isMockingEnabled || ![(VCCoreAudio_AudioUnitMock *)self shouldProcessAudioUnit:a3])
  {
    v16 = 0;
    goto LABEL_31;
  }

  v15 = [(VCCoreAudio_AudioUnitMock *)self audioInstanceForAudioUnit:a3];
  *a9 = 0;
  v16 = 1;
  if (a4 > 2020)
  {
    if (a4 > 2105)
    {
      if (a4 == 2106)
      {
        v17 = [v15 setMutedTalkerNotificiationHandlerWithScope:v11 data:a7 dataSize:v9];
        goto LABEL_27;
      }

      if (a4 != 1718839674)
      {
        goto LABEL_31;
      }

      [v15 setBufferFrameSizeSet:1];
    }

    else
    {
      if (a4 == 2021)
      {
        v18 = [v15 setIOBufferDurationWithScope:v11 data:a7 dataSize:v9];
        goto LABEL_23;
      }

      if (a4 != 2023)
      {
        goto LABEL_31;
      }

      [v15 setAudioSessionIDSet:1];
    }

LABEL_28:
    [(VCObject *)self unlock];
    return v16;
  }

  if (a4 <= 2002)
  {
    if (a4 != 8)
    {
      if (a4 == 23)
      {
        v17 = [v15 setRenderCallbackWithScope:v11 data:a7 dataSize:v9];
LABEL_27:
        *a9 = v17;
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    v18 = [v15 setStreamFormatWithScope:v11 data:a7 dataSize:v9];
LABEL_23:
    *a9 = v18;
    [(VCObject *)self unlock];
LABEL_24:
    pthread_rwlock_unlock(&self->_callbackLock);
    return v16;
  }

  if (a4 == 2003)
  {
    v17 = [v15 setEnableIOWithScope:v11 data:a7 dataSize:v9];
    goto LABEL_27;
  }

  if (a4 == 2005)
  {
    v17 = [v15 setInputCallbackWithScope:v11 data:a7 dataSize:v9];
    goto LABEL_27;
  }

LABEL_31:
  [(VCObject *)self unlock];
  if (a4 == 2021 || a4 == 8)
  {
    goto LABEL_24;
  }

  return v16;
}

- (BOOL)getProperty:(OpaqueAudioComponentInstance *)a3 inID:(unsigned int)a4 inScope:(unsigned int)a5 inElement:(unsigned int)a6 outData:(void *)a7 ioDataSize:(unsigned int *)a8 outStatus:(int *)a9
{
  [(VCObject *)self lock];
  OUTLINED_FUNCTION_5_36();
  if (v12 && [(VCCoreAudio_AudioUnitMock *)self shouldProcessAudioUnit:a3])
  {
    [(VCCoreAudio_AudioUnitMock *)self audioInstanceForAudioUnit:a3];
    *a9 = 0;
    switch(a4)
    {
      case 8u:
        OUTLINED_FUNCTION_1_33();
        v14 = [v19 getStreamFormatWithScope:? data:? dataSize:?];
        break;
      case 0x17u:
        OUTLINED_FUNCTION_1_33();
        v14 = [v18 getRenderCallbackWithScope:? data:? dataSize:?];
        break;
      case 0x840u:
        OUTLINED_FUNCTION_1_33();
        v14 = [v15 getMaximumMediadataByteSizeWithScope:? data:? dataSize:?];
        break;
      case 0x7D5u:
        OUTLINED_FUNCTION_1_33();
        v14 = [v17 getInputCallbackWithScope:? data:? dataSize:?];
        break;
      case 0x7E5u:
        OUTLINED_FUNCTION_1_33();
        v14 = [v16 getIOBufferDurationWithScope:? data:? dataSize:?];
        break;
      case 0x7D3u:
        OUTLINED_FUNCTION_1_33();
        v14 = [v13 getEnableIOWithScope:? data:? dataSize:?];
        break;
      default:
        v14 = -2;
        break;
    }

    *a9 = v14;
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  [(VCObject *)self unlock];
  return v20;
}

- (BOOL)render:(OpaqueAudioComponentInstance *)a3 ioActionFlags:(unsigned int *)a4 inTimeStamp:(const AudioTimeStamp *)a5 inOutputBusNumber:(unsigned int)a6 inNumberFrames:(unsigned int)a7 ioData:(AudioBufferList *)a8 outStatus:(int *)a9
{
  [(VCObject *)self lock];
  OUTLINED_FUNCTION_5_36();
  if (v10 && [OUTLINED_FUNCTION_18_0() shouldProcessAudioUnit:?])
  {
    v11 = [OUTLINED_FUNCTION_18_0() audioInstanceForAudioUnit:?];
    if ([v11 isInitialized])
    {
      v12 = -3;
      if ([v11 isRunning])
      {
        if ([v11 isReconfiguring])
        {
          v12 = -3;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = -3;
    }

    *a9 = v12;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  [(VCObject *)self unlock];
  return v13;
}

- (BOOL)complexRender:(OpaqueAudioComponentInstance *)a3 ioActionFlags:(unsigned int *)a4 inTimeStamp:(const AudioTimeStamp *)a5 inOutputBusNumber:(unsigned int)a6 inNumberOfPackets:(unsigned int)a7 outNumberOfPackets:(unsigned int *)a8 outPacketDescriptions:(AudioStreamPacketDescription *)a9 ioData:(AudioBufferList *)a10 outMetadata:(void *)a11 outMetadataByteSize:(unsigned int *)a12 outStatus:(int *)a13
{
  [(VCObject *)self lock];
  OUTLINED_FUNCTION_5_36();
  if (v14 && [OUTLINED_FUNCTION_18_0() shouldProcessAudioUnit:?])
  {
    v15 = [OUTLINED_FUNCTION_18_0() audioInstanceForAudioUnit:?];
    if ([v15 isInitialized])
    {
      v16 = -3;
      if ([v15 isRunning])
      {
        if ([v15 isReconfiguring])
        {
          v16 = -3;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = -3;
    }

    *a13 = v16;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  [(VCObject *)self unlock];
  return v17;
}

- (BOOL)initialize:(OpaqueAudioComponentInstance *)a3 outStatus:(int *)a4
{
  OUTLINED_FUNCTION_3_40();
  [v6 lock];
  OUTLINED_FUNCTION_5_36();
  if (v7 && [OUTLINED_FUNCTION_18_9() shouldProcessAudioUnit:?])
  {
    v8 = [OUTLINED_FUNCTION_18_9() audioInstanceForAudioUnit:?];
    if ([v8 isRunning])
    {
      v9 = -3;
    }

    else
    {
      [v8 setIsInitialized:1];
      v9 = 0;
    }

    *v5 = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  [v4 unlock];
  return v10;
}

- (BOOL)uninitialize:(OpaqueAudioComponentInstance *)a3 outStatus:(int *)a4
{
  OUTLINED_FUNCTION_3_40();
  [v6 lock];
  OUTLINED_FUNCTION_5_36();
  if (v7 && [OUTLINED_FUNCTION_18_9() shouldProcessAudioUnit:?])
  {
    v8 = [OUTLINED_FUNCTION_18_9() audioInstanceForAudioUnit:?];
    if (![v8 isInitialized] || (objc_msgSend(v8, "isRunning") & 1) != 0)
    {
      v9 = -3;
    }

    else
    {
      [v8 setIsInitialized:0];
      v9 = 0;
    }

    *v5 = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  [v4 unlock];
  return v10;
}

- (BOOL)outputUnitStart:(OpaqueAudioComponentInstance *)a3 outStatus:(int *)a4
{
  OUTLINED_FUNCTION_3_40();
  pthread_rwlock_wrlock((v6 + 216));
  [v4 lock];
  OUTLINED_FUNCTION_5_36();
  if (v7 && [OUTLINED_FUNCTION_18_9() shouldProcessAudioUnit:?])
  {
    v8 = [OUTLINED_FUNCTION_18_9() audioInstanceForAudioUnit:?];
    if (![v8 isInitialized] || objc_msgSend(v8, "isRunning"))
    {
      *v5 = -3;
      v9 = 1;
    }

    else
    {
      *v5 = 0;
      v9 = 1;
      [v8 setIsRunning:1];
    }
  }

  else
  {
    v9 = 0;
  }

  [v4 unlock];
  pthread_rwlock_unlock((v4 + 216));
  return v9;
}

- (BOOL)outputUnitStop:(OpaqueAudioComponentInstance *)a3 outStatus:(int *)a4
{
  OUTLINED_FUNCTION_3_40();
  pthread_rwlock_wrlock((v6 + 216));
  [v4 lock];
  OUTLINED_FUNCTION_5_36();
  if (v7 && [OUTLINED_FUNCTION_18_9() shouldProcessAudioUnit:?])
  {
    v8 = [OUTLINED_FUNCTION_18_9() audioInstanceForAudioUnit:?];
    if ([v8 isInitialized] && (objc_msgSend(v8, "isRunning") & 1) != 0)
    {
      *v5 = 0;
      [v8 setIsRunning:0];
    }

    else
    {
      *v5 = -3;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  [v4 unlock];
  pthread_rwlock_unlock((v4 + 216));
  return v9;
}

- (BOOL)audioUnit:(OpaqueAudioComponentInstance *)a3 setParameter:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6 value:(float)a7 bufferOffsetInFrames:(unsigned int)a8 outStatus:(int *)a9
{
  [(VCObject *)self lock:a3];
  OUTLINED_FUNCTION_5_36();
  if (v14 && [(VCCoreAudio_AudioUnitMock *)self shouldProcessAudioUnit:a3])
  {
    v15 = [(VCCoreAudio_AudioUnitMock *)self audioInstanceForAudioUnit:a3];
    *a9 = 0;
    if (a4 == 14)
    {
      *&v16 = a7;
      [v15 setDynamicDuckerVolume:v16];
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  [(VCObject *)self unlock];
  return v17;
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end