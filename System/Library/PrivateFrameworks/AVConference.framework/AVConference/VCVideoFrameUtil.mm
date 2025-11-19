@interface VCVideoFrameUtil
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)CMTimeFromXPCDictionary:(SEL)a3;
+ (__CVBuffer)newCVPixelBufferFromXPCDictionary:(id)a3 isDepth:(BOOL)a4;
+ (id)newXPCDictionaryWithCVPixelBuffer:(__CVBuffer *)a3 depthPixelBuffer:(__CVBuffer *)a4 time:(id *)a5;
@end

@implementation VCVideoFrameUtil

+ (id)newXPCDictionaryWithCVPixelBuffer:(__CVBuffer *)a3 depthPixelBuffer:(__CVBuffer *)a4 time:(id *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [VCVideoFrameUtil newXPCDictionaryWithCVPixelBuffer:? depthPixelBuffer:? time:?];
    return v17.var0;
  }

  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (!IOSurface)
  {
    [VCVideoFrameUtil newXPCDictionaryWithCVPixelBuffer:? depthPixelBuffer:? time:?];
    return v17.var0;
  }

  XPCObject = IOSurfaceCreateXPCObject(IOSurface);
  if (!XPCObject)
  {
    [VCVideoFrameUtil newXPCDictionaryWithCVPixelBuffer:? depthPixelBuffer:? time:?];
    return v17.var0;
  }

  v9 = XPCObject;
  v10 = *MEMORY[0x1E695E480];
  v17 = *a5;
  v11 = CMTimeCopyAsDictionary(&v17, v10);
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v13, "vcEffectsXPCIOSurface", v9);
  xpc_dictionary_set_value(v13, "vcEffectsXPCCMTime", v12);
  if (a4)
  {
    v14 = CVPixelBufferGetIOSurface(a4);
    v15 = IOSurfaceCreateXPCObject(v14);
    xpc_dictionary_set_value(v13, "vcEffectsXPCDepthIOSurface", v15);
    xpc_release(v15);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    xpc_release(v12);
  }

  xpc_release(v9);
  return v13;
}

+ (__CVBuffer)newCVPixelBufferFromXPCDictionary:(id)a3 isDepth:(BOOL)a4
{
  v21 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  if (a4)
  {
    v4 = "vcEffectsXPCDepthIOSurface";
  }

  else
  {
    v4 = "vcEffectsXPCIOSurface";
  }

  value = xpc_dictionary_get_value(a3, v4);
  result = IOSurfaceLookupFromXPCObject(value);
  if (result)
  {
    v7 = result;
    v8 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], result, 0, &pixelBufferOut);
    if (v8)
    {
      v9 = v8;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v14 = v10;
          v15 = 2080;
          v16 = "+[VCVideoFrameUtil newCVPixelBufferFromXPCDictionary:isDepth:]";
          v17 = 1024;
          v18 = 67;
          v19 = 1024;
          v20 = v9;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Could not recreate pixel buffer from surface: %d", buf, 0x22u);
        }
      }
    }

    CFRelease(v7);
    return pixelBufferOut;
  }

  return result;
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)CMTimeFromXPCDictionary:(SEL)a3
{
  xpc_dictionary_get_value(a4, "vcEffectsXPCCMTime");
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  memset(retstr, 170, sizeof($3CC8671D27C23BF42ADDB32F2B5E48AE));
  CMTimeMakeFromDictionary(retstr, v5);

  CFRelease(v5);
  return result;
}

+ (void)newXPCDictionaryWithCVPixelBuffer:(void *)a1 depthPixelBuffer:time:.cold.1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d IOSurfaceCreateXPCObject returned NULL", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

+ (void)newXPCDictionaryWithCVPixelBuffer:(void *)a1 depthPixelBuffer:time:.cold.2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d CVPixelBufferGetIOSurface returned NULL", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

+ (void)newXPCDictionaryWithCVPixelBuffer:(void *)a1 depthPixelBuffer:time:.cold.3(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d pixelBuffer is NULL", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

@end