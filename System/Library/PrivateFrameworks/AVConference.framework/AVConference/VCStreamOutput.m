@interface VCStreamOutput
- (BOOL)createRemoteQueue;
- (BOOL)initXPCCommandQueue;
- (VCStreamOutput)initWithStreamToken:(int64_t)a3 clientProcessID:(int)a4 delegate:(id)a5 delegateQueue:(id)a6;
- (id)copyXpcSenderQueue;
- (void)createRemoteQueue;
- (void)dealloc;
- (void)didDegrade:(BOOL)a3;
- (void)didInvalidate;
- (void)didPause:(BOOL)a3;
- (void)didReceiveSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)didStall:(BOOL)a3;
- (void)didSuspend:(BOOL)a3;
- (void)didUpdateAttachments:(__CFDictionary *)a3;
- (void)initXPCCommandQueue;
- (void)invalidate;
@end

@implementation VCStreamOutput

- (VCStreamOutput)initWithStreamToken:(int64_t)a3 clientProcessID:(int)a4 delegate:(id)a5 delegateQueue:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = VCStreamOutput;
  v10 = [(VCObject *)&v26 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_28;
  }

  v10->_streamToken = a3;
  v10->_clientProcessID = a4;
  v12 = getpid();
  v11->_isClientInProcess = v12 == a4;
  if (v12 == a4)
  {
    if (a5 && a6)
    {
      v11->_delegateQueue = a6;
      dispatch_retain(a6);
      v11->_delegate = a5;
      goto LABEL_8;
    }

    [VCStreamOutput initWithStreamToken:clientProcessID:delegate:delegateQueue:];
LABEL_28:

    return 0;
  }

  if (a5 | a6)
  {
    [VCStreamOutput initWithStreamToken:clientProcessID:delegate:delegateQueue:];
    goto LABEL_28;
  }

  v11->_useFigRemoteQueue = 1;
  if (![(VCStreamOutput *)v11 createRemoteQueue])
  {
    [VCStreamOutput initWithStreamToken:clientProcessID:delegate:delegateQueue:];
    goto LABEL_28;
  }

LABEL_8:
  if (objc_opt_class() == v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        isClientInProcess = v11->_isClientInProcess;
        *buf = 136315906;
        v28 = v14;
        if (isClientInProcess)
        {
          v17 = "in";
        }

        else
        {
          v17 = "out of";
        }

        v29 = 2080;
        v30 = "[VCStreamOutput initWithStreamToken:clientProcessID:delegate:delegateQueue:]";
        v31 = 1024;
        v32 = 76;
        v33 = 2080;
        v34 = v17;
        v18 = " [%s] %s:%d Will run %s process";
        v19 = v15;
        v20 = 38;
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCStreamOutput *)v11 performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = v11->_isClientInProcess;
        *buf = 136316418;
        v28 = v21;
        if (v23)
        {
          v24 = "in";
        }

        else
        {
          v24 = "out of";
        }

        v29 = 2080;
        v30 = "[VCStreamOutput initWithStreamToken:clientProcessID:delegate:delegateQueue:]";
        v31 = 1024;
        v32 = 76;
        v33 = 2112;
        v34 = v13;
        v35 = 2048;
        v36 = v11;
        v37 = 2080;
        v38 = v24;
        v18 = " [%s] %s:%d %@(%p) Will run %s process";
        v19 = v22;
        v20 = 58;
LABEL_24:
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }
  }

  return v11;
}

- (void)invalidate
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__VCStreamOutput_invalidate__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(delegateQueue, v3);
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  VCRemoteImageQueue_Destroy(&self->_remoteQueue);

  attributes = self->_attributes;
  if (attributes)
  {
    CFRelease(attributes);
  }

  backingBufferAllocator = self->_backingBufferAllocator;
  if (backingBufferAllocator)
  {
    CFRelease(backingBufferAllocator);
  }

  v6.receiver = self;
  v6.super_class = VCStreamOutput;
  [(VCObject *)&v6 dealloc];
}

