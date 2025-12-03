@interface VCVirtualAVCaptureConnection
- (BOOL)active;
- (VCVirtualAVCaptureConnection)initWithInputPorts:(id)ports output:(id)output;
- (id)inputPorts;
- (id)output;
- (void)dealloc;
- (void)invalidate;
@end

@implementation VCVirtualAVCaptureConnection

- (VCVirtualAVCaptureConnection)initWithInputPorts:(id)ports output:(id)output
{
  v11[1] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  self->_output = outputCopy;
  if (!outputCopy)
  {
    [VCVirtualAVCaptureConnection initWithInputPorts:v11 output:?];
LABEL_9:

    return 0;
  }

  v8 = [ports copy];
  self->_ports = v8;
  if (!v8)
  {
    [VCVirtualAVCaptureConnection initWithInputPorts:v11 output:?];
    goto LABEL_9;
  }

  self->_stateLock._os_unfair_lock_opaque = 0;
  v10.receiver = self;
  v10.super_class = VCVirtualAVCaptureConnection;
  result = [(AVCaptureConnection *)&v10 initWithInputPorts:ports output:output];
  if (!result)
  {
    [VCVirtualAVCaptureConnection initWithInputPorts:v11 output:?];
    goto LABEL_9;
  }

  result->_videoRetainedBufferCountHintSupported = 1;
  result->_active = 1;
  return result;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_stateLock);
  self->_active = 0;

  self->_output = 0;
  self->_ports = 0;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCVirtualAVCaptureConnection *)self invalidate];
  v3.receiver = self;
  v3.super_class = VCVirtualAVCaptureConnection;
  [(AVCaptureConnection *)&v3 dealloc];
}

- (id)inputPorts
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_ports;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (id)output
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_output;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (BOOL)active
{
  os_unfair_lock_lock(&self->_stateLock);
  active = self->_active;
  os_unfair_lock_unlock(&self->_stateLock);
  return active;
}

- (void)initWithInputPorts:(void *)a1 output:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 43;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to init superclass", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)initWithInputPorts:(uint64_t)a1 output:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v4, v5, " [%s] %s:%d Received nil input port", v6, v7, v8, v9, 2u);
    }
  }

  *a2 = a1;
}

- (void)initWithInputPorts:(uint64_t)a1 output:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v4, v5, " [%s] %s:%d Received nil capture output", v6, v7, v8, v9, 2u);
    }
  }

  *a2 = a1;
}

@end