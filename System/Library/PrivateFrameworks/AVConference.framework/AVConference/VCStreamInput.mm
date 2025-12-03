@interface VCStreamInput
- (BOOL)createRemoteReceiveQueue:(id)queue;
- (BOOL)isStarted;
- (NSDictionary)reportingStats;
- (VCStreamInput)initWithStreamInputID:(id)d format:(opaqueCMFormatDescription *)format delegate:(id)delegate delegateQueue:(id)queue remoteQueue:(id)remoteQueue;
- (void)dealloc;
- (void)didResumeStreamInputCaptureSource;
- (void)didStartStreamInputCaptureSource;
- (void)didStopStreamInputCaptureSource;
- (void)didSuspendStreamInputCaptureSource;
- (void)invalidate;
@end

@implementation VCStreamInput

- (VCStreamInput)initWithStreamInputID:(id)d format:(opaqueCMFormatDescription *)format delegate:(id)delegate delegateQueue:(id)queue remoteQueue:(id)remoteQueue
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = VCStreamInput;
  v12 = [(VCObject *)&v21 init];
  if (!v12)
  {
    goto LABEL_17;
  }

  if (!d)
  {
    [VCStreamInput initWithStreamInputID:format:delegate:delegateQueue:remoteQueue:];
LABEL_17:
    [(VCStreamInput *)v12 invalidate];

    return 0;
  }

  -[VCObject setLogPrefix:](v12, "setLogPrefix:", [MEMORY[0x1E696AEC0] stringWithFormat:@"streamInputID=%@", d]);
  if (!format)
  {
    [VCStreamInput initWithStreamInputID:v12 format:? delegate:? delegateQueue:? remoteQueue:?];
    goto LABEL_17;
  }

  if (!delegate)
  {
    [VCStreamInput initWithStreamInputID:v12 format:? delegate:? delegateQueue:? remoteQueue:?];
    goto LABEL_17;
  }

  if (!queue)
  {
    [VCStreamInput initWithStreamInputID:v12 format:? delegate:? delegateQueue:? remoteQueue:?];
    goto LABEL_17;
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v15 = [v13 stringWithFormat:@"%@.%@.%p", @"com.apple.VideoConference", NSStringFromClass(v14), v12];
  uTF8String = [(__CFString *)v15 UTF8String];
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(56);
  v18 = dispatch_queue_create_with_target_V2(uTF8String, 0, CustomRootQueue);
  v12->_streamInputQueue = v18;
  if (!v18)
  {
    [VCStreamInput initWithStreamInputID:v12 format:v15 delegate:? delegateQueue:? remoteQueue:?];
    goto LABEL_17;
  }

  if (remoteQueue)
  {
    [(VCStreamInput *)v12 createRemoteReceiveQueue:remoteQueue];
  }

  v19 = [d copy];
  v12->_streamInputID = v19;
  if (!v19)
  {
    [VCStreamInput initWithStreamInputID:v12 format:? delegate:? delegateQueue:? remoteQueue:?];
    goto LABEL_17;
  }

  HIDWORD(v12->_lastAveragedTime.epoch) = 0;
  v12->_format = CFRetain(format);
  v12->_strongDelegate = delegate;
  v12->_delegateQueue = queue;
  dispatch_retain(queue);
  return v12;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  selfCopy = self;
  OUTLINED_FUNCTION_0();
  v4 = 92;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalidate was not called!", &v2, 0x1Cu);
}

- (BOOL)isStarted
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  streamInputQueue = self->_streamInputQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__VCStreamInput_isStarted__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(streamInputQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  VCRemoteImageQueue_Destroy(&self->_lastTransitTime);
  streamInputQueue = self->_streamInputQueue;
  if (streamInputQueue)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy__20;
    v12 = __Block_byref_object_dispose__20;
    v13 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__VCStreamInput_invalidate__block_invoke;
    block[3] = &unk_1E85F3868;
    block[4] = self;
    block[5] = &v8;
    dispatch_sync(streamInputQueue, block);
    v4 = v9[5];
    if (v4)
    {
      dispatch_sync(v4, &__block_literal_global_61);
    }

    v5 = self->_streamInputQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __27__VCStreamInput_invalidate__block_invoke_3;
    v6[3] = &unk_1E85F3868;
    v6[4] = self;
    v6[5] = &v8;
    dispatch_sync(v5, v6);
    _Block_object_dispose(&v8, 8);
  }
}

