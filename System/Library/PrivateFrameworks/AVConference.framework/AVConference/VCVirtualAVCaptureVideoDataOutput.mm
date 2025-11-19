@interface VCVirtualAVCaptureVideoDataOutput
- (VCVirtualAVCaptureVideoDataOutput)init;
- (id)connectionWithMediaType:(id)a3;
- (id)connections;
- (void)addConnection:(id)a3;
- (void)dealloc;
- (void)disconnect;
- (void)init;
- (void)removeConnection:(id)a3;
- (void)setSampleBufferDelegate:(id)a3 queue:(id)a4;
@end

@implementation VCVirtualAVCaptureVideoDataOutput

- (VCVirtualAVCaptureVideoDataOutput)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCVirtualAVCaptureVideoDataOutput;
  v2 = [(AVCaptureVideoDataOutput *)&v5 init];
  if (!v2)
  {
    [VCVirtualAVCaptureVideoDataOutput init];
LABEL_7:

    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2->_connections = v3;
  if (!v3)
  {
    [VCVirtualAVCaptureVideoDataOutput init];
    goto LABEL_7;
  }

  v2->_stateLock._os_unfair_lock_opaque = 0;
  return v2;
}

- (void)disconnect
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  connections = self->_connections;
  v4 = [(NSMutableArray *)connections countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(connections);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 invalidate];
        }
      }

      v5 = [(NSMutableArray *)connections countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_connections removeAllObjects];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCVirtualAVCaptureVideoDataOutput *)self disconnect];

  [(VCVirtualAVCaptureVideoDataOutput *)self setSampleBufferDelegate:0 queue:0];
  v3.receiver = self;
  v3.super_class = VCVirtualAVCaptureVideoDataOutput;
  [(AVCaptureVideoDataOutput *)&v3 dealloc];
}

- (void)setSampleBufferDelegate:(id)a3 queue:(id)a4
{
  os_unfair_lock_lock(&self->_stateLock);
  if ([(VCWeakObjectHolder *)self->_weakPushDelegate strong]!= a3)
  {

    self->_weakPushDelegate = 0;
    if (a3)
    {
      self->_weakPushDelegate = [objc_alloc(MEMORY[0x1E6986630]) initWithObject:a3];
    }
  }

  callbackQueue = self->_callbackQueue;
  if (callbackQueue != a4)
  {
    if (a4)
    {
      dispatch_retain(a4);
      callbackQueue = self->_callbackQueue;
    }

    if (callbackQueue)
    {
      dispatch_release(callbackQueue);
    }

    self->_callbackQueue = a4;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)addConnection:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    os_unfair_lock_lock(&self->_stateLock);
    if (([(NSMutableArray *)self->_connections containsObject:a3]& 1) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136316162;
          v10 = v5;
          v11 = 2080;
          v12 = "[VCVirtualAVCaptureVideoDataOutput addConnection:]";
          v13 = 1024;
          v14 = 104;
          v15 = 2112;
          v16 = a3;
          v17 = 2112;
          v18 = self;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Attempting to add connection that is already added to the session. Connection=%@, session=%@", &v9, 0x30u);
        }
      }
    }

    else
    {
      [(NSMutableArray *)self->_connections addObject:a3];
    }

    os_unfair_lock_unlock(&self->_stateLock);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v7;
      v11 = 2080;
      v12 = "[VCVirtualAVCaptureVideoDataOutput addConnection:]";
      v13 = 1024;
      v14 = 97;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Attempting to add nil connection", &v9, 0x1Cu);
    }
  }
}

- (void)removeConnection:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if ([(NSMutableArray *)self->_connections containsObject:a3])
  {
    [a3 invalidate];
    [(NSMutableArray *)self->_connections removeObject:a3];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCVirtualAVCaptureVideoDataOutput removeConnection:]";
      v11 = 1024;
      v12 = 115;
      v13 = 2112;
      v14 = a3;
      v15 = 2112;
      v16 = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Attempting to remove connection that does not exist in the session. Connection=%@, session=%@", &v7, 0x30u);
    }
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)connectionWithMediaType:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(VCVirtualAVCaptureVideoDataOutput *)self connections];
  result = [v4 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [v9 inputPorts];
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          while (2)
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([*(*(&v16 + 1) + 8 * v14) mediaType] == a3)
              {
                return v9;
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v20 count:16];
      result = 0;
    }

    while (v6);
  }

  return result;
}

- (id)connections
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(NSMutableArray *)self->_connections copy];
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

void __VCVirtualAVCaptureVideoDataOutput_OnMediaSample_block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "strong")];
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to initialize virtual video data output", v2, v3, v4, v5, 2u);
    }
  }
}

@end