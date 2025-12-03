@interface VCCoreAudio_AudioUnitMockInstance
- (BOOL)generateMutedTalkerNotification:(unsigned int)notification;
- (BOOL)reallocAudioBuffer:(AudioBufferList *)buffer withFormat:(const AudioStreamBasicDescription *)format;
- (VCCoreAudio_AudioUnitMockInstance)init;
- (int)getEnableIOWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size;
- (int)getIOBufferDurationWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size;
- (int)getInputCallbackWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size;
- (int)getMaximumMediadataByteSizeWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size;
- (int)getRenderCallbackWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size;
- (int)getStreamFormatWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size;
- (int)setEnableIOWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size;
- (int)setIOBufferDurationWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size;
- (int)setInputCallbackWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size;
- (int)setMutedTalkerNotificiationHandlerWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size;
- (int)setRenderCallbackWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size;
- (int)setStreamFormatWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size;
- (void)cleanUpAudioBuffer:(AudioBufferList *)buffer;
- (void)dealloc;
- (void)runAudioCallbackWithSampleCount:(unsigned int)count timeGap:(double)gap;
- (void)setupDefaultFormat:(AudioStreamBasicDescription *)format;
@end

@implementation VCCoreAudio_AudioUnitMockInstance

- (VCCoreAudio_AudioUnitMockInstance)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCCoreAudio_AudioUnitMockInstance;
  v2 = [(VCObject *)&v8 init];
  if (v2)
  {
    LODWORD(v2->_ioBufferDuration) = dword_1DBD4F080[+[VCHardwareSettings deviceClass]== 8];
    v7 = 0xAAAAAAAAAAAAAAAALL;
    mach_timebase_info(&v7);
    LODWORD(v4) = HIDWORD(v7);
    LODWORD(v3) = v7;
    v2->_timebaseHostTimeConversionRatio = v3 * 0.000000001 / v4;
    v2->_dynamicDuckerVolume = NAN;
    if ([VCDefaults BOOLeanValueForKey:@"forceEnableAudioMockInputPathForAppleTV" defaultValue:0])
    {
      timebaseHostTimeConversionRatio = v2->_timebaseHostTimeConversionRatio;
      v2->_hostTime = timebaseHostTimeConversionRatio * mach_absolute_time();
    }

    [(VCCoreAudio_AudioUnitMockInstance *)v2 setupDefaultFormat:&v2->_renderStreamFormat];
    [(VCCoreAudio_AudioUnitMockInstance *)v2 setupDefaultFormat:&v2->_inputStreamFormat];
    v2->_forceWrongSpeakerIOBufferSize = VCDefaults_GetBoolValueForKey(@"forceEnableWrongSpeakerIOBufferSize", 0);
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(VCCoreAudio_AudioUnitMockInstance *)self cleanUpAudioBuffer:&self->_inputBuffer];
  [(VCCoreAudio_AudioUnitMockInstance *)self cleanUpAudioBuffer:&self->_renderBuffer];
  mutedSpeechActivityListener = self->_mutedSpeechActivityListener;
  if (mutedSpeechActivityListener)
  {
    _Block_release(mutedSpeechActivityListener);
    self->_mutedSpeechActivityListener = 0;
  }

  v4.receiver = self;
  v4.super_class = VCCoreAudio_AudioUnitMockInstance;
  [(VCObject *)&v4 dealloc];
}

- (BOOL)reallocAudioBuffer:(AudioBufferList *)buffer withFormat:(const AudioStreamBasicDescription *)format
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  if (buffer)
  {
    if (format)
    {
      mFormatFlags = format->mFormatFlags;
      if ((mFormatFlags & 0x20) != 0)
      {
        if (mFormatFlags)
        {
          v8 = 4 * vcvtad_u64_f64(format->mSampleRate * self->_ioBufferDuration);
          mChannelsPerFrame = format->mChannelsPerFrame;
          v10 = 16 * (mChannelsPerFrame - 1) + 24;
          v11 = *buffer;
          v18[0] = v11;
          if (!v11 || (v11->mNumberBuffers < mChannelsPerFrame || v8 > v11->mBuffers[0].mDataByteSize) && ([(VCCoreAudio_AudioUnitMockInstance *)self cleanUpAudioBuffer:v18], *buffer = 0, (v11 = v18[0]) == 0))
          {
            v11 = malloc_type_calloc(1uLL, v10 + v8 * mChannelsPerFrame, 0x10800404ACF7207uLL);
            v18[0] = v11;
            if (!v11)
            {
              [VCCoreAudio_AudioUnitMockInstance reallocAudioBuffer:withFormat:];
              return v18[0] != 0;
            }

            *buffer = v11;
          }

          v12 = format->mChannelsPerFrame;
          v11->mNumberBuffers = v12;
          if (v12)
          {
            v13 = 0;
            v14 = 0;
            v15 = v11 + v10;
            do
            {
              v16 = v11 + v13;
              *(v16 + 2) = 1;
              *(v16 + 3) = v8;
              *(v16 + 2) = v15;
              v15 += v8;
              ++v14;
              v11 = v18[0];
              v13 += 16;
            }

            while (v14 < *v18[0]);
          }
        }

        else
        {
          [VCCoreAudio_AudioUnitMockInstance reallocAudioBuffer:withFormat:];
        }
      }

      else
      {
        [VCCoreAudio_AudioUnitMockInstance reallocAudioBuffer:withFormat:];
      }
    }

    else
    {
      [VCCoreAudio_AudioUnitMockInstance reallocAudioBuffer:withFormat:];
    }
  }

  else
  {
    [VCCoreAudio_AudioUnitMockInstance reallocAudioBuffer:withFormat:];
  }

  return v18[0] != 0;
}

