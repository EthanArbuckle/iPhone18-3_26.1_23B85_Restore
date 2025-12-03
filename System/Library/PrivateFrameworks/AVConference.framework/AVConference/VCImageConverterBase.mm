@interface VCImageConverterBase
- (BOOL)setUpBufferPoolForOutputWidth:(unint64_t)width outputHeight:(unint64_t)height;
- (VCImageConverterBase)initWithFormatType:(unsigned int)type;
- (void)dealloc;
@end

@implementation VCImageConverterBase

- (VCImageConverterBase)initWithFormatType:(unsigned int)type
{
  v3 = *&type;
  v11[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCImageConverterBase;
  v4 = [(VCImageConverterBase *)&v9 init];
  if (v4)
  {
    v4->_bufferPoolDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    [(NSMutableDictionary *)v4->_bufferPoolDictionary setObject:v5 forKeyedSubscript:*MEMORY[0x1E6966130]];
    v4->_formatType = v3;
    v6 = MEMORY[0x1E695E118];
    [(NSMutableDictionary *)v4->_bufferPoolDictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6966100]];
    v10 = *MEMORY[0x1E696CF68];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [(NSMutableDictionary *)v4->_bufferPoolDictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E69660D8]];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CVPixelBufferPoolRelease(self->_bufferPool);

  v3.receiver = self;
  v3.super_class = VCImageConverterBase;
  [(VCImageConverterBase *)&v3 dealloc];
}

- (BOOL)setUpBufferPoolForOutputWidth:(unint64_t)width outputHeight:(unint64_t)height
{
  v33[2] = *MEMORY[0x1E69E9840];
  p_bufferPool = &self->_bufferPool;
  if (self->_bufferPool)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315906;
        v21 = v8;
        v22 = 2080;
        v23 = "[VCImageConverterBase setUpBufferPoolForOutputWidth:outputHeight:]";
        v24 = 1024;
        v25 = 53;
        v26 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p, Releasing _bufferPool to create a new one", &v20, 0x26u);
      }
    }

    CVPixelBufferPoolRelease(*p_bufferPool);
    *p_bufferPool = 0;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:width];
  [(NSMutableDictionary *)self->_bufferPoolDictionary setObject:v10 forKeyedSubscript:*MEMORY[0x1E6966208]];
  self->_outputWidth = width;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:height];
  [(NSMutableDictionary *)self->_bufferPoolDictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E69660B8]];
  self->_outputHeight = height;
  v12 = *MEMORY[0x1E696CF98];
  v32[0] = *MEMORY[0x1E696CF68];
  v32[1] = v12;
  v33[0] = MEMORY[0x1E695E118];
  v33[1] = @"AVConference:ImageConverter";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  [(NSMutableDictionary *)self->_bufferPoolDictionary setObject:v13 forKeyedSubscript:*MEMORY[0x1E69660D8]];
  CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, self->_bufferPoolDictionary, p_bufferPool);
  bufferPool = self->_bufferPool;
  if (bufferPool)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136316418;
        v21 = v15;
        v22 = 2080;
        v23 = "[VCImageConverterBase setUpBufferPoolForOutputWidth:outputHeight:]";
        v24 = 1024;
        v25 = 70;
        v26 = 2048;
        selfCopy2 = self;
        v28 = 1024;
        widthCopy = width;
        v30 = 1024;
        heightCopy = height;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Frame Transform, %p, create %ux%u _bufferPool", &v20, 0x32u);
      }
    }
  }

  else
  {
    self->_outputWidth = 0;
    self->_outputHeight = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCImageConverterBase *)v17 setUpBufferPoolForOutputWidth:v18 outputHeight:?];
      }
    }
  }

  return bufferPool != 0;
}

- (void)setUpBufferPoolForOutputWidth:(os_log_t)log outputHeight:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCImageConverterBase setUpBufferPoolForOutputWidth:outputHeight:]";
  v7 = 1024;
  v8 = 75;
  v9 = 2048;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d %p, CVPixelBufferPoolCreate failed", &v3, 0x26u);
}

@end