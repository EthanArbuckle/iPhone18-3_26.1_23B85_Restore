@interface VCImageResizingConverter
- (VCImageResizingConverter)initWithOutputWidth:(unint64_t)a3 outputHeight:(unint64_t)a4 formatType:(unsigned int)a5;
- (void)dealloc;
@end

@implementation VCImageResizingConverter

- (VCImageResizingConverter)initWithOutputWidth:(unint64_t)a3 outputHeight:(unint64_t)a4 formatType:(unsigned int)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCImageResizingConverter;
  v7 = [(VCImageConverterBase *)&v12 initWithFormatType:*&a5];
  v8 = v7;
  if (v7)
  {
    VTPixelTransferSessionCreate(0, &v7->_transferSession);
    VTSessionSetProperty(v8->_transferSession, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840F8]);
    if ([(VCImageConverterBase *)v8 setUpBufferPoolForOutputWidth:a3 outputHeight:a4])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v14 = v9;
          v15 = 2080;
          v16 = "[VCImageResizingConverter initWithOutputWidth:outputHeight:formatType:]";
          v17 = 1024;
          v18 = 37;
          v19 = 2048;
          v20 = v8;
          v21 = 2048;
          v22 = a3;
          v23 = 2048;
          v24 = a4;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Frame Transform resize, %p outputSize %zux%zu", buf, 0x3Au);
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  VTPixelTransferSessionInvalidate(self->_transferSession);
  transferSession = self->_transferSession;
  if (transferSession)
  {
    CFRelease(transferSession);
    self->_transferSession = 0;
  }

  v4.receiver = self;
  v4.super_class = VCImageResizingConverter;
  [(VCImageConverterBase *)&v4 dealloc];
}

@end