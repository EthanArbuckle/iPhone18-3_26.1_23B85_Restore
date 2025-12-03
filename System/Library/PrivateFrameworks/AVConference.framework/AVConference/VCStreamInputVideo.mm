@interface VCStreamInputVideo
- (VCStreamInputVideo)initWithStreamInputID:(id)d format:(opaqueCMFormatDescription *)format delegate:(id)delegate delegateQueue:(id)queue remoteQueue:(id)remoteQueue;
- (unsigned)addSink:(id)sink;
- (unsigned)removeSink:(id)sink;
- (void)dealloc;
- (void)invalidate;
@end

@implementation VCStreamInputVideo

- (VCStreamInputVideo)initWithStreamInputID:(id)d format:(opaqueCMFormatDescription *)format delegate:(id)delegate delegateQueue:(id)queue remoteQueue:(id)remoteQueue
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCStreamInputVideo;
  v7 = [(VCStreamInput *)&v12 initWithStreamInputID:d format:format delegate:delegate delegateQueue:queue remoteQueue:remoteQueue];
  v8 = v7;
  if (v7)
  {
    v7->super._sampleBufferHandler = _VCStreamInputVideo_SampleBufferHandler;
    v11 = 0;
    v9 = [[VCVideoCapture alloc] initWithCaptureServer:0 protocolFunctions:&v11];
    v8->super._receiverQueue = v9;
    if (v9)
    {
      if ([+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer VCVideoCaptureServerSingleton])
      {
        return v8;
      }

      [VCStreamInputVideo initWithStreamInputID:format:delegate:delegateQueue:remoteQueue:];
    }

    else
    {
      [VCStreamInputVideo initWithStreamInputID:v8 format:? delegate:? delegateQueue:? remoteQueue:?];
    }

    [(VCStreamInputVideo *)v8 invalidate];

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCStreamInputVideo;
  [(VCStreamInput *)&v3 dealloc];
}

- (void)invalidate
{
  v4 = *MEMORY[0x1E69E9840];
  [+[VCVideoCaptureServer VCVideoCaptureServerSingleton](VCVideoCaptureServer "VCVideoCaptureServerSingleton")];
  v3.receiver = self;
  v3.super_class = VCStreamInputVideo;
  [(VCStreamInput *)&v3 invalidate];
}

- (unsigned)addSink:(id)sink
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  streamInputQueue = self->super._streamInputQueue;
  if (streamInputQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __30__VCStreamInputVideo_addSink___block_invoke;
    v6[3] = &unk_1E85F3E08;
    v6[5] = sink;
    v6[6] = &v7;
    v6[4] = self;
    dispatch_sync(streamInputQueue, v6);
    v4 = *(v8 + 6);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __30__VCStreamInputVideo_addSink___block_invoke(void *a1)
{
  result = [*(a1[4] + 296) addSink:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (unsigned)removeSink:(id)sink
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  streamInputQueue = self->super._streamInputQueue;
  if (streamInputQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __33__VCStreamInputVideo_removeSink___block_invoke;
    v6[3] = &unk_1E85F3E08;
    v6[5] = sink;
    v6[6] = &v7;
    v6[4] = self;
    dispatch_sync(streamInputQueue, v6);
    v4 = *(v8 + 6);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __33__VCStreamInputVideo_removeSink___block_invoke(void *a1)
{
  result = [*(a1[4] + 296) removeSink:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)initWithStreamInputID:format:delegate:delegateQueue:remoteQueue:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)initWithStreamInputID:(void *)a1 format:delegate:delegateQueue:remoteQueue:.cold.2(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 136315650;
    v13 = v3;
    OUTLINED_FUNCTION_0();
    v14 = 64;
    OUTLINED_FUNCTION_2_0();
LABEL_12:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v10;
      OUTLINED_FUNCTION_0();
      v14 = 64;
      v15 = 2112;
      v16 = v2;
      v17 = 2048;
      v18 = a1;
      v4 = &dword_1DB56E000;
      v7 = " [%s] %s:%d %@(%p) Failed to allocate the VCVideoCapture";
      v8 = &v12;
      v5 = v11;
      v6 = OS_LOG_TYPE_ERROR;
      v9 = 48;
      goto LABEL_12;
    }
  }
}

@end