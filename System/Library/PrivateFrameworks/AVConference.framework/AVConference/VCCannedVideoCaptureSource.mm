@interface VCCannedVideoCaptureSource
- (VCCannedVideoCaptureSource)initWithVideo:(id)video callbackContext:(id)context frameCallback:(void *)callback shouldScaleAndPad:(BOOL)pad;
- (int)start;
- (int)stop;
- (void)dealloc;
- (void)setContext:(id)context frameCallback:(void *)callback;
- (void)start;
@end

@implementation VCCannedVideoCaptureSource

- (VCCannedVideoCaptureSource)initWithVideo:(id)video callbackContext:(id)context frameCallback:(void *)callback shouldScaleAndPad:(BOOL)pad
{
  padCopy = pad;
  v28 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VCCannedVideoCaptureSource;
  v10 = [(VCObject *)&v19 init];
  if (!v10)
  {
    [VCCannedVideoCaptureSource initWithVideo:callbackContext:frameCallback:shouldScaleAndPad:];
    goto LABEL_18;
  }

  v11 = [CannedVideoCapture cannedVideoTypeForPath:video];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v21 = v12;
      v22 = 2080;
      v23 = "[VCCannedVideoCaptureSource initWithVideo:callbackContext:frameCallback:shouldScaleAndPad:]";
      v24 = 1024;
      v25 = 83;
      v26 = 1024;
      v27 = v11;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cannedVideoType = %d", buf, 0x22u);
    }
  }

  if (v11 == 2)
  {
    v14 = [[CannedEncodedVideoCapture alloc] initWithPath:video shouldScaleAndPad:padCopy];
  }

  else
  {
    if (v11 != 1)
    {
      v10->_frameFeeder = 0;
      goto LABEL_17;
    }

    v14 = [[CannedRawVideoCapture alloc] initWithPath:video];
  }

  v10->_frameFeeder = v14;
  if (!v14)
  {
LABEL_17:
    [VCCannedVideoCaptureSource initWithVideo:callbackContext:frameCallback:shouldScaleAndPad:];
LABEL_18:

    return 0;
  }

  v10->_context.frameRate = 0;
  v10->_context.hostClock = CMClockGetHostTimeClock();
  pthread_mutex_init(&v10->_context.attributeMutex, 0);
  pthread_mutex_init(&v10->_context.frameRingBufferMutex, 0);
  pthread_mutex_init(&v10->_context.producerMutex, 0);
  pthread_cond_init(&v10->_context.producerConditional, 0);
  pthread_mutex_init(&v10->_context.consumerMutex, 0);
  pthread_cond_init(&v10->_context.consumerConditional, 0);
  v15 = malloc_type_calloc(0x10uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  v10->_context.frameRingBuffer = v15;
  if (!v15)
  {
    [VCCannedVideoCaptureSource initWithVideo:callbackContext:frameCallback:shouldScaleAndPad:];
    goto LABEL_18;
  }

  for (i = 0; i != 256; i += 16)
  {
    *(v15 + i) = -1;
  }

  v17 = [objc_alloc(MEMORY[0x1E6986630]) initWithObject:context];
  v10->_weakCallbackContext = v17;
  if (!v17)
  {
    [VCCannedVideoCaptureSource initWithVideo:callbackContext:frameCallback:shouldScaleAndPad:];
    goto LABEL_18;
  }

  v10->_frameCallback = callback;
  v10->_stateLock._os_unfair_lock_opaque = 0;
  return v10;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  [(VCCannedVideoCaptureSource *)self stop];
  if (self->_context.frameRingBuffer)
  {
    for (i = 8; i != 264; i += 16)
    {
      v4 = *(self->_context.frameRingBuffer + i);
      if (v4)
      {
        CVPixelBufferRelease(v4);
      }
    }

    free(self->_context.frameRingBuffer);
  }

  pthread_mutex_destroy(&self->_context.attributeMutex);
  pthread_mutex_destroy(&self->_context.frameRingBufferMutex);
  pthread_mutex_destroy(&self->_context.producerMutex);
  pthread_cond_destroy(&self->_context.producerConditional);
  pthread_mutex_destroy(&self->_context.consumerMutex);
  pthread_cond_destroy(&self->_context.consumerConditional);

  v5.receiver = self;
  v5.super_class = VCCannedVideoCaptureSource;
  [(VCObject *)&v5 dealloc];
}

