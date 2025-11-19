@interface VCMediaRecorderHistoryBuffer
- (CFIndex)flushBuffer;
- (VCMediaRecorderHistoryBuffer)initWithDelegate:(id)a3 bufferLength:(int)a4;
- (opaqueCMSampleBuffer)getClosestSampleForTimestamp:(unsigned int)a3;
- (void)dealloc;
- (void)flushBuffer;
@end

@implementation VCMediaRecorderHistoryBuffer

- (VCMediaRecorderHistoryBuffer)initWithDelegate:(id)a3 bufferLength:(int)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCMediaRecorderHistoryBuffer;
  v6 = [(VCMediaRecorderHistoryBuffer *)&v12 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      objc_storeWeak(&v6->_delegate, a3);
      v8 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v7->_timestampQueue = Mutable;
      if (Mutable)
      {
        v10 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v7->_sampleMap = v10;
        if (v10)
        {
          VCAllocatorFirstCome_Create(v8, "VCMediaRecorderHistoryBufferTimestampAllocator", &v7->_timestampAllocator);
          if (v7->_timestampAllocator)
          {
            v7->_bufferLength = a4;
            return v7;
          }

          [VCMediaRecorderHistoryBuffer initWithDelegate:bufferLength:];
        }

        else
        {
          [VCMediaRecorderHistoryBuffer initWithDelegate:bufferLength:];
        }
      }

      else
      {
        [VCMediaRecorderHistoryBuffer initWithDelegate:bufferLength:];
      }
    }

    else
    {
      [VCMediaRecorderHistoryBuffer initWithDelegate:bufferLength:];
    }

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  [(VCMediaRecorderHistoryBuffer *)self flushBuffer];
  objc_storeWeak(&self->_delegate, 0);
  timestampQueue = self->_timestampQueue;
  if (timestampQueue)
  {
    CFRelease(timestampQueue);
  }

  sampleMap = self->_sampleMap;
  if (sampleMap)
  {
    CFRelease(sampleMap);
  }

  timestampAllocator = self->_timestampAllocator;
  if (timestampAllocator)
  {
    CFRelease(timestampAllocator);
  }

  v6.receiver = self;
  v6.super_class = VCMediaRecorderHistoryBuffer;
  [(VCMediaRecorderHistoryBuffer *)&v6 dealloc];
}

- (opaqueCMSampleBuffer)getClosestSampleForTimestamp:(unsigned int)a3
{
  v35 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(self->_sampleMap);
  if (!Count)
  {
    return 0;
  }

  valuePtr = 480 * (a3 / 0x1E0);
  v6 = *MEMORY[0x1E695E480];
  v7 = 31;
  while (1)
  {
    v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
    if (v8)
    {
      v9 = v8;
      Value = CFDictionaryGetValue(self->_sampleMap, v8);
      CFRelease(v9);
      if (Value)
      {
        break;
      }
    }

    valuePtr -= 480;
    if (--v7 <= 1)
    {
      timestampQueue = self->_timestampQueue;
      v12 = CFArrayGetCount(timestampQueue);
      ValueAtIndex = CFArrayGetValueAtIndex(timestampQueue, v12 - 1);
      valuePtr = CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v24 = v14;
          v25 = 2080;
          v26 = "[VCMediaRecorderHistoryBuffer getClosestSampleForTimestamp:]";
          v27 = 1024;
          v28 = 107;
          v29 = 1024;
          v30 = a3;
          v31 = 1024;
          v32 = valuePtr;
          v33 = 1024;
          v34 = Count;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Image not found in the buffer for timestamp=%u, retrieving the latest one for currentTS=%u, _sampleMap contains=%u", buf, 0x2Eu);
        }
      }

      v16 = CFDictionaryGetValue(self->_sampleMap, ValueAtIndex);
      if (v16)
      {
        return v16;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v24 = v17;
          v25 = 2080;
          v26 = "[VCMediaRecorderHistoryBuffer getClosestSampleForTimestamp:]";
          v27 = 1024;
          v28 = 112;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Can't find last object in timestamp queue, get last object in the image buffer", buf, 0x1Cu);
        }
      }

      v19 = &v21 - ((8 * Count + 15) & 0xFFFFFFFF0);
      memset(v19, 170, 8 * Count);
      memset(v19, 170, 8 * Count);
      CFDictionaryGetKeysAndValues(self->_sampleMap, v19, v19);
      return *&v19[8 * Count - 8];
    }
  }

  return Value;
}

- (void)flushBuffer
{
  p_timestampQueue = &self->_timestampQueue;
  if (CFArrayGetCount(self->_timestampQueue))
  {
    [(VCMediaRecorderHistoryBuffer *)self flushBuffer];
  }
}

- (void)initWithDelegate:bufferLength:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithDelegate:bufferLength:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithDelegate:bufferLength:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithDelegate:bufferLength:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (CFIndex)flushBuffer
{
  do
  {
    VCMediaRecorderHistoryBuffer_DequeueOneFrame(a1);
    result = CFArrayGetCount(*a2);
  }

  while (result);
  return result;
}

@end