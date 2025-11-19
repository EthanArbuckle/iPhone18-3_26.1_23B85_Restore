@interface VCPixelTransferSession
- (VCPixelTransferSession)init;
- (void)dealloc;
@end

@implementation VCPixelTransferSession

- (VCPixelTransferSession)init
{
  v20 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCPixelTransferSession;
  v2 = [(VCPixelTransferSession *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = VTPixelTransferSessionCreate(0, &v2->_pixelTransferSession);
    if (v4 || !v3->_pixelTransferSession)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          pixelTransferSession = v3->_pixelTransferSession;
          *buf = 136316162;
          v11 = v5;
          v12 = 2080;
          v13 = "[VCPixelTransferSession init]";
          v14 = 1024;
          v15 = 27;
          v16 = 1024;
          v17 = v4;
          v18 = 2048;
          v19 = pixelTransferSession;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTPixelTransferSessionCreate failed %d (%p)", buf, 0x2Cu);
        }
      }

      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  VTPixelTransferSessionInvalidate(self->_pixelTransferSession);
  CFRelease(self->_pixelTransferSession);
  v3.receiver = self;
  v3.super_class = VCPixelTransferSession;
  [(VCPixelTransferSession *)&v3 dealloc];
}

@end