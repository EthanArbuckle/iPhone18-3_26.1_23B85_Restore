@interface VCVideoRelay
+ (id)sharedInstance;
- (BOOL)deregisterForVideoFrames:(id)a3;
- (BOOL)enqueueFrame:(__CVBuffer *)a3 atTime:(id *)a4 cameraStatusBits:(unsigned __int8)a5;
- (BOOL)registerForVideoFrames:(id)a3;
- (VCVideoRelay)init;
- (void)dealloc;
@end

@implementation VCVideoRelay

+ (id)sharedInstance
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__VCVideoRelay_sharedInstance__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = a1;
  if (sharedInstance_onceToken_17 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_17, v3);
  }

  return sharedInstance__vcVideoRelaySingleton;
}

Class *__30__VCVideoRelay_sharedInstance__block_invoke(Class *result)
{
  if (!sharedInstance__vcVideoRelaySingleton)
  {
    result = objc_alloc_init(result[4]);
    sharedInstance__vcVideoRelaySingleton = result;
  }

  return result;
}

- (VCVideoRelay)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCVideoRelay;
  v2 = [(VCVideoRelay *)&v5 init];
  if (v2)
  {
    v2->_videoCaptureSinks = objc_alloc_init(MEMORY[0x1E695DF70]);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v2->_dispatchQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoRelay.dispatchQueue", 0, CustomRootQueue);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  dispatch_release(self->_dispatchQueue);
  v3.receiver = self;
  v3.super_class = VCVideoRelay;
  [(VCVideoRelay *)&v3 dealloc];
}

- (BOOL)enqueueFrame:(__CVBuffer *)a3 atTime:(id *)a4 cameraStatusBits:(unsigned __int8)a5
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v10)
      {
        return v10;
      }

      [VCVideoRelay enqueueFrame:atTime:cameraStatusBits:];
    }

LABEL_10:
    LOBYTE(v10) = 0;
    return v10;
  }

  v19 = *a4;
  SampleBufferWithPixelBuffer = createSampleBufferWithPixelBuffer(a3, &v19.var0);
  if (!SampleBufferWithPixelBuffer)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v10)
      {
        return v10;
      }

      [VCVideoRelay enqueueFrame:atTime:cameraStatusBits:];
    }

    goto LABEL_10;
  }

  v15 = 0u;
  v17 = 0;
  v18 = 0;
  dispatchQueue = self->_dispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__VCVideoRelay_enqueueFrame_atTime_cameraStatusBits___block_invoke;
  v12[3] = &unk_1E85F9820;
  v12[4] = self;
  v12[5] = SampleBufferWithPixelBuffer;
  v13 = *&a4->var0;
  var3 = a4->var3;
  v16 = a5;
  dispatch_sync(dispatchQueue, v12);
  LOBYTE(v10) = 1;
  return v10;
}

void __53__VCVideoRelay_enqueueFrame_atTime_cameraStatusBits___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v12 = *(a1 + 48);
        v13 = *(a1 + 64);
        v10 = *(a1 + 72);
        v11 = *(a1 + 88);
        [v7 onVideoFrame:v8 frameTime:&v12 attribute:&v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }
}

- (BOOL)registerForVideoFrames:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    dispatchQueue = self->_dispatchQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__VCVideoRelay_registerForVideoFrames___block_invoke;
    v6[3] = &unk_1E85F6638;
    v6[4] = self;
    v6[5] = a3;
    v6[6] = &v7;
    dispatch_sync(dispatchQueue, v6);
    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRelay registerForVideoFrames:];
      }
    }

    v4 = 0;
  }

  return v4 & 1;
}

void __39__VCVideoRelay_registerForVideoFrames___block_invoke(void *a1)
{
  if ([*(a1[4] + 8) containsObject:a1[5]])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __39__VCVideoRelay_registerForVideoFrames___block_invoke_cold_1();
      }
    }
  }

  else
  {
    [*(a1[4] + 8) addObject:a1[5]];
    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (BOOL)deregisterForVideoFrames:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    dispatchQueue = self->_dispatchQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__VCVideoRelay_deregisterForVideoFrames___block_invoke;
    v6[3] = &unk_1E85F6638;
    v6[4] = self;
    v6[5] = a3;
    v6[6] = &v7;
    dispatch_sync(dispatchQueue, v6);
    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRelay deregisterForVideoFrames:];
      }
    }

    v4 = 0;
  }

  return v4 & 1;
}

void __41__VCVideoRelay_deregisterForVideoFrames___block_invoke(void *a1)
{
  if ([*(a1[4] + 8) containsObject:a1[5]])
  {
    [*(a1[4] + 8) removeObject:a1[5]];
    *(*(a1[6] + 8) + 24) = 1;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __41__VCVideoRelay_deregisterForVideoFrames___block_invoke_cold_1();
    }
  }
}

- (void)enqueueFrame:atTime:cameraStatusBits:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create CMSampleBuffer", v2, v3, v4, v5, v6);
}

- (void)enqueueFrame:atTime:cameraStatusBits:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d frameBuffer is nil", v2, v3, v4, v5, v6);
}

- (void)registerForVideoFrames:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d client is nil", v2, v3, v4, v5, v6);
}

void __39__VCVideoRelay_registerForVideoFrames___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "[VCVideoRelay registerForVideoFrames:]_block_invoke";
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d client %p is already in_videoCaptureSinks", v2, *v3, "[VCVideoRelay registerForVideoFrames:]_block_invoke" >> 16, v4);
}

- (void)deregisterForVideoFrames:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d client is nil", v2, v3, v4, v5, v6);
}

void __41__VCVideoRelay_deregisterForVideoFrames___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "[VCVideoRelay deregisterForVideoFrames:]_block_invoke";
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d client %p is not in _videoCaptureSinks", v2, *v3, "[VCVideoRelay deregisterForVideoFrames:]_block_invoke" >> 16, v4);
}

@end