- (void)cleanUpAudioBuffer:(AudioBufferList *)buffer
{
  if (buffer)
  {
    if (*buffer)
    {
      free(*buffer);
      *buffer = 0;
    }
  }
}

- (void)setupDefaultFormat:(AudioStreamBasicDescription *)format
{
  format->mSampleRate = 24000.0;
  *&format->mFormatID = xmmword_1DBD453C0;
  *&format->mBytesPerFrame = xmmword_1DBD453D0;
}

- (void)runAudioCallbackWithSampleCount:(unsigned int)count timeGap:(double)gap
{
  v16 = *MEMORY[0x1E69E9840];
  self->_hostTime = self->_hostTime + count / self->_inputStreamFormat.mSampleRate + gap;
  v5 = self->_inputSampleTime + round(self->_inputStreamFormat.mSampleRate * gap) + count;
  self->_inputSampleTime = v5;
  v15 = 0;
  inputProc = self->_inputCallback.inputProc;
  if (inputProc)
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    v10 = v5;
    v11 = (self->_hostTime / self->_timebaseHostTimeConversionRatio);
    (inputProc)(self->_inputCallback.inputProcRefCon, &v15, &v10, 0, *&count, self->_inputBuffer);
  }

  v7 = vcvtad_u64_f64(self->_renderStreamFormat.mSampleRate * self->_ioBufferDuration) << self->_forceWrongSpeakerIOBufferSize;
  renderSampleTime = self->_renderSampleTime;
  self->_renderSampleTime = renderSampleTime + v7;
  v9 = self->_renderCallback.inputProc;
  if (v9)
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    v10 = renderSampleTime + v7;
    v11 = (self->_hostTime / self->_timebaseHostTimeConversionRatio);
    (v9)(self->_renderCallback.inputProcRefCon, &v15, &v10, 0);
  }
}

- (int)setEnableIOWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size
{
  v5 = -1;
  if (data && size == 4)
  {
    v6 = *data;
    if (scope)
    {
      if (scope == 1)
      {
        v7 = &OBJC_IVAR___VCCoreAudio_AudioUnitMockInstance__enableInputIO;
LABEL_10:
        v5 = 0;
        *(&self->super.super.isa + *v7) = v6;
        return v5;
      }

      if (scope != 2)
      {
        return 0;
      }
    }

    else
    {
      self->_enableInputIO = v6;
    }

    v7 = &OBJC_IVAR___VCCoreAudio_AudioUnitMockInstance__enableOutputIO;
    goto LABEL_10;
  }

  return v5;
}

- (int)getEnableIOWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size
{
  result = -1;
  if (data && size && *size >= 4)
  {
    *size = 4;
    if (scope > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(&self->super.super.isa + *off_1E85F84C8[scope]);
    }

    result = 0;
    *size = v7;
  }

  return result;
}

- (int)setRenderCallbackWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size
{
  result = -1;
  if (data)
  {
    if (size == 16)
    {
      result = 0;
      self->_renderCallback = *data;
    }
  }

  return result;
}

- (int)getRenderCallbackWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size
{
  result = -1;
  if (data && size && *size >= 0x10)
  {
    result = 0;
    *size = 16;
    *data = self->_renderCallback;
  }

  return result;
}

- (int)setInputCallbackWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size
{
  result = -1;
  if (data)
  {
    if (size == 16)
    {
      result = 0;
      self->_inputCallback = *data;
    }
  }

  return result;
}

- (int)getInputCallbackWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size
{
  result = -1;
  if (data && size && *size >= 0x10)
  {
    result = 0;
    *size = 16;
    *data = self->_inputCallback;
  }

  return result;
}

