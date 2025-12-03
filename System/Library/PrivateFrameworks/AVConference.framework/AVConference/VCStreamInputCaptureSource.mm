@interface VCStreamInputCaptureSource
+ (BOOL)readIntegerFromConfig:(id)config key:(id)key value:(int64_t *)value;
+ (BOOL)readUint32FromConfig:(id)config key:(id)key value:(unsigned int *)value;
- (BOOL)allSinksSuspended;
- (BOOL)isEqual:(id)equal;
- (BOOL)onVideoFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time attribute:(id *)attribute;
- (BOOL)setupDataFormatWithConfiguration:(id)configuration;
- (BOOL)setupFormatWithConfiguration:(id)configuration;
- (BOOL)setupVideoFormatWithConfiguration:(id)configuration;
- (VCStreamInputCaptureSource)initWithCaptureSourceID:(int)d configuration:(id)configuration;
- (id)copyOnVideoFrameBlock;
- (int)getCaptureFrameRateForSource:(int)source;
- (unsigned)addSink:(id)sink;
- (unsigned)removeSink:(id)sink;
- (void)dealloc;
- (void)didResumeVideoSink:(id)sink;
- (void)didSuspendVideoSink:(id)sink;
- (void)loadCannedVideoReplay;
- (void)onCaptureScreenFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time orientation:(int)orientation;
- (void)setDelegate:(id)delegate;
@end

@implementation VCStreamInputCaptureSource

- (VCStreamInputCaptureSource)initWithCaptureSourceID:(int)d configuration:(id)configuration
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCStreamInputCaptureSource;
  v12[0] = _VCStreamInputCaptureSource_OnCaptureVideoFrame;
  v6 = [(VCVideoCapture *)&v11 initWithCaptureServer:0 protocolFunctions:v12];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  pthread_mutex_init(&v6->_sinkMutex, 0);
  if (d <= 0xA)
  {
    [VCStreamInputCaptureSource initWithCaptureSourceID:configuration:];
LABEL_13:

    return 0;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7->_videoSinkState = v8;
  if (!v8)
  {
    [VCStreamInputCaptureSource initWithCaptureSourceID:configuration:];
    goto LABEL_13;
  }

  v10 = 0;
  if (![VCStreamInputCaptureSource readIntegerFromConfig:configuration key:@"streamInputID" value:&v10])
  {
    [VCStreamInputCaptureSource initWithCaptureSourceID:configuration:];
    goto LABEL_13;
  }

  v7->_streamInputID = v10;
  v7->_captureSourceID = d;
  [(VCStreamInputCaptureSource *)v7 setupFormatWithConfiguration:configuration];
  if (!v7->_formatDescription)
  {
    [VCStreamInputCaptureSource initWithCaptureSourceID:configuration:];
    goto LABEL_13;
  }

  if (VRTraceIsInternalOSInstalled())
  {
    [(VCStreamInputCaptureSource *)v7 loadCannedVideoReplay];
  }

  return v7;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  pthread_mutex_destroy(&self->_sinkMutex);
  formatDescription = self->_formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  objc_storeWeak(&self->_delegate, 0);

  v4.receiver = self;
  v4.super_class = VCStreamInputCaptureSource;
  [(VCVideoCapture *)&v4 dealloc];
}

+ (BOOL)readIntegerFromConfig:(id)config key:(id)key value:(int64_t *)value
{
  v8 = [config objectForKeyedSubscript:key];
  if (key && config && value)
  {
    v9 = v8;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *value = [v9 integerValue];
        return 1;
      }

      else
      {
        +[VCStreamInputCaptureSource readIntegerFromConfig:key:value:];
        return v11;
      }
    }

    else
    {
      +[VCStreamInputCaptureSource readIntegerFromConfig:key:value:];
      return v12;
    }
  }

  else
  {
    +[VCStreamInputCaptureSource readIntegerFromConfig:key:value:];
    return v13;
  }
}

+ (BOOL)readUint32FromConfig:(id)config key:(id)key value:(unsigned int *)value
{
  v8 = [config objectForKeyedSubscript:key];
  if (key && config && value)
  {
    v9 = v8;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *value = [v9 unsignedIntValue];
        return 1;
      }

      else
      {
        +[VCStreamInputCaptureSource readUint32FromConfig:key:value:];
        return v11;
      }
    }

    else
    {
      +[VCStreamInputCaptureSource readUint32FromConfig:key:value:];
      return v12;
    }
  }

  else
  {
    +[VCStreamInputCaptureSource readUint32FromConfig:key:value:];
    return v13;
  }
}

