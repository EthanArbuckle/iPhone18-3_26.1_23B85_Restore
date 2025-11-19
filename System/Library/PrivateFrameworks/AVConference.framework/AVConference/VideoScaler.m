@interface VideoScaler
- (VideoScaler)init;
- (int)convertAndScalePixelBuffer:(__CVBuffer *)a3 toWidth:(int)a4 toHeight:(int)a5 withPixelFormat:(unsigned int)a6 usingPixelBufferPool:(__CVPixelBufferPool *)a7 andStoreTo:(__CVBuffer *)a8;
- (void)dealloc;
@end

@implementation VideoScaler

- (VideoScaler)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VideoScaler;
  v2 = [(VideoScaler *)&v4 init];
  if (v2)
  {
    v2->_pixelTransferSession = objc_alloc_init(VCPixelTransferSession);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VideoScaler;
  [(VideoScaler *)&v3 dealloc];
}

- (int)convertAndScalePixelBuffer:(__CVBuffer *)a3 toWidth:(int)a4 toHeight:(int)a5 withPixelFormat:(unsigned int)a6 usingPixelBufferPool:(__CVPixelBufferPool *)a7 andStoreTo:(__CVBuffer *)a8
{
  v37 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], a7, &pixelBufferOut))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VideoScaler convertAndScalePixelBuffer:v13 toWidth:? toHeight:? withPixelFormat:? usingPixelBufferPool:? andStoreTo:?];
      }
    }

    return 51;
  }

  else
  {
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965D88], *MEMORY[0x1E6965DB8], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F50], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FD0], kCVAttachmentMode_ShouldPropagate);
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    v14 = VCPixelTransferSession_TransferPixelBuffer(self->_pixelTransferSession, a3, pixelBufferOut);
    if (v14)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316930;
          v22 = v18;
          v23 = 2080;
          v24 = "[VideoScaler convertAndScalePixelBuffer:toWidth:toHeight:withPixelFormat:usingPixelBufferPool:andStoreTo:]";
          v25 = 1024;
          v26 = 80;
          v27 = 1024;
          v28 = v14;
          v29 = 2048;
          v30 = Width;
          v31 = 2048;
          v32 = Height;
          v33 = 1024;
          v34 = a4;
          v35 = 1024;
          v36 = a5;
          _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTPixelTransferSessionTransferImage failed %d input widthxheight(%zux%zu) new widthxheight(%dx%d)", buf, 0x42u);
        }
      }
    }

    else
    {
      *a8 = pixelBufferOut;
    }
  }

  return v14;
}

- (void)convertAndScalePixelBuffer:(uint64_t)a1 toWidth:toHeight:withPixelFormat:usingPixelBufferPool:andStoreTo:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 53;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d CVPixelBufferPoolCreatePixelBuffer failed", &v2, 0x1Cu);
}

@end