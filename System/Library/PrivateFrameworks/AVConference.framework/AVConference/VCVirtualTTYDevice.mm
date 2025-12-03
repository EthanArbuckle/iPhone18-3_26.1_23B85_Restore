@interface VCVirtualTTYDevice
- (VCVirtualTTYDevice)initWithMode:(int64_t)mode clientPid:(int)pid;
- (id)setPause:(BOOL)pause;
- (id)start;
- (id)stopWithError:(id)error;
- (void)dealloc;
- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec;
- (void)pullAudioSamples:(opaqueVCAudioBufferList *)samples;
- (void)pushAudioSamples:(opaqueVCAudioBufferList *)samples;
- (void)sendCharacter:(unsigned __int16)character;
- (void)sendText:(id)text;
- (void)serverDidDie;
- (void)start;
@end

@implementation VCVirtualTTYDevice

- (VCVirtualTTYDevice)initWithMode:(int64_t)mode clientPid:(int)pid
{
  v29 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = VCVirtualTTYDevice;
  v6 = [(VCVirtualTTYDevice *)&v25 init];
  v7 = v6;
  if (v6)
  {
    v6->_clientPid = pid;
    v6->_audioSessionId = VCUniqueIDGenerator_GenerateID();
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v7->delegateNotificationQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVirtualTTYDevice.delegateNotificationQueue", 0, CustomRootQueue);
    if (mode)
    {
      if (mode == 1)
      {
        v9 = v7;
        v10 = 2;
      }

      else
      {
        if (mode != 2)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCVirtualTTYDevice initWithMode:clientPid:];
            }
          }

          goto LABEL_9;
        }

        v9 = v7;
        v10 = 0;
      }
    }

    else
    {
      v9 = v7;
      v10 = 4;
    }

    [(VCVirtualTTYDevice *)v9 setDeviceRole:v10];
LABEL_9:
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:&unk_1F579B7D8 forKeyedSubscript:@"vcAudioPayloadConfigKeyPayloadType"];
    v12 = [[VCAudioPayloadConfig alloc] initWithConfigDict:v11];

    v13 = [[VCAudioPayload alloc] initWithConfig:v12];
    v7->_currentAudioPayload = v13;
    codecSampleRate = [(VCAudioPayloadConfig *)[(VCAudioPayload *)v13 config] codecSampleRate];
    v7->_vpioFormat.format.mSampleRate = codecSampleRate;
    *&v7->_vpioFormat.format.mFormatID = xmmword_1DBD453C0;
    *&v7->_vpioFormat.format.mBytesPerFrame = 0x100000004;
    v7->_vpioFormat.format.mBitsPerChannel = 32;
    v7->_vpioFormat.samplesPerFrame = (codecSampleRate / 50.0);
    [(VCAudioPayload *)v7->_currentAudioPayload createEncoderWithInputFormat:&v7->_vpioFormat];

    pthread_mutex_init(&v7->sessionLock, 0);
    *v24 = -1;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v24[8] = v15;
    *&v24[24] = v15;
    LODWORD(v15) = v7->_vpioFormat.samplesPerFrame;
    SoundDec_FormatASBD(16785216, v24, [VCPayloadUtils codecSamplesPerFrameForPayload:99 blockSize:v15 / v7->_vpioFormat.format.mSampleRate], 1, 0, 0.02);
    v16 = malloc_type_calloc(1uLL, 0x118uLL, 0x103004044C57C84uLL);
    v17 = *&v24[16];
    v18 = *v24;
    *v27 = unk_1DBD50540;
    memset(&v27[8], 170, 32);
    v7->_decoder = v16;
    v28 = 0xAAAAAAAAAAAAAAAALL;
    *buf = v18;
    *&buf[16] = v17;
    *&buf[32] = *&v24[32];
    v19 = *&v7->_vpioFormat.format.mSampleRate;
    v20 = *&v7->_vpioFormat.format.mBytesPerPacket;
    *&v27[32] = *&v7->_vpioFormat.format.mBitsPerChannel;
    *&v27[16] = v20;
    *v27 = v19;
    LOWORD(v28) = 0;
    BYTE2(v28) = 0;
    SoundDec_Create(&v7->_decoder, buf);
    CMSimpleQueueCreate(*MEMORY[0x1E695E480], 100, &v7->_charQueue);
    v7->_characterPool = VCMemoryPool_CreateTyped(2uLL, 0x1000040BDFB0063);
    v7->_state = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v21;
      *&buf[12] = 2080;
      *&buf[14] = "[VCVirtualTTYDevice initWithMode:clientPid:]";
      *&buf[22] = 1024;
      *&buf[24] = 134;
      *&buf[28] = 2048;
      *&buf[30] = v7;
      *&buf[38] = 2080;
      *v27 = "[VCVirtualTTYDevice initWithMode:clientPid:]";
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCVirtualTTYDevice [%s] %s:%d VCVirtualTTYDevice[%p] %s", buf, 0x30u);
    }
  }

  return v7;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->delegate, 0);
  dispatch_release(self->delegateNotificationQueue);
  pthread_mutex_destroy(&self->sessionLock);

  SoundDec_Destroy(self->_decoder);
  charQueue = self->_charQueue;
  if (charQueue)
  {
    CFRelease(charQueue);
  }

  VCMemoryPool_Destroy(self->_characterPool);

  v4.receiver = self;
  v4.super_class = VCVirtualTTYDevice;
  [(VCVirtualTTYDevice *)&v4 dealloc];
}