- (BOOL)setupFormatWithConfiguration:(id)configuration
{
  v11 = *MEMORY[0x1E69E9840];
  if (![VCStreamInputCaptureSource readUint32FromConfig:configuration key:@"framerate" value:&self->_frameRate])
  {
    [VCStreamInputCaptureSource setupFormatWithConfiguration:];
    return v9;
  }

  if (!self->_frameRate)
  {
    [VCStreamInputCaptureSource setupFormatWithConfiguration:];
    return v9;
  }

  v5 = [configuration objectForKeyedSubscript:@"formatDescription"];
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CMFormatDescriptionGetTypeID())
    {
      self->_formatDescription = CFRetain(v6);
      return 1;
    }

    [VCStreamInputCaptureSource setupFormatWithConfiguration:];
    return v9;
  }

  v9 = 0;
  if (![VCStreamInputCaptureSource readUint32FromConfig:configuration key:@"type" value:&v9])
  {
    [VCStreamInputCaptureSource setupFormatWithConfiguration:];
    return v10;
  }

  if (v9 == 1835365473)
  {
    return [(VCStreamInputCaptureSource *)self setupDataFormatWithConfiguration:configuration];
  }

  if (v9 == 1986618469)
  {
    return [(VCStreamInputCaptureSource *)self setupVideoFormatWithConfiguration:configuration];
  }

  return 1;
}

- (BOOL)setupVideoFormatWithConfiguration:(id)configuration
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (![VCStreamInputCaptureSource readUint32FromConfig:configuration key:@"subtype" value:&v8])
  {
    [VCStreamInputCaptureSource setupVideoFormatWithConfiguration:];
    return v9;
  }

  v7 = 0;
  if (![VCStreamInputCaptureSource readUint32FromConfig:configuration key:@"width" value:&v7])
  {
    [VCStreamInputCaptureSource setupVideoFormatWithConfiguration:];
    return v9;
  }

  height = 0;
  if (![VCStreamInputCaptureSource readUint32FromConfig:configuration key:@"height" value:&height])
  {
    [VCStreamInputCaptureSource setupVideoFormatWithConfiguration:];
    return v9;
  }

  return CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], v8, v7, height, 0, &self->_formatDescription) == 0;
}

- (BOOL)setupDataFormatWithConfiguration:(id)configuration
{
  v7 = *MEMORY[0x1E69E9840];
  mediaSubType = 0;
  if ([VCStreamInputCaptureSource readUint32FromConfig:configuration key:@"subtype" value:&mediaSubType])
  {
    return CMFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x6D657461u, mediaSubType, 0, &self->_formatDescription) == 0;
  }

  [VCStreamInputCaptureSource setupDataFormatWithConfiguration:];
  return v6;
}

- (void)setDelegate:(id)delegate
{
  v14 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_sinkMutex);
  Weak = objc_loadWeak(&self->_delegate);
  if (Weak == delegate)
  {
    [VCStreamInputCaptureSource setDelegate:?];
    goto LABEL_20;
  }

  v6 = Weak;
  v13.receiver = self;
  v13.super_class = VCStreamInputCaptureSource;
  sinkCount = [(VCVideoCapture *)&v13 sinkCount];
  v8 = sinkCount;
  if (delegate)
  {
    v9 = sinkCount == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  objc_storeWeak(&self->_delegate, delegate);
  allSinksSuspended = [(VCStreamInputCaptureSource *)self allSinksSuspended];
  pthread_mutex_unlock(&self->_sinkMutex);
  if (v6)
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    [v6 didStopStreamInputCaptureSource];
    if ((v10 & 1) == 0)
    {
LABEL_17:
      if (allSinksSuspended)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  [delegate didStartStreamInputCaptureSource];
  if (allSinksSuspended)
  {
LABEL_18:
    [delegate didSuspendStreamInputCaptureSource];
    return;
  }

LABEL_20:
  [delegate didResumeStreamInputCaptureSource];
}

- (BOOL)onVideoFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time attribute:(id *)attribute
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *time;
  VCVideoCapture_DistributeVideoFrame(self, frame, &v6.var0, attribute);
  return 1;
}

- (id)copyOnVideoFrameBlock
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VCStreamInputCaptureSource_copyOnVideoFrameBlock__block_invoke;
  v3[3] = &unk_1E85F7BB0;
  v3[4] = self;
  return _Block_copy(v3);
}

uint64_t __51__VCStreamInputCaptureSource_copyOnVideoFrameBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v6 = *a3;
  v7 = *(a3 + 16);
  VCVideoCapture_DistributeVideoFrame(v4, a2, &v6, a4);
  return 1;
}

