@interface VCCoreAudio_AudioUnitMockInstance
- (BOOL)generateMutedTalkerNotification:(unsigned int)a3;
- (BOOL)reallocAudioBuffer:(AudioBufferList *)a3 withFormat:(const AudioStreamBasicDescription *)a4;
- (VCCoreAudio_AudioUnitMockInstance)init;
- (int)getEnableIOWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5;
- (int)getIOBufferDurationWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5;
- (int)getInputCallbackWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5;
- (int)getMaximumMediadataByteSizeWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5;
- (int)getRenderCallbackWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5;
- (int)getStreamFormatWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5;
- (int)setEnableIOWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5;
- (int)setIOBufferDurationWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5;
- (int)setInputCallbackWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5;
- (int)setMutedTalkerNotificiationHandlerWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5;
- (int)setRenderCallbackWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5;
- (int)setStreamFormatWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5;
- (void)cleanUpAudioBuffer:(AudioBufferList *)a3;
- (void)dealloc;
- (void)runAudioCallbackWithSampleCount:(unsigned int)a3 timeGap:(double)a4;
- (void)setupDefaultFormat:(AudioStreamBasicDescription *)a3;
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

- (BOOL)reallocAudioBuffer:(AudioBufferList *)a3 withFormat:(const AudioStreamBasicDescription *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  if (a3)
  {
    if (a4)
    {
      mFormatFlags = a4->mFormatFlags;
      if ((mFormatFlags & 0x20) != 0)
      {
        if (mFormatFlags)
        {
          v8 = 4 * vcvtad_u64_f64(a4->mSampleRate * self->_ioBufferDuration);
          mChannelsPerFrame = a4->mChannelsPerFrame;
          v10 = 16 * (mChannelsPerFrame - 1) + 24;
          v11 = *a3;
          v18[0] = v11;
          if (!v11 || (v11->mNumberBuffers < mChannelsPerFrame || v8 > v11->mBuffers[0].mDataByteSize) && ([(VCCoreAudio_AudioUnitMockInstance *)self cleanUpAudioBuffer:v18], *a3 = 0, (v11 = v18[0]) == 0))
          {
            v11 = malloc_type_calloc(1uLL, v10 + v8 * mChannelsPerFrame, 0x10800404ACF7207uLL);
            v18[0] = v11;
            if (!v11)
            {
              [VCCoreAudio_AudioUnitMockInstance reallocAudioBuffer:withFormat:];
              return v18[0] != 0;
            }

            *a3 = v11;
          }

          v12 = a4->mChannelsPerFrame;
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

- (void)cleanUpAudioBuffer:(AudioBufferList *)a3
{
  if (a3)
  {
    if (*a3)
    {
      free(*a3);
      *a3 = 0;
    }
  }
}

- (void)setupDefaultFormat:(AudioStreamBasicDescription *)a3
{
  a3->mSampleRate = 24000.0;
  *&a3->mFormatID = xmmword_1DBD453C0;
  *&a3->mBytesPerFrame = xmmword_1DBD453D0;
}

- (void)runAudioCallbackWithSampleCount:(unsigned int)a3 timeGap:(double)a4
{
  v16 = *MEMORY[0x1E69E9840];
  self->_hostTime = self->_hostTime + a3 / self->_inputStreamFormat.mSampleRate + a4;
  v5 = self->_inputSampleTime + round(self->_inputStreamFormat.mSampleRate * a4) + a3;
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
    (inputProc)(self->_inputCallback.inputProcRefCon, &v15, &v10, 0, *&a3, self->_inputBuffer);
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

- (int)setEnableIOWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5
{
  v5 = -1;
  if (a4 && a5 == 4)
  {
    v6 = *a4;
    if (a3)
    {
      if (a3 == 1)
      {
        v7 = &OBJC_IVAR___VCCoreAudio_AudioUnitMockInstance__enableInputIO;
LABEL_10:
        v5 = 0;
        *(&self->super.super.isa + *v7) = v6;
        return v5;
      }

      if (a3 != 2)
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

- (int)getEnableIOWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5
{
  result = -1;
  if (a4 && a5 && *a5 >= 4)
  {
    *a5 = 4;
    if (a3 > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(&self->super.super.isa + *off_1E85F84C8[a3]);
    }

    result = 0;
    *a5 = v7;
  }

  return result;
}

- (int)setRenderCallbackWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5
{
  result = -1;
  if (a4)
  {
    if (a5 == 16)
    {
      result = 0;
      self->_renderCallback = *a4;
    }
  }

  return result;
}

- (int)getRenderCallbackWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5
{
  result = -1;
  if (a4 && a5 && *a5 >= 0x10)
  {
    result = 0;
    *a5 = 16;
    *a4 = self->_renderCallback;
  }

  return result;
}

- (int)setInputCallbackWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5
{
  result = -1;
  if (a4)
  {
    if (a5 == 16)
    {
      result = 0;
      self->_inputCallback = *a4;
    }
  }

  return result;
}

- (int)getInputCallbackWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5
{
  result = -1;
  if (a4 && a5 && *a5 >= 0x10)
  {
    result = 0;
    *a5 = 16;
    *a4 = self->_inputCallback;
  }

  return result;
}

- (int)setStreamFormatWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5
{
  result = -1;
  if (a4 && a5 == 40)
  {
    [(VCCoreAudio_AudioUnitMockInstance *)self setIsReconfiguring:1];
    if (a3 == 1)
    {
      v12 = *(a4 + 4);
      v13 = *(a4 + 1);
      *&self->_renderStreamFormat.mSampleRate = *a4;
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
      if (a3 == 2)
      {
        v9 = *(a4 + 4);
        v10 = *(a4 + 1);
        *&self->_inputStreamFormat.mSampleRate = *a4;
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

- (int)getStreamFormatWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5
{
  result = -1;
  if (a4 && a5 && *a5 >= 0x28)
  {
    *a5 = 40;
    if (a3 == 2)
    {
      result = 0;
      v7 = 248;
      goto LABEL_8;
    }

    if (a3 == 1)
    {
      result = 0;
      v7 = 208;
LABEL_8:
      v8 = self + v7;
      v9 = *(v8 + 4);
      v10 = *(v8 + 1);
      *a4 = *v8;
      *(a4 + 1) = v10;
      *(a4 + 4) = v9;
      return result;
    }

    result = 0;
    *a5 = 0;
  }

  return result;
}

- (int)setIOBufferDurationWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = -1;
  if (a4 && a5 == 4)
  {
    self->_ioBufferDuration = *a4;
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

- (int)getIOBufferDurationWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5
{
  result = -1;
  if (a4 && a5 && *a5 >= 4)
  {
    result = 0;
    *a5 = 4;
    *a4 = self->_ioBufferDuration;
  }

  return result;
}

- (int)getMaximumMediadataByteSizeWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int *)a5
{
  result = -1;
  if (a4 && a5 && *a5 >= 4)
  {
    result = 0;
    *a5 = 4;
    *a4 = 0;
  }

  return result;
}

- (int)setMutedTalkerNotificiationHandlerWithScope:(unsigned int)a3 data:(const void *)a4 dataSize:(unsigned int)a5
{
  if (!a4 || a5 == 8)
  {
    mutedSpeechActivityListener = self->_mutedSpeechActivityListener;
    if (mutedSpeechActivityListener)
    {
      _Block_release(mutedSpeechActivityListener);
      self->_mutedSpeechActivityListener = 0;
    }

    v7 = *a4;
    if (*a4)
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

- (BOOL)generateMutedTalkerNotification:(unsigned int)a3
{
  mutedSpeechActivityListener = self->_mutedSpeechActivityListener;
  if (mutedSpeechActivityListener)
  {
    mutedSpeechActivityListener[2](self->_mutedSpeechActivityListener, *&a3);
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