- (id)start
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = v3;
      *v22 = 2080;
      *&v22[2] = "[VCVirtualTTYDevice start]";
      *&v22[10] = 1024;
      *&v22[12] = 151;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCVirtualTTYDevice [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  [(VCVirtualTTYDevice *)self lock];
  if (self->_state)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCVirtualTTYDevice *)v11 start];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCVirtualTTYDevice *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          state = self->_state;
          *buf = 136316418;
          v21 = v13;
          *v22 = 2080;
          *&v22[2] = "[VCVirtualTTYDevice start]";
          *&v22[10] = 1024;
          *&v22[12] = 155;
          *&v22[16] = 2112;
          *&v22[18] = v5;
          *&v22[26] = 2048;
          *&v22[28] = self;
          LOWORD(v23) = 1024;
          *(&v23 + 2) = state;
          _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, "VCVirtualTTYDevice [%s] %s:%d %@(%p) Unable to start because of unexpected state:%d ", buf, 0x36u);
        }
      }
    }

    [(VCVirtualTTYDevice *)self unlock];
    v15 = MEMORY[0x1E696ABC0];
    v31 = @"state";
    v32[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_state];
    return [v15 errorWithDomain:@"VirtualTTYDevice" code:-1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v32, &v31, 1)}];
  }

  else
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29 = v6;
    v30 = v6;
    *&v27[32] = v6;
    v28 = v6;
    *v27 = v6;
    *&v27[16] = v6;
    *&v26[16] = v6;
    *&v26[32] = v6;
    v25 = v6;
    *v26 = v6;
    v23 = v6;
    v24 = v6;
    *&v22[4] = v6;
    *&v22[20] = v6;
    ID = VCUniqueIDGenerator_GenerateID();
    v21 = 0x300000000;
    deviceRole = self->deviceRole;
    *buf = ID;
    *v22 = deviceRole;
    *&v22[4] = 0;
    *&v22[8] = 3;
    *&v23 = 0;
    *&v22[12] = 0;
    *&v22[20] = 0;
    *&v22[25] = 0;
    DWORD2(v23) = 1;
    memset(&v26[8], 0, 40);
    *&v25 = 0;
    v24 = 0uLL;
    WORD4(v25) = 0;
    *v27 = self;
    *v26 = self;
    *&v28 = 0;
    memset(&v27[8], 0, 40);
    WORD4(v28) = 0;
    v29 = 0uLL;
    *&v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
    BYTE8(v30) = 0;
    v9 = [[VCAudioIO alloc] initWithConfiguration:buf];
    self->_audioIO = v9;
    [(VCAudioIO *)v9 setClientFormat:&self->_vpioFormat];
    v19[0] = 0;
    memset(v18, 0, sizeof(v18));
    AUIOGetAUNumber(v19);
    [(VCAudioIO *)self->_audioIO setFarEndVersionInfo:v18];
    start = [(VCAudioIO *)self->_audioIO start];
    if (start)
    {

      self->_audioIO = 0;
    }

    else
    {
      self->_state = 1;
    }

    [(VCVirtualTTYDevice *)self unlock];
  }

  return start;
}

- (void)sendCharacter:(unsigned __int16)character
{
  characterCopy = character;
  v22 = *MEMORY[0x1E69E9840];
  v5 = VCMemoryPool_Alloc(self->_characterPool);
  *v5 = characterCopy;
  if (CMSimpleQueueEnqueue(self->_charQueue, v5))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVirtualTTYDevice sendCharacter:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCVirtualTTYDevice *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v12 = 136316162;
          v13 = v7;
          v14 = 2080;
          v15 = "[VCVirtualTTYDevice sendCharacter:]";
          v16 = 1024;
          v17 = 200;
          v18 = 2112;
          v19 = v6;
          v20 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VCVirtualTTYDevice [%s] %s:%d %@(%p) CMSimpleQueueEnqueue Full", &v12, 0x30u);
        }
      }
    }

    VCMemoryPool_Free(self->_characterPool, v5);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315906;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCVirtualTTYDevice sendCharacter:]";
        v16 = 1024;
        v17 = 203;
        v18 = 1024;
        LODWORD(v19) = characterCopy;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVirtualTTYDevice [%s] %s:%d Sending character:'%C'", &v12, 0x22u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(VCVirtualTTYDevice *)v9 sendCharacter:characterCopy, v10];
    }
  }
}

- (void)sendText:(id)text
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVirtualTTYDevice sendText:];
    }
  }
}