- (unsigned)addSink:(id)sink
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_sinkMutex);
  sinkCount = [(VCVideoCapture *)self sinkCount];
  v11.receiver = self;
  v11.super_class = VCStreamInputCaptureSource;
  v6 = [(VCVideoCapture *)&v11 addSink:sink];
  v7 = MEMORY[0x1E1289F20](&self->_delegate);
  pthread_mutex_unlock(&self->_sinkMutex);
  if (v6 == 1 && sinkCount == 0)
  {
    cannedVideoCapture = self->_cannedVideoCapture;
    if (!cannedVideoCapture)
    {
      [v7 didStartStreamInputCaptureSource];
      if (!v7)
      {
        return v6;
      }

      goto LABEL_9;
    }

    [(VCVideoSource *)cannedVideoCapture setWidth:self->_cannedVideoWidth height:self->_cannedVideoHeight frameRate:self->_frameRate];
    [(VCVideoSource *)self->_cannedVideoCapture startPreview];
  }

  if (v7)
  {
LABEL_9:
    CFRelease(v7);
  }

  return v6;
}

- (unsigned)removeSink:(id)sink
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_sinkMutex);
  sinkCount = [(VCVideoCapture *)self sinkCount];
  v11.receiver = self;
  v11.super_class = VCStreamInputCaptureSource;
  v6 = [(VCVideoCapture *)&v11 removeSink:sink];
  v7 = MEMORY[0x1E1289F20](&self->_delegate);
  pthread_mutex_unlock(&self->_sinkMutex);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sinkCount == 0;
  }

  if (!v8)
  {
    cannedVideoCapture = self->_cannedVideoCapture;
    if (!cannedVideoCapture)
    {
      [v7 didStopStreamInputCaptureSource];
      if (!v7)
      {
        return v6;
      }

      goto LABEL_8;
    }

    [(VCVideoSource *)cannedVideoCapture stop:1];
  }

  if (v7)
  {
LABEL_8:
    CFRelease(v7);
  }

  return v6;
}

- (BOOL)allSinksSuspended
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_videoSinkState allValues];
  v3 = [allValues countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v9 + 1) + 8 * v6) unsignedCharValue] != 1)
        {
          return 0;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v9 objects:v8 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (void)didSuspendVideoSink:(id)sink
{
  pthread_mutex_lock(&self->_sinkMutex);
  v5 = MEMORY[0x1E1289F20](&self->_delegate);
  allSinksSuspended = [(VCStreamInputCaptureSource *)self allSinksSuspended];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_videoSinkState, "setObject:forKeyedSubscript:", &unk_1F579C2B8, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(sink, "hash")}]);
  if (allSinksSuspended)
  {
    pthread_mutex_unlock(&self->_sinkMutex);
  }

  else
  {
    allSinksSuspended2 = [(VCStreamInputCaptureSource *)self allSinksSuspended];
    pthread_mutex_unlock(&self->_sinkMutex);
    if (allSinksSuspended2)
    {
      [v5 didSuspendStreamInputCaptureSource];
    }
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

- (void)didResumeVideoSink:(id)sink
{
  pthread_mutex_lock(&self->_sinkMutex);
  v5 = MEMORY[0x1E1289F20](&self->_delegate);
  allSinksSuspended = [(VCStreamInputCaptureSource *)self allSinksSuspended];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_videoSinkState, "setObject:forKeyedSubscript:", &unk_1F579C2D0, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(sink, "hash")}]);
  if (!allSinksSuspended)
  {
    pthread_mutex_unlock(&self->_sinkMutex);
    if (!v5)
    {
      return;
    }

    goto LABEL_5;
  }

  allSinksSuspended2 = [(VCStreamInputCaptureSource *)self allSinksSuspended];
  pthread_mutex_unlock(&self->_sinkMutex);
  if (!allSinksSuspended2)
  {
    [v5 didResumeStreamInputCaptureSource];
  }

  if (v5)
  {
LABEL_5:

    CFRelease(v5);
  }
}

- (void)onCaptureScreenFrame:(opaqueCMSampleBuffer *)frame frameTime:(id *)time orientation:(int)orientation
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  v5 = *time;
  VCVideoCapture_DistributeVideoFrame(self, frame, &v5.var0, v6);
}

- (int)getCaptureFrameRateForSource:(int)source
{
  if (self->_captureSourceID == source)
  {
    return self->_frameRate;
  }

  else
  {
    return 0;
  }
}

