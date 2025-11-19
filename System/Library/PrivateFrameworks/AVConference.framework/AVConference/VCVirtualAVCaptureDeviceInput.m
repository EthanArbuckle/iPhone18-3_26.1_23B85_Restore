@interface VCVirtualAVCaptureDeviceInput
- (VCVirtualAVCaptureDeviceInput)initWithDevice:(id)a3 error:(id *)a4;
- (id)ports;
- (void)dealloc;
- (void)disconnect;
@end

@implementation VCVirtualAVCaptureDeviceInput

- (VCVirtualAVCaptureDeviceInput)initWithDevice:(id)a3 error:(id *)a4
{
  v6 = [VCVirtualAVCaptureInputPort alloc];
  v7 = [(VCVirtualAVCaptureInputPort *)v6 initWithDevice:self mediaType:*MEMORY[0x1E6987608]];
  if (!v7)
  {
    [VCVirtualAVCaptureDeviceInput initWithDevice:error:];
LABEL_9:

    return 0;
  }

  v8 = v7;
  self->_ports = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];

  if (!self->_ports)
  {
    [VCVirtualAVCaptureDeviceInput initWithDevice:error:];
    goto LABEL_9;
  }

  v9 = a3;
  self->_device = v9;
  if (!v9)
  {
    [VCVirtualAVCaptureDeviceInput initWithDevice:error:];
    goto LABEL_9;
  }

  [(VCVirtualAVCaptureDevice *)v9 addDeviceInput:self];
  self->_stateLock._os_unfair_lock_opaque = 0;
  return self;
}

- (void)disconnect
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  ports = self->_ports;
  v4 = [(NSArray *)ports countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(ports);
        }

        [*(*(&v9 + 1) + 8 * i) disconnect];
      }

      v5 = [(NSArray *)ports countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }

  [(VCVirtualAVCaptureDevice *)self->_device removeDeviceInput:self];

  self->_device = 0;
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCVirtualAVCaptureDeviceInput *)self disconnect];

  v3.receiver = self;
  v3.super_class = VCVirtualAVCaptureDeviceInput;
  [(AVCaptureDeviceInput *)&v3 dealloc];
}

- (id)ports
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_ports;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (void)initWithDevice:error:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received nil device", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithDevice:error:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate ports array", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithDevice:error:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate input port", v2, v3, v4, v5, v6);
    }
  }
}

@end