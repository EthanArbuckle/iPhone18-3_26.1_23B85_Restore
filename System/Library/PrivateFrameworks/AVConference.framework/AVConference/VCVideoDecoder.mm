@interface VCVideoDecoder
+ (id)decoderForStreamToken:(int64_t)a3 withConfig:(tagVideoDecoderConfig *)a4;
+ (id)streamTokenDecoderMap;
+ (void)releaseVideoDecoderForStreamToken:(int64_t)a3;
- (VCVideoDecoder)initWithConfig:(tagVideoDecoderConfig *)a3;
- (void)dealloc;
@end

@implementation VCVideoDecoder

- (VCVideoDecoder)initWithConfig:(tagVideoDecoderConfig *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCVideoDecoder;
  v4 = [(VCVideoDecoder *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_streamToken = a3->var0;
    v4->_clientCount = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        streamToken = v5->_streamToken;
        *buf = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCVideoDecoder initWithConfig:]";
        v17 = 1024;
        v18 = 38;
        v19 = 1024;
        v20 = streamToken;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken=%u", buf, 0x22u);
      }
    }

    if (a3->var5 || a3->var6)
    {
      VideoDecoder_Create(&v5->_videoPlayerHandle, a3);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(VCVideoDecoder *)v10 initWithConfig:v11];
        }
      }

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  VideoDecoder_Destroy();
  v3.receiver = self;
  v3.super_class = VCVideoDecoder;
  [(VCVideoDecoder *)&v3 dealloc];
}

+ (id)streamTokenDecoderMap
{
  if (streamTokenDecoderMap_token != -1)
  {
    +[VCVideoDecoder streamTokenDecoderMap];
  }

  return _streamTokenDecoderMap;
}

id __39__VCVideoDecoder_streamTokenDecoderMap__block_invoke()
{
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  _streamTokenDecoderMap = result;
  return result;
}

+ (id)decoderForStreamToken:(int64_t)a3 withConfig:(tagVideoDecoderConfig *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&_lock);
  v6 = +[VCVideoDecoder streamTokenDecoderMap];
  v7 = [v6 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)}];
  if (v7)
  {
    v8 = v7;
    ++*(v7 + 24);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v9;
        v16 = 2080;
        v17 = "+[VCVideoDecoder decoderForStreamToken:withConfig:]";
        v18 = 1024;
        v19 = 73;
        v20 = 2048;
        v21 = v8;
        v22 = 1024;
        v23 = a3;
        v11 = " [%s] %s:%d VCVideoDecoder %p exists for streamToken=%u";
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v11, &v14, 0x2Cu);
      }
    }
  }

  else
  {
    v8 = [[VCVideoDecoder alloc] initWithConfig:a4];
    [v6 setObject:v8 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)}];

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v12;
        v16 = 2080;
        v17 = "+[VCVideoDecoder decoderForStreamToken:withConfig:]";
        v18 = 1024;
        v19 = 79;
        v20 = 2048;
        v21 = v8;
        v22 = 1024;
        v23 = a3;
        v11 = " [%s] %s:%d VCVideoDecoder %p created for streamToken=%u";
        goto LABEL_8;
      }
    }
  }

  pthread_mutex_unlock(&_lock);
  return v8;
}

+ (void)releaseVideoDecoderForStreamToken:(int64_t)a3
{
  v32 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&_lock);
  v4 = +[VCVideoDecoder streamTokenDecoderMap];
  v5 = [v4 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)}];
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + 24);
    v8 = __OFSUB__(v7--, 1);
    *(v5 + 24) = v7;
    if ((v7 < 0) ^ v8 | (v7 == 0))
    {
      [v4 removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)}];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v20 = 136316162;
          v21 = v9;
          v22 = 2080;
          v23 = "+[VCVideoDecoder releaseVideoDecoderForStreamToken:]";
          v24 = 1024;
          v25 = 93;
          v26 = 2048;
          v27 = v6;
          v28 = 1024;
          v29 = a3;
          v11 = " [%s] %s:%d VCVideoDecoder %p released for streamToken=%u";
          v12 = v10;
          v13 = 44;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v20, v13);
        }
      }
    }

    else
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(v6 + 24);
          v20 = 136316418;
          v21 = v17;
          v22 = 2080;
          v23 = "+[VCVideoDecoder releaseVideoDecoderForStreamToken:]";
          v24 = 1024;
          v25 = 95;
          v26 = 2048;
          v27 = v6;
          v28 = 1024;
          v29 = a3;
          v30 = 1024;
          v31 = v19;
          v11 = " [%s] %s:%d VCVideoDecoder %p streamToken=%u clientCount=%d";
          v12 = v18;
          v13 = 50;
          goto LABEL_13;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCVideoDecoder *)v14 releaseVideoDecoderForStreamToken:a3, v15];
    }
  }

  pthread_mutex_unlock(&_lock);
}

- (void)initWithConfig:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCVideoDecoder initWithConfig:]";
  v6 = 1024;
  v7 = 40;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to init VCVideoDecoder with NULL frame callback", &v2, 0x1Cu);
}

+ (void)releaseVideoDecoderForStreamToken:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "+[VCVideoDecoder releaseVideoDecoderForStreamToken:]";
  v7 = 1024;
  v8 = 98;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCVideoDecoder cannot be found via streamToken=%u", &v3, 0x22u);
}

@end