- (int)start
{
  v11[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  self->_context.producerThreadCanceled = 0;
  if (!self->_context.producerThread)
  {
    v11[0] = @"com.apple.VideoConference.cannedvideocapture.producer";
    v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], v11, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v4 = FigThreadCreate();
    if (v3)
    {
      CFRelease(v3);
    }

    if (v4)
    {
      [VCCannedVideoCaptureSource start];
      goto LABEL_16;
    }
  }

  v5 = 0;
  consumerThread = self->_context.consumerThread;
  self->_context.consumerThreadCanceled = 0;
  if (!consumerThread)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v8 = dispatch_queue_create_with_target_V2("ConsumerThreadHelperQueue", 0, CustomRootQueue);
    if (!v8)
    {
      [(VCCannedVideoCaptureSource *)v11 start];
      v5 = v11[0];
      goto LABEL_11;
    }

    self->_context.helperQueue = v8;
    v11[0] = @"com.apple.VideoConference.cannedvideocapture.consumer";
    v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], v11, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v4 = FigThreadCreate();
    if (v9)
    {
      CFRelease(v9);
    }

    if (!v4)
    {
      v5 = 0;
      goto LABEL_11;
    }

    [VCCannedVideoCaptureSource start];
LABEL_16:
    v5 = v4 | 0xA01D0000;
    os_unfair_lock_unlock(&self->_stateLock);
    [(VCCannedVideoCaptureSource *)self stop];
    return v5;
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_stateLock);
  return v5;
}

- (int)stop
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  pthread_mutex_lock(&self->_context.producerMutex);
  self->_context.producerThreadCanceled = 1;
  pthread_cond_signal(&self->_context.producerConditional);
  pthread_mutex_unlock(&self->_context.producerMutex);
  pthread_mutex_lock(&self->_context.consumerMutex);
  self->_context.consumerThreadCanceled = 1;
  pthread_cond_signal(&self->_context.consumerConditional);
  pthread_mutex_unlock(&self->_context.consumerMutex);
  if (self->_context.producerThread)
  {
    FigThreadJoin();
    self->_context.producerThread = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v3;
        v10 = 2080;
        v11 = "[VCCannedVideoCaptureSource stop]";
        v12 = 1024;
        v13 = 228;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Producer thread stopped!", &v8, 0x1Cu);
      }
    }
  }

  if (self->_context.consumerThread)
  {
    FigThreadJoin();
    self->_context.consumerThread = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = v5;
        v10 = 2080;
        v11 = "[VCCannedVideoCaptureSource stop]";
        v12 = 1024;
        v13 = 234;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Consumer thread stopped!", &v8, 0x1Cu);
      }
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
  return 0;
}

- (void)setContext:(id)context frameCallback:(void *)callback
{
  os_unfair_lock_lock(&self->_stateLock);
  if ([(VCWeakObjectHolder *)self->_weakCallbackContext strong]|| self->_frameCallback)
  {
    [VCCannedVideoCaptureSource setContext:frameCallback:];
  }

  else
  {

    self->_weakCallbackContext = [objc_alloc(MEMORY[0x1E6986630]) initWithObject:context];
    self->_frameCallback = callback;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

void ___VCCannedVideoCaptureSource_ConsumerThread_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 608) strong];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 616);
    v5 = *(a1 + 72);
    v10 = *(a1 + 48);
    v4(v2, v3, &v10, v5);
  }

  CVPixelBufferRelease(*(a1 + 40));
  if (*(*(a1 + 32) + 624) == 1 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      Seconds = CMTimeGetSeconds(&v10);
      v9 = *(a1 + 76);
      LODWORD(v10.value) = 136316162;
      *(&v10.value + 4) = v6;
      LOWORD(v10.flags) = 2080;
      *(&v10.flags + 2) = "_VCCannedVideoCaptureSource_ConsumerThread_block_invoke";
      HIWORD(v10.epoch) = 1024;
      v11 = 465;
      v12 = 2048;
      v13 = Seconds;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Timestamp Alignment: Canned Replay Host Time = %f, Frame Index = %d", &v10, 0x2Cu);
    }
  }
}

- (void)initWithVideo:callbackContext:frameCallback:shouldScaleAndPad:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize weak callback context", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithVideo:callbackContext:frameCallback:shouldScaleAndPad:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Memory allocation for frameRingBuffer failed.", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithVideo:callbackContext:frameCallback:shouldScaleAndPad:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize frame feeder", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithVideo:callbackContext:frameCallback:shouldScaleAndPad:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize self", v2, v3, v4, v5, v6);
    }
  }
}

- (void)start
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *self = 4;
}

- (void)setContext:frameCallback:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Already allocated context and callback", v2, v3, v4, v5, v6);
    }
  }
}

@end