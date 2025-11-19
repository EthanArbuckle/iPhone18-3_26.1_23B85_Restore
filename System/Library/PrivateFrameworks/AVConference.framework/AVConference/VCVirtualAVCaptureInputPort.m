@interface VCVirtualAVCaptureInputPort
- (AVCaptureInput)input;
- (BOOL)isEqual:(id)a3;
- (VCVirtualAVCaptureInputPort)initWithDevice:(id)a3 mediaType:(id)a4;
- (id)connections;
- (void)addConnection:(id)a3;
- (void)dealloc;
- (void)disconnect;
- (void)setInput:(id)a3;
@end

@implementation VCVirtualAVCaptureInputPort

- (VCVirtualAVCaptureInputPort)initWithDevice:(id)a3 mediaType:(id)a4
{
  if (!a3)
  {
    [VCVirtualAVCaptureInputPort initWithDevice:mediaType:];
LABEL_13:

    return 0;
  }

  v6 = [a4 copy];
  self->_mediaType = v6;
  if (!v6)
  {
    [VCVirtualAVCaptureInputPort initWithDevice:mediaType:];
    goto LABEL_13;
  }

  v7 = [objc_alloc(MEMORY[0x1E6986630]) initWithObject:a3];
  self->_input = v7;
  if (!v7)
  {
    [VCVirtualAVCaptureInputPort initWithDevice:mediaType:];
    goto LABEL_13;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  self->_clock = HostTimeClock;
  if (!HostTimeClock)
  {
    [VCVirtualAVCaptureInputPort initWithDevice:mediaType:];
    goto LABEL_13;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_connections = v9;
  if (!v9)
  {
    [VCVirtualAVCaptureInputPort initWithDevice:mediaType:];
    goto LABEL_13;
  }

  self->_stateLock._os_unfair_lock_opaque = 0;
  return self;
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
  [(VCVirtualAVCaptureInputPort *)self disconnect];

  v3.receiver = self;
  v3.super_class = VCVirtualAVCaptureInputPort;
  [(AVCaptureInputPort *)&v3 dealloc];
}

- (void)addConnection:(id)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  [(NSMutableArray *)self->_connections addObject:a3];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)connections
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_connections;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (AVCaptureInput)input
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(VCWeakObjectHolder *)self->_input strong];
  os_unfair_lock_unlock(&self->_stateLock);
  return v3;
}

- (void)setInput:(id)a3
{
  os_unfair_lock_lock(&self->_stateLock);

  self->_input = [objc_alloc(MEMORY[0x1E6986630]) initWithObject:a3];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_mediaType isEqual:*(a3 + 3)];
    if (v5)
    {
      LOBYTE(v5) = self->_input == *(a3 + 2);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)initWithDevice:mediaType:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate connections array", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithDevice:mediaType:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to get host time clock", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithDevice:mediaType:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate weak input device", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithDevice:mediaType:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received nil media type", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithDevice:mediaType:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received nil inputDevice", v2, v3, v4, v5, v6);
    }
  }
}

@end