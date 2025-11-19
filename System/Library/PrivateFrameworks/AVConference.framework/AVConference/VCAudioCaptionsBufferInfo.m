@interface VCAudioCaptionsBufferInfo
- (AudioStreamBasicDescription)format;
- (BOOL)isEqual:(id)a3;
- (VCAudioCaptionsBufferInfo)initWithStreamConfig:(const tagVCAudioCaptionsStreamConfig *)a3 bufferLength:(double)a4;
- (id)description;
- (void)dealloc;
@end

@implementation VCAudioCaptionsBufferInfo

- (VCAudioCaptionsBufferInfo)initWithStreamConfig:(const tagVCAudioCaptionsStreamConfig *)a3 bufferLength:(double)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VCAudioCaptionsBufferInfo;
  v6 = [(VCAudioCaptionsBufferInfo *)&v16 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      *(v6 + 8) = a3->var0;
      v6[56] = 0;
      v8 = *&a3->var1.mBytesPerPacket;
      v9 = *&a3->var1.mBitsPerChannel;
      *(v6 + 8) = *&a3->var1.mSampleRate;
      *(v6 + 5) = v9;
      *(v6 + 24) = v8;
      v10 = (*(v6 + 1) * a4);
      v15 = 0xAAAAAAAAAAAAAAAALL;
      v11 = *(v6 + 8);
      v12 = *(v6 + 24);
      *&v14.mBitsPerChannel = *(v6 + 5);
      *&v14.mSampleRate = v11;
      *&v14.mBytesPerPacket = v12;
      VCAudioBufferList_Allocate(&v14, v10, &v15);
      if (v15)
      {
        v7->_buffer = v15;
        return v7;
      }

      [VCAudioCaptionsBufferInfo initWithStreamConfig:v7 bufferLength:?];
    }

    else
    {
      [VCAudioCaptionsBufferInfo initWithStreamConfig:v6 bufferLength:?];
    }

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  buffer = self->_buffer;
  p_buffer = &self->_buffer;
  if (buffer)
  {
    VCAudioBufferList_Destroy(p_buffer);
  }

  v5.receiver = self;
  v5.super_class = VCAudioCaptionsBufferInfo;
  [(VCAudioCaptionsBufferInfo *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@<%p> streamToken=%ld priority=%d", NSStringFromClass(v4), self, self->_token, self->_priority];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(VCAudioCaptionsBufferInfo *)self token];
  if (v5 != [a3 token])
  {
    return 0;
  }

  v6 = [(VCAudioCaptionsBufferInfo *)self priority];
  return v6 == [a3 priority];
}

- (AudioStreamBasicDescription)format
{
  v3 = *&self->mBytesPerFrame;
  *&retstr->mSampleRate = *&self->mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[1].mSampleRate;
  return self;
}

- (void)initWithStreamConfig:(void *)a1 bufferLength:.cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamConfig:(void *)a1 bufferLength:.cold.2(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

@end