uint64_t __27__VCStreamInput_invalidate__block_invoke(uint64_t result)
{
  *(*(result + 32) + 216) = 0;
  *(*(*(result + 40) + 8) + 40) = *(*(result + 32) + 208);
  *(*(result + 32) + 208) = 0;
  return result;
}

void __27__VCStreamInput_invalidate__block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 200) = 0;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_release(v2);
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }
}

- (NSDictionary)reportingStats
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  memset(&v10, 170, sizeof(v10));
  *&lhs.value = *(&self->_isStarted + 4);
  lhs.epoch = *&self->_lastBufferTime.flags;
  *&v8.value = *(&self->_lastBufferTime.epoch + 4);
  v8.epoch = *&self->_lastAveragedTime.flags;
  CMTimeSubtract(&v10, &lhs, &v8);
  lhs = v10;
  if (CMTimeGetSeconds(&lhs) <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v4 = atomic_load(&self->_lastAveragedTime.epoch + 1);
    lhs = v10;
    v5 = vcvtad_u64_f64((1000 * v4) / CMTimeGetSeconds(&lhs));
  }

  atomic_store(0, &self->_lastAveragedTime.epoch + 1);
  v6 = *(&self->_isStarted + 4);
  *&self->_lastAveragedTime.flags = *&self->_lastBufferTime.flags;
  *(&self->_lastBufferTime.epoch + 4) = v6;
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", round(*&self->_sampleBufferCount * 1000000.0)), @"MediaCaptureJitter"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", v5), @"MediaCaptureBufferRate"}];
  return v3;
}

- (BOOL)createRemoteReceiveQueue:(id)queue
{
  v7 = *MEMORY[0x1E69E9840];
  if (!queue)
  {
    [VCStreamInput createRemoteReceiveQueue:?];
    return v6;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__VCStreamInput_createRemoteReceiveQueue___block_invoke;
  v5[3] = &unk_1E85F5340;
  v5[4] = self;
  VCRemoteImageQueue_CreateReceiverQueue(queue, v5, self->_streamInputQueue, &self->_lastTransitTime);
  if (!*&self->_lastTransitTime)
  {
    [VCStreamInput createRemoteReceiveQueue:?];
    return v6;
  }

  return 1;
}

void __42__VCStreamInput_createRemoteReceiveQueue___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  [*(v5 + 184) unsignedIntValue];
  if (a2)
  {
    __42__VCStreamInput_createRemoteReceiveQueue___block_invoke_cold_1();
  }

  else if (*a3 == 3)
  {
    v6 = *(a3 + 24);
    if (v6)
    {
      memset(&v7, 170, sizeof(v7));
      CMSampleBufferGetPresentationTimeStamp(&v7, v6);
      time = v7;
      CMTimeGetSeconds(&time);
      kdebug_trace();
      (*(v5 + 176))(v5, v6);
    }

    else
    {
      __42__VCStreamInput_createRemoteReceiveQueue___block_invoke_cold_3();
    }
  }

  else
  {
    __42__VCStreamInput_createRemoteReceiveQueue___block_invoke_cold_2(a3);
  }
}

- (void)didStartStreamInputCaptureSource
{
  v3[5] = *MEMORY[0x1E69E9840];
  streamInputQueue = self->_streamInputQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__VCStreamInput_didStartStreamInputCaptureSource__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(streamInputQueue, v3);
}

void __49__VCStreamInput_didStartStreamInputCaptureSource__block_invoke(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 216) = 1;
  v1 = *(a1 + 32);
  v2 = *(v1 + 208);
  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __49__VCStreamInput_didStartStreamInputCaptureSource__block_invoke_2;
    v3[3] = &unk_1E85F3778;
    v3[4] = v1;
    dispatch_async(v2, v3);
  }
}