- (BOOL)createRemoteQueue
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = 176;
  if (self->_useFigRemoteQueue && VCRemoteImageQueue_CreateSenderQueue(self->_clientProcessID, &self->_remoteQueue))
  {
    v4 = VCRemoteImageQueue_SharedMemoryPoolAllocator(self->_remoteQueue);
    self->_backingBufferAllocator = v4;
    if (v4)
    {
      CFRetain(v4);
      LOBYTE(backingBufferAllocator) = 1;
      return backingBufferAllocator;
    }

    [(VCStreamOutput *)176 createRemoteQueue];
    v3 = v7[0];
  }

  VCRemoteImageQueue_Destroy((self + v3));
  backingBufferAllocator = self->_backingBufferAllocator;
  if (backingBufferAllocator)
  {
    CFRelease(backingBufferAllocator);
    LOBYTE(backingBufferAllocator) = 0;
  }

  return backingBufferAllocator;
}

- (id)copyXpcSenderQueue
{
  if (self->_useFigRemoteQueue)
  {
    return VCRemoteImageQueue_CreateQueueXPCObject(self->_remoteQueue);
  }

  else
  {
    return 0;
  }
}

void __VCStreamOutput_EnqueueSampleBuffer_block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 208) didReceiveSampleBuffer:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (BOOL)initXPCCommandQueue
{
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v4 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCStreamOutput.xpcCommandQueue", 0, CustomRootQueue);
  self->_xpcCommandQueue = v4;
  if (!v4)
  {
    [VCStreamOutput initXPCCommandQueue];
  }

  return v4 != 0;
}

- (void)didPause:(BOOL)a3
{
  v5 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__VCStreamOutput_didPause___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v4 = a3;
  if (self->_isClientInProcess)
  {
    dispatch_async(self->_delegateQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStreamOutput didPause:];
    }
  }
}

- (void)didDegrade:(BOOL)a3
{
  v5 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__VCStreamOutput_didDegrade___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v4 = a3;
  if (self->_isClientInProcess)
  {
    dispatch_async(self->_delegateQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStreamOutput didPause:];
    }
  }
}

- (void)didInvalidate
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __31__VCStreamOutput_didInvalidate__block_invoke;
  v2[3] = &unk_1E85F3778;
  v2[4] = self;
  if (self->_isClientInProcess)
  {
    dispatch_async(self->_delegateQueue, v2);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStreamOutput didPause:];
    }
  }
}

- (void)didReceiveSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VCStreamOutput_didReceiveSampleBuffer___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  if (self->_isClientInProcess)
  {
    dispatch_async(self->_delegateQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStreamOutput didPause:];
    }
  }
}

- (void)didStall:(BOOL)a3
{
  v5 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__VCStreamOutput_didStall___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v4 = a3;
  if (self->_isClientInProcess)
  {
    dispatch_async(self->_delegateQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStreamOutput didPause:];
    }
  }
}

- (void)didSuspend:(BOOL)a3
{
  v5 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__VCStreamOutput_didSuspend___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v4 = a3;
  if (self->_isClientInProcess)
  {
    dispatch_async(self->_delegateQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStreamOutput didPause:];
    }
  }
}

- (void)didUpdateAttachments:(__CFDictionary *)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCStreamOutput_didUpdateAttachments___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  if (self->_isClientInProcess)
  {
    dispatch_async(self->_delegateQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStreamOutput didPause:];
    }
  }
}

void ___VCStreamOutput_SendSampleBufferToXPCClient_block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];

  v3 = *(a1 + 32);

  xpc_release(v3);
}

- (void)initWithStreamToken:clientProcessID:delegate:delegateQueue:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create queue", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithStreamToken:clientProcessID:delegate:delegateQueue:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_17();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

- (void)initWithStreamToken:clientProcessID:delegate:delegateQueue:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_17();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

- (void)createRemoteQueue
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *a2 = a1;
}

- (void)initXPCCommandQueue
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create xpcCommandQueue", v2, v3, v4, v5, v6);
    }
  }
}

- (void)didPause:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Client run out of process, should not do delegate callback", v2, v3, v4, v5, v6);
}

@end