- (int)setStreamFormatWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size
{
  result = -1;
  if (data && size == 40)
  {
    [(VCCoreAudio_AudioUnitMockInstance *)self setIsReconfiguring:1];
    if (scope == 1)
    {
      v12 = *(data + 4);
      v13 = *(data + 1);
      *&self->_renderStreamFormat.mSampleRate = *data;
      *&self->_renderStreamFormat.mBytesPerPacket = v13;
      *&self->_renderStreamFormat.mBitsPerChannel = v12;
      v14 = [(VCCoreAudio_AudioUnitMockInstance *)self reallocAudioBuffer:&self->_renderBuffer withFormat:?];
      [(VCCoreAudio_AudioUnitMockInstance *)self setIsReconfiguring:0];
      if (v14)
      {
        return 0;
      }
    }

    else
    {
      if (scope == 2)
      {
        v9 = *(data + 4);
        v10 = *(data + 1);
        *&self->_inputStreamFormat.mSampleRate = *data;
        *&self->_inputStreamFormat.mBytesPerPacket = v10;
        *&self->_inputStreamFormat.mBitsPerChannel = v9;
        v11 = [(VCCoreAudio_AudioUnitMockInstance *)self reallocAudioBuffer:&self->_inputBuffer withFormat:?];
        [(VCCoreAudio_AudioUnitMockInstance *)self setIsReconfiguring:0];
        if (!v11)
        {
          return -4;
        }

        return 0;
      }

      [(VCCoreAudio_AudioUnitMockInstance *)self setIsReconfiguring:0];
    }

    return -4;
  }

  return result;
}

- (int)getStreamFormatWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size
{
  result = -1;
  if (data && size && *size >= 0x28)
  {
    *size = 40;
    if (scope == 2)
    {
      result = 0;
      v7 = 248;
      goto LABEL_8;
    }

    if (scope == 1)
    {
      result = 0;
      v7 = 208;
LABEL_8:
      v8 = self + v7;
      v9 = *(v8 + 4);
      v10 = *(v8 + 1);
      *data = *v8;
      *(data + 1) = v10;
      *(data + 4) = v9;
      return result;
    }

    result = 0;
    *size = 0;
  }

  return result;
}

- (int)setIOBufferDurationWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = -1;
  if (data && size == 4)
  {
    self->_ioBufferDuration = *data;
    [(VCCoreAudio_AudioUnitMockInstance *)self setIsReconfiguring:1];
    if ([(VCCoreAudio_AudioUnitMockInstance *)self reallocAudioBuffer:&self->_inputBuffer withFormat:&self->_inputStreamFormat])
    {
      if ([(VCCoreAudio_AudioUnitMockInstance *)self reallocAudioBuffer:&self->_renderBuffer withFormat:&self->_renderStreamFormat])
      {
        v5 = 0;
LABEL_6:
        [(VCCoreAudio_AudioUnitMockInstance *)self setIsReconfiguring:0];
        return v5;
      }

      [VCCoreAudio_AudioUnitMockInstance setIOBufferDurationWithScope:? data:? dataSize:?];
    }

    else
    {
      [VCCoreAudio_AudioUnitMockInstance setIOBufferDurationWithScope:? data:? dataSize:?];
    }

    v5 = v8;
    goto LABEL_6;
  }

  return v5;
}

- (int)getIOBufferDurationWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size
{
  result = -1;
  if (data && size && *size >= 4)
  {
    result = 0;
    *size = 4;
    *data = self->_ioBufferDuration;
  }

  return result;
}

- (int)getMaximumMediadataByteSizeWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int *)size
{
  result = -1;
  if (data && size && *size >= 4)
  {
    result = 0;
    *size = 4;
    *data = 0;
  }

  return result;
}

- (int)setMutedTalkerNotificiationHandlerWithScope:(unsigned int)scope data:(const void *)data dataSize:(unsigned int)size
{
  if (!data || size == 8)
  {
    mutedSpeechActivityListener = self->_mutedSpeechActivityListener;
    if (mutedSpeechActivityListener)
    {
      _Block_release(mutedSpeechActivityListener);
      self->_mutedSpeechActivityListener = 0;
    }

    v7 = *data;
    if (*data)
    {
      v9 = _Block_copy(v7);
      LODWORD(v7) = 0;
      self->_mutedSpeechActivityListener = v9;
    }
  }

  else
  {
    LODWORD(v7) = -1;
  }

  return v7;
}

- (BOOL)generateMutedTalkerNotification:(unsigned int)notification
{
  mutedSpeechActivityListener = self->_mutedSpeechActivityListener;
  if (mutedSpeechActivityListener)
  {
    mutedSpeechActivityListener[2](self->_mutedSpeechActivityListener, *&notification);
  }

  return mutedSpeechActivityListener != 0;
}

- (void)reallocAudioBuffer:withFormat:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the sample buffer", v2, v3, v4, v5, v6);
    }
  }
}

- (void)reallocAudioBuffer:withFormat:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unsupported audio format: not float", v2, v3, v4, v5, v6);
    }
  }
}

- (void)reallocAudioBuffer:withFormat:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unsupported audio format: interleaved", v2, v3, v4, v5, v6);
    }
  }
}

- (void)reallocAudioBuffer:withFormat:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL format", v2, v3, v4, v5, v6);
    }
  }
}

- (void)reallocAudioBuffer:withFormat:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d NULL audio buffer reference", v2, v3, v4, v5, v6);
    }
  }
}

- (void)setIOBufferDurationWithScope:(_DWORD *)a1 data:dataSize:.cold.1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to reallocate the input buffer", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = -4;
}

- (void)setIOBufferDurationWithScope:(_DWORD *)a1 data:dataSize:.cold.2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to reallocate the render buffer", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = -4;
}

@end