- (void)loadCannedVideoReplay
{
  v49 = *MEMORY[0x1E69E9840];
  if (CMFormatDescriptionGetMediaType(self->_formatDescription) != 1986618469)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%s", @"cannedReplay", FourccToCStr(self->_streamInputID)];
  v4 = VCDefaults_CopyStringValueForKey(v3);
  v5 = v4;
  if (v4 && [(__CFString *)v4 length])
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(self->_formatDescription);
    v30 = 0;
    v29 = _VCStreamInputCaptureSource_OnCaptureVideoFrame;
    LOBYTE(v27) = 0;
    v7 = [[CannedVideoCapture alloc] initWithCaptureServer:self protocolFunctions:&v29 width:Dimensions height:HIDWORD(Dimensions) frameRate:self->_frameRate videoSourceToken:0 video:v5 isCamera:v27 error:&v30];
    self->_cannedVideoCapture = v7;
    if (!v7)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_16;
        }

        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        frameRate = self->_frameRate;
        *buf = 136316930;
        v32 = v18;
        v33 = 2080;
        v34 = "[VCStreamInputCaptureSource loadCannedVideoReplay]";
        v35 = 1024;
        v36 = 110;
        v37 = 2112;
        v38 = v5;
        v39 = 1024;
        *v40 = Dimensions;
        *&v40[4] = 1024;
        *&v40[6] = HIDWORD(Dimensions);
        LOWORD(v41) = 1024;
        *(&v41 + 2) = frameRate;
        HIWORD(v41) = 1024;
        *v42 = v30;
        v21 = " [%s] %s:%d Failed to load file at path=%@, width=%d height=%d frameRate=%u error=0x%x";
        v22 = v19;
        v23 = 62;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v17 = [(VCStreamInputCaptureSource *)self performSelector:sel_logPrefix];
        }

        else
        {
          v17 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_16;
        }

        v28 = v17;
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v26 = self->_frameRate;
        *buf = 136317442;
        v32 = v24;
        v33 = 2080;
        v34 = "[VCStreamInputCaptureSource loadCannedVideoReplay]";
        v35 = 1024;
        v36 = 110;
        v37 = 2112;
        v38 = v28;
        v39 = 2048;
        *v40 = self;
        *&v40[8] = 2112;
        v41 = v5;
        *v42 = 1024;
        *&v42[2] = Dimensions;
        v43 = 1024;
        v44 = HIDWORD(Dimensions);
        v45 = 1024;
        v46 = v26;
        v47 = 1024;
        v48 = v30;
        v21 = " [%s] %s:%d %@(%p) Failed to load file at path=%@, width=%d height=%d frameRate=%u error=0x%x";
        v22 = v25;
        v23 = 82;
      }

      _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
      goto LABEL_16;
    }

    *&self->_cannedVideoWidth = Dimensions;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v32 = v9;
          v33 = 2080;
          OUTLINED_FUNCTION_11_21();
          v38 = v5;
          v11 = " [%s] %s:%d Successfully loaded file at path=%@";
          v12 = v10;
          v13 = 38;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCStreamInputCaptureSource *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v32 = v14;
          v33 = 2080;
          OUTLINED_FUNCTION_11_21();
          v38 = v8;
          v39 = 2048;
          *v40 = self;
          *&v40[8] = v16;
          v41 = v5;
          v11 = " [%s] %s:%d %@(%p) Successfully loaded file at path=%@";
          v12 = v15;
          v13 = 58;
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  captureSourceID = self->_captureSourceID;
  return captureSourceID == [equal captureSourceID] && CMFormatDescriptionEqual(self->_formatDescription, objc_msgSend(equal, "formatDescription")) != 0;
}

- (void)initWithCaptureSourceID:configuration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)initWithCaptureSourceID:configuration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithCaptureSourceID:configuration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithCaptureSourceID:configuration:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

+ (void)readIntegerFromConfig:key:value:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected class for key=%@", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)readIntegerFromConfig:key:value:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing key=%@ in config", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)readIntegerFromConfig:key:value:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)readUint32FromConfig:key:value:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unexpected class for key=%@", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)readUint32FromConfig:key:value:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing key=%@ in config", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

+ (void)readUint32FromConfig:key:value:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupFormatWithConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupFormatWithConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_15(&dword_1DB56E000, v0, v1, " [%s] %s:%d Incorrect format type typeId=%lu", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupFormatWithConfiguration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupFormatWithConfiguration:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupVideoFormatWithConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupVideoFormatWithConfiguration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupVideoFormatWithConfiguration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupDataFormatWithConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (uint64_t)setDelegate:(pthread_mutex_t *)a1 .cold.1(pthread_mutex_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v5 = 235;
      _os_log_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Registering the same delegate twice!", v4, 0x1Cu);
    }
  }

  return pthread_mutex_unlock(a1);
}

@end