- (void)didStopStreamInputCaptureSource
{
  v3[5] = *MEMORY[0x1E69E9840];
  streamInputQueue = self->_streamInputQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__VCStreamInput_didStopStreamInputCaptureSource__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(streamInputQueue, v3);
}

void __48__VCStreamInput_didStopStreamInputCaptureSource__block_invoke(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 216) = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 208);
  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __48__VCStreamInput_didStopStreamInputCaptureSource__block_invoke_2;
    v3[3] = &unk_1E85F3778;
    v3[4] = v1;
    dispatch_async(v2, v3);
  }
}

- (void)didSuspendStreamInputCaptureSource
{
  v3[5] = *MEMORY[0x1E69E9840];
  streamInputQueue = self->_streamInputQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VCStreamInput_didSuspendStreamInputCaptureSource__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(streamInputQueue, v3);
}

void __51__VCStreamInput_didSuspendStreamInputCaptureSource__block_invoke(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 208);
  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __51__VCStreamInput_didSuspendStreamInputCaptureSource__block_invoke_2;
    v3[3] = &unk_1E85F3778;
    v3[4] = v1;
    dispatch_async(v2, v3);
  }
}

- (void)didResumeStreamInputCaptureSource
{
  v3[5] = *MEMORY[0x1E69E9840];
  streamInputQueue = self->_streamInputQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__VCStreamInput_didResumeStreamInputCaptureSource__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(streamInputQueue, v3);
}

void __50__VCStreamInput_didResumeStreamInputCaptureSource__block_invoke(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 208);
  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __50__VCStreamInput_didResumeStreamInputCaptureSource__block_invoke_2;
    v3[3] = &unk_1E85F3778;
    v3[4] = v1;
    dispatch_async(v2, v3);
  }
}

- (void)initWithStreamInputID:(uint64_t)a1 format:delegate:delegateQueue:remoteQueue:.cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamInputID:(void *)a1 format:(__CFString *)a2 delegate:delegateQueue:remoteQueue:.cold.2(void *a1, __CFString *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    v17 = v5;
    OUTLINED_FUNCTION_8_24();
    v18 = a2;
    OUTLINED_FUNCTION_2();
    v11 = 38;
LABEL_12:
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v15 = 136316418;
      v16 = v12;
      v17 = 2080;
      OUTLINED_FUNCTION_8_24();
      v18 = v4;
      v19 = 2048;
      v20 = a1;
      v21 = v14;
      v22 = a2;
      v6 = &dword_1DB56E000;
      v9 = " [%s] %s:%d %@(%p) Failed to create the dispatch queue with queueName=%@";
      v10 = &v15;
      v7 = v13;
      v8 = OS_LOG_TYPE_ERROR;
      v11 = 58;
      goto LABEL_12;
    }
  }
}

- (void)initWithStreamInputID:(uint64_t)a1 format:delegate:delegateQueue:remoteQueue:.cold.3(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamInputID:(uint64_t)a1 format:delegate:delegateQueue:remoteQueue:.cold.4(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamInputID:(uint64_t)a1 format:delegate:delegateQueue:remoteQueue:.cold.5(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithStreamInputID:format:delegate:delegateQueue:remoteQueue:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)createRemoteReceiveQueue:(_BYTE *)a1 .cold.1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)createRemoteReceiveQueue:(_BYTE *)a1 .cold.2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void __42__VCStreamInput_createRemoteReceiveQueue___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void __42__VCStreamInput_createRemoteReceiveQueue___block_invoke_cold_2(int *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_34())
    {
      v4 = *a1;
      v5 = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "_VCStreamInput_RemoteQueueOperationHandler";
      v9 = 1024;
      v10 = 190;
      v11 = 1024;
      v12 = v4;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Received unexpected operation=%d", &v5, 0x22u);
    }
  }
}

void __42__VCStreamInput_createRemoteReceiveQueue___block_invoke_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end