- (id)stopWithError:(id)error
{
  [(VCVirtualTTYDevice *)self lock];
  if (self->_state == 1)
  {
    stop = [(VCAudioIO *)self->_audioIO stop];

    self->_audioIO = 0;
    self->_state = 0;
  }

  else
  {
    stop = 0;
  }

  [(VCVirtualTTYDevice *)self unlock];
  return stop;
}

- (id)setPause:(BOOL)pause
{
  pauseCopy = pause;
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "[VCVirtualTTYDevice setPause:]";
      v12 = 1024;
      v13 = 236;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCVirtualTTYDevice [%s] %s:%d ", &v8, 0x1Cu);
    }
  }

  if (pauseCopy)
  {
    return [(VCVirtualTTYDevice *)self stop];
  }

  else
  {
    return [(VCVirtualTTYDevice *)self start];
  }
}

- (void)pullAudioSamples:(opaqueVCAudioBufferList *)samples
{
  v11 = *MEMORY[0x1E69E9840];
  SampleFormat = VCAudioBufferList_GetSampleFormat(samples);
  v10 = -1431655766;
  BufferAtIndex = VCAudioBufferList_GetBufferAtIndex(samples, 0, &v10);
  v7 = *(SampleFormat + 16) * v10;
  v9 = v7;
  if (CMSimpleQueueGetCount(self->_charQueue) < 1)
  {
    SoundDec_Decode(self->_decoder, 0, 0, BufferAtIndex, v7, &v9, 0);
  }

  else
  {
    v8 = CMSimpleQueueDequeue(self->_charQueue);
    SoundDec_Decode(self->_decoder, v8, 1u, BufferAtIndex, v9, &v9, 0);
    VCMemoryPool_Free(self->_characterPool, v8);
  }

  VCAudioBufferList_InvalidateAveragePower(samples);
}

- (void)pushAudioSamples:(opaqueVCAudioBufferList *)samples
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v23, 0, sizeof(v23));
  v4 = [(VCAudioPayload *)self->_currentAudioPayload encodeAudio:samples numInputSamples:VCAudioBufferList_GetSampleCount(samples) outputBytes:v23 numOutputBytes:32 shortREDBytes:0];
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = v23;
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (v8)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          v11 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v16 = v9;
              v17 = 2080;
              v18 = "[VCVirtualTTYDevice pushAudioSamples:]";
              v19 = 1024;
              v20 = 284;
              v21 = 1024;
              v22 = v7;
              _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCVirtualTTYDevice [%s] %s:%d Received character:%c", buf, 0x22u);
            }
          }

          else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v16 = v9;
            v17 = 2080;
            v18 = "[VCVirtualTTYDevice pushAudioSamples:]";
            v19 = 1024;
            v20 = 284;
            v21 = 1024;
            v22 = v7;
            _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, "VCVirtualTTYDevice [%s] %s:%d Received character:%c", buf, 0x22u);
          }
        }

        delegateNotificationQueue = self->delegateNotificationQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __39__VCVirtualTTYDevice_pushAudioSamples___block_invoke;
        block[3] = &unk_1E85F37A0;
        block[4] = self;
        v14 = v7;
        dispatch_async(delegateNotificationQueue, block);
      }

      --v5;
    }

    while (v5);
  }
}

uint64_t __39__VCVirtualTTYDevice_pushAudioSamples___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40) & 0xFFFF;

  return [v2 vcMediaStream:v3 didReceiveTTYCharacter:v4];
}

- (void)serverDidDie
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->delegateNotificationQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__VCVirtualTTYDevice_serverDidDie__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateNotificationQueue, v3);
}

- (void)didUpdateBasebandCodec:(const _VCRemoteCodecInfo *)codec
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVirtualTTYDevice didUpdateBasebandCodec:];
    }
  }
}

- (void)initWithMode:clientPid:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCVirtualTTYDevice initWithMode:clientPid:]";
  v6 = 1024;
  v7 = 92;
  v8 = 2048;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, "VCVirtualTTYDevice [%s] %s:%d Virtual TTY Device mode(%ld) not supported", v3, 0x26u);
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  selfCopy = self;
  v6 = 2080;
  v7 = "[VCVirtualTTYDevice start]";
  v8 = 1024;
  v9 = 155;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, "VCVirtualTTYDevice [%s] %s:%d Unable to start because of unexpected state:%d ", &v4, 0x22u);
}

- (void)sendCharacter:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVirtualTTYDevice [%s] %s:%d CMSimpleQueueEnqueue Full", v2, v3, v4, v5, v6);
}

- (void)sendCharacter:(os_log_t)log .cold.2(uint64_t a1, unsigned __int16 a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCVirtualTTYDevice sendCharacter:]";
  v7 = 1024;
  v8 = 203;
  v9 = 1024;
  v10 = a2;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, "VCVirtualTTYDevice [%s] %s:%d Sending character:'%C'", &v3, 0x22u);
}

- (void)sendText:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVirtualTTYDevice [%s] %s:%d Not supported", v2, v3, v4, v5, v6);
}

- (void)didUpdateBasebandCodec:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVirtualTTYDevice [%s] %s:%d Unexpected SPI call", v2, v3, v4, v5, v6);
}

@end